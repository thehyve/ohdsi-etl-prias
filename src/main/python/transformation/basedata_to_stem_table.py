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
from src.main.python.model.cdm import StemTable
from datetime import date, datetime
from src.main.python.util.create_record_source_value import create_basedata_visit_record_source_value
from src.main.python.util.create_record_source_value import create_stem_table_record_source_value
import logging


def basedata_to_stem_table(wrapper) -> list:
    source_table_name = 'basedata'

    basedata = wrapper.get_basedata()

    records_to_insert = []

    # Set operator_concept_id to None until proven otherwise
    operator_concept_id = None

    for row in basedata:

        for variable, value in row.items():

            # Ignore the following columns for mapping
            if variable in ['p_id', 'year_diagnosis', 'year_birth', 'asa',
                            'log2psa', 'gleason_sum', 'pro_psa', 'tnm', 'method_detection',
                            'no_co_morbidity', 'active_visit', 'mri_included',
                            'bonescan']:
                continue

            # Skip empty string values
            if value == '' or value == None:
                continue

            # Skip 0 values for specific biopt_ variables
            if variable.startswith('biopt_') \
                    and variable not in ['biopt_max_cancer_score_lenght', 'biopt_inf_hospitalisation_days'] \
                    and value == '0':
                continue

            # Only map variables when value is 1
            if variable in ['biopt_inf_antibiotic_therapy', 'biopt_hematuria',
                            'biopt_hemospermia', 'biopt_pain'] and value != '1':
                continue

            #  Skip 0 values for specific mri_ variables
            if variable in ['mri_taken.0', 'mri_lesions.0', 'mri_pirads_1.0', 'mri_pirads_2.0',
                            'mri_pirads_3.0', 'mri_location_1.0', 'mri_location_2.0',
                            'mri_location_3.0', 'mri_progrssion_lesions.0', 'mri_targeted_biopsy.0',
                            'mri_method_used.0', 'mri_prostate_volume_method.0'] and value == '0':
                continue

            # mri_xx variables should only be captured if mri is taken
            if variable.startswith('mri_') and row['mri_taken.0'] != '1':
                continue

            # Only map mri_lesions.0 and mri_targeted_biopsy.0 when value is 1
            if variable in ['mri_lesions.0', 'mri_targeted_biopsy.0'] and value != '1':
                continue

            # Exception: Only map mri_method_used.0 and mri_targeted_cores.0 if mri_targeted_biopsy.0 is 1
            if (variable == 'mri_method_used.0' or variable == 'mri_targeted_cores.0') \
                    and row['mri_targeted_biopsy.0'] != '1':
                continue

            # Exception: When value of mri_suspected_number.0 is 4, value should be '>3'
            if variable == 'mri_suspected_number.0':
                if value == '4':
                    value = '3'
                    operator_concept_id = 4172704  # >

            # Exception: Do not map num_cores*, num_cores_pc*, gleason1* and gleason* when num_cores* is 0 or empty
            if row['num_cores'] == '' and variable in ['num_cores', 'num_cores_pc', 'gleason1', 'gleason2']:
                continue
            if row['num_cores2'] == '' and variable in ['num_cores2', 'num_cores_pc2', 'gleason1_2', 'gleason2_2']:
                continue

            # Exception: Do not map length if < 50
            if variable == 'length':
                if float(value) < 50:
                    continue

            # Exception: Do not map weight if 0
            if variable == 'weight':
                if float(value) == 0:
                    continue

            # Exception: Map sum of gleason1 and gleason2
            if variable == 'gleason1':
                variable, value = wrapper.gleason_sum(row, 'gleason1', 'gleason2')
            if variable == 'gleason2':
                continue

            # Exception: Map sum of gleason1_2 and gleason2_2
            if variable == 'gleason1_2':
                variable, value = wrapper.gleason_sum(row, 'gleason1_2', 'gleason2_2')
            if variable == 'gleason2_2':
                continue

            # Exception: Map sum of mri_targeted_gleason1.0 and mri_targeted_gleason1.0.1
            if variable == 'mri_targeted_gleason1.0':
                variable, value = wrapper.gleason_sum(row, 'mri_targeted_gleason1.0', 'mri_targeted_gleason2.0')
            if variable == 'mri_targeted_gleason2.0':
                continue

            # Exception: Map both variable and value of dre separately
            if variable == 'dre':
                # Remove (a,b,c) from dre values
                value = value.split(' ')[0]

            # Extract variable and value form mapping tables
            target = wrapper.variable_mapper.lookup(variable, value)

            # Set stem table values
            concept_id = target.concept_id
            value_as_concept_id = target.value_as_concept_id
            value_as_number = target.value_as_number
            unit_concept_id = target.unit_concept_id
            source_value = target.source_value
            value_source_value = target.value_source_value

            # Exception: map biopt_inf_hospitalization_days if biopt_inf_hospitalization is 1
            if variable == 'biopt_inf_hospitalisation_days' and row['biopt_inf_hospitalisation'] != '1':
                continue
            if variable == 'biopt_inf_hospitalisation':
                continue

            # Exception: map mri_prostate_volume.0 and mri_prostate_volume_method.0 to one record
            if variable == 'mri_prostate_volume.0':
                continue
            if variable == 'mri_prostate_volume_method.0':
                if row['mri_prostate_volume.0'] != '':
                    value_as_number = int(row['mri_prostate_volume.0'])
                    value_source_value = 'mri_prostate_volume.0' + "-" + row['mri_prostate_volume.0']
                else:
                    continue

            # Give warning when vocabulary mapping is missing
            if target.concept_id is None:
                logging.warning(
                    'There is no target_concept_id for variable "{}" and value "{}"'.format(variable, value))

            # Get visit occurrence id
            if variable.startswith('mri_') and row['mri_taken.0'] == '1':
                visit_type = 'mri'
            elif variable.startswith('biopt_'):
                visit_type = 'biopsy'
            else:
                visit_type = 'standard'
            visit_record_source_value = create_basedata_visit_record_source_value(row['p_id'], source_table_name,
                                                                                  visit_type)
            visit_occurrence_id = wrapper.lookup_visit_occurrence_id(visit_record_source_value)

            # Add record source value to Stem Table
            stem_table_record_source_value = create_stem_table_record_source_value(row['p_id'],
                                                                                   source_table_name,
                                                                                   variable)

            record = StemTable(
                person_id=int(row['p_id']),
                visit_occurrence_id=visit_occurrence_id,
                start_date=date(int(row['year_diagnosis']), 7, 1),
                start_datetime=datetime(int(row['year_diagnosis']), 7, 1),
                concept_id=concept_id,
                value_as_concept_id=value_as_concept_id,
                value_as_number=value_as_number,
                unit_concept_id=unit_concept_id if unit_concept_id else None,
                source_value=source_value,
                value_source_value=value_source_value,
                operator_concept_id=operator_concept_id,
                type_concept_id=0,
                record_source_value=stem_table_record_source_value

            )

            records_to_insert.append(record)

    return records_to_insert


if __name__ == '__main__':
    from src.main.python.database.database import Database
    from src.main.python.wrapper import Wrapper

    db = Database('postgresql://postgres@localhost:5432/postgres')  # A mock database object
    w = Wrapper(db, '../../../../resources/source_data', '../../../../resources/mapping_tables')
    for x in basedata_to_stem_table(w):
        print(x.__dict__)
