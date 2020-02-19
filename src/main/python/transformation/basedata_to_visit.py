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
from src.main.python.util.create_record_source_value import create_basedata_visit_record_source_value

def basedata_to_visit(wrapper) -> list:
    source_table_name = 'basedata'

    basedata = wrapper.get_basedata()

    records_to_insert = []
    for row in basedata:
        for visit_type in ['standard', 'mri', 'biopsy']:

            # Every patient has Baseline Visit record
            if visit_type == 'standard':
                visit_concept_id = 2000000027  # Baseline Visit
            # Add visit record with custom concept Baseline Visit - MRI when an MRI was taken
            elif visit_type == 'mri' and row['mri_taken.0'] == '1':
                visit_concept_id = 2000000066  # Baseline Visit - MRI
            elif visit_type == 'biopsy':
                visit_concept_id = 2000000105  # Baseline Visit - Biopsy
            else:
                continue

            # Create visit_occurrence_source_value for visit_id lookup
            visit_record_source_value = create_basedata_visit_record_source_value(row['p_id'], source_table_name, visit_type)

            start_date = datetime(to_int(row['year_diagnosis']), 7, 1)

            record = VisitOccurrence(
                person_id=int(row['p_id']),
                visit_concept_id=visit_concept_id,
                visit_source_concept_id=0,
                visit_start_date=start_date.date(),
                visit_start_datetime=start_date,
                visit_end_date=start_date.date(),
                visit_end_datetime=start_date,
                visit_type_concept_id=44818519,  # Clinical Study visit
                discharge_to_concept_id=0,
                admitted_from_concept_id=0,
                record_source_value=visit_record_source_value
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
