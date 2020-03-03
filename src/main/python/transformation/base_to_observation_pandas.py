import pandas as pd
from src.main.python.model.cdm import ObservationPeriod
from datetime import date


def basedata_to_observation_period(wrapper) -> list:
    base_data = wrapper.get_basedata()
    df_base_data = pd.DataFrame(base_data)
    print(df_base_data.columns)

    end_data = wrapper.get_enddata()
    df_end_data = pd.DataFrame(end_data)
    print(df_end_data.columns)

    # Merge the year_discontinued column from enddata to the dataframe
    # and keep columns to populate the observation_period table only
    df_data = pd.merge(df_base_data[['p_id', 'year_diagnosis']],
                       df_end_data[['p_id', 'year_discontinued']],
                       on='p_id')

    df_data['p_id'] = df_data['p_id'].apply(lambda x: int(x))
    df_data['start_date'] = df_data['year_diagnosis'].apply(lambda x: date(int(x), 7, 1))
    # If year_discontinued is empty add a general extraction date 2099/7/1
    df_data['end_date'] = df_data['year_discontinued'].fillna(2099).apply(lambda x: date(int(x), 7, 1))

    records_to_insert = []
    for index, row in df_data.iterrows():
        record = ObservationPeriod(
            person_id=row['p_id'],
            observation_period_start_date=row['start_date'],
            observation_period_end_date=row['end_date'],
            period_type_concept_id=44814723  # Period while enrolled in study
        )
        records_to_insert.append(record)
    return records_to_insert


if __name__ == '__main__':
    from src.main.python.database.database import Database
    from src.main.python.wrapper import Wrapper

    db = Database('postgresql://postgres@localhost:5432/postgres')  # A mock database object
    w = Wrapper(db, '../../../../resources/test_datasets/1000_records/', '../../../../resources/mapping_tables')
    for x in basedata_to_observation_period(w):
        print(x.__dict__)
