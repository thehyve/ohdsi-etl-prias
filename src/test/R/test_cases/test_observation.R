#Basedata to observation --------------------------------------------
declareTest(203, 'Observation - prostatic_vol')
add_basedata(p_id='10203', year_diagnosis='2000', prostatic_vol='70')
expect_observation(person_id=10203, observation_concept_id=4096978, unit_concept_id=8587,
                   value_as_number=70, observation_datetime='2000-07-01 00:00:00.000000')

#Basedata to observation --------------------------------------------
declareTest(204, 'Observation - gleason')
add_basedata(p_id='10204', gleason1='2', gleason2='1')
expect_observation(person_id=10204, value_as_concept_id=35934087,
                   observation_concept_id=4297949, observation_source_value='gleason1_gleason2')

#Basedata to observation --------------------------------------------
declareTest(205, 'Observation - gleason')
add_basedata(p_id='10205', num_cores='4', gleason1='3', gleason2='3')
expect_observation(person_id=10205, value_as_concept_id=35934087, 
                   observation_concept_id=4297949, observation_source_value='gleason1_gleason2')

#Basedata to observation --------------------------------------------
declareTest(206, 'Observation - gleason')
add_basedata(p_id='10206', num_cores='6', gleason1='3', gleason2='4')
expect_observation(person_id=10206, value_as_concept_id=35930757, 
                   observation_concept_id=4297949, observation_source_value='gleason1_gleason2')

#Basedata to observation --------------------------------------------
declareTest(207, 'Observation - gleason')
add_basedata(p_id='10207', num_cores='9', gleason1='4', gleason2='3')
expect_observation(person_id=10207, value_as_concept_id=35929404, 
                   observation_concept_id=4297949, observation_source_value='gleason1_gleason2')

#Basedata to observation --------------------------------------------
declareTest(208, 'Observation - gleason')
add_basedata(p_id='10208', year_diagnosis='2011', gleason1='5', gleason2='3')
expect_observation(person_id=10208, value_as_concept_id=35921496, 
                   observation_concept_id=4297949, observation_source_value='gleason1_gleason2',
                   observation_date='2011-07-01')

#Basedata to observation --------------------------------------------
declareTest(209, 'Observation - gleason')
add_basedata(p_id='10209', gleason1='4', gleason2='5')
expect_observation(person_id=10209, value_as_concept_id=35928355, 
                   observation_concept_id=4297949, observation_source_value='gleason1_gleason2')

#Basedata to observation --------------------------------------------
declareTest(210, 'Observation - gleason')
add_basedata(p_id='10210', gleason1='5', gleason2='5')
expect_observation(person_id=10210, value_as_concept_id=35928355, 
                   observation_concept_id=4297949, observation_source_value='gleason1_gleason2')

#Basedata to observation --------------------------------------------
declareTest(211, 'Observation - biopt_infection')
add_basedata(p_id='10211', biopt_infection='0')
expect_no_observation(person_id=10211, observation_concept_id=2000000002,
                      observation_type_concept_id=45905771)

#Basedata to observation --------------------------------------------
declareTest(212, 'Observation - biopt_infection')
add_basedata(p_id='10212', biopt_infection='1')
expect_observation(person_id=10212, observation_concept_id=2000000002, 
                   value_as_concept_id=4188539, observation_source_value='biopt_infection')

#Basedata to observation --------------------------------------------
declareTest(213, 'Observation - biopt_infection')
add_basedata(p_id='10213', biopt_infection='2')
expect_observation(person_id=10213, observation_concept_id=2000000002, 
                   value_as_concept_id=45878245, observation_source_value='biopt_infection')

#Basedata to observation --------------------------------------------
declareTest(214, 'Observation - biopt_inf_hospitalisation_days')
add_basedata(p_id='10214', biopt_inf_hospitalisation='1', biopt_inf_hospitalisation_days='2')
expect_observation(person_id=10214, observation_concept_id=42869434, 
                observation_source_value='biopt_inf_hospitalisation_days', 
                   value_as_number=2, unit_concept_id=8512)

#Basedata to observation --------------------------------------------
declareTest(215, 'Observation - biopt_inf_hospitalisation')
add_basedata(p_id='10215',biopt_inf_hospitalisation='2')
expect_no_observation(person_id=10215, observation_concept_id=42869434)

#Basedata to observation --------------------------------------------
declareTest(216, 'Observation - mri_suspected_number.0')
add_basedata(p_id='10216', mri_taken.0='1', mri_suspected_number.0='0')
expect_observation(person_id=10216, observation_concept_id=4085855)

#Basedata to observation --------------------------------------------
declareTest(217, 'Observation - mri_suspected_number.0')
add_basedata(p_id='10217', mri_taken.0='1', mri_suspected_number.0='1')
expect_observation(person_id=10217, observation_concept_id=4085855)

#Basedata to observation --------------------------------------------
declareTest(218, 'Observation - mri_suspected_number.0')
add_basedata(p_id='10218', mri_taken.0='1', mri_suspected_number.0='2')
expect_observation(person_id=10218, observation_concept_id=4085855)

#Basedata to observation --------------------------------------------
declareTest(219, 'Observation - mri_suspected_number.0')
add_basedata(p_id='10219', mri_taken.0='1', mri_suspected_number.0='3')
expect_observation(person_id=10219, observation_concept_id=4085855)

