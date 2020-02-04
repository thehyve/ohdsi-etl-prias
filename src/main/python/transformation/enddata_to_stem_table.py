from src.main.python.model.cdm import StemTable
from datetime import datetime
from datetime import timedelta
import re

def enddata_to_stem_table(wrapper) -> list:
    enddata = wrapper.get_enddata()

    records_to_insert = []
    for row in enddata:

        basedata_record = wrapper.lookup_basedata_by_pid(row['p_id'])

        basedata_date_diagnosis = datetime(int(basedata_record['year_diagnosis']), 7, 1)
        enddata_days_discontinued = row['days_discontinued_diagnosis']

        operator_post_psa = 0

        if '&lt;' in row['postoperative_psa']:
            operator_post_psa = 4171756

        if enddata_days_discontinued != '':
            end_date = basedata_date_diagnosis + timedelta(days=float(enddata_days_discontinued))
        else:
            end_date = basedata_date_diagnosis

        for variable, value in row.items():
            if variable in ['p_id', 'nr_fuvisits', 'pos_surgical_margins', 'pathology_reported']:
                continue
            # Skip empty string values
            if value == '' or value == None:
                continue

            #ece and svi only if =1
            if variable == 'ece' and value != 1:
                continue
            if variable == 'svi' and value != 1:
                continue

            #Combine gleason_rad_prost in one value
            if variable == 'gleason1_rad_prost' and row['gleason1_rad_prost'] != '' and row['gleason2_rad_prost'] != '':
                variable = 'gleason1_rad_prost_gleason2_rad_prost'
                if row['gleason1_rad_prost'] == "3" and row['gleason2_rad_prost'] == "4":
                    value = "3+4"
                elif row['gleason1_rad_prost'] == "4" and row['gleason2_rad_prost'] == "3":
                    value = "4+3"
                else:
                    value = float(row['gleason1_rad_prost']) + float(row['gleason2_rad_prost'])
                print(variable, value)
            if variable == 'gleason2_rad_prost':
                continue

            #prostate_volume strip 'ml'
            if variable == 'prostatevolume':
                value = re.sub(r'\D', '', value)

            #postoperative_psa strip '&lt;'
            if variable == 'postoperative_psa':
                value = re.sub('&lt;', '', re.sub(',', '.', value))

            # Extract variable and value form mapping tables
            target = wrapper.variable_mapper.lookup(variable, value)
            #print(target)

            # Set stem table values
            concept_id = target.concept_id
            value_as_concept_id = target.value_as_concept_id
            value_as_number = target.value_as_number

            # Do not map if there is no variable mapping
            if (target.concept_id == None) or (target.concept_id == 0):
                continue

            record = StemTable(
                person_id=int(row['p_id']),
                start_datetime=basedata_date_diagnosis,
                concept_id=concept_id,
                value_as_number=value_as_number,
                value_as_concept_id=value_as_concept_id,
                source_value=variable, # TODO variable name
                value_source_value=value,
                end_date=end_date,
                operator_concept_id=operator_post_psa,
                type_concept_id=0
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
