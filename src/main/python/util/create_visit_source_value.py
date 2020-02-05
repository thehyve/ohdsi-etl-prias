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

def create_basedata_visit_source_value(person_id):
    return _create_visit_source_value(person_id)

def create_fulong_visit_source_value(person_id, time):
    return _create_visit_source_value(person_id, time)

def _create_visit_source_value(*args):
    return '-'.join(args)