#Basedata to observation --------------------------------------------
declareTest(220, 'Observation - mri_suspected_number.0')
add_basedata(p_id='10220', mri_taken.0='1', mri_suspected_number.0='4')
expect_observation(person_id=10220, observation_concept_id=4085855, 
                   value_as_number=3, observation_source_value='mri_suspected_number.0')
#observation_concept_id=4172704,

#Basedata to observation --------------------------------------------
declareTest(221, 'Observation - mri_largest_dia_1.0')
add_basedata(p_id='10221', mri_taken.0='1', mri_largest_dia_1.0='3')
expect_observation(person_id=10221, observation_concept_id=4084390, unit_concept_id=8588, 
                   value_as_number=3, observation_source_value='mri_largest_dia_1.0')

#Basedata to observation --------------------------------------------
declareTest(222, 'Observation - mri_location_1.0')
add_basedata(p_id='10222', mri_taken.0='1', mri_location_1.0='0')
expect_no_observation(person_id=10222, observation_concept_id=4135405)

#Basedata to observation --------------------------------------------
declareTest(223, 'Observation - mri_location_1.0')
add_basedata(p_id='10223', mri_taken.0='1', mri_location_1.0='1')
expect_observation(person_id=10223, observation_concept_id=4135405, 
                   value_as_concept_id=4115458, observation_source_value='mri_location_1.0')

#Basedata to observation --------------------------------------------
declareTest(224, 'Observation - mri_location_1.0')
add_basedata(p_id='10224', mri_taken.0='1', mri_location_1.0='2')
expect_observation(person_id=10224, observation_concept_id=4135405, 
                   value_as_concept_id=4116868, observation_source_value='mri_location_1.0')

#Basedata to observation --------------------------------------------
declareTest(225, 'Observation - mri_location_1.0')
add_basedata(p_id='10225', mri_taken.0='1', mri_location_1.0='3')
expect_observation(person_id=10225, observation_concept_id=4135405, 
                   value_as_concept_id=45883500, observation_source_value='mri_location_1.0')

#Basedata to observation --------------------------------------------
declareTest(226, 'Observation - mri_location_free_1.0')
add_basedata(p_id='10226', mri_taken.0='1', mri_location_free_1.0='righ')
expect_observation(person_id=10226, observation_concept_id=4135405, 
                   value_as_concept_id=45881626)

#Basedata to observation --------------------------------------------
declareTest(227, 'Observation - mri_location_free_1.0')
add_basedata(p_id='10227', mri_taken.0='1', mri_location_free_1.0='left')
expect_observation(person_id=10227, observation_concept_id=4135405, 
                   value_as_concept_id=45883143)

#Basedata to observation --------------------------------------------
declareTest(228, 'Observation - mri_largest_dia_2.0')
add_basedata(p_id='10228', mri_taken.0='1', mri_largest_dia_2.0='4')
expect_observation(person_id=10228, observation_concept_id=4084390, unit_concept_id=8588, 
                   value_as_number=4, observation_source_value='mri_largest_dia_2.0')

#Basedata to observation --------------------------------------------
declareTest(229, 'Observation - mri_location_2.0')
add_basedata(p_id='10229', mri_taken.0='1', mri_location_2.0='0')
expect_no_observation(person_id=10229, observation_concept_id=4135405)

#Basedata to observation --------------------------------------------
declareTest(230, 'Observation - mri_location_2.0')
add_basedata(p_id='10230', mri_taken.0='1', mri_location_2.0='1')
expect_observation(person_id=10230, observation_concept_id=4135405, 
                   value_as_concept_id=4115458, observation_source_value='mri_location_2.0')

#Basedata to observation --------------------------------------------
declareTest(231, 'Observation - mri_location_2.0')
add_basedata(p_id='10231', mri_taken.0='1', mri_location_2.0='2')
expect_observation(person_id=10231, observation_concept_id=4135405, 
                   value_as_concept_id=4116868, observation_source_value='mri_location_2.0')

#Basedata to observation --------------------------------------------
declareTest(232, 'Observation - mri_location_2.0')
add_basedata(p_id='10232', mri_taken.0='1', mri_location_2.0='3')
expect_observation(person_id=10232, observation_concept_id=4135405, 
                   value_as_concept_id=45883500, observation_source_value='mri_location_2.0')

#Basedata to observation --------------------------------------------
declareTest(233, 'Observation - mri_location_free_2.0')
add_basedata(p_id='10233', mri_taken.0='1', mri_location_free_2.0='righ')
expect_observation(person_id=10233, observation_concept_id=4135405, 
                   value_as_concept_id=45881626)

#Basedata to observation --------------------------------------------
declareTest(234, 'Observation - mri_location_free_2.0')
add_basedata(p_id='10234', mri_taken.0='1', mri_location_free_2.0='left')
expect_observation(person_id=10234, observation_concept_id=4135405, 
                   value_as_concept_id=45883143)

#Basedata to observation --------------------------------------------
declareTest(235, 'Observation - mri_largest_dia_3.0')
add_basedata(p_id='10235', mri_taken.0='1', mri_largest_dia_3.0='6')
expect_observation(person_id=10235, observation_concept_id=4084390, unit_concept_id=8588, 
                   value_as_number=6, observation_source_value='mri_largest_dia_3.0')

