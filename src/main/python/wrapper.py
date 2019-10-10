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
import pathlib
import logging

from src.main.python.model.SourceData import SourceData
import src.main.python.model.cdm.clinical_data as clinical_data
import src.main.python.model.cdm.derived_elements as derived_elements
import src.main.python.model.cdm.health_economics as health_economics
import src.main.python.model.cdm.health_system_data as health_system_data

from .model import EtlWrapper
# Import transformation functions
from .transformation import basedata_to_person

logger = logging.getLogger(__name__)


class Wrapper(EtlWrapper):

    def __init__(self, database, source_folder, debug):
        super().__init__(database=database, source_schema='', debug=debug)
        self.source_folder = pathlib.Path(source_folder)
        self.person_id_lookup = None
        self.source_table_basedata = None
        self.source_table_diagnosis = None
        self.source_table_death = None
        self.source_table_attendance = None
        self.source_table_biopsies = None

    def run(self):
        # self.load_concept_from_csv('./resources/custom_vocabulary/2b_concepts.csv')
        # self.load_source_to_concept_map_from_csv('./resources/mapping_tables/stcm_erspc_answers.csv', truncate_first=True)
        # self.execute_transformation(biopsies_to_observation)
        # return
        """ Run PRIAS to OMOP ETL"""
        self.start_timing()
        self.log_timestamp()

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
        # self.load_concept_from_csv('./resources/custom_vocabulary/2b_concepts.csv')
        # self.load_concept_from_csv('./resources/custom_vocabulary/new_concepts.csv')
        # self.load_source_to_concept_map_from_csv('./resources/mapping_tables/stcm_erspc_answers.csv', truncate_first=True)

        # Transformations
        logger.info('{:-^100}'.format(' ETL '))

        # self.execute_transformation(basedata_to_person)
        self.create_person_lookup()

        self.log_summary()

        self.log_runtime()

        self.log_timestamp()

    def drop_cdm(self):
        """Drops clinical tables, if they exist"""
        logger.info('Dropping OMOP CDM (non-vocabulary) tables if existing')
        self.db.base.metadata.drop_all(self.db.engine, tables=[
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
            clinical_data.VisitOccurrence.__table__,
            derived_elements.DrugEra.__table__,
            derived_elements.DoseEra.__table__,
            derived_elements.ConditionEra.__table__,
            health_economics.PayerPlanPeriod.__table__,
            health_economics.Cost.__table__,
            clinical_data.Person.__table__,
            health_system_data.Location.__table__,
            health_system_data.CareSite.__table__,
            health_system_data.Provider.__table__
        ])

    def create_cdm(self):
        logger.info('Creating OMOP CDM (non-vocabulary) tables')
        self.db.base.metadata.create_all(self.db.engine)

    def get_source_death(self):
        if not self.source_table_death:
            self.source_table_death = SourceData(self.source_folder / 'death4.csv')

        return self.source_table_death

    def create_person_lookup(self):
        """ Initialize the person lookup """
        session = self.db.get_new_session()

        query = session.query(clinical_data.Person).all()
        self.person_id_lookup = {x.person_source_value: x.person_id for x in query}

        session.close()

    def lookup_person_id(self, person_source_value):
        if self.person_id_lookup is None:
            self.create_person_lookup()

        if person_source_value not in self.person_id_lookup:
            print(self.person_id_lookup.keys())
            raise Exception('Person source value "{}" not found in lookup.'.format(person_source_value))

        return self.person_id_lookup[person_source_value]
