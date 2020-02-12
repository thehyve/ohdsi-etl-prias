# Basedata to measurement -------------------------------------------
declareTest(59, 'Measurement - psa')
add_basedata(p_id='10059', year_diagnosis='2005', psa=6)
expect_measurement(person_id=10059, measurement_concept_id=44793131, value_as_number=6,
                   unit_concept_id=8842, measurement_date ='2005-07-01', 
                   measurement_source_value='psa', value_source_value=6,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(60, 'Measurement - num_cores')
add_basedata(p_id='10060', year_diagnosis='2005', num_cores=8)
expect_measurement(person_id=10060, measurement_concept_id=35917476, value_as_number=8,
                   measurement_date ='2005-07-01', 
                   measurement_source_value='num_cores', value_source_value=8,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(61, 'Measurement - num_cores_pc')
add_basedata(p_id='10061', year_diagnosis='2005', num_cores_pc=8)
expect_measurement(person_id=10061, measurement_concept_id=35918000, value_as_number=8, 
                   measurement_date ='2005-07-01', 
                   measurement_source_value='num_cores_pc', value_source_value=8,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(62, 'Measurement - free_psa')
add_basedata(p_id='10062', year_diagnosis='2005', free_psa=5)
expect_measurement(person_id=10062, measurement_concept_id=4194418, value_as_number=5, 
                   unit_concept_id=8554, measurement_date ='2005-07-01', 
                   measurement_source_value='free_psa', value_source_value=5,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(63, 'Measurement - phi')
add_basedata(p_id='10063', year_diagnosis='2005', phi=1)
expect_measurement(person_id=10063, measurement_concept_id=2000000001, value_as_number=1, 
                   measurement_date ='2005-07-01', 
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(64, 'Measurement - charlson')
add_basedata(p_id='10064', year_diagnosis='2005', charlson=4)
expect_measurement(person_id=10064, measurement_concept_id=42538860, value_as_number=4, 
                   measurement_date ='2005-07-01', 
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(65, 'Measurement - length')
add_basedata(p_id='10065', year_diagnosis='2005', length='166')
expect_measurement(person_id=10065, measurement_concept_id=3023540, value_as_number=166, 
                   unit_concept_id=8582, measurement_date ='2005-07-01', 
                   measurement_type_concept_id=44818701)


# Basedata to measurement -------------------------------------------
declareTest(66, 'Measurement - length')
add_basedata(p_id='10066', year_diagnosis='2005', length='35')
expect_no_measurement(person_id=10066, measurement_concept_id=3023540)

# Basedata to measurement -------------------------------------------
declareTest(67, 'Measurement - weight')
add_basedata(p_id='10067', year_diagnosis='2005', weight='65')
expect_measurement(person_id=10067, measurement_concept_id=3013762, value_as_number=65,
                   unit_concept_id=9529, measurement_date ='2005-07-01', 
                   measurement_source_value='weight', value_source_value=65,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(68, 'Measurement - weigth')
add_basedata(p_id='10068', year_diagnosis='2005', weight='0')
expect_no_measurement(person_id=10068, measurement_concept_id=3013762)

# Basedata to measurement -------------------------------------------
declareTest(69, 'Measurement - num_cores2')
add_basedata(p_id='10069', year_diagnosis='2005', num_cores='7', num_cores2='12')
expect_measurement(person_id=10069, measurement_concept_id=35917476, value_as_number=12,
                   measurement_date ='2005-07-01', 
                   measurement_source_value='num_cores2', value_source_value=12,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(70, 'Measurement - num_cores_2')
add_basedata(p_id='10070', year_diagnosis='2005', num_cores='8', num_cores2='12')
expect_measurement(person_id=10070, measurement_concept_id=35917476, value_as_number=8, 
                   measurement_date ='2005-07-01', 
                   measurement_source_value='num_cores', value_source_value=8,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(71, 'Measurement - num_cores_2')
add_basedata(p_id='10071', year_diagnosis='2005', num_cores='6', num_cores2='7')
expect_measurement(person_id=10071, measurement_concept_id=35917476, value_as_number=6, 
                   measurement_date ='2005-07-01', 
                   measurement_source_value='num_cores', value_source_value=6,
                  measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(72, 'Measurement - num_cores_pc2')
add_basedata(p_id='10072', year_diagnosis='2005', num_cores='7', num_cores_pc='5', num_cores2='12', num_cores_pc2='12')
expect_measurement(person_id=10072, measurement_concept_id=35918000, value_as_number=12,
                   measurement_date ='2005-07-01', 
                   measurement_source_value='num_cores_pc2', value_source_value=12,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(73, 'Measurement - num_cores_pc2')
add_basedata(p_id='10073', year_diagnosis='2005', num_cores='8', num_cores_pc='8', num_cores_pc2='12')
expect_measurement(person_id=10073, measurement_concept_id=35918000, value_as_number=8, 
                   measurement_date ='2005-07-01', 
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(74, 'Measurement - num_cores_pc2')
add_basedata(p_id='10074', year_diagnosis='2005', num_cores='5', num_cores_pc='5', num_cores2='6', num_cores_pc2='6')
expect_measurement(person_id=10074, measurement_concept_id=35918000, value_as_number=5, 
                   measurement_date ='2005-07-01', 
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(75, 'Measurement - num_cores_pc2')
add_basedata(p_id='10075', year_diagnosis='2005', num_cores='8', num_cores_pc='8', num_cores2='12', num_cores_pc2='12')
expect_measurement(person_id=10075, measurement_concept_id=35918000, value_as_number=8,
                   measurement_date ='2005-07-01', 
                   measurement_source_value='num_cores_pc', value_source_value=8,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(76, 'Measurement - biopt_prob_type')
add_basedata(p_id='10076', year_diagnosis='2005', biopt_prob_type='0')
expect_no_measurement(person_id=10076, measurement_concept_id=4079278)

# Basedata to measurement -------------------------------------------
declareTest(77, 'Measurement - biopt_prob_type')
add_basedata(p_id='10077', year_diagnosis='2005', biopt_prob_type='1')
expect_measurement(person_id=10077, measurement_concept_id=40792781, value_as_concept_id=45878582,
                   measurement_date ='2005-07-01', 
                   measurement_source_value='biopt_prob_type', value_source_value=1,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(78, 'Measurement - biopt_prob_type')
add_basedata(p_id='10078', year_diagnosis='2005', biopt_prob_type='2')
expect_measurement(person_id=10078, measurement_concept_id=40792781, value_as_concept_id=1176676,
                   measurement_date ='2005-07-01', 
                   measurement_source_value='biopt_prob_type', value_source_value=2,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(79, 'Measurement - biopt_prob_type')
add_basedata(p_id='10079', year_diagnosis='2005', biopt_prob_type='3')
expect_measurement(person_id=10079, measurement_concept_id=40792781, value_as_concept_id=40792503,
                   measurement_date ='2005-07-01', 
                   measurement_source_value='biopt_prob_type', value_source_value=3,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(80, 'Measurement - biopt_prob_type')
add_basedata(p_id='10080', year_diagnosis='2005', biopt_prob_type='4')
expect_measurement(person_id=10080, measurement_concept_id=40792781, value_as_concept_id=40779119,
                   measurement_date ='2005-07-01', 
                   measurement_source_value='biopt_prob_type', value_source_value=4,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(81, 'Measurement - biopt_inf_urine_culture')
add_basedata(p_id='10081', year_diagnosis='2005', biopt_inf_urine_culture='1')
expect_measurement(person_id=10081, measurement_concept_id=4024509, value_as_concept_id=9191,
                   measurement_date ='2005-07-01', 
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(82, 'Measurement - biopt_inf_urine_culture')
add_basedata(p_id='10082', year_diagnosis='2005', biopt_inf_urine_culture='2')
expect_measurement(person_id=10082, measurement_concept_id=4024509, value_as_concept_id=9189,
                   measurement_date ='2005-07-01', 
                   measurement_source_value='biopt_inf_urine_culture', value_source_value=2,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(83, 'Measurement - biopt_inf_urine_culture')
add_basedata(p_id='10083', year_diagnosis='2005', biopt_inf_urine_culture='0')
expect_no_measurement(person_id=10083, measurement_concept_id=4024509)

# Basedata to measurement -------------------------------------------
declareTest(84, 'Measurement - biopt_inf_urine_bacterium')
add_basedata(p_id='10084', year_diagnosis='2005', biopt_inf_urine_bacterium='1')
expect_measurement(person_id=10084, measurement_concept_id=36304419, value_as_concept_id=4011683,
                   measurement_date ='2005-07-01', 
                   measurement_source_value='biopt_inf_urine_bacterium', value_source_value=1,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(85, 'Measurement - biopt_inf_urine_bacterium')
add_basedata(p_id='10085', year_diagnosis='2005', biopt_inf_urine_bacterium='2')
expect_measurement(person_id=10085, measurement_concept_id=36304419, value_as_concept_id=4211547,
                   measurement_date ='2005-07-01', 
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(86, 'Measurement - biopt_inf_urine_bacterium')
add_basedata(p_id='10086', year_diagnosis='2005', biopt_inf_urine_bacterium='0')
expect_no_measurement(person_id=10086, measurement_concept_id=36304419)

# Basedata to measurement -------------------------------------------
declareTest(87, 'Measurement - biopt_inf_urine_bacterium')
add_basedata(p_id='10087', year_diagnosis='2005', biopt_inf_urine_bacterium='3')
expect_measurement(person_id=10087, measurement_concept_id=36304419, value_as_concept_id=4101235,
                   measurement_date ='2005-07-01', 
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(88, 'Measurement - biopt_inf_urine_bacterium')
add_basedata(p_id='10088', year_diagnosis='2005', biopt_inf_urine_bacterium='4')
expect_measurement(person_id=10088, measurement_concept_id=36304419, value_as_concept_id=4196666,
                   measurement_source_value='biopt_inf_urine_bacterium', value_source_value=4,
                   measurement_date ='2005-07-01', 
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(89, 'Measurement - biopt_inf_unrine_resistant')
add_basedata(p_id='10089', year_diagnosis='2005', biopt_inf_unrine_resistant='1')
expect_measurement(person_id=10089, measurement_concept_id=2000000003, value_as_concept_id=1176676,
                   measurement_date ='2005-07-01', 
                   measurement_source_value='biopt_inf_unrine_resistant', value_source_value=1,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(90, 'Measurement - biopt_inf_unrine_resistant')
add_basedata(p_id='10090', year_diagnosis='2005', biopt_inf_unrine_resistant='0')
expect_no_measurement(person_id=10090, measurement_concept_id=2000000003)

# Basedata to measurement -------------------------------------------
declareTest(91, 'Measurement - biopt_inf_antibiotic_type')
add_basedata(p_id='10091', year_diagnosis='2005', biopt_inf_antibiotic_type='1')
expect_measurement(person_id=10091, measurement_concept_id=1176676,
                   measurement_date ='2005-07-01', 
                   measurement_source_value='biopt_inf_antibiotic_type-1',
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(92, 'Measurement - biopt_inf_antibiotic_type')
add_basedata(p_id='10092', year_diagnosis='2005', biopt_inf_antibiotic_type='0')
expect_no_measurement(person_id=10092, measurement_concept_id=1176676)

# Basedata to measurement -------------------------------------------
declareTest(93, 'Measurement - biopt_max_cancer_score_lenght')
add_basedata(p_id='10093', year_diagnosis='2005', biopt_max_cancer_score_lenght='20')
expect_measurement(person_id=10093, measurement_concept_id=2000000006, unit_concept_id=8588, 
                   measurement_date ='2005-07-01', 
                   measurement_source_value='biopt_max_cancer_score_lenght', value_source_value=20,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(94, 'Measurement - mri_pirads_1.0')
add_basedata(p_id='10094', year_diagnosis='2005', mri_pirads_1.0='1', mri_taken.0='1')
expect_measurement(person_id=10094, measurement_concept_id=2000000007, 
                   measurement_date ='2005-07-01', value_as_concept_id=2000000008,
                   measurement_source_value='mri_pirads_1.0', value_source_value=1,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(95, 'Measurement - mri_pirads_2.0')
add_basedata(p_id='10095', year_diagnosis='2005', mri_pirads_2.0='2', mri_taken.0='1')
expect_measurement(person_id=10095, measurement_concept_id=2000000007, 
                   measurement_date ='2005-07-01', value_as_concept_id=2000000009,
                   measurement_source_value='mri_pirads_2.0', value_source_value=2,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(96, 'Measurement - mri_pirads_3.0')
add_basedata(p_id='10096', year_diagnosis='2005', mri_pirads_3.0='3', mri_taken.0='1')
expect_measurement(person_id=10096, measurement_concept_id=2000000007, 
                   measurement_date ='2005-07-01', value_as_concept_id=2000000010,
                   measurement_source_value='mri_pirads_3.0', value_source_value=3,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(97, 'Measurement - mri_pirads_3.0')
add_basedata(p_id='10097', year_diagnosis='2005', mri_pirads_3.0='0')
expect_no_measurement(person_id=10097, measurement_concept_id=2000000007, value_as_concept_id=2000000009)

# Basedata to measurement -------------------------------------------
declareTest(98, 'Measurement - mri_targeted_cores.0')
add_basedata(p_id='10098', year_diagnosis='2005', mri_targeted_cores.0='5', mri_taken.0='1', mri_targeted_biopsy.0='1')
expect_measurement(person_id=10098, measurement_concept_id=35918000, 
                   measurement_date ='2005-07-01',
                   measurement_source_value='mri_targeted_cores.0', value_source_value=5,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(99, 'Measurement - mri_targeted_cores.0')
add_basedata(p_id='10099', year_diagnosis='2005', mri_targeted_cores.0='5', mri_taken.0='1', mri_targeted_biopsy.0='0')
expect_no_measurement(person_id=10099, measurement_concept_id=35918000, measurement_source_value='mri_targeted_cores.0')

# Basedata to measurement -------------------------------------------
declareTest(100, 'Measurement - mri_targeted_cores.0')
add_basedata(p_id='10100', year_diagnosis='2005', mri_targeted_cores.0='5', mri_taken.0='0', mri_targeted_biopsy.0='1')
expect_no_measurement(person_id=10100, measurement_concept_id=35918000, measurement_source_value='mri_targeted_cores.0')

# Basedata to measurement -------------------------------------------
declareTest(101, 'Measurement - mri_targeted_cores.0')
add_basedata(p_id='10101', year_diagnosis='2005', mri_targeted_cores.0='5', mri_taken.0='0', mri_targeted_biopsy.0='0')
expect_no_measurement(person_id=10101, measurement_concept_id=35918000, measurement_source_value='mri_targeted_cores.0')

# Basedata to measurement -------------------------------------------
declareTest(102, 'Measurement - mri_targeted_taken.0')
add_basedata(p_id='10102', year_diagnosis='2005', mri_targeted_taken.0='4', mri_taken.0='1')
expect_measurement(person_id=10102, measurement_concept_id=35917476, 
                   measurement_date ='2005-07-01',
                   measurement_source_value='mri_targeted_taken.0', value_source_value=4,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(103, 'Measurement - mri_targeted_taken.0')
add_basedata(p_id='10103', year_diagnosis='2005', mri_targeted_taken.0='5', mri_taken.0='0')
expect_no_measurement(person_id=10103, measurement_concept_id=35917476, measurement_source_value='mri_targeted_taken.0')

# Basedata to measurement -------------------------------------------
declareTest(104, 'Measurement - mri_lesion_positive.0')
add_basedata(p_id='10104', year_diagnosis='2005', mri_lesion_positive.0='10', mri_taken.0='1')
expect_measurement(person_id=10104, measurement_concept_id=35918000, 
                   measurement_date ='2005-07-01',
                   measurement_source_value='mri_lesion_positive.0', value_source_value=10,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(105, 'Measurement - mri_lesion_positive.0')
add_basedata(p_id='10105', year_diagnosis='2005', mri_lesion_positive.0='10', mri_taken.0='0')
expect_no_measurement(person_id=10105, measurement_concept_id=359180006, measurement_source_value='mri_lesion_positive.0')


# Basedata to measurement -------------------------------------------
declareTest(107, 'Measurement - mri_prostate_volume.0 + mri_prostate_volume_method.0')
add_basedata(p_id='10107', year_diagnosis='2005', mri_prostate_volume.0='10', mri_prostate_volume_method.0='1', mri_taken.0='1')
expect_measurement(person_id=10107, measurement_concept_id=2000000024,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(108, 'Measurement - mri_prostate_volume.0 + mri_prostate_volume_method.0')
add_basedata(p_id='10108', year_diagnosis='2005', mri_prostate_volume.0='10', mri_prostate_volume_method.0='2', mri_taken.0='1')
expect_measurement(person_id=10108, measurement_concept_id=2000000025,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(109, 'Measurement - mri_prostate_volume.0 + mri_prostate_volume_method.0')
add_basedata(p_id='10109', year_diagnosis='2005', mri_prostate_volume.0='10', mri_prostate_volume_method.0='2', mri_taken.0='0')
expect_no_measurement(person_id=10109, measurement_concept_id=2000000026,
                   measurement_type_concept_id=44818701)

# Fulong to measurement -------------------------------------------
declareTest(110, 'Measurement - psa_fu')
add_basedata(p_id='10110')
add_fulong(p_id='10110', psa_fu=6)
expect_measurement(person_id=10110, measurement_concept_id=44793131, value_as_number=6,
                   unit_concept_id=8842, 
                   measurement_source_value='psa_fu', value_source_value=6,
                   measurement_type_concept_id=44818701)

# Fulong to measurement -------------------------------------------
declareTest(111, 'Measurement - num_cores_biop_fu')
add_basedata(p_id='10111')
add_fulong(p_id='10111', num_cores_biop_fu=8)
expect_measurement(person_id=10111, measurement_concept_id=35917476, value_as_number=8,
                   measurement_source_value='num_cores_biop_fu', value_source_value=8,
                   measurement_type_concept_id=44818701)

# Fulong to measurement -------------------------------------------
declareTest(112, 'Measurement - num_cores_pc_fu')
add_basedata(p_id='10112')
add_fulong(p_id='10112', num_cores_pc_fu=8)
expect_measurement(person_id=10112, measurement_concept_id=35918000, value_as_number=8, 
                   measurement_source_value='num_cores_pc_fu', value_source_value=8,
                   measurement_type_concept_id=44818701)

# Fulong to measurement -------------------------------------------
declareTest(113, 'Measurement - asa_fu')
add_basedata(p_id='10113')
add_fulong(p_id='10113', asa_fu=4)
expect_measurement(person_id=10113, measurement_concept_id=42538860, value_as_number=4, 
                   measurement_type_concept_id=44818701)

# Fulong to measurement -------------------------------------------
declareTest(114, 'Measurement - psadt')
add_basedata(p_id='10114')
add_fulong(p_id='10114', psadt='0.1')
expect_measurement(person_id=10114, measurement_concept_id=2000000020, value_as_number=0.1, 
                   unit_concept_id=9448,
                   measurement_source_value='psadt', value_source_value=0.1,
                   measurement_type_concept_id=44818701)

# Fulong to measurement -------------------------------------------
declareTest(115, 'Measurement - biopt_prob_type_fu')
add_basedata(p_id='10115')
add_fulong(p_id='10115', biopt_prob_type='0')
expect_no_measurement(person_id=10115, measurement_concept_id=4079278)

# Fulong to measurement -------------------------------------------
declareTest(116, 'Measurement - biopt_prob_type_fu')
add_basedata(p_id='10116')
add_fulong(p_id='10116', biopt_prob_type='2')
expect_measurement(person_id=10116, measurement_concept_id=40792781, value_as_concept_id=1176676,
                   measurement_source_value='biopt_prob_type_fu', value_source_value=2,
                   measurement_type_concept_id=44818701)

# Fulong to measurement -------------------------------------------
declareTest(117, 'Measurement - biopt_inf_urine_culture_fu')
add_basedata(p_id='10117')
add_fulong(p_id='10117', biopt_inf_urine_culture_fu='2')
expect_measurement(person_id=10117, measurement_concept_id=4024509, value_as_concept_id=9189,
                   measurement_source_value='biopt_inf_urine_culture_fu', value_source_value=2,
                   measurement_type_concept_id=44818701)

# Fulong to measurement -------------------------------------------
declareTest(118, 'Measurement - biopt_inf_urine_culture_fu')
add_basedata(p_id='10118')
add_fulong(p_id='10118', biopt_inf_urine_culture_fu='0')
expect_no_measurement(person_id=10118, measurement_concept_id=4024509)


# Fulong to measurement -------------------------------------------
declareTest(119, 'Measurement - biopt_inf_urine_bacterium_fu')
add_basedata(p_id='10119')
add_fulong(p_id='10119', biopt_inf_urine_bacterium_fu='3')
expect_measurement(person_id=10119, measurement_concept_id=36304419, value_as_concept_id=4101235,
                   measurement_type_concept_id=44818701)

# Fulong to measurement -------------------------------------------
declareTest(120, 'Measurement - biopt_inf_urine_bacterium_fu')
add_basedata(p_id='10120')
add_fulong(p_id='10120', biopt_inf_urine_bacterium_fu='4')
expect_measurement(person_id=10120, measurement_concept_id=36304419, value_as_concept_id=4196666,
                   measurement_source_value='biopt_inf_urine_bacterium_fu', value_source_value=4,
                   measurement_type_concept_id=44818701)

# Fulong to measurement -------------------------------------------
declareTest(121, 'Measurement - biopt_inf_unrine_resistant_fu')
add_basedata(p_id='10121')
add_fulong(p_id='10121', biopt_inf_unrine_resistant_fu='1')
expect_measurement(person_id=10121, measurement_concept_id=2000000003, value_as_concept_id=1176676,
                   measurement_source_value='biopt_inf_unrine_resistant_fu', value_source_value=1,
                   measurement_type_concept_id=44818701)

# Fulong to measurement -------------------------------------------
declareTest(122, 'Measurement - biopt_inf_unrine_resistant_fu')
add_basedata(p_id='10122')
add_fulong(p_id='10122', biopt_inf_unrine_resistant_fu='0')
expect_no_measurement(person_id=10122, measurement_concept_id=2000000003)


# Fulong to measurement -------------------------------------------
declareTest(123, 'Measurement - biopt_inf_antibiotic_type_fu')
add_basedata(p_id='10123')
add_fulong(p_id='10123', biopt_inf_antibiotic_type_fu='1')
expect_measurement(person_id=10123, measurement_concept_id=1176676,
                   measurement_source_value='biopt_inf_antibiotic_type_fu-1',
                   measurement_type_concept_id=44818701)

# Fulong to measurement -------------------------------------------
declareTest(124, 'Measurement - biopt_inf_antibiotic_type_fu')
add_basedata(p_id='10124')
add_fulong(p_id='10124', biopt_inf_antibiotic_type_fu='0')
expect_no_measurement(person_id=10124, measurement_concept_id=1176676)

# Fulong to measurement -------------------------------------------
declareTest(125, 'Measurement - biopt_max_cancer_score_lenght_fu')
add_basedata(p_id='10125')
add_fulong(p_id='10125', biopt_max_cancer_score_lenght_fu='20')
expect_measurement(person_id=10125, measurement_concept_id=2000000006, unit_concept_id=8588, 
                   measurement_source_value='biopt_max_cancer_score_lenght_fu', value_source_value=20,
                   measurement_type_concept_id=44818701)

# Fulong to measurement -------------------------------------------
declareTest(126, 'Measurement - mri_pirads_3')
add_basedata(p_id='10126')
add_fulong(p_id='10126', mri_pirads_3='3', mri_taken='1')
expect_measurement(person_id=10126, measurement_concept_id=2000000007, value_as_concept_id=2000000010,
                   measurement_source_value='mri_pirads_3', value_source_value=3,
                   measurement_type_concept_id=44818701)

# Fulong to measurement -------------------------------------------
declareTest(127, 'Measurement - mri_pirads_3')
add_basedata(p_id='10127')
add_fulong(p_id='10127', mri_pirads_3='0')
expect_no_measurement(person_id=10127, measurement_concept_id=2000000007, value_as_concept_id=2000000009)

# Basedata to measurement -------------------------------------------
declareTest(128, 'Measurement - mri_targeted_cores')
add_basedata(p_id='10128')
add_fulong(p_id='10128', mri_targeted_cores='5', mri_taken='1', mri_targeted_biopsy='1')
expect_measurement(person_id=10128, measurement_concept_id=35918000, 
                   measurement_source_value='mri_targeted_cores', value_source_value=5,
                   measurement_type_concept_id=44818701)

# Fulong to measurement -------------------------------------------
declareTest(129, 'Measurement - mri_targeted_cores')
add_basedata(p_id='10129')
add_fulong(p_id='10129', mri_targeted_cores='5', mri_taken='1', mri_targeted_biopsy='0')
expect_no_measurement(person_id=10129, measurement_concept_id=35918000, measurement_source_value='mri_targeted_cores')

# Fulong to measurement -------------------------------------------
declareTest(130, 'Measurement - mri_targeted_cores')
add_basedata(p_id='10130')
add_fulong(p_id='10130', mri_targeted_cores='5', mri_taken='0', mri_targeted_biopsy='1')
expect_no_measurement(person_id=10130, measurement_concept_id=35918000, measurement_source_value='mri_targeted_cores')

# Fulong to measurement -------------------------------------------
declareTest(131, 'Measurement - mri_targeted_cores')
add_basedata(p_id='10131')
add_fulong(p_id='10131', mri_targeted_cores='5', mri_taken='0', mri_targeted_biopsy='0')
expect_no_measurement(person_id=10131, measurement_concept_id=35918000, measurement_source_value='mri_targeted_cores')

# Fulong to measurement -------------------------------------------
declareTest(132, 'Measurement - mri_targeted_taken')
add_basedata(p_id='10132')
add_fulong(p_id='10132', mri_targeted_taken='4', mri_taken='1')
expect_measurement(person_id=10132, measurement_concept_id=35917476, 
                   measurement_source_value='mri_targeted_taken', value_source_value=4,
                   measurement_type_concept_id=44818701)

# Fulonga to measurement -------------------------------------------
declareTest(133, 'Measurement - mri_targeted_taken')
add_basedata(p_id='10133')
add_fulong(p_id='10133', mri_targeted_taken='5', mri_taken='0')
expect_no_measurement(person_id=10333, measurement_concept_id=35917476, measurement_source_value='mri_targeted_taken')

# Fulong to measurement -------------------------------------------
declareTest(134, 'Measurement - mri_lesion_positive')
add_basedata(p_id='10134')
add_fulong(p_id='10134', mri_lesion_positive='10', mri_taken='1')
expect_measurement(person_id=10134, measurement_concept_id=35918000, 
                   measurement_source_value='mri_lesion_positive', value_source_value=10,
                   measurement_type_concept_id=44818701)

# Fulong to measurement -------------------------------------------
declareTest(135, 'Measurement - mri_lesion_positive')
add_basedata(p_id='10135')
add_fulong(p_id='10135', mri_lesion_positive='10', mri_taken='0')
expect_no_measurement(person_id=10135, measurement_concept_id=359180006, measurement_source_value='mri_lesion_positive')


# Fulong to measurement -------------------------------------------
declareTest(137, 'Measurement - mri_prostate_volume + mri_prostate_volume_method')
add_basedata(p_id='10137')
add_fulong(p_id='10137', mri_prostate_volume='10', mri_prostate_volume_method='1', mri_taken='1')
expect_measurement(person_id=10137, measurement_concept_id=2000000024,
                   measurement_type_concept_id=44818701)

# Fulong to measurement -------------------------------------------
declareTest(138, 'Measurement - mri_prostate_volume.0 + mri_prostate_volume_method')
add_basedata(p_id='10138')
add_fulong(p_id='10138', mri_prostate_volume='10', mri_prostate_volume_method='2', mri_taken='1')
expect_measurement(person_id=10138, measurement_concept_id=2000000025,
                   measurement_type_concept_id=44818701)

# Fulong to measurement -------------------------------------------
declareTest(139, 'Measurement - mri_prostate_volume.0 + mri_prostate_volume_method')
add_basedata(p_id='10139')
add_fulong(p_id='10139', mri_prostate_volume='10', mri_prostate_volume_method='2', mri_taken='0')
expect_no_measurement(person_id=10139, measurement_concept_id=2000000026,
                      measurement_type_concept_id=44818701)