#Basedata to observation --------------------------------------------
declareTest(236, 'Observation - mri_location_3.0')
add_basedata(p_id='10236', mri_taken.0='1', mri_location_3.0='0')
expect_no_observation(person_id=10236, observation_concept_id=4135405)

#Basedata to observation --------------------------------------------
declareTest(237, 'Observation - mri_location_3.0')
add_basedata(p_id='10237', mri_taken.0='1', mri_location_3.0='1')
expect_observation(person_id=10237, observation_concept_id=4135405, 
                   value_as_concept_id=4115458, observation_source_value='mri_location_3.0')

#Basedata to observation --------------------------------------------
declareTest(238, 'Observation - mri_location_3.0')
add_basedata(p_id='10238', mri_taken.0='1', mri_location_3.0='2')
expect_observation(person_id=10238, observation_concept_id=4135405, 
                   value_as_concept_id=4116868, observation_source_value='mri_location_3.0')

#Basedata to observation --------------------------------------------
declareTest(239, 'Observation - mri_location_3.0')
add_basedata(p_id='10239', mri_taken.0='1', mri_location_3.0='3')
expect_observation(person_id=10239, observation_concept_id=4135405, 
                   value_as_concept_id=45883500, observation_source_value='mri_location_3.0')

#Basedata to observation --------------------------------------------
declareTest(240, 'Observation - mri_location_free_3.0')
add_basedata(p_id='10240', mri_taken.0='1', mri_location_free_3.0='righ')
expect_observation(person_id=10240, observation_concept_id=4135405, 
                   value_as_concept_id=45881626)

#Basedata to observation --------------------------------------------
declareTest(241, 'Observation - mri_location_free_3.0')
add_basedata(p_id='10241', mri_taken.0='1', mri_location_free_3.0='left')
expect_observation(person_id=10241, observation_concept_id=4135405, 
                   value_as_concept_id=45883143)

#Basedata to observation --------------------------------------------
declareTest(242, 'Observation - mri_progrssion_lesions.0')
add_basedata(p_id='10242', mri_taken.0='1', mri_progrssion_lesions.0='0')
expect_no_observation(person_id=10242, observation_concept_id=4077864)

#Basedata to observation --------------------------------------------
declareTest(243, 'Observation - mri_progrssion_lesions.0')
add_basedata(p_id='10243', mri_taken.0='1', mri_progrssion_lesions.0='1')
expect_observation(person_id=10243, observation_concept_id=4077864,
                   value_as_concept_id=2000000011)

#Basedata to observation --------------------------------------------
declareTest(244, 'Observation - mri_progrssion_lesions.0')
add_basedata(p_id='10244', mri_taken.0='1', mri_progrssion_lesions.0='2')
expect_observation(person_id=10244, observation_concept_id=4077864, 
                   value_as_concept_id=2000000012)

#Basedata to observation --------------------------------------------
declareTest(245, 'Observation - mri_progrssion_lesions.0')
add_basedata(p_id='10245', mri_taken.0='1', mri_progrssion_lesions.0='3')
expect_observation(person_id=10245, observation_concept_id=4077864,
                   value_as_concept_id=2000000013)

#Basedata to observation --------------------------------------------
declareTest(246, 'Observation - mri_progrssion_lesions.0')
add_basedata(p_id='10246', mri_taken.0='1', mri_progrssion_lesions.0='4')
expect_observation(person_id=10246, observation_concept_id=4077864, 
                   value_as_concept_id=2000000014)

#Basedata to observation --------------------------------------------
declareTest(247, 'Observation - mri_progrssion_lesions.0')
add_basedata(p_id='10247', mri_taken.0='1', mri_progrssion_lesions.0='11')
expect_observation(person_id=10247, observation_concept_id=4077864, 
                   value_as_concept_id=2000000015)

#Basedata to observation --------------------------------------------
declareTest(248, 'Observation - mri_progrssion_lesions.0')
add_basedata(p_id='10248', mri_taken.0='1', mri_progrssion_lesions.0='12')
expect_observation(person_id=10248, observation_concept_id=4077864, 
                   value_as_concept_id=2000000016)

#Basedata to observation --------------------------------------------
declareTest(249, 'Observation - mri_progrssion_lesions.0')
add_basedata(p_id='10249', mri_taken.0='1', mri_progrssion_lesions.0='13')
expect_observation(person_id=10249, observation_concept_id=4077864, 
                   value_as_concept_id=2000000017)

#Basedata to observation --------------------------------------------
declareTest(250, 'Observation - mri_progrssion_lesions.0')
add_basedata(p_id='10250', mri_taken.0='1', mri_progrssion_lesions.0='14')
expect_observation(person_id=10250, observation_concept_id=4077864, 
                   value_as_concept_id=2000000018)

#Basedata to observation --------------------------------------------
declareTest(251, 'Observation - mri_progrssion_lesions.0')
add_basedata(p_id='10251', mri_taken.0='1', mri_progrssion_lesions.0='15')
expect_observation(person_id=10251, observation_concept_id=4077864, 
                   value_as_concept_id=2000000019)

#Basedata to observation --------------------------------------------
declareTest(252, 'Observation - mri_targeted_gleason1.0.1')
add_basedata(p_id='10252', mri_taken.0='1', gleason1='2', gleason2='3')
expect_observation(person_id=10252, observation_concept_id=4297949, 
                   value_as_concept_id=35934087)

