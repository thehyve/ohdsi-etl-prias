# Basedata to visit_occurrence -------------------------------------------
declareTest(6, 'Visit Occurrence - year_diagnois')
add_basedata(p_id='10006', year_diagnosis='2018')
expect_visit_occurrence(person_id=10006, visit_concept_id=2000000027, 
                        visit_start_date='2018-07-01', visit_start_datetime='2018-07-01 00:00:00',
                        visit_end_datetime='2018-07-01 00:00:00', visit_end_date='2018-07-01',
                        visit_type_concept_id=44818519)


# Basedata to visit_occurrence -------------------------------------------
declareTest(7, 'Visit Occurrence - year_diagnosis')
add_basedata(p_id='10007', year_diagnosis='2016')
expect_visit_occurrence(person_id=10007, visit_concept_id=2000000027, 
                        visit_start_date='2016-07-01', visit_start_datetime='2016-07-01 00:00:00',
                        visit_end_datetime='2016-07-01 00:00:00', visit_end_date='2016-07-01',
                        visit_type_concept_id=44818519)

# Fulong to visit_occurrence -------------------------------------------
declareTest(8, 'Visit Occurrence - time/ days_psa_diag')
add_basedata(p_id='10008', year_diagnosis='2018')
add_fulong(p_id='10008', time=1, days_psa_diag=5)
expect_visit_occurrence(person_id=10008, visit_concept_id=2000000028, 
                        visit_start_date='2018-07-06', visit_start_datetime='2018-07-06 00:00:00', 
                        visit_end_date='2018-07-06', visit_end_datetime='2018-07-06 00:00:00', 
                        visit_type_concept_id=44818519, visit_source_value=1)

# Fulong to visit_occurrence -------------------------------------------
declareTest(9, 'Visit Occurrence - time/ days_psa_diagn')
add_fulong(p_id='10009', time=5, days_psa_diag=10)
add_basedata(p_id='10009', year_diagnosis='2018')
expect_visit_occurrence(person_id = 10009, visit_concept_id=2000000032, 
                        visit_start_date='2018-07-11', visit_start_datetime='2018-07-11 00:00:00', 
                        visit_end_date='2018-07-11', visit_end_datetime='2018-07-11 00:00:00', 
                        visit_type_concept_id =44818519,
                        visit_source_value=5)

#Basedata to visit_occurrence ----------------------------------------
declareTest(350, 'Observation - visit_occurence_id')
add_basedata(p_id='10350', mri_taken.0='1', gleason1='4', gleason2='3')
expect_visit_occurrence(visit_occurrence_id=lookup_visit_occurrence('visit_occurrence_id', 
                                                                    person_id='10350'))