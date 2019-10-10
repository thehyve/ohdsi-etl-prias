from .. import Wrapper
from ..model.cdm import *


def _skeleton(wrapper: Wrapper) -> int:
    session = wrapper.connection()

    source_data = wrapper.get_source_xxx()

    records_to_insert = []
    for row in source_data:
        person_id = wrapper.lookup_person_id(row['subject id'])
        record = Person(
            person_id=person_id,
            # ADD FIELD MAPPINGS HERE
        )
        records_to_insert.append(record)

    session.bulk_save_objects(records_to_insert)
    session.commit()
    session.close()

    return len(records_to_insert)
