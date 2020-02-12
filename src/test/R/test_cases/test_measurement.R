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
declareTest(61, 'Measurement - num_cores')
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
expect_no_measurement

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
expect_no_measurement

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
expect_no_measurement

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
expect_no_measurement

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
expect_no_measurement

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
expect_no_measurement

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
expect_no_measurement

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
expect_no_measurement

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
expect_no_measurement

# Basedata to measurement -------------------------------------------
declareTest(100, 'Measurement - mri_targeted_cores.0')
add_basedata(p_id='10100', year_diagnosis='2005', mri_targeted_cores.0='5', mri_taken.0='0', mri_targeted_biopsy.0='1')
expect_no_measurement

# Basedata to measurement -------------------------------------------
declareTest(101, 'Measurement - mri_targeted_cores.0')
add_basedata(p_id='10101', year_diagnosis='2005', mri_targeted_cores.0='5', mri_taken.0='0', mri_targeted_biopsy.0='0')
expect_no_measurement

# Basedata to measurement -------------------------------------------
declareTest(102, 'Measurement - mri_targeted_taken.0')
add_basedata(p_id='10102', year_diagnosis='2005', mri_targeted_taken.0='1', mri_taken.0='1')
expect_measurement(person_id=10102, measurement_concept_id=35917476, 
                   measurement_date ='2005-07-01',
                   measurement_source_value='mri_targeted_cores.0', value_source_value=5,
                   measurement_type_concept_id=44818701)

# Basedata to measurement -------------------------------------------
declareTest(103, 'Measurement - mri_targeted_taken.0')
add_basedata(p_id='10103', year_diagnosis='2005', mri_targeted_cores.0='5', mri_taken.0='1', mri_targeted_biopsy.0='0')
expect_no_measurement