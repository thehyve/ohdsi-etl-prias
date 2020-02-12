# Basedata to condition occurrence -------------------------------------------
declareTest(12, 'Condition occurrence - prostate cancer')
add_basedata(p_id='10012', year_diagnosis='2005')
expect_condition_occurrence(person_id=10012, condition_concept_id=4116087, condition_start_date='2005-07-01',
                            condition_start_datetime='2005-07-01 00:00:00', condition_type_concept_id=44786627)

# Basedata to condition occurrence -------------------------------------------
declareTest(13, 'Condition occurrence - dre')
add_basedata(p_id='10013', year_diagnosis='2005', dre='T1c')
expect_condition_occurrence(person_id=10013, condition_concept_id=4129916, condition_start_date='2005-07-01',
                            condition_source_value='dre-t1c',
                            condition_start_datetime='2005-07-01 00:00:00', condition_type_concept_id=44786627)

# Basedata to condition occurrence -------------------------------------------
declareTest(14, 'Condition occurrence - dre')
add_basedata(p_id='10014', year_diagnosis='2005', dre='T2a  (a,b)')
expect_condition_occurrence(person_id=10014, condition_concept_id=4129917, condition_start_date='2005-07-01',
                            condition_source_value='dre-t2a',
                            condition_start_datetime='2005-07-01 00:00:00', condition_type_concept_id=44786627)

# Basedata to condition occurrence -------------------------------------------
declareTest(15, 'Condition occurrence - dre')
add_basedata(p_id='10015', year_diagnosis='2005', dre='T2a  (a,b,c))')
expect_condition_occurrence(person_id=10015, condition_concept_id=4129917, condition_start_date='2005-07-01',
                            condition_source_value='dre-t2a',
                            condition_start_datetime='2005-07-01 00:00:00', condition_type_concept_id=44786627)

# Basedata to condition occurrence -------------------------------------------
declareTest(16, 'Condition occurrence - dre')
add_basedata(p_id='10016', year_diagnosis='2005', dre='T2b  (a,b,c)')
expect_condition_occurrence(person_id=10016, condition_concept_id=4127611, condition_start_date='2005-07-01',
                            condition_start_datetime='2005-07-01 00:00:00', condition_type_concept_id=44786627)

# Basedata to condition occurrence -------------------------------------------
declareTest(17, 'Condition occurrence - dre')
add_basedata(p_id='10017', year_diagnosis='2005', dre='T2b  (a,b)')
expect_condition_occurrence(person_id=10017, condition_concept_id=4127611, condition_start_date='2005-07-01',
                            condition_source_value='dre-t2b',
                            condition_start_datetime='2005-07-01 00:00:00', condition_type_concept_id=44786627)

# Basedata to condition occurrence -------------------------------------------
declareTest(18, 'Condition occurrence - dre')
add_basedata(p_id='10018', year_diagnosis='2005', dre='T2c')
expect_condition_occurrence(person_id=10018, condition_concept_id=4129127, condition_start_date='2005-07-01',
                            condition_source_value='dre-t2c',
                            condition_start_datetime='2005-07-01 00:00:00', condition_type_concept_id=44786627)

# Basedata to condition occurrence -------------------------------------------
declareTest(19, 'Condition occurrence - dre')
add_basedata(p_id='10019', year_diagnosis='2005', dre='T2a')
expect_condition_occurrence(person_id=10019, condition_concept_id=4129917, condition_start_date='2005-07-01',
                            condition_source_value='dre-t2a',
                            condition_start_datetime='2005-07-01 00:00:00', condition_type_concept_id=44786627)

# Basedata to condition occurrence -------------------------------------------
declareTest(20, 'Condition occurrence - biopt_inf_outcome')
add_basedata(p_id='10020', year_diagnosis='2005', biopt_inf_outcome='0')
expect_no_condition_occurrence

# Basedata to condition occurrence -------------------------------------------
declareTest(21, 'Condition occurrence - biopt_inf_outcome')
add_basedata(p_id='10021', year_diagnosis='2005', biopt_inf_outcome='1')
expect_condition_occurrence(person_id=10021, condition_concept_id=4159637, condition_start_date='2005-07-01',
                            condition_source_value='biopt_inf_outcome-1',
                            condition_start_datetime='2005-07-01 00:00:00', condition_type_concept_id=44786627)

# Basedata to condition occurrence -------------------------------------------
declareTest(22, 'Condition occurrence - biopt_inf_outcome')
add_basedata(p_id='10022', year_diagnosis='2005', biopt_inf_outcome='2')
expect_condition_occurrence(person_id=10022, condition_concept_id=4216643, condition_start_date='2005-07-01',
                            condition_source_value='biopt_inf_outcome-2',
                            condition_start_datetime='2005-07-01 00:00:00', condition_type_concept_id=44786627)

