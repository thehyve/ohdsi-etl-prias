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
from src.main.python.util.create_record_source_value import create_stem_table_record_source_value
from src.main.python.model.cdm import EpisodeEvent


def basedata_to_episode_event(wrapper) -> list:
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

        # Go through each lesion episode
        for episode_group in episode_groups:

            if episode_group.startswith('lesion'):
                # If all values of the lesion variables are absent or '0', there is no (episode) event
                lesion_values = [row[variable] for variable in episode_groups[episode_group]]

                check_values_absent = all(item in [None, '0', ''] for item in lesion_values)
                if check_values_absent:
                    continue

            # Get event id of mri_pirads*, mri_largest_dia*, mri_location*, mri_location_free*
            for variable in episode_groups[episode_group]:

                if episode_group.startswith('lesion'):
                    # Don't map episode event when mri_taken.0 is 1
                    if row['mri_taken.0'] != '1':
                        continue

                    # Don't map event when event when value is 0, None or an empty string
                    if row[variable] in [None, '0', '']:
                        continue

                # Do not map episode when there num_cores is empty
                if episode_group == 'core_biopsy1' and row['num_cores'] == '':
                    continue

                if episode_group == 'core_biopsy2' and row['num_cores2'] == '':
                    continue

                # Exception: Map variable concatenation of gleason1 and gleason2
                if variable == 'gleason1':
                    variable, value = wrapper.gleason_sum(row, 'gleason1', 'gleason2')
                if variable == 'gleason1_2':
                    variable, value = wrapper.gleason_sum(row, 'gleason1_2', 'gleason2_2')

                # Get episode id of lesion episode
                episode_record_source_value = create_episode_record_source_value(row['p_id'],
                                                                                 source_table_name,
                                                                                 episode_group)
                episode_id = wrapper.lookup_episode_id(episode_record_source_value)

                # Get event id from stem_table lookup
                stem_table_record_source_value = create_stem_table_record_source_value(row['p_id'],
                                                                                       source_table_name,
                                                                                       variable)
                event_id = wrapper.lookup_stem_table_id(stem_table_record_source_value)

                # Get event_field_concept_id
                if variable.startswith('mri_pirads') or variable.startswith('num_cores'):
                    event_field_concept_id = 1147140  # measurement.measurement_concept_id
                if variable.startswith('mri_location') or variable.startswith('mri_largest_dia')\
                        or variable.startswith('gleason'):
                    event_field_concept_id = 1147167  # observation.observation_concept_id

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
