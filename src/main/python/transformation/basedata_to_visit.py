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
from src.main.python.model.cdm import VisitOccurrence
from datetime import datetime
from src.main.python.util.number_conversion import to_int

def basedata_to_visit(wrapper) -> list:
    basedata = wrapper.get_basedata()

    records_to_insert = []
    for row in basedata:

        start_date = datetime(to_int(row['year_diagnosis']), 7, 1)

        record = VisitOccurrence(
            person_id=int(row['p_id']),
            visit_concept_id=2000000027,  # Baseline Visit
            visit_source_concept_id=0,
            visit_start_date=start_date.date(),
            visit_start_datetime=start_date,
            visit_end_date=start_date.date(),
            visit_end_datetime=start_date,
            visit_type_concept_id=44818519,  # Clinical Study visit
            discharge_to_concept_id=0,
            admitted_from_concept_id=0
        )
        records_to_insert.append(record)

    return records_to_insert


if __name__ == '__main__':
    from src.main.python.database.database import Database
    from src.main.python.wrapper import Wrapper

    db = Database(f'postgresql://postgres@localhost:5432/postgres')  # A mock database object
    w = Wrapper(db, '../../../../resources/source_data')
    # w.person_id_lookup = {}
    for x in basedata_to_visit(w):
        print(x.__dict__)
