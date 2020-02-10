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
from src.main.python.model.cdm import ObservationPeriod
from datetime import date

def basedata_to_observation_period(wrapper) -> list:
    base_data = wrapper.get_basedata()
    extraction_date = date(2099, 7, 1)

    records_to_insert = []
    for row in base_data:

        basedata_start_date = date(int(row['year_diagnosis']), 7, 1)

        # If there is a year_discontinued value in the enddate table, use for observation_period_end_date
        enddata_record = wrapper.lookup_enddata_by_pid(row['p_id'])
        if enddata_record is not None and enddata_record['year_discontinued'] != '':
            observation_period_end_date = date(int(enddata_record['year_discontinued']), 7, 1)
        else:
            observation_period_end_date = extraction_date

        record = ObservationPeriod(
            person_id=int(row['p_id']),
            observation_period_start_date=basedata_start_date,
            observation_period_end_date=observation_period_end_date,
            period_type_concept_id=44814723  # Period while enrolled in study
        )
        records_to_insert.append(record)

    return records_to_insert

if __name__ == '__main__':
    from src.main.python.database.database import Database
    from src.main.python.wrapper import Wrapper

    db = Database('postgresql://postgres@localhost:5432/postgres')  # A mock database object
    w = Wrapper(db, '../../../../resources/source_data', '../../../../resources/mapping_tables')
    for x in basedata_to_observation_period(w):
        print(x.__dict__)