#Basedata to observation --------------------------------------------
declareTest(253, 'Observation - mri_targeted_gleason1.0.1')
add_basedata(p_id='10253', mri_taken.0='1', gleason1='3', gleason2='4')
expect_observation(person_id=10253, observation_concept_id=4297949, 
                   value_as_concept_id=35930757)

#Basedata to observation --------------------------------------------
declareTest(254, 'Observation - mri_targeted_gleason1.0.1')
add_basedata(p_id='10254', mri_taken.0='1', gleason1='4', gleason2='3')
expect_observation(person_id=10254, observation_concept_id=4297949, 
                   value_as_concept_id=35929404)

#Basedata to observation --------------------------------------------
declareTest(255, 'Observation - mri_targeted_gleason1.0.1')
add_basedata(p_id='10255', mri_taken.0='1', gleason1='4', gleason2='4')
expect_observation(person_id=10255, observation_concept_id=4297949, 
                   value_as_concept_id=35921496)

#Basedata to observation --------------------------------------------
declareTest(256, 'Observation - mri_targeted_gleason1.0.1')
add_basedata(p_id='10256', mri_taken.0='1', gleason1='5', gleason2='4')
expect_observation(person_id=10256, observation_concept_id=4297949, 
                   value_as_concept_id=35928355)

#Basedata to observation --------------------------------------------
declareTest(257, 'Observation - age_diagnosis')
add_basedata(p_id='10257', age_diagnosis='59', year_diagnosis='2013')
expect_observation(person_id=10257, observation_concept_id=4265453, 
                   value_as_number=59, observation_type_concept_id=45905771, 
                   observation_source_value='age_diagnosis',
                   observation_date='2013-07-01')

#Fulong to observation ----------------------------------------------
declareTest(258, 'Observation - gleason_fu')
add_basedata(p_id='10258')
add_fulong(p_id='10258', gleason1_fu='0', gleason2_fu='2')
expect_observation(person_id=10258, observation_concept_id=4297949, 
                   value_as_concept_id=35934087)

#Fulong to observation ----------------------------------------------
declareTest(259, 'Observation - gleason_fu')
add_basedata(p_id='10259')
add_fulong(p_id='10259', gleason1_fu='3', gleason2_fu='4')
expect_observation(person_id=10259, observation_concept_id=4297949, 
                   value_as_concept_id=35930757)

#Fulong to observation ----------------------------------------------
declareTest(260, 'Observation - gleason_fu')
add_basedata(p_id='10260')
add_fulong(p_id='10260', gleason1_fu='4', gleason2_fu='3')
expect_observation(person_id=10260, observation_concept_id=4297949, 
                   value_as_concept_id=35929404)

#Fulong to observation ----------------------------------------------
declareTest(261, 'Observation - gleason_fu')
add_basedata(p_id='10261')
add_fulong(p_id='10261', gleason1_fu='3', gleason2_fu='5')
expect_observation(person_id=10261, observation_concept_id=4297949, 
                   value_as_concept_id=35921496)

#Fulong to observation ----------------------------------------------
declareTest(262, 'Observation - gleason_fu')
add_basedata(p_id='10262')
add_fulong(p_id='10262', gleason1_fu='5', gleason2_fu='5')
expect_observation(person_id=10262, observation_concept_id=4297949, 
                   value_as_concept_id=35928355)

#Fulong to observation --------------------------------------------
declareTest(263, 'Observation - biopt_infection_fu')
add_basedata(p_id='10263')
add_fulong(p_id='10263', biopt_infection_fu='0')
expect_no_observation(person_id=10263, observation_concept_id=2000000002)

#Fulong to observation --------------------------------------------
declareTest(264, 'Observation - biopt_infection_fu')
add_basedata(p_id='10264')
add_fulong(p_id='10264', biopt_infection_fu='1')
expect_observation(person_id=10264, observation_concept_id=2000000002,
                   value_as_concept_id=4188539)

#Fulong to observation --------------------------------------------
declareTest(265, 'Observation - biopt_infection_fu')
add_basedata(p_id='10265')
add_fulong(p_id='10265', biopt_infection_fu='2')
expect_observation(person_id=10265, observation_concept_id=2000000002, 
                   value_as_concept_id=45878245)

#Fulong to observation --------------------------------------------
declareTest(266, 'Observation - biopt_inf_hospitalisation_fu')
add_basedata(p_id='10266')
add_fulong(p_id='10266', biopt_inf_hospitalisation_fu='0')
expect_no_observation(person_id=10266, observation_concept_id=42869434)

#Fulong to observation --------------------------------------------
declareTest(267, 'Observation - biopt_inf_hospitalisation_fu')
add_basedata(p_id='10267')
add_fulong(p_id='10267', biopt_inf_hospitalisation_fu='1', biopt_inf_hospitalisation_days_fu='1')
expect_observation(person_id=10267, observation_concept_id=42869434, 
                   value_as_number=1, unit_concept_id=8512)

#Fulong to observation --------------------------------------------
declareTest(268, 'Observation - mri_suspected_number')
add_basedata(p_id='10268')
add_fulong(p_id='10268', mri_taken='1', mri_suspected_number='0')
expect_observation(person_id=10268, observation_concept_id=4085855)

