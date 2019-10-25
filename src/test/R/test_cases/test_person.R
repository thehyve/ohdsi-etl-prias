source('TestFramework.R')

# Base data to person -------------------------------------------
declareTest(101, 'Person')
add_basedata(p_id='101', year_birth='1990')
expect_person(person_id=1234, gender_concept_id=8507, year_of_birth=1990, person_source_value='1234')




