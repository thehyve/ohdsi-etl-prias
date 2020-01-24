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
from datetime import datetime
from datetime import timedelta
from src.main.python.util.number_conversion import to_int

def fulong_to_stem_table(wrapper) -> list:
    fulong = wrapper.get_fulong()

    records_to_insert = []

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

            # Skip columns not containing variables
            if variable in ['p_id', 'time', 'dre_fu_recode', 'log2psa_fu', 'gleason_sum_fu',
                            'slope', 'pro_psa_fu', 'visit_action', 'active visit', 'year_visit']:
                continue

            # Skip empty string values
            if value == '' or value == None:
                continue

            # Skip 0 values for specific biopt_ and mri_ variables
            if variable != 'biopt_max_cancer_score_lenght_fu' and variable.startswith('biopt_'):
                if value == '0':
                    continue
            if variable in ['mri_taken', 'mri_lesions', 'mri_pirads_1', 'mri_targeted_biopsy',
                            'mri_method_used', 'mri_prostate_volume_method']:
                if value == '0':
                    continue

            # mri_xx variables should only be captured if mri is taken
            if row['mri_taken'] != "1" and variable.startswith('mri_'):
                continue

            # Exception: Only mri_targeted_taken.0 is 1, map mri_method_used.0
            if variable == 'mri_method_used' and row['mri_targeted_biopsy'] != 1:
                continue

            # TODO: make gleason sum code more efficient (combine all three in one code block)
            # Exception: Map sum of gleason1 and gleason2
            if variable == 'gleason1_fu':
                variable = 'gleason1_fu_gleason2_fu'
                if row['gleason1_fu'] == "3" and row['gleason2_fu'] == "4":
                    value = "3+4"
                elif row['gleason1_fu'] == "4" and row['gleason2_fu'] == "3":
                    value = "4+3"
                else:
                    value = int(row['gleason1_fu']) + int(row['gleason2_fu'])
            if variable == 'gleason2_fu':
                continue

            # Exception: Map both variable and value of dre separately
            if variable == 'dre_fu':
                # Remove (a,b,c) from dre values
                value = value.split(' ')[0]

            # Extract variable and value form mapping tables
            target = wrapper.variable_mapper.lookup(variable, value)

            # Set stem table values
            concept_id = target.concept_id
            value_as_concept_id = target.value_as_concept_id
            value_as_number = target.value_as_number
            unit_concept_id = target.unit_concept_id

            # Exception: map biopt_inf_hospitalisation and biopt_inf_hospitalization_days to one record
            if variable == 'biopt_inf_hospitalisation_fu':
                value_as_number = row['biopt_inf_hospitalisation_days_fu']
            if variable == 'biopt_inf_hospitalisation_days_fu':
                continue

            # Exception: map mri_prostate_volume.0 and mri_prostate_volume_method.0 to one record
            if variable == 'mri_prostate_volume':
                continue
            if variable == 'mri_prostate_volume_method':
                if row['mri_prostate_volume'] != '':
                    value_as_number = int(row['mri_prostate_volume'])
                else:
                    continue

            # TODO: check if this is the best practice
            # Do not map if there is no variable mapping
            if (target.concept_id == None) or (target.concept_id == 0):
                continue

            record = StemTable(
                person_id=int(row['p_id']),
                start_date=start_date.date(),
                start_datetime=start_date,
                concept_id=concept_id,
                value_as_concept_id=value_as_concept_id,
                value_as_number=value_as_number,
                unit_concept_id=unit_concept_id,
                source_value=variable,
                value_source_value=value,
                unit_source_value=unit_concept_id if unit_concept_id else None,
                type_concept_id=0  # TODO
            )

            records_to_insert.append(record)

        # Exception: Map both variable and value of dre separately
        if row['dre_fu'] != '':
            record = StemTable(
                person_id=int(row['p_id']),
                start_date=start_date.date(),
                start_datetime=start_date,
                concept_id=4254766,  # Digital rectal examination
                source_value='dre_fu',
                type_concept_id=0  # TODO
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
