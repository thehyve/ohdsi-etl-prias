# Basedata and enddata to observation period -------------------------------------------
declareTest(10, 'Observation period - enddate provided')
add_basedata(p_id='10010', year_diagnosis='2009')
add_enddata(p_id='10010', year_discontinued='2010')
expect_observation_period(person_id=10010, observation_period_start_date='2009-07-01', 
              observation_period_end_date='2010-07-01', period_type_concept_id=44814723)

# Basedata and enddata to observation period -------------------------------------------
declareTest(11, 'Observation period - enddate not provided')
add_basedata(p_id='10011', year_diagnosis='1990')
expect_observation_period(person_id=10011, observation_period_start_date='1990-07-01', 
                          observation_period_end_date='2099-07-01', period_type_concept_id=44814723)