#Fulong to observation --------------------------------------------
declareTest(269, 'Observation - mri_suspected_number')
add_basedata(p_id='10269')
add_fulong(p_id='10269', mri_taken='1', mri_suspected_number='1')
expect_observation(person_id=10269, observation_concept_id=4085855)

#Fulong to observation --------------------------------------------
declareTest(270, 'Observation - mri_suspected_number')
add_basedata(p_id='10270')
add_fulong(p_id='10270', mri_taken='1', mri_suspected_number='2')
expect_observation(person_id=10270, observation_concept_id=4085855)

#Fulong to observation --------------------------------------------
declareTest(271, 'Observation - mri_suspected_number')
add_basedata(p_id='10271')
add_fulong(p_id='10271', mri_taken='1', mri_suspected_number='3')
expect_observation(person_id=10271, observation_concept_id=4085855)

#Fulong to observation --------------------------------------------
declareTest(272, 'Observation - mri_suspected_number')
add_basedata(p_id='10272')
add_fulong(p_id='10272', mri_taken='1', mri_suspected_number='4')
expect_observation(person_id=10272, observation_concept_id=4085855)

#Fulong to observation --------------------------------------------
declareTest(273, 'Observation - mri_largest_dia_1')
add_basedata(p_id='10273')
add_fulong(p_id='10273', mri_taken='1', mri_largest_dia_1='3')
expect_observation(person_id=10273, observation_concept_id=4084390, 
                   unit_concept_id=8588, value_as_number=3)

#Fulong to observation --------------------------------------------
declareTest(274, 'Observation - mri_location_1')
add_basedata(p_id='10274')
add_fulong(p_id='10274', mri_taken='1', mri_location_1='0')
expect_no_observation(person_id=10274, observation_concept_id=4135405)

#Fulong to observation --------------------------------------------
declareTest(275, 'Observation - mri_location_1')
add_basedata(p_id='10275')
add_fulong(p_id='10275', mri_taken='1', mri_location_1='1')
expect_observation(person_id=10275, observation_concept_id=4135405, 
                   value_as_concept_id=4115458)

#Fulong to observation --------------------------------------------
declareTest(276, 'Observation - mri_location_1')
add_basedata(p_id='10276')
add_fulong(p_id='10276', mri_taken='1', mri_location_1='2')
expect_observation(person_id=10276, observation_concept_id=4135405, 
                   value_as_concept_id=4116868)

#Fulong to observation --------------------------------------------
declareTest(277, 'Observation - mri_location_1')
add_basedata(p_id='10277')
add_fulong(p_id='10277', mri_taken='1', mri_location_1='3')
expect_observation(person_id=10277, observation_concept_id=4135405, 
                   value_as_concept_id=45883500)

#Fulong to observation --------------------------------------------
declareTest(278, 'Observation - mri_location_free_1')
add_basedata(p_id='10278')
add_fulong(p_id='10278', mri_taken='1', mri_location_free_1='righ')
expect_observation(person_id=10278, observation_concept_id=4135405, 
                   value_as_concept_id=45881626)

#Fulong to observation --------------------------------------------
declareTest(279, 'Observation - mri_location_free_1')
add_basedata(p_id='10279')
add_fulong(p_id='10279', mri_taken='1', mri_location_free_1='left')
expect_observation(person_id=10279, observation_concept_id=4135405, 
                   value_as_concept_id=45883143)

#Fulong to observation --------------------------------------------
declareTest(280, 'Observation - mri_location_free_1')
add_basedata(p_id='10280')
add_fulong(p_id='10280', mri_taken='1', mri_location_free_1='Midd')
expect_observation(person_id=10280, observation_concept_id=4135405, 
                   value_as_concept_id=42531097)

#Fulong to observation --------------------------------------------
declareTest(281, 'Observation - mri_location_free_1')
add_basedata(p_id='10281')
add_fulong(p_id='10281', mri_taken='1', mri_location_free_1='apex')
expect_observation(person_id=10281, observation_concept_id=4135405, 
                   value_as_concept_id=21498546)

#Fulong to observation --------------------------------------------
declareTest(282, 'Observation - mri_location_free_1')
add_basedata(p_id='10282')
add_fulong(p_id='10282', mri_taken='1', mri_location_free_1='basi')
expect_observation(person_id=10282, observation_concept_id=4135405, 
                   value_as_concept_id=21499230)

#Fulong to observation --------------------------------------------
declareTest(283, 'Observation - mri_largest_dia_2.0')
add_basedata(p_id='10283')
add_fulong(p_id='10283', mri_taken='1', mri_largest_dia_2='4')
expect_observation(person_id=10283, observation_concept_id=4084390, unit_concept_id=8588, 
                   value_as_number=4)

#Fulong to observation --------------------------------------------
declareTest(284, 'Observation - mri_location_2')
add_basedata(p_id='10284')
add_fulong(p_id='10284', mri_taken='1', mri_location_2='0')
expect_no_observation(person_id=10284, observation_concept_id=4135405)

#Fulong to observation --------------------------------------------
declareTest(285, 'Observation - mri_location_2')
add_basedata(p_id='10285')
add_fulong(p_id='10285', mri_taken='1', mri_location_2='1')
expect_observation(person_id=10285, observation_concept_id=4135405, 
                   value_as_concept_id=4115458)

