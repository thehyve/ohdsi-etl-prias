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
from src.main.python.model.cdm import Person


def basedata_to_person(wrapper) -> list:
    base_data = wrapper.get_basedata()

    records_to_insert = []
    for row in base_data:
        record = Person(
            person_id=int(row['p_id']),
            person_source_value=row['p_id'],
            year_of_birth=int(row['year_birth']),
            gender_concept_id=8507,  # Always male
            race_concept_id=0,
            ethnicity_concept_id=0
        )
        records_to_insert.append(record)

    return records_to_insert


if __name__ == '__main__':
    from src.main.python.database.database import Database
    from src.main.python.wrapper import Wrapper

    db = Database(f'postgresql://postgres@localhost:5432/postgres')  # A mock database object
    w = Wrapper(db, '../../../../resources/source_data')

    for x in basedata_to_person(w):
        print(x.__dict__)
