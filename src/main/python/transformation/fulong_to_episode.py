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
from src.main.python.util.create_record_source_value import create_fulong_episode_record_source_value
from datetime import datetime
from datetime import timedelta
from src.main.python.util.number_conversion import to_int
from src.main.python.model.cdm import Episode
import copy


def fulong_to_episode(wrapper) -> list:

    fulong = wrapper.get_fulong()

    records_to_insert = []

    # Episode groups.
    # NOTE: The last character of the group name (key) is taken as the episode number
    lesion_episode_groups = {
        'lesion1': ['mri_pirads_1', 'mri_largest_dia_1', 'mri_location_1', 'mri_location_free_1'],
        'lesion2': ['mri_pirads_2', 'mri_largest_dia_2', 'mri_location_2', 'mri_location_free_2'],
        'lesion3': ['mri_pirads_3', 'mri_largest_dia_3', 'mri_location_3', 'mri_location_free_3']
    }

    biopsy_episode_groups = {
        'core_biopsy': ['num_cores_biop_fu', 'num_cores_pc_fu', 'gleason1_fu']
    }

    for row in fulong:

        # Calculate proxy date
        basedata_record = wrapper.lookup_basedata_by_pid(row['p_id'])
        basedata_date_diagnosis = datetime(to_int(basedata_record['year_diagnosis']), 7, 1)
        fulong_days_psa_diag = row['days_psa_diag']

        if fulong_days_psa_diag != '':
            start_date = basedata_date_diagnosis + timedelta(days=float(fulong_days_psa_diag))
        else:
            start_date = basedata_date_diagnosis

        base_episode_record = Episode(
            person_id=int(row['p_id']),
            episode_start_datetime=start_date,
            episode_end_datetime=start_date,
            episode_object_concept_id=0,
            episode_source_concept_id=0,
            episode_type_concept_id=0
        )

        # Go through each episode group
        for episode_group, episode_variables in lesion_episode_groups.items():
            lesion_values = [row[variable] for variable in episode_variables]

            # Skip if no mri was taken
            if row['mri_taken'] != '1':
                continue

            # Skip if all lesion values are empty or '0'
            if all(item in [None, '0', ''] for item in lesion_values):
                continue

            episode_lesion = copy.deepcopy(base_episode_record)
            episode_lesion.episode_concept_id = 4115735  # Lesion of prostate (condition occurrence)
            episode_lesion.episode_number = int(episode_group[-1:])
            episode_lesion.record_source_value = create_fulong_episode_record_source_value(row['p_id'],
                                                                                           row['time'],
                                                                                           episode_group)

            records_to_insert.append(episode_lesion)


        for episode_group in biopsy_episode_groups:

            # Skip if the number of cores is empty for the given biopsy
            if row['num_cores_biop_fu'] == '':
                continue

            episode_biopsy = copy.deepcopy(base_episode_record)
            episode_biopsy.episode_concept_id = 4221802  # Core needle biopsy of prostate (procedure occurrence)
            episode_biopsy.episode_number = 1  # There is only 1 core biopsy episode in fulong
            episode_biopsy.record_source_value = create_fulong_episode_record_source_value(row['p_id'],
                                                                                           row['time'],
                                                                                           episode_group)

            records_to_insert.append(episode_biopsy)

    return records_to_insert


if __name__ == '__main__':
    from src.main.python.database.database import Database
    from src.main.python.wrapper import Wrapper

    db = Database('postgresql://postgres@localhost:5432/postgres')  # A mock database object
    w = Wrapper(db, '../../../../resources/source_data', '../../../../resources/mapping_tables')
    for x in fulong_to_episode(w):
        print(x.__dict__)