#Fulong to observation --------------------------------------------
declareTest(286, 'Observation - mri_location_2')
add_basedata(p_id='10286')
add_fulong(p_id='10286', mri_taken='1', mri_location_2='2')
expect_observation(person_id=10286, observation_concept_id=4135405, 
                   value_as_concept_id=4116868)

#Fulong to observation --------------------------------------------
declareTest(287, 'Observation - mri_location_2')
add_basedata(p_id='10287')
add_fulong(p_id='10287', mri_taken='1', mri_location_2='3')
expect_observation(person_id=10287, observation_concept_id=4135405, 
                   value_as_concept_id=45883500)

#Fulong to observation --------------------------------------------
declareTest(288, 'Observation - mri_location_free_2')
add_basedata(p_id='10288')
add_fulong(p_id='10288', mri_taken='1', mri_location_free_2='righ')
expect_observation(person_id=10288, observation_concept_id=4135405, 
                   value_as_concept_id=45881626)

#Fulong to observation --------------------------------------------
declareTest(289, 'Observation - mri_location_free_2')
add_basedata(p_id='10289')
add_fulong(p_id='10289', mri_taken='1', mri_location_free_2='left')
expect_observation(person_id=10289, observation_concept_id=4135405, 
                   value_as_concept_id=45883143)

#Fulong to observation --------------------------------------------
declareTest(290, 'Observation - mri_location_free_2')
add_basedata(p_id='10290')
add_fulong(p_id='10290', mri_taken='1', mri_location_free_2='Midd')
expect_observation(person_id=10290, observation_concept_id=4135405, 
                   value_as_concept_id=42531097)

#Fulong to observation --------------------------------------------
declareTest(291, 'Observation - mri_location_free_2')
add_basedata(p_id='10291')
add_fulong(p_id='10291', mri_taken='1', mri_location_free_2='apex')
expect_observation(person_id=10291, observation_concept_id=4135405, 
                   value_as_concept_id=21498546)

#Fulong to observation --------------------------------------------
declareTest(292, 'Observation - mri_location_free_2')
add_basedata(p_id='10292')
add_fulong(p_id='10292', mri_taken='1', mri_location_free_2='basi')
expect_observation(person_id=10292, observation_concept_id=4135405, 
                   value_as_concept_id=21499230)

#Fulong to observation --------------------------------------------
declareTest(293, 'Observation - mri_largest_dia_3')
add_basedata(p_id='10293')
add_fulong(p_id='10293', mri_taken='1', mri_largest_dia_3='6')
expect_observation(person_id=10293, observation_concept_id=4084390, unit_concept_id=8588, 
                   value_as_number=6)

#Fulong to observation --------------------------------------------
declareTest(294, 'Observation - mri_location_3')
add_basedata(p_id='10294')
add_fulong(p_id='10294', mri_taken='1', mri_location_3='0')
expect_no_observation(person_id=10294, observation_concept_id=4135405)

#Fulong to observation --------------------------------------------
declareTest(295, 'Observation - mri_location_3')
add_basedata(p_id='10295')
add_fulong(p_id='10295', mri_taken='1', mri_location_3='1')
expect_observation(person_id=10295, observation_concept_id=4135405, 
                   value_as_concept_id=4115458)

#Fulong to observation --------------------------------------------
declareTest(296, 'Observation - mri_location_3')
add_basedata(p_id='10296')
add_fulong(p_id='10296', mri_taken='1', mri_location_3='2')
expect_observation(person_id=10296, observation_concept_id=4135405, 
                   value_as_concept_id=4116868)


#Fulong to observation --------------------------------------------
declareTest(297, 'Observation - mri_location_3')
add_basedata(p_id='10297')
add_fulong(p_id='10297', mri_taken='1', mri_location_3='3')
expect_observation(person_id=10297, observation_concept_id=4135405, 
                   value_as_concept_id=45883500)

#Fulong to observation --------------------------------------------
declareTest(298, 'Observation - mri_location_free_3')
add_basedata(p_id='10298')
add_fulong(p_id='10298', mri_taken='1', mri_location_free_3='righ')
expect_observation(person_id=10298, observation_concept_id=4135405, 
                   value_as_concept_id=45881626)

#Fulong to observation --------------------------------------------
declareTest(299, 'Observation - mri_location_free_3')
add_basedata(p_id='10299')
add_fulong(p_id='10299', mri_taken='1', mri_location_free_3='left')
expect_observation(person_id=10299, observation_concept_id=4135405, 
                   value_as_concept_id=45883143)

#Fulong to observation --------------------------------------------
declareTest(300, 'Observation - mri_location_free_3')
add_basedata(p_id='10300')
add_fulong(p_id='10300', mri_taken='1', mri_location_free_3='Midd')
expect_observation(person_id=10300, observation_concept_id=4135405, 
                   value_as_concept_id=42531097)

#Fulong to observation --------------------------------------------
declareTest(301, 'Observation - mri_location_free_3')
add_basedata(p_id='10301')
add_fulong(p_id='10301', mri_taken='1', mri_location_free_3='apex')
expect_observation(person_id=10301, observation_concept_id=4135405, 
                   value_as_concept_id=21498546)

