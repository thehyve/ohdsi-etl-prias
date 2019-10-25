source("TestFramework.R")

# Numeric measurement -------------------------------------------
declareTest(201, 'psa level')
add_basedata(p_id = '201', psa = 5.1)

expect_person(person_source_value = '201')
expect_measurement(person_id = lookup_person('person_id', person_source_value = '201'), 
                   measurement_concept_id = 44793131, value_as_number = 5.1, unit_concept_id = 8842,
                   value_as_concept_id = NULL)

# Categorical measurement -------------------------------------------------
declareTest(202, 'biopt urine bacterium')
add_basedata(p_id = '202', biopt_inf_urine_bacterium = '1')

expect_person(person_source_value = '202')
expect_measurement(person_id = lookup_person('person_id', person_source_value = '202'), 
                   measurement_concept_id = 36304419, value_as_number = NULL, unit_concept_id = NULL,
                   value_as_concept_id = 4011683, value_source_value = '1')

# Variable+value to concept id observation -------------------------------------------------
declareTest(203, 'biopt route')
add_basedata(p_id = '203', biopt_route = '1')

expect_person(person_source_value = '203')
expect_procedure_occurrence(person_id = lookup_person('person_id', person_source_value = '203'), 
                            procedure_concept_id = 4339403)