# Basedata to condition occurrence -------------------------------------------
declareTest(23, 'Condition occurrence - biopt_hematuria')
add_basedata(p_id='10023', year_diagnosis='2005', biopt_hematuria='0')
expect_no_condition_occurrence

# Basedata to condition occurrence -------------------------------------------
declareTest(24, 'Condition occurrence - biopt_hematuria')
add_basedata(p_id='10024', year_diagnosis='2005', biopt_hematuria='1')
expect_condition_occurrence(person_id=10024, condition_concept_id=437038, condition_start_date='2005-07-01',
                            condition_source_value='biopt_hematuria-1',
                            condition_start_datetime='2005-07-01 00:00:00', condition_type_concept_id=44786627)

# Basedata to condition occurrence -------------------------------------------
declareTest(25, 'Condition occurrence - biopt_hematuria')
add_basedata(p_id='10025', year_diagnosis='2005', biopt_hematuria='2')
expect_no_condition_occurrence

# Basedata to condition occurrence -------------------------------------------
declareTest(26, 'Condition occurrence - biopt_hemospermia')
add_basedata(p_id='10026', year_diagnosis='2005', biopt_hemospermia='0')
expect_no_condition_occurrence

# Basedata to condition occurrence -------------------------------------------
declareTest(27, 'Condition occurrence - biopt_hemospermia')
add_basedata(p_id='10027', year_diagnosis='2005', biopt_hemospermia='1')
expect_condition_occurrence(person_id=10027, condition_concept_id=439871, condition_start_date='2005-07-01',
                            condition_source_value='biopt_hemospermia-1',
                            condition_start_datetime='2005-07-01 00:00:00', condition_type_concept_id=44786627)

# Basedata to condition occurrence -------------------------------------------
declareTest(28, 'Condition occurrence - biopt_hemospermia')
add_basedata(p_id='10028', year_diagnosis='2005', biopt_hemospermia='2')
expect_no_condition_occurrence

# Basedata to condition occurrence -------------------------------------------
declareTest(29, 'Condition occurrence - biopt_pain')
add_basedata(p_id='10029', year_diagnosis='2005', biopt_pain='0')
expect_no_condition_occurrence

# Basedata to condition occurrence -------------------------------------------
declareTest(30, 'Condition occurrence - biopt_pain')
add_basedata(p_id='10030', year_diagnosis='2005', biopt_pain='1')
expect_condition_occurrence(person_id=10030, condition_concept_id=2000000005, condition_start_date='2005-07-01',
                            condition_source_value='biopt_pain-1',
                            condition_start_datetime='2005-07-01 00:00:00', condition_type_concept_id=44786627)

# Basedata to condition occurrence -------------------------------------------
declareTest(31, 'Condition occurrence - biopt_pain')
add_basedata(p_id='10031', year_diagnosis='2005', biopt_pain='2')
expect_no_condition_occurrence

# Basedata to condition occurrence -------------------------------------------
declareTest(32, 'Condition occurrence - mri_lesions.0')
add_basedata(p_id='10032', year_diagnosis='2005', mri_lesions.0='0')
expect_no_condition_occurrence

# Basedata to condition occurrence -------------------------------------------
declareTest(33, 'Condition occurrence - mri_lesions.0')
add_basedata(p_id='10033', year_diagnosis='2005', mri_lesions.0='1', mri_taken.0='1')
expect_condition_occurrence(person_id=10033, condition_concept_id=4059669, condition_start_date='2005-07-01',
                            condition_source_value='mri_lesions.0-1',
                            condition_start_datetime='2005-07-01 00:00:00', condition_type_concept_id=44786627)

# Basedata to condition occurrence -------------------------------------------
declareTest(34, 'Condition occurrence - mri_lesions.0')
add_basedata(p_id='10034', year_diagnosis='2005', mri_lesions.0='2', mri_taken.0='1')
expect_no_condition_occurrence

# Fulong to condition occurrence -------------------------------------------
declareTest(35, 'Condition occurrence - fulong dre_fu')
add_basedata(p_id='10035', year_diagnosis='2005')
add_fulong(p_id='10035', dre_fu='T1c', days_psa_diag='1')
expect_condition_occurrence(person_id=10035, condition_concept_id=4129916, condition_start_date='2005-07-02',
                            condition_source_value='dre_fu-t1c',
                            condition_start_datetime='2005-07-02 00:00:00', condition_type_concept_id=44786627)

# Fulong to condition occurrence -------------------------------------------
declareTest(36, 'Condition occurrence - fulong dre_fu')
add_basedata(p_id='10036', year_diagnosis='2005')
add_fulong(p_id='10036', dre_fu='T2a  (a,b)', days_psa_diag='1')
expect_condition_occurrence(person_id=10036, condition_concept_id=4129917, condition_start_date='2005-07-02',
                            condition_source_value='dre_fu-t2a',
                            condition_start_datetime='2005-07-02 00:00:00', condition_type_concept_id=44786627)

