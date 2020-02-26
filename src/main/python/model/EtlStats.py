# Copyright 2020 The Hyve
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


class EtlStats:
    """
    Stores ETL statistics:
     - list of transformations executed with script name, target table (?), start time, end time, status (exceptions) and number of rows inserted
     - list of source tables with file/tablename and raw input row counts
     - list of OMOP target tables with tablename and output row counts
     - ? list of temporary/intermediate tables with tablename and row counts

    Output is an ETL summary report. This to replace the current pretty formatted log.
    """
    def __init__(self):
        self.transformations = []
        self.sources = []
        self.targets = []

    def add_execution(self, script_name, source_table_name, target_table_name, start_time, end_time, status, n_rows):
        pass

    def add_source(self, source_file_name, source_table_name, n_rows):
        pass

    def add_target(self, target_file_name, target_table_name, n_rows):
        pass

    def output_summary(self):
        pass
