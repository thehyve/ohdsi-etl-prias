from src.main.python.wrapper import Wrapper
from src.main.python.model.cdm import *


def _skeleton(wrapper: Wrapper) -> list:
    source_data = wrapper.get_basedata()

    records_to_insert = []
    for row in source_data:
        person_id = wrapper.lookup_person_id(row['p_id'])
        record = Person(
            person_id=person_id,
            # ADD FIELD MAPPINGS HERE
        )
        records_to_insert.append(record)

    return records_to_insert


if __name__ == '__main__':
    from src.main.python.database.database import Database

    db = Database(f'postgresql://postgres@localhost:5432/postgres')  # A mock database object
    w = Wrapper(db, './resources/source_data')
    w.person_id_lookup = {}
    _skeleton(w)
