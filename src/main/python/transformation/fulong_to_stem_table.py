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
from datetime import timedelta
from src.main.python.util.number_conversion import to_int
from src.main.python.util.create_record_source_value import create_fulong_visit_record_source_value
from src.main.python.util.create_record_source_value import create_fulong_stem_table_record_source_value
import logging


def fulong_to_stem_table(wrapper) -> list:
    fulong = wrapper.get_next_fulong_batch()

    records_to_insert = []

    # Set operator_concept_id to None until proven otherwise
    operator_concept_id = None

    for row in fulong:
        # Calculate proxy date
        basedata_record = wrapper.lookup_basedata_by_pid(row['p_id'])
        basedata_date_diagnosis = datetime(to_int(basedata_record['year_diagnosis']), 7, 1)
        fulong_days_psa_diag = row['days_psa_diag']

        if fulong_days_psa_diag != '':
            start_date = basedata_date_diagnosis + timedelta(days=float(fulong_days_psa_diag))
        else:
            start_date = basedata_date_diagnosis

        for variable, value in row.items():

            # Rule: If num_cores or num_cores2 value is empty string, replace value with 0
            if variable == 'num_cores_biop_fu' and value == '':
                value = '0'

            # Ignore the following columns for mapping
            if variable in ['p_id', 'time', 'dre_fu_recode', 'log2psa_fu', 'gleason_sum_fu',
                            'slope', 'pro_psa_fu', 'visit_action', 'active_visit', 'year_visit', 'days_psa_diag',
                            'biopt_inf_unrine_resistant_fu', 'biopt_inf_antibiotic_therapy_fu', 'biopt_inf_antibiotic_type_fu',
                            'gleason2_fu', 'mri_targeted_gleason2', 'biopt_inf_hospitalisation_fu', 'mri_prostate_volume']:
                continue

            # Skip empty string values
            if value == '':
                continue
            elif value == '0':
                # Skip 0 values for specific mri_ values
                if variable in ['mri_taken', 'mri_lesions', 'mri_pirads_1', 'mri_pirads_2', 'mri_pirads_3',
                                'mri_location_1', 'mri_location_2', 'mri_location_3', 'mri_progrssion_lesions',
                                'mri_targeted_biopsy', 'mri_method_used', 'mri_prostate_volume_method']:
                    continue
                # Skip 0 values for specific biopt_ values
                if variable.startswith('biopt_') and variable != 'biopt_max_cancer_score_lenght_fu':
                    continue
            elif value != '1':
                # Only map these variables when value is 1
                if variable in ['mri_lesions', 'mri_targeted_biopsy', 'biopt_hematuria_fu',
                                'biopt_hemospermia_fu', 'biopt_pain_fu']:
                    continue

            # Rule: Map sum of mri_targeted_gleason1 and mri_targeted_gleason2
            if variable == 'mri_targeted_gleason1':
                if row['mri_targeted_gleason1'] == '' or row['mri_targeted_gleason2'] == '':
                    logging.warning('One of the gleason scores is empty (mri_targeted_gleason1 or mri_targeted_gleason2)')
                    continue
                variable, value = wrapper.gleason_sum(row, 'mri_targeted_gleason1', 'mri_targeted_gleason2')

            # mri_xx variables should only be captured if mri is taken
            if variable.startswith('mri_') and row['mri_taken'] != "1":
                continue

            # Rule: Only map mri_method_used and mri_targeted_cores if mri_targeted_biopsy is 1
            if variable in ['mri_method_used', 'mri_targeted_cores'] and row['mri_targeted_biopsy'] != '1':
                continue

            # Rule: map biopt_inf_hospitalization_days_fu if biopt_inf_hospitalization_fu is 1
            if variable == 'biopt_inf_hospitalisation_days_fu' and row['biopt_inf_hospitalisation_fu'] != '1':
                continue

            if variable == 'mri_suspected_number':
                # Rule: When value of mri_suspected_number is 4, value should be '>3'
                if value == '4':
                    value = '3'
                    operator_concept_id = 4172704  # >
            elif variable == 'gleason1_fu':
                # Rule: Map sum of gleason1_fu and gleason2_fu
                variable, value = wrapper.gleason_sum(row, 'gleason1_fu', 'gleason2_fu')
            elif variable == 'dre_fu':
                # Rule: Map both variable and value of dre separately
                # Remove (a,b,c) from dre values
                value = value.split(' ')[0]
            elif variable.startswith('mri_pirads'):
                # Rule: store PIRADS score as number
                value = wrapper.pirads_score(value)

            # Extract variable and value form mapping tables
            target = wrapper.variable_mapper.lookup(variable, value)

            # Set stem table values
            concept_id = target.concept_id
            value_as_concept_id = target.value_as_concept_id
            value_as_number = target.value_as_number
            unit_concept_id = target.unit_concept_id
            source_value = target.source_value
            value_source_value = target.value_source_value

            if variable == 'mri_prostate_volume_method':
                if row['mri_prostate_volume'] != '':
                    value_as_number = int(row['mri_prostate_volume'])
                    value_source_value = 'mri_prostate_volume' + "-" + row['mri_prostate_volume']
                else:
                    continue

            # Do not map if there is no variable mapping
            if target.concept_id is None:
                logging.warning('There is no target_concept_id for variable "{}" and value "{}"'.format(variable, value))

            # Get visit occurrence id
            if variable.startswith('mri_') and row['mri_taken'] == '1':
                # mri visit
                visit_type = wrapper.VisitType.mri.name
            else:
                # standard visit
                visit_type = wrapper.VisitType.standard.name

            visit_record_source_value = create_fulong_visit_record_source_value(row['p_id'], row['time'], visit_type)
            visit_occurrence_id = wrapper.lookup_visit_occurrence_id(visit_record_source_value)

            # Add record source value to Stem Table
            stem_table_record_source_value = create_fulong_stem_table_record_source_value(
                row['p_id'], row['time'], variable)

            record = StemTable(
                person_id=int(row['p_id']),
                visit_occurrence_id=visit_occurrence_id,
                start_date=start_date.date(),
                start_datetime=start_date,
                concept_id=concept_id if concept_id else 0,
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
    for x in fulong_to_stem_table(w):
        print(x.__dict__)
