# Base data to visit_occurrence -------------------------------------------
declareTest(103, 'Visit Occurrence - base')
add_basedata(p_id='103', year_diagnosis = '2018')
expect_visit_occurrence(person_id = 103, visit_concept_id = 2000000027, visit_start_date = '2018-07-01', visit_end_date = '2018-07-01',
                        visit_type_concept_id = 44818519)

# Follow-up data to visit_occurrence -------------------------------------------
declareTest(104, 'Visit Occurrence - follow-up')
add_fulong(p_id = '103', time = 1, days_psa_diag = 5)
expect_visit_occurrence(person_id = 103, visit_concept_id = 2000000028, visit_start_date = '2018-07-06', visit_end_date = '2018-07-06' )