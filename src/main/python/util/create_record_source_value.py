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


def _create_record_source_value(*args):
    return '-'.join(args)


def create_basedata_visit_record_source_value(person_id, source_table_name, visit_type):
    return _create_record_source_value(person_id, source_table_name, visit_type)


def create_fulong_visit_record_source_value(person_id, source_table_name, time, visit_type):
    return _create_record_source_value(person_id, source_table_name, time, visit_type)


def create_episode_record_source_value(person_id, source_table_name, lesion_number):
    return _create_record_source_value(person_id, source_table_name, lesion_number)


def create_stem_table_record_source_value(person_id, source_table_name, variable):
    return _create_record_source_value(person_id, source_table_name, variable)