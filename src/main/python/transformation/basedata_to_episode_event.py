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
from src.main.python.util.create_record_source_value import create_basedata_stem_table_record_source_value
from src.main.python.model.cdm import EpisodeEvent


def basedata_to_episode_event(wrapper) -> list:
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

        # Go through each episode group
        for episode_group, episode_variables in lesion_episode_groups.items():
            # If all values of the lesion variables are absent or '0', there is no (episode) event
            lesion_values = [row[variable] for variable in episode_variables]

            # Skip when no mri is taken
            if row['mri_taken.0'] != '1':
                continue

            # Skip if all lesion values are empty or '0'
            if all(item in [None, '0', ''] for item in lesion_values):
                continue

            # Get episode id of lesion episode
            episode_record_source_value = create_basedata_episode_record_source_value(row['p_id'],
                                                                                      episode_group)
            episode_id = wrapper.lookup_episode_id(episode_record_source_value)

            for variable in episode_variables:

                # Don't map event when event when value is 0, None or an empty string
                if row[variable] in [None, '0', '']:
                    continue

                # Get event id from stem_table lookup
                stem_table_record_source_value = create_basedata_stem_table_record_source_value(row['p_id'],
                                                                                                variable)
                event_id = wrapper.lookup_stem_table_id(stem_table_record_source_value)

                # Get event_field_concept_id
                target = wrapper.variable_mapper.lookup(variable, row[variable])
                event_field_concept_id = wrapper.get_event_field_concept_id(target.concept_id)

                record = EpisodeEvent(
                    event_id=event_id,
                    episode_id=episode_id,
                    event_field_concept_id=event_field_concept_id
                )
                records_to_insert.append(record)

        # Go through each episode group
        for episode_group, episode_variables in biopsy_episode_groups.items():

            # Skip if the number of cores is empty for the given biopsy
            if episode_group == 'core_biopsy1' and row['num_cores'] == '':
                continue

            if episode_group == 'core_biopsy2' and row['num_cores2'] == '':
                continue

            # Get episode id of lesion episode
            episode_record_source_value = create_basedata_episode_record_source_value(row['p_id'],
                                                                                      episode_group)
            episode_id = wrapper.lookup_episode_id(episode_record_source_value)

            for variable in episode_variables:

                # Exception: Map variable concatenation of gleason1 and gleason2
                if variable == 'gleason1':
                    variable, value = wrapper.gleason_sum(row, 'gleason1', 'gleason2')
                elif variable == 'gleason1_2':
                    variable, value = wrapper.gleason_sum(row, 'gleason1_2', 'gleason2_2')
                else:
                    value = row[variable]

                # Get event id from stem_table lookup
                stem_table_record_source_value = create_basedata_stem_table_record_source_value(row['p_id'],
                                                                                                variable)
                event_id = wrapper.lookup_stem_table_id(stem_table_record_source_value)

                # Get event_field_concept_id
                target = wrapper.variable_mapper.lookup(variable, value)
                event_field_concept_id = wrapper.get_event_field_concept_id(target.concept_id)

                record = EpisodeEvent(
                    event_id=event_id,
                    episode_id=episode_id,
                    event_field_concept_id=event_field_concept_id
                )
                records_to_insert.append(record)

    return records_to_insert


if __name__ == '__main__':
    from src.main.python.database.database import Database
    from src.main.python.wrapper import Wrapper

    db = Database('postgresql://postgres@localhost:5432/postgres')  # A mock database object
    w = Wrapper(db, '../../../../resources/source_data', '../../../../resources/mapping_tables')
    for x in basedata_to_episode_event(w):
        print(x.__dict__)