#Fulong to observation --------------------------------------------
declareTest(302, 'Observation - mri_location_free_3')
add_basedata(p_id='10302')
add_fulong(p_id='10302', mri_taken='1', mri_location_free_3='basi')
expect_observation(person_id=10302, observation_concept_id=4135405, 
                   value_as_concept_id=21499230)

#Fulong to observation --------------------------------------------
declareTest(303, 'Observation - mri_progrssion_lesions')
add_basedata(p_id='10303')
add_fulong(p_id='10303', mri_taken='1', mri_progrssion_lesions='0')
expect_no_observation(person_id=10303, observation_concept_id=4077864)

#Fulong to observation --------------------------------------------
declareTest(304, 'Observation - mri_progrssion_lesions')
add_basedata(p_id='10304')
add_fulong(p_id='10304', mri_taken='1', mri_progrssion_lesions='1')
expect_observation(person_id=10304, observation_concept_id=4077864,
                   value_as_concept_id=2000000011)

#Fulong to observation --------------------------------------------
declareTest(305, 'Observation - mri_progrssion_lesions')
add_basedata(p_id='10305')
add_fulong(p_id='10305', mri_taken='1', mri_progrssion_lesions='2')
expect_observation(person_id=10305, observation_concept_id=4077864, 
                   value_as_concept_id=2000000012)

#Fulong to observation --------------------------------------------
declareTest(306, 'Observation - mri_progrssion_lesions')
add_basedata(p_id='10306')
add_fulong(p_id='10306', mri_taken='1', mri_progrssion_lesions='3')
expect_observation(person_id=10306, observation_concept_id=4077864,
                   value_as_concept_id=2000000013)

#Fulong to observation --------------------------------------------
declareTest(307, 'Observation - mri_progrssion_lesions.0')
add_basedata(p_id='10307')
add_fulong(p_id='10307', mri_taken='1', mri_progrssion_lesions='4')
expect_observation(person_id=10307, observation_concept_id=4077864, 
                   value_as_concept_id=2000000014)

#Fulong to observation --------------------------------------------
declareTest(308, 'Observation - mri_progrssion_lesions.0')
add_basedata(p_id='10308')
add_fulong(p_id='10308', mri_taken='1', mri_progrssion_lesions='11')
expect_observation(person_id=10308, observation_concept_id=4077864, 
                   value_as_concept_id=2000000015)

#Fulong to observation --------------------------------------------
declareTest(309, 'Observation - mri_progrssion_lesions')
add_basedata(p_id='10309')
add_fulong(p_id='10309', mri_taken='1', mri_progrssion_lesions='12')
expect_observation(person_id=10309, observation_concept_id=4077864, 
                   value_as_concept_id=2000000016)

#Fulong to observation --------------------------------------------
declareTest(310, 'Observation - mri_progrssion_lesions')
add_basedata(p_id='10310')
add_fulong(p_id='10310', mri_taken='1', mri_progrssion_lesions='13')
expect_observation(person_id=10310, observation_concept_id=4077864, 
                   value_as_concept_id=2000000017)

#Fulong to observation --------------------------------------------
declareTest(311, 'Observation - mri_progrssion_lesions')
add_basedata(p_id='10311')
add_fulong(p_id='10311', mri_taken='1', mri_progrssion_lesions='14')
expect_observation(person_id=10311, observation_concept_id=4077864, 
                   value_as_concept_id=2000000018)

#Fulong to observation --------------------------------------------
declareTest(312, 'Observation - mri_progrssion_lesions')
add_basedata(p_id='10312')
add_fulong(p_id='10312', mri_taken='1', mri_progrssion_lesions='15')
expect_observation(person_id=10312, observation_concept_id=4077864, 
                   value_as_concept_id=2000000019)

#Enddata to observation --------------------------------------------
declareTest(313, 'Observation - discontinued')
add_basedata(p_id='10313')
add_enddata(p_id='10313', discontinued='Robot radical prostatectomy')
expect_observation(person_id=10313, observation_concept_id=4132627, 
                   value_as_concept_id=46270921)

#Enddata to observation --------------------------------------------
declareTest(314, 'Observation - discontinued')
add_basedata(p_id='10314')
add_enddata(p_id='10314', discontinued='External beam radiotherapy')
expect_observation(person_id=10314, observation_concept_id=4132627, 
                   value_as_concept_id=4141448)

#Enddata to observation --------------------------------------------
declareTest(315, 'Observation - discontinued')
add_basedata(p_id='10315')
add_enddata(p_id='10315', discontinued='Watchful waiting')
expect_observation(person_id=10315, observation_concept_id=4132627, 
                   value_as_concept_id=4190466)

#Enddata to observation --------------------------------------------
declareTest(316, 'Observation - discontinued')
add_basedata(p_id='10316')
add_enddata(p_id='10316', discontinued='Open radical prostatectomy')
expect_observation(person_id=10316, observation_concept_id=4132627, 
                   value_as_concept_id=4096783)

#Enddata to observation --------------------------------------------
declareTest(317, 'Observation - discontinued')
add_basedata(p_id='10317')
add_enddata(p_id='10317', discontinued='Laparoscopic Radical Prostatectomy')
expect_observation(person_id=10317, observation_concept_id=4132627, 
                   value_as_concept_id=44809585)

