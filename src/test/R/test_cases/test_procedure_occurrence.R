# Basedata to procedure occurrence -------------------------------------------
declareTest(154, 'Procedure - dre')
add_basedata(p_id='10154', year_diagnosis='2005', dre='T1c')
expect_procedure_occurrence(person_id=10154, procedure_concept_id=4254766,
                            procedure_source_value='dre',
                            procedure_date ='2005-07-01',
                            procedure_type_concept_id=581412)

# Fulong to procedure occurrence -------------------------------------------
declareTest(155, 'Procedure - dre_fu')
add_basedata(p_id='10155')
add_fulong(p_id='10155', dre_fu='T1c')
expect_procedure_occurrence(person_id=10155, procedure_concept_id=4254766,
                            procedure_source_value='dre_fu',
                            procedure_type_concept_id=581412)

# Basedata to procedure occurrence -------------------------------------------
declareTest(140, 'Procedure - biopt_inf_antibiotic_therapy')
add_basedata(p_id='10140', year_diagnosis='2005', biopt_inf_antibiotic_therapy='1')
expect_procedure_occurrence(person_id=10140, procedure_concept_id=4085730,
                            procedure_source_value='biopt_inf_antibiotic_therapy-1',
                            procedure_date ='2005-07-01',
                            procedure_type_concept_id=581412)

# Fulong to procedure occurrence -------------------------------------------
declareTest(141, 'Procedure - biopt_inf_antibiotic_therapy_fu')
add_basedata(p_id='10141')
add_fulong(p_id='10141', biopt_inf_antibiotic_therapy_fu='1')
expect_procedure_occurrence(person_id=10141, procedure_concept_id=4085730,
                            procedure_source_value='biopt_inf_antibiotic_therapy_fu-1',
                            procedure_type_concept_id=581412)

# Basedata to procedure occurrence -------------------------------------------
declareTest(142, 'Procedure - biopt_inf_antibiotic_therapy')
add_basedata(p_id='10142', year_diagnosis='2005', biopt_inf_antibiotic_therapy='2')
expect_no_procedure_occurrence(person_id=10142, procedure_concept_id=4085730,
                            procedure_type_concept_id=581412)

# Fulong to procedure occurrence -------------------------------------------
declareTest(143, 'Procedure - biopt_inf_antibiotic_therapy_fu')
add_basedata(p_id='10143')
add_fulong(p_id='10143', biopt_inf_antibiotic_therapy_fu='0')
expect_no_procedure_occurrence(person_id=10143, procedure_concept_id=4085730,
                            procedure_type_concept_id=581412)

# Basedata to procedure occurrence -------------------------------------------
declareTest(144, 'Procedure - biopt_route')
add_basedata(p_id='10144', year_diagnosis='2005', biopt_route='1')
expect_procedure_occurrence(person_id=10144, procedure_concept_id=4339403,
                            procedure_source_value='biopt_route-1',
                            procedure_date ='2005-07-01',
                            procedure_type_concept_id=581412)

# Fulong to procedure occurrence -------------------------------------------
declareTest(145, 'Procedure - biopt_route_fu')
add_basedata(p_id='10145')
add_fulong(p_id='10145', biopt_route_fu='2')
expect_procedure_occurrence(person_id=10145, procedure_concept_id=4142388,
                            procedure_source_value='biopt_route_fu-2',
                            procedure_type_concept_id=581412)

# Basedata to procedure occurrence -------------------------------------------
declareTest(146, 'Procedure - mri_taken.0')
add_basedata(p_id='10146', year_diagnosis='2005', mri_taken.0='1')
expect_procedure_occurrence(person_id=10146, procedure_concept_id=4192638,
                            procedure_source_value='mri_taken.0-1',
                            procedure_date ='2005-07-01',
                            procedure_type_concept_id=581412)

# Fulong to procedure occurrence -------------------------------------------
declareTest(147, 'Procedure - mri_taken')
add_basedata(p_id='10147')
add_fulong(p_id='10147', mri_taken='2')
expect_no_procedure_occurrence(person_id=10147, procedure_concept_id=4192638,
                            procedure_source_value='mri_taken.0-2',
                            procedure_type_concept_id=581412)

# Basedata to procedure occurrence -------------------------------------------
declareTest(148, 'Procedure - mri_targeted_biopsy.0')
add_basedata(p_id='10148', year_diagnosis='2005', mri_targeted_biopsy.0='1', mri_taken.0='1')
expect_procedure_occurrence(person_id=10148, procedure_concept_id=37109819,
                            procedure_source_value='mri_targeted_biopsy.0-1',
                            procedure_date ='2005-07-01',
                            procedure_type_concept_id=581412)

# Fulong to procedure occurrence -------------------------------------------
declareTest(149, 'Procedure - mri_targeted_biopsy')
add_basedata(p_id='10149')
add_fulong(p_id='10149', mri_targeted_biopsy='2')
expect_no_procedure_occurrence(person_id=10149, procedure_concept_id=37109819,
                               procedure_source_value='mri_targeted_biopsy.0-2',
                               procedure_type_concept_id=581412)

# Basedata to procedure occurrence -------------------------------------------
declareTest(150, 'Procedure - mri_method_used.0')
add_basedata(p_id='10150', year_diagnosis='2005', mri_method_used.0='1', mri_taken.0='1', mri_targeted_biopsy.0='1')
expect_procedure_occurrence(person_id=10150, procedure_concept_id=2000000021,
                            procedure_source_value='mri_method_used.0-1',
                            procedure_date ='2005-07-01',
                            procedure_type_concept_id=581412)

# Basedata to procedure occurrence -------------------------------------------
declareTest(151, 'Procedure - mri_method_used.0')
add_basedata(p_id='10151', year_diagnosis='2005', mri_method_used.0='1', mri_taken.0='0', mri_targeted_biopsy.0='1')
expect_no_procedure_occurrence(person_id=10151, procedure_concept_id=2000000021,
                            procedure_type_concept_id=581412)

# Fulong to procedure occurrence -------------------------------------------
declareTest(152, 'Procedure - mri_method_used')
add_basedata(p_id='10152')
add_fulong(p_id='10152', mri_method_used='2', mri_taken='1', mri_targeted_biopsy='0')
expect_no_procedure_occurrence(person_id=10152, procedure_concept_id=2000000022,
                               procedure_source_value='mri_targeted_biopsy.0-2',
                               procedure_type_concept_id=581412)

# Fulong to procedure occurrence -------------------------------------------
declareTest(153, 'Procedure - mri_method_used')
add_basedata(p_id='10153')
add_fulong(p_id='10153', mri_method_used='3', mri_taken='1', mri_targeted_biopsy='1')
expect_no_procedure_occurrence(person_id=10152, procedure_concept_id=2000000023,
                               procedure_source_value='mri_targeted_biopsy.0-3',
                               procedure_type_concept_id=581412)

