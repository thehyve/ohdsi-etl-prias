source("TestFramework.R")

# Numeric measurement -------------------------------------------
declareTest(199, 'psa level')
add_basedata(p_id = '10199', psa = 5.1)

expect_person(person_source_value = '10199')
expect_measurement(person_id = lookup_person('person_id', person_source_value = '10199'), 
                   measurement_concept_id = 44793131, value_as_number = 5.1, unit_concept_id = 8842,
                   value_as_concept_id = NULL)

# Categorical measurement -------------------------------------------------
declareTest(200, 'biopt urine bacterium')
add_basedata(p_id = '10200', biopt_inf_urine_bacterium = '1')

expect_person(person_source_value = '10200')
expect_measurement(person_id = lookup_person('person_id', person_source_value = '10200'), 
                   measurement_concept_id = 36304419, value_as_number = NULL, unit_concept_id = NULL,
                   value_as_concept_id = 4011683, value_source_value = '1')

# Variable+value to concept id observation -------------------------------------------------
declareTest(201, 'biopt route')
add_basedata(p_id = '10201', biopt_route = '1')

expect_person(person_source_value = '10201')
expect_procedure_occurrence(person_id = lookup_person('person_id', person_source_value = '10201'), 
                            procedure_concept_id = 4339403)

