# Copyright 2019 The Hyve
#
# Licensed under the GNU General Public License, version 3,
# or (at your option) any later version (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# https://www.gnu.org/licenses/
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# !/usr/bin/env python3
from pathlib import Path
import logging

from src.main.python.model import EtlWrapper
from src.main.python.model.SourceData import SourceData
from src.main.python.util import VariableConceptMapper
from src.main.python.model.cdm import *
from src.main.python.transformation import *

logger = logging.getLogger(__name__)


class Wrapper(EtlWrapper):

    def __init__(self, database, source_folder, mapping_tables_folder):
        super().__init__(database=database, source_schema='')
        self.source_folder = Path(source_folder)
        self.variable_mapper = VariableConceptMapper(Path(mapping_tables_folder))
        self.person_id_lookup = None
        self.basedata_by_pid_lookup = None
        self.enddata_by_pid_lookup = None
        self.source_table_basedata = None
        self.source_table_fulong = None
        self.source_table_enddata = None

    def run(self):
        """Run PRIAS to OMOP V6.0 ETL"""
        self.start_timing()

        logger.info('{:-^100}'.format(' Source Counts '))
        # TODO: integrate this with loading all source files, such that each source table is only named once.
        self.log_tables_rowcounts(self.source_folder)

        logger.info('{:-^100}'.format(' Setup '))

        # Prepare source
        self.drop_cdm()
        logger.info('Clinical CDM tables dropped')
        self.create_cdm()
        logger.info('Clinical CDM tables created')

        # Load custom concepts and stcm
        self.load_concept_from_csv('./resources/custom_vocabulary/2b_concepts.csv')

        # Transformations
        logger.info('{:-^100}'.format(' ETL '))
        self.execute_transformation(basedata_to_person)
        #self.execute_transformation(basedata_to_stem_table)
        self.execute_transformation(basedata_to_visit)
        self.execute_transformation(fulong_to_visit)

        #self.stem_table_to_domains()

        # self.create_person_lookup()

        self.log_summary()
        self.log_runtime()

    def stem_table_to_domains(self):
        post_processing_path = Path('src/main/python/post_processing')
        self.execute_sql_file(post_processing_path / 'stem_table_to_measurement.sql')

    def drop_cdm(self):
        """Drops clinical tables, if they exist"""
        logger.info('Dropping OMOP CDM (non-vocabulary) tables if existing')
        self.db.base.metadata.drop_all(self.db.engine, tables=[
            clinical_data.Episode.__table__,
            clinical_data.EpisodeEvent.__table__,
            clinical_data.ConditionOccurrence.__table__,
            clinical_data.DeviceExposure.__table__,
            clinical_data.DrugExposure.__table__,
            clinical_data.FactRelationship.__table__,
            clinical_data.Measurement.__table__,
            clinical_data.Note.__table__,
            clinical_data.NoteNlp.__table__,
            clinical_data.Observation.__table__,
            clinical_data.ObservationPeriod.__table__,
            clinical_data.Death.__table__,
            clinical_data.ProcedureOccurrence.__table__,
            clinical_data.Specimen.__table__,
            clinical_data.SurveyConduct.__table__,
            clinical_data.VisitOccurrence.__table__,
            clinical_data.VisitDetail.__table__,
            derived_elements.DrugEra.__table__,
            derived_elements.DoseEra.__table__,
            derived_elements.ConditionEra.__table__,
            health_economics.PayerPlanPeriod.__table__,
            health_economics.Cost.__table__,
            clinical_data.Person.__table__,
            health_system_data.LocationHistory.__table__,
            health_system_data.Location.__table__,
            health_system_data.CareSite.__table__,
            health_system_data.Provider.__table__,
            clinical_data.StemTable.__table__
        ])

    def create_cdm(self):
        logger.info('Creating OMOP CDM (non-vocabulary) tables')
        self.db.base.metadata.create_all(self.db.engine)

    def create_person_lookup(self):
        """Initialize the person lookup"""
        with self.db.session_scope() as session:
            query = session.query(clinical_data.Person).all()
            self.person_id_lookup = {x.person_source_value: x.person_id for x in query}

    def lookup_person_id(self, person_source_value: str) -> int:
        if self.person_id_lookup is None:
            self.create_person_lookup()

        if person_source_value not in self.person_id_lookup:
            print(self.person_id_lookup.keys())
            raise Exception('Person source value "{}" not found in lookup.'.format(person_source_value))

        return self.person_id_lookup[person_source_value]

    def create_basedata_by_pid_lookup(self):
        """
        Initialize the basedata lookup
        Per person, get the person specific record
        :return:
        """
        self.basedata_by_pid_lookup = {x['p_id']: x for x in self.get_basedata()}

    def lookup_basedata_by_pid(self, p_id):
        if self.basedata_by_pid_lookup is None:
            self.create_basedata_by_pid_lookup()

        if p_id not in self.basedata_by_pid_lookup:
            print(self.basedata_by_pid_lookup.keys())
            raise Exception('Person id "{}" not found in lookup.'.format(p_id))

        return self.basedata_by_pid_lookup[p_id]

    def create_enddata_by_pid_lookup(self):
        """
        Initialize the enddata lookup
        Per person, get the person specific record
        :return:
        """
        self.enddata_by_pid_lookup = {x['p_id']: x for x in self.get_enddata()}

    def lookup_enddata_by_pid(self, p_id):
        if self.enddata_by_pid_lookup is None:
            self.create_enddata_by_pid_lookup()

        if p_id not in self.enddata_by_pid_lookup:
            print(self.enddata_by_pid_lookup.keys())
            raise Exception('Person id "{}" not found in lookup.'.format(p_id))

        return self.enddata_by_pid_lookup[p_id]

    def get_basedata(self):
        if not self.source_table_basedata:
            self.source_table_basedata = SourceData(self.source_folder / 'basedata.csv')

        return self.source_table_basedata

    def get_fulong(self):
        if not self.source_table_fulong:
            self.source_table_fulong = SourceData(self.source_folder / 'fulong.csv')

        return self.source_table_fulong

    def get_enddata(self):
        if not self.source_table_enddata:
            self.source_table_enddata = SourceData(self.source_folder / 'enddata.csv')

        return self.source_table_enddata