# Fulong to condition occurrence -------------------------------------------
declareTest(37, 'Condition occurrence - fulong dre_fu')
add_basedata(p_id='10037', year_diagnosis='2005')
add_fulong(p_id='10037', dre_fu='T2a  (a,b,c))', days_psa_diag='1')
expect_condition_occurrence(condition_concept_id=4129917, condition_start_date='2005-07-02',
                            condition_source_value='dre_fu-t2a',
                            condition_start_datetime='2005-07-02 00:00:00', condition_type_concept_id=44786627)

# Fulong to condition occurrence -------------------------------------------
declareTest(38, 'Condition occurrence - fulong dre_fu')
add_basedata(p_id='10038', year_diagnosis='2005')
add_fulong(p_id='10038', dre_fu='T2b  (a,b,c)', days_psa_diag='1')
expect_condition_occurrence(person_id=10038, condition_concept_id=4127611, condition_start_date='2005-07-02',
                            condition_start_datetime='2005-07-02 00:00:00', condition_type_concept_id=44786627)

# Fulong to condition occurrence -------------------------------------------
declareTest(39, 'Condition occurrence - fulong dre_fu')
add_basedata(p_id='10039', year_diagnosis='2005')
add_fulong(p_id='10039', dre_fu='T2b  (a,b)', days_psa_diag='1')
expect_condition_occurrence(person_id=10039, condition_concept_id=4127611, condition_start_date='2005-07-02',
                            condition_source_value='dre_fu-t2b',
                            condition_start_datetime='2005-07-02 00:00:00', condition_type_concept_id=44786627)

# Fulong to condition occurrence -------------------------------------------
declareTest(40, 'Condition occurrence - fulong dre_fu')
add_basedata(p_id='10040', year_diagnosis='2005')
add_fulong(p_id='10040', dre_fu='T2c', days_psa_diag='1')
expect_condition_occurrence(person_id=10040, condition_concept_id=4129127, condition_start_date='2005-07-02',
                            condition_source_value='dre_fu-t2c',
                            condition_start_datetime='2005-07-02 00:00:00', condition_type_concept_id=44786627)

# Fulong to condition occurrence -------------------------------------------
declareTest(41, 'Condition occurrence - fulong dre_fu')
add_basedata(p_id='10041', year_diagnosis='2005')
add_fulong(p_id='10041', dre_fu='T2a', days_psa_diag='1')
expect_condition_occurrence(person_id=10041, condition_concept_id=4129917, condition_start_date='2005-07-02',
                            condition_source_value='dre_fu-t2a',
                            condition_start_datetime='2005-07-02 00:00:00', condition_type_concept_id=44786627)

# Fulong to condition occurrence -------------------------------------------
declareTest(42, 'Condition occurrence - fulong biopt_inf_outcome_fu')
add_basedata(p_id='10042', year_diagnosis='2005')
add_fulong(p_id='10042', biopt_inf_outcome_fu='0', days_psa_diag='1')
expect_no_condition_occurrence

# Fulong to condition occurrence -------------------------------------------
declareTest(43, 'Condition occurrence - fulong biopt_inf_outcome_fu')
add_basedata(p_id='10043', year_diagnosis='2005')
add_fulong(p_id='10043', biopt_inf_outcome_fu='1', days_psa_diag='1')
expect_condition_occurrence(person_id=10043, condition_concept_id=4159637, condition_start_date='2005-07-02',
                            condition_source_value='biopt_inf_outcome_fu-1',
                            condition_start_datetime='2005-07-02 00:00:00', condition_type_concept_id=44786627)

# Fulong to condition occurrence -------------------------------------------
declareTest(44, 'Condition occurrence - fulong biopt_inf_outcome_fu')
add_basedata(p_id='10044', year_diagnosis='2005')
add_fulong(p_id='10044', biopt_inf_outcome_fu='2', days_psa_diag='1')
expect_condition_occurrence(person_id=10044, condition_concept_id=4216643, condition_start_date='2005-07-02',
                            condition_source_value='biopt_inf_outcome_fu-2',
                            condition_start_datetime='2005-07-02 00:00:00', condition_type_concept_id=44786627)

# Fulong to condition occurrence -------------------------------------------
declareTest(45, 'Condition occurrence - fulong biopt_hematuria_fu')
add_basedata(p_id='10045', year_diagnosis='2005')
add_fulong(p_id='10045', biopt_hematuria_fu='0', days_psa_diag='1')
expect_no_condition_occurrence

