from src.main.python.model.cdm import CdmSource
from src.main.python.model.cdm import Vocabulary
#from sqlalchemy.orm.session import Session
from datetime import date


def cdm_source(wrapper) -> list:

    with wrapper.db.session_scope() as session:
        records_to_insert = []

        # Get vocabulary info
        vocab_info = session.query(Vocabulary).filter_by(vocabulary_id='None').one()

        record = CdmSource(
            cdm_source_name='PRIAS',
            cdm_etl_reference='https://github.com/thehyve/ohdsi-etl-prias',
            cdm_release_date=date.today(),
            cdm_version='v6.x',
            vocabulary_version=vocab_info.vocabulary_version
        )

        records_to_insert.append(record)

    return records_to_insert


if __name__ == '__main__':
    from src.main.python.database.database import Database
    from src.main.python.wrapper import Wrapper

    db = Database(f'postgresql://postgres@localhost:5432/postgres')  # A mock database object
    w = Wrapper(db, '../../../../resources/source_data')
    for x in cdm_source(w):
        print(x.__dict__)