#Enddata to observation --------------------------------------------
declareTest(318, 'Observation - discontinued')
add_basedata(p_id='10318')
add_enddata(p_id='10318', discontinued='Other or unknown treatment')
expect_observation(person_id=10318, observation_concept_id=4132627, 
                   value_as_concept_id=9177)

#Enddata to observation --------------------------------------------
declareTest(319, 'Observation - discontinued')
add_basedata(p_id='10319')
add_enddata(p_id='10319', discontinued='Brachytherapy Low-dose rate')
expect_observation(person_id=10319, observation_concept_id=4132627, 
                   value_as_concept_id=4040610)

#Enddata to observation --------------------------------------------
declareTest(320, 'Observation - discontinued')
add_basedata(p_id='10320')
add_enddata(p_id='10320', discontinued='Lost to FU')
expect_observation(person_id=10320, observation_concept_id=4132627, 
                   value_as_concept_id=4163894)

#Enddata to observation --------------------------------------------
declareTest(321, 'Observation - discontinued')
add_basedata(p_id='10321')
add_enddata(p_id='10321', discontinued='Died')
expect_observation(person_id=10321, observation_concept_id=4132627, 
                   value_as_concept_id=4306655)

#Enddata to observation --------------------------------------------
declareTest(322, 'Observation - discontinued')
add_basedata(p_id='10322')
add_enddata(p_id='10322', discontinued='Brachytherapy dose rate unknown')
expect_observation(person_id=10322, observation_concept_id=4132627, 
                   value_as_concept_id=40317890)

#Enddata to observation --------------------------------------------
declareTest(323, 'Observation - discontinued')
add_basedata(p_id='10323')
add_enddata(p_id='10323', discontinued='Brachytherapy High dose rate')
expect_observation(person_id=10323, observation_concept_id=4132627, 
                   value_as_concept_id=4038003)

#Enddata to observation --------------------------------------------
declareTest(324, 'Observation - discontinued')
add_basedata(p_id='10324')
add_enddata(p_id='10324', discontinued='LHRH Agonists')
expect_observation(person_id=10324, observation_concept_id=4132627, 
                   value_as_concept_id=4217107)

#Enddata to observation --------------------------------------------
declareTest(325, 'Observation - discontinued')
add_basedata(p_id='10325')
add_enddata(p_id='10325', discontinued='On request')
expect_observation(person_id=10325, observation_concept_id=4132627, 
                   value_as_concept_id=4202313)

#Enddata to observation --------------------------------------------
declareTest(326, 'Observation - discontinued')
add_basedata(p_id='10326')
add_enddata(p_id='10326', discontinued='Antiandrogens')
expect_observation(person_id=10326, observation_concept_id=4132627, 
                   value_as_concept_id=35621899)

#Enddata to observation --------------------------------------------
declareTest(327, 'Observation - discontinued')
add_basedata(p_id='10327')
add_enddata(p_id='10327', discontinued='HIFU')
expect_observation(person_id=10327, observation_concept_id=4132627, 
                   value_as_concept_id=44791407)

#Enddata to observation --------------------------------------------
declareTest(328, 'Observation - reason_treatment')
add_basedata(p_id='10328')
add_enddata(p_id='10328', reason_treatment='Based on protocol advice')
expect_observation(person_id=10328, observation_concept_id=44807628, 
                   value_as_concept_id=44790553)

#Enddata to observation --------------------------------------------
declareTest(329, 'Observation - reason_treatment')
add_basedata(p_id='10329')
add_enddata(p_id='10329', reason_treatment='Other')
expect_observation(person_id=10329, observation_concept_id=44807628, 
                   value_as_concept_id=9177)

#Enddata to observation --------------------------------------------
declareTest(330, 'Observation - reason_treatment')
add_basedata(p_id='10330')
add_enddata(p_id='10330', reason_treatment='N/A')
expect_observation(person_id=10330, observation_concept_id=44807628, 
                   value_as_concept_id=4294169)

#Enddata to observation --------------------------------------------
declareTest(331, 'Observation - reason_treatment')
add_basedata(p_id='10331')
add_enddata(p_id='10331', reason_treatment='Anxiety')
expect_observation(person_id=10331, observation_concept_id=44807628, 
                   value_as_concept_id=441542)

#Enddata to observation --------------------------------------------
declareTest(332, 'Observation - reason_treatment')
add_basedata(p_id='10332')
add_enddata(p_id='10332', reason_treatment='Lost to FU')
expect_observation(person_id=10332, observation_concept_id=44807628, 
                   value_as_concept_id=4163894)

#Enddata to observation --------------------------------------------
declareTest(333, 'Observation - reason_treatment')
add_basedata(p_id='10333')
add_enddata(p_id='10333', reason_treatment='On request')
expect_observation(person_id=10333, observation_concept_id=44807628, 
                   value_as_concept_id=4202313)

#Enddata to observation --------------------------------------------
declareTest(334, 'Observation - prostatevolume')
add_basedata(p_id='10334')
add_enddata(p_id='10334', prostatevolume='70')
expect_observation(person_id=10334, observation_concept_id=4096978, value_as_number=70, 
                   observation_source_value='prostatevolume')

#Enddata to observation --------------------------------------------
declareTest(335, 'Observation - tumorvolume')
add_basedata(p_id='10335')
add_enddata(p_id='10335', tumorvolume='3')
expect_observation(person_id=10335, observation_concept_id=4121185, 
                   value_as_number=3)















