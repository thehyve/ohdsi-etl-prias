#source('TestFramework.R')

# Base data to person -------------------------------------------
declareTest(1, 'Person')
add_basedata(p_id='10000', year_birth='1990')
expect_person(person_id=10000, gender_concept_id=8507, year_of_birth=1990, person_source_value='10000')

# Base data to person -------------------------------------------
declareTest(2, 'Person')
add_basedata(p_id='10001', year_birth='1921')
expect_person(person_id=10001, gender_concept_id=8507, year_of_birth=1921, person_source_value='10001')

# Base data to person -------------------------------------------
declareTest(3, 'Person')
add_basedata(p_id='10002', year_birth='1960')
expect_person(person_id=10002, gender_concept_id=8507, year_of_birth=1960, person_source_value='10002')

# Base data to person -------------------------------------------
declareTest(4, 'Person - death')
add_basedata(p_id='10004', year_birth='1988')
add_enddata(p_id='10004', discontinued='Died', year_discontinued='2018')
expect_person(person_id=10004, gender_concept_id=8507, year_of_birth=1988, person_source_value='10004', 
              death_datetime='1988-07-01 00:00:00')

# Base data to person -------------------------------------------
declareTest(5, 'Person - other reason of discontinuation')
add_basedata(p_id='10005', year_birth='1978')
add_enddata(p_id='10005', discontinued='Robot radical prostatectomy', year_discontinued='2014')
expect_person(person_id=10004, gender_concept_id=8507, year_of_birth=1978, person_source_value='10004')

