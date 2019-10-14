source("TestFramework.R")

# DEFINE YOUR TESTS -------------------------------------------
declareTest(1, 'Test Name')
add_basedata()

expect_procedure_occurrence(procedure_concept_id = 132456, procedure_date = 'xxxx-xx-xx')
expect_no_procedure_occurrence(procedure_concept_id = 987645, procedure_date = 'xxxx-xx-xx')
expect_count_procedure_occurrence(procedure_concept_id = 147258369, procedure_date = 'xxxx-xx-xx', rowCount = 5)

