#source('TestFramework.R')

# Base data to person -------------------------------------------
declareTest(101, 'Person')
add_basedata(p_id='101', year_birth='1990')
expect_person(person_id=101, gender_concept_id=8507, year_of_birth=1990, person_source_value='101')

# Base data to person -------------------------------------------
declareTest(102, 'Person')
add_basedata(p_id='102', year_birth='1921')
expect_person(person_id=102, gender_concept_id=8507, year_of_birth=1921, person_source_value='102')


