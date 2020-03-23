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
from src.main.python.util.create_record_source_value import create_fulong_visit_record_source_value
from src.main.python.util.create_record_source_value import create_fulong_stem_table_record_source_value

def fulong_dre_to_stem_table(wrapper) -> list:

    fulong = wrapper.get_fulong()

    records_to_insert = []

    for row in fulong:

        # Get visit occurrence id
        visit_type = wrapper.BasedataVisit('standard').name
        visit_record_source_value = create_fulong_visit_record_source_value(row['p_id'], row['time'], visit_type)
        visit_occurrence_id = wrapper.lookup_visit_occurrence_id(visit_record_source_value)

        # Calculate proxy date
        basedata_record = wrapper.lookup_basedata_by_pid(row['p_id'])
        basedata_date_diagnosis = datetime(to_int(basedata_record['year_diagnosis']), 7, 1)
        fulong_days_psa_diag = row['days_psa_diag']

        if fulong_days_psa_diag != '':
            start_date = basedata_date_diagnosis + timedelta(days=float(fulong_days_psa_diag))
        else:
            start_date = basedata_date_diagnosis

        # Add record source value to Stem Table
        stem_table_record_source_value = create_fulong_stem_table_record_source_value(row['p_id'],
                                                                                      row['time'],
                                                                                      'dre')

        # Exception: Map variable separate from value
        if row['dre_fu'] != '':
            record = StemTable(
                person_id=int(row['p_id']),
                visit_occurrence_id=visit_occurrence_id,
                start_date=start_date.date(),
                start_datetime=start_date,
                concept_id=4254766,  # Digital rectal examination
                source_value='dre_fu',
                type_concept_id=0,
                record_source_value=stem_table_record_source_value
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
