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
import csv
from pathlib import Path
from typing import Dict


class Target:

    def __init__(self):
        self.concept_id = None
        self.value_as_concept_id = None
        self.value_as_number = None
        self.unit_concept_id = None

    def __str__(self):
        return f'concept_id: {self.concept_id}, value_as_concept_id: {self.value_as_concept_id}, value_as_number: {self.value_as_number}, unit_concept_id: {self.unit_concept_id}'


class VariableConceptMapper:

    VARIABLE_MAP_FILE_NAME = 'variable_mapping.csv'
    VARIABLE_VALUE_MAP_FILE_NAME = 'variable_value_mapping.csv'
    VALUE_MAP_FILE_NAME = 'value_mapping.csv'
    UNIT_MAP_FILE_NAME = 'unit_mapping.csv'

    def __init__(self, directory: Path):
        self.variable_to_concept: Dict[str, int] = {}
        self.variable_value_to_concept: Dict[str, Dict[str, int]] = {}
        self.variable_to_unit: Dict[str, int] = {}
        self.variable_value_to_value: Dict[str, Dict[str, int]] = {}

        if directory:
            self.load(directory)

    def load(self, directory: Path):
        # TODO: validate the mapping files. Does every variable have either a categorical or numerical value
        if not directory.exists():
            raise FileNotFoundError(f"No such directory: '{directory}'")

        self._load_variable_map(directory / self.VARIABLE_MAP_FILE_NAME)
        self._load_variable_value_map(directory / self.VARIABLE_VALUE_MAP_FILE_NAME)
        self._load_value_map(directory / self.VALUE_MAP_FILE_NAME)
        self._load_unit_map(directory / self.UNIT_MAP_FILE_NAME)

    def _load_variable_map(self, file_path: Path):
        for row in self._load_map(file_path):
            variable = row['variable_source_code']
            target = row['target_concept_id']

            self.variable_to_concept[variable] = int(target)

    def _load_variable_value_map(self, file_path: Path):
        for row in self._load_map(file_path):
            variable = row['variable_source_code']
            value = row['value_source_code']
            target = row['target_concept_id']

            self.variable_value_to_concept.setdefault(variable, {})[value] = int(target)

    def _load_value_map(self, file_path: Path):
        for row in self._load_map(file_path):
            variable = row['variable_source_code']
            value = row['value_source_code']
            target = row['target_concept_id']

            self.variable_value_to_value.setdefault(variable, {})[value] = int(target)

    def _load_unit_map(self, file_path: Path):
        for row in self._load_map(file_path):
            variable = row['variable_source_code']
            target = row['target_concept_id']

            self.variable_to_unit[variable] = int(target)

    @staticmethod
    def _load_map(file_path: Path):
        with file_path.open() as f_in:
            for row in csv.DictReader(f_in):
                if row['invalid_reason']:
                    continue
                yield row

    def lookup(self, variable: str, value: str) -> Target:
        # TODO: error handling. What if variable and/or value not present in any mapping?
        value = str(value)
        target = Target()
        # Get concept_id from variable and value or only from variable (in that order of priority)
        target.concept_id = self.variable_value_to_concept.get(variable, {}).get(value) or \
                            self.variable_to_concept.get(variable)

        # value is either categorical or numerical
        is_categorical_value = variable in self.variable_value_to_concept or variable in self.variable_value_to_value
        if is_categorical_value:
            target.value_as_concept_id = self.variable_value_to_value.get(variable, {}).get(value)
        else:
            target.value_as_number = float(value)
            target.unit_concept_id = self.variable_to_unit.get(variable)

        return target


if __name__ == '__main__':
    mapper = VariableConceptMapper(Path('./resources/mapping_tables'))

    a = mapper.lookup('biopt_route', '1')
    print(a)  # c_id = 4339403
    b = mapper.lookup('biopt_inf_urine_bacterium', '2')
    print(b)  # c_id = 36304419, v_c_id = 4211547
    c = mapper.lookup('psa', '55.2')
    print(c)  # c_id = 44793131, v_n = 55.2, u_c_id = 8842
    d = mapper.lookup('biopt_route', '99')
    print(d)  # c_id = 4278515 (the backup mapping if combo var+val not found)
