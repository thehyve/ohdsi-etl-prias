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
from src.main.python.model.cdm import StemTable
from datetime import date, datetime
from datetime import timedelta
from src.main.python.util.number_conversion import to_int

def fulong_dre_to_stem_table(wrapper) -> list:
    fulong = wrapper.get_fulong()

    records_to_insert = []

    for row in fulong:

        # Get visit occurrence id
        visit_record = wrapper.lookup_visit_id()
        for visit_occurrence_id, [person_id, visit_source_value] in visit_record.items():
            if person_id == int(row['p_id']) and visit_source_value == row['time']:
                visit_id = visit_occurrence_id

        # Calculate proxy date
        basedata_record = wrapper.lookup_basedata_by_pid(row['p_id'])
        basedata_date_diagnosis = datetime(to_int(basedata_record['year_diagnosis']), 7, 1)
        fulong_days_psa_diag = row['days_psa_diag']

        if fulong_days_psa_diag != '':
            start_date = basedata_date_diagnosis + timedelta(days=float(fulong_days_psa_diag))
        else:
            start_date = basedata_date_diagnosis

        # Exception: Map variable separate from value
        if row['dre_fu'] != '':
            record = StemTable(
                person_id=int(row['p_id']),
                visit_occurrence_id=visit_id,
                start_date=start_date.date(),
                start_datetime=start_date,
                concept_id=4254766,  # Digital rectal examination
                source_value='dre',
                type_concept_id=0  # TODO
            )
            records_to_insert.append(record)

    return records_to_insert


if __name__ == '__main__':
    from src.main.python.database.database import Database
    from src.main.python.wrapper import Wrapper

    db = Database('postgresql://postgres@localhost:5432/postgres')  # A mock database object
    w = Wrapper(db, '../../../../resources/source_data', '../../../../resources/mapping_tables')
    for x in fulong_dre_to_stem_table(w):
        print(x.__dict__)
