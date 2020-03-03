#Basedata to Event --------------------------------------------
declareTest(351, 'Event - lesion_episode_groups')
add_basedata(p_id='10351', 'mri_pirads_1.0', 'mri_largest_dia_1.0', 
             'mri_location_1.0', 'mri_location_free_1.0')
expect_observation(visit_occurrence_id=lookup_observation('visit_occurrence_id',
                                                          person_id='10340',
                                                          observation_concept_id='4096978'))