import logging
from contextlib import contextmanager

from sqlalchemy import create_engine, MetaData
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

base = declarative_base()

logger = logging.getLogger(__name__)


class Database:
    def __init__(self, uri: str):
        self.engine = create_engine(uri, use_batch_mode=True)
        self.metadata = self._set_metadata()
        self.base = base

        self._sessionmaker = sessionmaker(bind=self.engine)

    def _set_metadata(self):
        """Reflect database schemas depending on which action needs to be performed."""
        metadata = MetaData()
        metadata.reflect(bind=self.engine)
        return metadata

    def get_new_session(self):
        return self._sessionmaker()

    def close_connection(self):
        self.engine.dispose()

    @staticmethod
    def perform_rollback(session):
        logger.info('Performing rollback')
        session.rollback()
        logger.info('Rollback completed')

    @contextmanager
    def session_scope(self):
        """Provide a transactional scope around a series of operations."""
        session = self.get_new_session()
        try:
            yield session
            session.commit()
        except Exception as e:
            logger.error(e)
            self.perform_rollback(session)
            raise
        finally:
            session.close()
