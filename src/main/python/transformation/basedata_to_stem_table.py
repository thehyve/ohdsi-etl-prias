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


def basedata_to_stem_table(wrapper) -> list:
    source_data = wrapper.get_basedata()

    records_to_insert = []
    for row in source_data:
        for variable, value in row.items():
            if row['year_diagnosis'] == '':
                continue

            # Skip columns not containing variables
            if variable in ['p_id', 'year_diagnosis', 'year_birth']:
                continue

            if variable.startswith('biopt_') or variable.startswith('mri_'):
                # TODO: separate transformation script for biopt_xx and mri_xx variables, which only should be captured if biopt or mri taken, respectively
                continue

            # TODO: skip variables not to be mapped (e.g. gleason_sum, pro_psa, etc.)
            # TODO: separate transformation script for mapping of gleason1+2 (combined), mri_location_free_1.0 (as string)
            target = wrapper.variable_mapper.lookup(variable, value)

            record = StemTable(
                person_id=int(row['p_id']),
                start_date=date(int(row['year_diagnosis']), 7, 1),
                start_datetime=datetime(int(row['year_diagnosis']), 7, 1),
                concept_id=target.concept_id,
                value_as_concept_id=target.value_as_concept_id,
                value_as_number=target.value_as_number,
                unit_concept_id=target.unit_concept_id,
                source_value=variable,
                value_source_value=value,
                unit_source_value=variable if target.unit_concept_id else None,
                type_concept_id=0  # TODO
            )
            records_to_insert.append(record)

    return records_to_insert


if __name__ == '__main__':
    from src.main.python.database.database import Database
    from src.main.python.wrapper import Wrapper

    db = Database('postgresql://postgres@localhost:5432/postgres')  # A mock database object
    w = Wrapper(db, '../../../../resources/source_data', '../../../../resources/mapping_tables')
    for x in basedata_to_stem_table(w):
        print(x.__dict__)
