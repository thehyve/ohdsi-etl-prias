#source('TestFramework.R')

# Basedata to person -------------------------------------------
declareTest(1, 'Person')
add_basedata(p_id='10001', year_birth='1990')
expect_person(person_id=10001, gender_concept_id=8507, year_of_birth=1990, person_source_value='10001')

# Basedata to person -------------------------------------------
declareTest(2, 'Person')
add_basedata(p_id='10002', year_birth='1921')
expect_person(person_id=10002, gender_concept_id=8507, year_of_birth=1921, person_source_value='10002')

# Base data to person -------------------------------------------
declareTest(3, 'Person')
add_basedata(p_id='10003', year_birth='1960')
expect_person(person_id=10003, gender_concept_id=8507, year_of_birth=1960, person_source_value='10003')

# Basedata to person -------------------------------------------
declareTest(4, 'Person - Death')
add_basedata(p_id='10004', year_birth='1988')
add_enddata(p_id='10004', discontinued='Died', year_discontinued='2018')
expect_person(person_id=10004, gender_concept_id=8507, year_of_birth=1988, person_source_value='10004', 
              death_datetime='2018-07-01 00:00:00')

# Basedata to person -------------------------------------------
declareTest(5, 'Person - Other reason of discontinuation')
add_basedata(p_id='10005', year_birth='1978')
add_enddata(p_id='10005', discontinued='Robot radical prostatectomy', year_discontinued='2014')
expect_person(person_id=10005, gender_concept_id=8507, year_of_birth=1978, person_source_value='10005')

