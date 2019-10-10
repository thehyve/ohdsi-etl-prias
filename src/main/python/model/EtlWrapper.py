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
from collections import defaultdict
import csv
import os
import time
import subprocess
import re
import traceback
import logging

from sqlalchemy import text
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import MetaData

# Import ORM for all OMOP tables
from src.main.python.model.cdm import *


logger = logging.getLogger(__name__)


class EtlWrapper:
    """
    This module coordinates the execution of the python transformations
    If debug mode is on, the primary key constraints are applied before loading
    to get direct feedback if there are issues. This does make the loading step of the ETL significantly slower.
    """
    SOURCE_ROW_COUNT_FORMAT = '{:<60.60} {:>10}'

    def __init__(self, database, source_schema, debug):
        self.db = database

        self.source_schema = source_schema
        self.debug = debug

        self.n_queries_executed = 0
        self.n_queries_failed = 0
        self.total_rows_inserted = 0
        self.is_constraints_applied = False
        self.is_constraints_extensions_applied = False
        self.t_start = None
        self.cwd = os.getcwd()

        self._person_lookup = None
        self._stcm_lookup = defaultdict(dict)  # {source_vocabulary_id: {source_code: target_concept_id}}

    def count_csv_lines(self, file):
        """
        Counts the line of a .csv file
        :param file: input file
        :return n_rows: number of rows from .csv file, assuming file has header
        """
        try:
            f = open(file)
            n_rows = len(f.readlines()) - 1
            f.close()
        except:
            return None

        return n_rows

    def run(self):
        """Run ETL procedure"""
        raise NotImplementedError('Method is not implemented')

    @staticmethod
    def is_git_repo():
        return os.path.exists('./.git')

    @staticmethod
    def get_git_tag_or_branch():
        """ Get the current git branch or tag using regular expressions
            TODO: get this information from ./.git/HEAD and ./.git/refs/tags/
        """
        # Run 'git branch' command
        try:
            branch_str = str(subprocess.check_output(['git', 'branch']))
        except subprocess.CalledProcessError:
            return

        # Check if branch is from a git version
        if re.search('HEAD', branch_str):
            # Retrieve git release version
            return 'release ' + re.findall('\*.+?([0-9\.]+).+?\\\\n', str(branch_str))[0]
        else:
            # Else retrieve the git branch name
            return 'branch ' + re.findall('\* (.+?)\\\\n', str(branch_str))[0]

    def reset_summary_stats(self):
        self.n_queries_executed = 0
        self.n_queries_failed = 0
        self.total_rows_inserted = 0

    def log_timestamp(self):
        logger.info(time.strftime('%a %Y-%m-%d %H:%M:%S'))

    def start_timing(self):
        self.t_start = time.time()

    def log_runtime(self):
        """Prints total execution time on subsequent"""
        total_seconds = time.time() - self.t_start
        m, s = divmod(total_seconds, 60)
        h, m = divmod(m, 60)
        logger.info('Run time: {:>20.1f} seconds ({:>1.0f}:{:>02.0f}:{:>02.0f})'.format(total_seconds, h, m, s))

    def log_summary(self):
        logger.info("Queries successfully executed: %d" % self.n_queries_executed)
        logger.info("Queries failed: %d" % self.n_queries_failed)
        logger.info("Rows inserted: {:,}".format(self.total_rows_inserted))

    def log_tables_rowcounts(self, source_data_dir, do_log_total=True):
        """
        Writes the row count of all given source tables from a SQL instance to the log.
        If do_log_total is set to True, it will write the sum of the row counts as well.
        Will ONLY write to file log, not to command line.
        :param file_paths: list of source table names
        :param do_log_total: boolean, default True
        """
        total = 0

        for path in source_data_dir.glob('*'):
            total += self.log_table_rowcount(path)

        if len(list(source_data_dir.glob('*'))) > 1 and do_log_total:
            logger.info('+' * (60 + 1 + 10))
            logger.info(self.SOURCE_ROW_COUNT_FORMAT.format('TOTAL', total))

    def log_table_rowcount(self, file_path):
        """
        Writes the row count of given source table to the log.
        Will ONLY write to file log, not to command line.
        :param file_path: name of the source table
        :return: row count
        """
        is_error = False
        count = None
        try:
            count = self.count_csv_lines(file_path)
        except Exception:
            is_error = True

        if is_error or count is None:
            logger.info(self.SOURCE_ROW_COUNT_FORMAT.format(str(file_path), '-'))
            return 0

        logger.info(self.SOURCE_ROW_COUNT_FORMAT.format(str(file_path), count))
        return count

    def execute_sql_file(self, file_path, verbose=True):
        # Open and read the file as a single buffer
        with open(file_path, 'r') as f:
            query = f.read().strip()

        if verbose:
            self.log_query_in_progress(file_path)

        return self.execute_sql_query(query, verbose)

    def execute_sql_query(self, query, verbose=True):
        # Prepare parameterized sql
        query = query.replace('@absPath', self.cwd)
        query = query.replace("@source_schema", self.source_schema)

        t1 = time.time()

        with self.db.engine.connect() as con:
            try:
                statement = text(query).execution_options(autocommit=True)
                result = con.execute(statement)
            except Exception as msg:
                error = msg.args[0].split('\n')[0]
                if verbose:
                    logger.info("###")  # newline before error
                logger.error("Query failed:")
                logger.error(query)
                logger.error("\t%s" % error)
                self.n_queries_failed += 1
                return
        t2 = time.time()

        if verbose:
            # NOTE: if multiple queries, then rowcount only last number of inserted/updated rows
            self.log_query_completed(query, result.rowcount, t2 - t1)

        # Note: only tracks row count correctly if 1 insert per file and no update/delete scripts
        if result.rowcount > 0 and self.parse_query_type(query) in ['INTO', 'CREATE']:
            self.total_rows_inserted += result.rowcount

        self.n_queries_executed += 1
        return result

    def execute_transformation(self, statement, verbose=True):
        """
        Executes a ETL transformation via a python statement (function that will be called)
        :param statement: python function that takes as an argument a SQLalchemy session and a dictionary with key: OMOP table name and values: ORM tables classes definitions
        :param verbose boolean that toggles output of execution log line
        """
        t1 = time.time()

        try:
            rowcount = statement(self)
        except Exception as msg:
            if self.debug:
                raise msg
            logger.error("#!#! ERROR: Transformation '%s' failed:" % statement.__name__)
            logger.error(traceback.format_exc(limit=1))

            logger.error("##### START FULL TRACEBACK #####")
            logger.error(traceback.format_exc().join('\n# '))  # TODO: join does not work. Other way to prepand each line?
            logger.error("##### END FULL TRACEBACK #####")

            self.n_queries_failed += 1
            return

        t2 = time.time()

        if verbose:
            # NOTE: if multiple queries, then rowcount only last number of inserted/updated rows
            self.log_query_completed(statement, rowcount, t2 - t1)

        # Note: only tracks row count correctly if 1 insert per file and no update/delete scripts
        if rowcount > 0:
            self.total_rows_inserted += rowcount

        self.n_queries_executed += 1
        return

    def load_concept_from_csv(self, source_file):
        """
        Insert or update concepts from csv file to Concept table.
        Input file has to have a header with Concept column_names.
        Note: inserts are one-by-one, so can be slow for large vocabulary files
        """
        self.log_query_in_progress(os.path.basename(source_file))

        t1 = time.time()
        session = self.connection()
        n_creates = 0
        n_updates = 0
        with open(source_file) as f_in:
            rows = csv.DictReader(f_in)
            for row in rows:
                concept = session.query(Concept).get(row['concept_id'])

                if not concept:
                    concept = Concept()
                    n_creates += 1
                else:
                    n_updates += 1

                # Set all variables
                for key, value in row.items():
                    setattr(concept, key, value)

                session.add(concept)
        session.commit()
        session.close()

        t2 = time.time()

        message = 'INTO concept - created {}, updated {}'.format(n_creates, n_updates)
        self.log_table_completed(message, n_creates + n_updates, t2-t1, '')

    def load_source_to_concept_map_from_csv(self, source_file, truncate_first=False):
        source_base_name = os.path.basename(source_file)
        self.log_query_in_progress(source_base_name)

        t1 = time.time()
        session = self.connection()

        if truncate_first:
            session.query(SourceToConceptMap).delete()

        n_creates = 0
        with open(source_file) as f_in:
            rows = csv.DictReader(f_in)
            for row in rows:
                source_vocab = session.query(Vocabulary).get(row['source_vocabulary_id'])

                if not source_vocab:
                    session.add(Vocabulary(
                        vocabulary_id=row['source_vocabulary_id'],
                        vocabulary_name=row['source_vocabulary_id'].replace('_', '').title(),
                        vocabulary_concept_id=0
                    ))

                session.add(
                    SourceToConceptMap(**row)
                )

                self._stcm_lookup[row['source_vocabulary_id']][row['source_code']] = int(row['target_concept_id'])

                n_creates += 1

        session.commit()
        session.close()

        t2 = time.time()
        self.log_table_completed('INTO source_to_concept_map', n_creates, t2-t1, '')

    def lookup_stcm(self, source_vocabulary_id, source_code):
        if source_vocabulary_id not in self._stcm_lookup:
            logger.warning('source_vocabulary "{}" not found'.format(source_vocabulary_id))
            return 0

        # Database restriction: max. 50 characters for source_code
        if len(source_code) > 50:
            source_code = source_code[:50]

        try:
            return self._stcm_lookup[source_vocabulary_id][source_code]
        except KeyError:
            return 0

    def log_query_in_progress(self, filename):
        basename = os.path.basename(filename)
        logger.info("{:<30.30} => ".format(basename))

    def log_query_completed(self, py_func, row_count, execution_time=None):
        """ Create message on how many lines inserted into which table """
        if row_count >= 0:
            # NOTE: if multiple queries, then rowcount only last number of inserted/updated rows
            table_into = py_func.__name__
            prefix = ''
            return self.log_table_completed(table_into, row_count, execution_time, prefix)

        return self.log_table_completed(None, row_count, execution_time)

    def log_query_completed__sqlfile(self, sql_query, row_count, execution_time=None):
        """ Create message on how many lines inserted into which table from a SQL script run """
        if row_count >= 0:
            # NOTE: if multiple queries, then rowcount only last number of inserted/updated rows
            table_into = self.parse_target_table_session(sql_query)
            prefix = self.parse_query_type(sql_query)

            return self.log_table_completed(table_into, row_count, execution_time, prefix)

        return self.log_table_completed(None, row_count, execution_time)

    def log_table_completed(self, table_into, row_count, execution_time, prefix='INTO', show_count_per_record=False):
        if table_into:
            table_into_message = prefix + ' ' + table_into
        else:
            table_into_message = 'Nothing inserted'

        message = '{:<40.40} {:>9,} [{:>8.2f} s'.format(table_into_message, row_count, execution_time)

        if show_count_per_record and row_count > 0:
            message += '| {:>.1e} s/#]'.format(execution_time/row_count)
        else:
            message += ']'

        logger.info(message)

    @staticmethod
    def parse_query_type(query):
        match = re.search(r'^\s*((?:INSERT )?INTO|CREATE TABLE|DELETE\s+FROM|UPDATE)\s+(.+?)\s',
                          query,
                          re.IGNORECASE | re.MULTILINE
                          )
        if match:
            statement = match.group(1).upper()
        else:
            return ''

        if 'INTO' in statement:
            return 'INTO'
        elif 'DELETE' in statement:
            return 'DELETE'
        elif 'CREATE' in statement:
            return 'CREATE'
        elif 'UPDATE' in statement:
            return 'UPDATE'
        else:
            return ''

    def parse_target_table_session(py_func):
        return py_func.__name__

    @staticmethod
    def parse_target_table_sqlquery(query):
        match = re.search(r'^\s*((?:INSERT )?INTO|CREATE TABLE|DELETE\s+FROM|UPDATE)\s+(.+?)\s',
                          query,
                          re.IGNORECASE | re.MULTILINE
                          )
        if match:
            return match.group(2)
        else:
            return '?'