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

import logging
import sys
import traceback

import click

from src.main.python.model.setup_logging import setup_logging
from src.main.python.database.database import Database
from src.main.python.wrapper import Wrapper

__version__ = '0.1.0'

logger = logging.getLogger(__name__)


@click.command()
@click.option('--hostname', '-h', default='localhost', metavar='<host>',
              help='Database server host or socket directory (localhost)')
@click.option('--port', '-p', default='5432', metavar='<port>', type=int,
              help='Database server port (5432)')
@click.option('--database', '-d', default='etl1', metavar='<database>',
              help='Database name to connect to (etl1)')
@click.option('--username', '-u', default='postgres', metavar='<username>',
              help='Database user name (postgres)')
@click.option('--password', '-w', default='', metavar='<pw>',
              help='User password ()')
@click.option('--source', '-s', required=True, metavar='<folder_name>',
              type=click.Path(file_okay=False, exists=True, readable=True),
              help='Folder containing the source data tables as csv.')
@click.option('--debug', default=False, metavar='<debug_mode>', is_flag=True,
              help='In debug mode, the table constraints are applied before loading')
# @click.option('--skipvocab', default=False, metavar='<skip_vocab>', is_flag=True,
#               help='When provided, the loading and pre-processing '
#                    'of source to target vocabularies is skipped')
def main(database, username, password, hostname, port, source, debug):
    setup_logging(debug)

    # Test database connection
    uri = f'postgresql://{username}:{password}@{hostname}:{port}/{database}'
    if not Database.can_connect(uri):
        return

    db = Database(uri)
    etl = Wrapper(db, source, './resources/mapping_tables')

    logger.info('ETL version {}'.format(__version__))
    if etl.is_git_repo():
        logger.info('Git HEAD at ' + etl.get_git_tag_or_branch())

    # Run ETL
    try:
        etl.run()
    except Exception as err:
        logger.error('##### FATAL ERROR. TRACEBACK: #####')
        logger.error(traceback.format_exc())
        raise err


if __name__ == "__main__":
    sys.exit(main())
