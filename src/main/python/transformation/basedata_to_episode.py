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
from src.main.python.util.create_record_source_value import create_basedata_episode_record_source_value
from datetime import datetime
from src.main.python.model.cdm import Episode
import copy


def basedata_to_episode(wrapper) -> list:

    basedata = wrapper.get_basedata()

    records_to_insert = []

    # Episode groups.
    # NOTE: The last character of the group name (key) is taken as the episode number
    lesion_episode_groups = {
        'lesion1': ['mri_pirads_1.0', 'mri_largest_dia_1.0', 'mri_location_1.0', 'mri_location_free_1.0'],
        'lesion2': ['mri_pirads_2.0', 'mri_largest_dia_2.0', 'mri_location_2.0', 'mri_location_free_2.0'],
        'lesion3': ['mri_pirads_3.0', 'mri_largest_dia_3.0', 'mri_location_3.0', 'mri_location_free_3.0']
    }

    biopsy_episode_groups = {
        'core_biopsy1': ['num_cores', 'num_cores_pc', 'gleason1'],  # Note: the variable names are not used here
        'core_biopsy2': ['num_cores2', 'num_cores_pc2', 'gleason1_2']
    }

    for row in basedata:

        base_episode_record = Episode(
            person_id=int(row['p_id']),
            episode_start_datetime=datetime(int(row['year_diagnosis']), 7, 1),
            episode_end_datetime=datetime(int(row['year_diagnosis']), 7, 1),
            episode_object_concept_id=0,
            episode_source_concept_id=0,
            episode_type_concept_id=0
        )

        # Go through each episode group
        for episode_group, episode_variables in lesion_episode_groups.items():
            lesion_values = [row[variable] for variable in episode_variables]

            # Skip if no mri was taken
            if row['mri_taken.0'] != '1':
                continue

            # Skip if all lesion values are empty or '0'
            if all(item in [None, '0', ''] for item in lesion_values):
                continue

            episode_lesion = copy.deepcopy(base_episode_record)
            episode_lesion.episode_concept_id = 4115735  # Lesion of prostate (condition occurrence)
            episode_lesion.episode_number = int(episode_group[-1:])
            episode_lesion.record_source_value = create_basedata_episode_record_source_value(row['p_id'], episode_group)

            records_to_insert.append(episode_lesion)

        for episode_group in biopsy_episode_groups:
            # Skip if the number of cores is empty for the given biopsy
            if episode_group == 'core_biopsy1' and row['num_cores'] == '':
                continue

            if episode_group == 'core_biopsy2' and row['num_cores2'] == '':
                continue

            episode_biopsy = copy.deepcopy(base_episode_record)
            episode_biopsy.episode_concept_id = 4221802  # Core needle biopsy of prostate (procedure occurrence)
            episode_biopsy.episode_number = int(episode_group[-1:])
            episode_biopsy.record_source_value = create_basedata_episode_record_source_value(row['p_id'],
                                                                                             episode_group)

            records_to_insert.append(episode_biopsy)

    return records_to_insert


if __name__ == '__main__':
    from src.main.python.database.database import Database
    from src.main.python.wrapper import Wrapper

    db = Database('postgresql://postgres@localhost:5432/postgres')  # A mock database object
    w = Wrapper(db, '../../../../resources/source_data', '../../../../resources/mapping_tables')
    for x in basedata_to_episode(w):
        print(x.__dict__)
