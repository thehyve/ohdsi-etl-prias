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
from src.main.python.util.create_record_source_value import create_episode_record_source_value
from datetime import datetime
from src.main.python.model.cdm import Episode


def basedata_to_episode(wrapper) -> list:
    source_table_name = 'basedata'

    basedata = wrapper.get_basedata()

    records_to_insert = []

    # Episode groups
    lesion1_variables = ['mri_pirads_1.0', 'mri_largest_dia_1.0', 'mri_location_1.0', 'mri_location_free_1.0']
    lesion2_variables = ['mri_pirads_2.0', 'mri_largest_dia_2.0', 'mri_location_2.0', 'mri_location_free_2.0']
    lesion3_variables = ['mri_pirads_3.0', 'mri_largest_dia_3.0', 'mri_location_3.0', 'mri_location_free_3.0']
    core_biopsy1_variables = ['num_cores', 'num_cores_pc', 'gleason1']
    core_biopsy2_variables = ['num_cores2', 'num_cores_pc2', 'gleason1_2']

    episode_groups = {'lesion1': lesion1_variables, 'lesion2': lesion2_variables, 'lesion3': lesion3_variables,
                      'core_biopsy1': core_biopsy1_variables, 'core_biopsy2': core_biopsy2_variables}

    for row in basedata:

        # Go through each episode group
        for episode_group in episode_groups:

            if episode_group.startswith('lesion'):
                episode_concept_id = 4115735,  # Lesion of prostate (condition occurrence concept)

                # If all values of the lesion variables are absent or '0', there is no (episode) event
                lesion_values = [row[variable] for variable in episode_groups[episode_group]]

                check_values_absent = all(item in [None, '0', ''] for item in lesion_values)
                if check_values_absent:
                    continue

                # Don't map episode when mri_taken.0 is 1
                if row['mri_taken.0'] != '1':
                    continue

            # Do not map episode when there num_cores is empty
            if episode_group == 'core_biopsy1' and row['num_cores'] == '':
                continue

            if episode_group == 'core_biopsy2' and row['num_cores2'] == '':
                continue

            if episode_group.startswith('core_biopsy'):
                episode_concept_id = 4221802  # Core needle biopsy of prostate (procedure occurrence concept)

            # Create episode record source value
            episode_record_source_value = create_episode_record_source_value(row['p_id'],
                                                                             source_table_name,
                                                                             episode_group)

            record = Episode(
                person_id=int(row['p_id']),
                episode_start_datetime=datetime(int(row['year_diagnosis']), 7, 1),
                episode_end_datetime=datetime(int(row['year_diagnosis']), 7, 1),
                episode_concept_id=episode_concept_id,
                episode_number=int(episode_group[-1:]),
                episode_object_concept_id=0,
                episode_source_concept_id=0,
                episode_type_concept_id=0,
                record_source_value=episode_record_source_value
            )

            records_to_insert.append(record)

    return records_to_insert


if __name__ == '__main__':
    from src.main.python.database.database import Database
    from src.main.python.wrapper import Wrapper

    db = Database('postgresql://postgres@localhost:5432/postgres')  # A mock database object
    w = Wrapper(db, '../../../../resources/source_data', '../../../../resources/mapping_tables')
    for x in basedata_to_episode(w):
        print(x.__dict__)