# Fulong to condition occurrence -------------------------------------------
declareTest(46, 'Condition occurrence - fulong biopt_hematuria_fu')
add_basedata(p_id='10046', year_diagnosis='2005')
add_fulong(p_id='10046', biopt_hematuria_fu='1', days_psa_diag='1')
expect_condition_occurrence(person_id=10046, condition_concept_id=437038, condition_start_date='2005-07-02',
                            condition_source_value='biopt_hematuria_fu-1',
                            condition_start_datetime='2005-07-02 00:00:00', condition_type_concept_id=44786627)

# Fulong to condition occurrence -------------------------------------------
declareTest(47, 'Condition occurrence - fulong biopt_hematuria_fu')
add_basedata(p_id='10047', year_diagnosis='2005')
add_fulong(p_id='10047', biopt_hematuria_fu='2', days_psa_diag='1')
expect_no_condition_occurrence

# Fulong to condition occurrence -------------------------------------------
declareTest(48, 'Condition occurrence - fulong biopt_hemospermia_fu')
add_basedata(p_id='10048', year_diagnosis='2005')
add_fulong(p_id='10048', biopt_hemospermia_fu='0', days_psa_diag='1')
expect_no_condition_occurrence

# Fulong to condition occurrence -------------------------------------------
declareTest(49, 'Condition occurrence - fulong biopt_hemospermia_fu')
add_basedata(p_id='10049', year_diagnosis='2005')
add_fulong(p_id='10049', biopt_hemospermia_fu='1', days_psa_diag='1')
expect_condition_occurrence(condition_concept_id=439871, condition_start_date='2005-07-02',
                            condition_source_value='biopt_hemospermia_fu-1',
                            condition_start_datetime='2005-07-02 00:00:00', condition_type_concept_id=44786627)

# Fulong to condition occurrence -------------------------------------------
declareTest(50, 'Condition occurrence - fulong biopt_hemospermia_fu')
add_basedata(p_id='10050', year_diagnosis='2005')
add_fulong(p_id='10050', biopt_hemospermia_fu='2', days_psa_diag='1')
expect_no_condition_occurrence

# Fulong to condition occurrence -------------------------------------------
declareTest(51, 'Condition occurrence - fulong biopt_pain_fu')
add_basedata(p_id='10051', year_diagnosis='2005')
add_fulong(p_id='10051', biopt_pain_fu='0', days_psa_diag='1')
expect_no_condition_occurrence

# Fulong to condition occurrence -------------------------------------------
declareTest(52, 'Condition occurrence - fulong biopt_pain_fu')
add_basedata(p_id='10052', year_diagnosis='2005')
add_fulong(p_id='10052',  biopt_pain_fu='1', days_psa_diag='1')
expect_condition_occurrence(person_id=10052, condition_concept_id=2000000005, condition_start_date='2005-07-02',
                            condition_source_value='biopt_pain_fu-1',
                            condition_start_datetime='2005-07-02 00:00:00', condition_type_concept_id=44786627)

# Fulong to condition occurrence -------------------------------------------
declareTest(53, 'Condition occurrence - fulong biopt_pain_fu')
add_basedata(p_id='10053', year_diagnosis='2005')
add_fulong(p_id='10053',  biopt_pain_fu='2', days_psa_diag='1')
expect_no_condition_occurrence

# Fulong to condition occurrence -------------------------------------------
declareTest(54, 'Condition occurrence - fulong mri_lesions')
add_basedata(p_id='10054', year_diagnosis='2005')
add_fulong(p_id='10054', mri_lesions='0', days_psa_diag='1')
expect_no_condition_occurrence

# Fulong to condition occurrence -------------------------------------------
declareTest(55, 'Condition occurrence - fulong mri_lesions')
add_basedata(p_id='10055', year_diagnosis='2005')
add_fulong(p_id='10055', mri_lesions='1', mri_taken='1', days_psa_diag='1')
expect_condition_occurrence(person_id=10055, condition_concept_id=4059669, condition_start_date='2005-07-02',
                            condition_source_value='mri_lesions-1',
                            condition_start_datetime='2005-07-02 00:00:00', condition_type_concept_id=44786627)

# Fulong to condition occurrence -------------------------------------------
declareTest(56, 'Condition occurrence - fulong mri_lesions')
add_basedata(p_id='10056', year_diagnosis='2005')
add_fulong(p_id='10056', mri_lesions='2', mri_taken='1', days_psa_diag='1')
expect_no_condition_occurrence

# Fulong to condition occurrence -------------------------------------------
declareTest(57, 'Condition occurrence - fulong mri_lesions')
add_basedata(p_id='10057', year_diagnosis='2005', mri_lesions='1', mri_taken='0')
expect_no_condition_occurrence

# Fulong to condition occurrence -------------------------------------------
declareTest(58, 'Condition occurrence - fulong mri_lesions')
add_basedata(p_id='10058', year_diagnosis='2005')
add_fulong(p_id='10058', mri_lesions='1', mri_taken='0', days_psa_diag='1')
expect_no_condition_occurrence