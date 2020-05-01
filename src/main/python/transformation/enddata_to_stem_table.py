from src.main.python.model.cdm import StemTable
from src.main.python.util.create_record_source_value import create_enddata_stem_table_record_source_value
from datetime import datetime
from datetime import timedelta
import re
import logging


def enddata_to_stem_table(wrapper) -> list:
    enddata = wrapper.get_enddata()

    records_to_insert = []

    # Set operator_concept_id to None until proven otherwise
    operator_concept_id = None

    for row in enddata:

        basedata_record = wrapper.lookup_basedata_by_pid(row['p_id'])

        # Get date of discontinuation
        basedata_date_diagnosis = datetime(int(basedata_record['year_diagnosis']), 7, 1)
        enddata_days_discontinued = row['days_discontinued_diagnosis']

        start_datetime = basedata_date_diagnosis + timedelta(days=float(enddata_days_discontinued))

        for variable, value in row.items():

            # Ignore the following columns for mapping
            if variable in ['p_id', 'nr_fuvisits', 'pos_surgical_margins', 'pathology_reported',
                            'days_discontinued_diagnosis', 'year_discontinued', 'days_surgery_diagnosis']:
                continue

            # Skip empty string values
            if value == '':
                continue

            # Exception: Map ece, svi and adjuvant_radiotherapy only if value is 1
            if variable in ['ece', 'svi', 'adjuvant_radiotherapy'] and value != '1':
                continue

            # Exception: Do not map pos_surgical_margins when value is 9
            if variable == 'pos_surgical_margins' and value == '9':
                continue

            # Exception: Map sum of gleason1_rad_prost and gleason2_rad_prost
            if variable == 'gleason1_rad_prost':
                if row['gleason1_rad_prost'] == '' or row['gleason2_rad_prost'] == '':
                    logging.warning('One of the gleason scores is empty (gleason1_rad_prost or gleason2_rad_prost)')
                    continue
                variable, value = wrapper.gleason_sum(row, 'gleason1_rad_prost', 'gleason2_rad_prost')
            if variable == 'gleason2_rad_prost':
                continue

            # Exception: prostate_volume strip 'ml'
            if variable == 'prostatevolume':
                value = re.sub(r'\D', '', value)

            # Exception: postoperative_psa strip '&lt;'
            if variable == 'postoperative_psa':
                if '<' in value:
                    operator_concept_id = 4171756  # <
                    value = re.sub('<', '', value)
                value = re.sub(',', '.', value)

            # Extract variable and value form mapping tables
            target = wrapper.variable_mapper.lookup(variable, value)

            # Set stem table values
            concept_id = target.concept_id
            value_as_concept_id = target.value_as_concept_id
            value_as_number = target.value_as_number
            source_value = target.source_value
            value_source_value = target.value_source_value
            unit_concept_id = target.unit_concept_id

            # Give warning when vocabulary mapping is missing
            if target.concept_id is None:
                logging.warning(
                    'There is no target_concept_id for variable "{}" and value "{}"'.format(variable, value))

            # Add record source value to Stem Table
            stem_table_record_source_value = create_enddata_stem_table_record_source_value(row['p_id'],
                                                                                           variable)

            record = StemTable(
                person_id=int(row['p_id']),
                start_date=start_datetime.date(),
                start_datetime=start_datetime,
                end_date=start_datetime.date(),
                end_datetime=start_datetime,
                concept_id=concept_id,
                value_as_number=value_as_number,
                value_as_concept_id=value_as_concept_id,
                unit_concept_id=unit_concept_id if unit_concept_id else None,
                source_value=source_value,
                value_source_value=value_source_value,
                operator_concept_id=operator_concept_id,
                type_concept_id=0,
                record_source_value=stem_table_record_source_value
            )

            records_to_insert.append(record)

    return records_to_insert


if __name__ == '__main__':
    from src.main.python.database.database import Database
    from src.main.python.wrapper import Wrapper

    db = Database('postgresql://postgres@localhost:5432/postgres')  # A mock database object
    w = Wrapper(db, '../../../../resources/source_data', '../../../../resources/mapping_tables')
    for x in enddata_to_stem_table(w):
        print(x.__dict__)
