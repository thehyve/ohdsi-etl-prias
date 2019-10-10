import csv
from ..model.cdm import Concept


def load_2b_concepts(session, filename):
    with open(filename) as f_in:
        codes = csv.DictReader(f_in)

        for row in codes:
            concept = Concept(
                concept_id=row['concept_id'],
                concept_name=row['concept_name'],
                domain_id=row['domain_id'],
                vocabulary_id=row['vocabulary_id'],
                concept_class_id=row['concept_class_id'],
                standard_concept=row['standard_concept'],
                concept_code=row['concept_name'][0:49],
                valid_start_date=row['valid_start_date'],
                valid_end_date=row['valid_end_date'],
                invalid_reason=row['invalid_reason']
            )
            session.add(concept)

    session.commit()
    session.close()
