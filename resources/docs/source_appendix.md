# Appendix: source tables

### Table: basedata.csv

| Field | Type | Most freq. value | Description | Concept | Mapped to table |
| --- | --- | --- | --- | --- | --- |
| p_id | int | List truncated... | Already anonymised.  Patient id unique in basedata. | | Person |
| psa | real | 5.1 | Measuring prostate-specific antigen in ng/ml.  | Total PSA level - 44793131 | Measurement |
| prostatic_vol | real | 40 | Prostate volume measured in mL. | Size of prostate - 4096978, mL - 8587 | Measurement |
| dre | varchar | T1c | Digital rectal examination. | DRE - Digital rectal examination - 4254766, Tumor stage T1c - 4129916, Tumor stage T2a - 4129917, Tumor stage T2b - 4127611, 	Tumor stage T2c - 4129127, Tumor stage T3 - 4032012 | Measurement |
| num_cores | int | 12 | Number of core biopsies. | Number of Cores Examined - 35917476 | Measurement |
| num_cores_pc | int | 1 |  Number of core biopsies that contained prostate cancer. | Number of Cores Positive - 35918000 | Measurement |
| asa | int | 0 | Do not map this variable (empty and not in the current form).  In follow up this contains the Charlson score (separate charlson variable in basedata). |
| log2psa | real | 2.26303 | Do not map. Derived variable from psa. |
| gleason1 | int | 3 | Gleason primary grade. | | Measurement |
| gleason2 | int | 3 | Gleason secondary grade. Map together with gleason 1. Gleason score (gleason1 + gleason2)| 'Grade Group 1: Gleason score less than or equal to 6' - 35934087, 'Grade Group 2: Gleason score 7 Gleason pattern 3+4' - 35930757, 'Grade Group 3: Gleason score 7 Gleason pattern 4+3' - 35929404, 'Grade Group 4: Gleason score 8' - 35921496, 'Grade Group 5: Gleason score 9 or 10' - 35928355 | Measurement |
| gleason_sum | int | 6 | Do not map, info captured in more detail from gleason1 and 2. Gleason score (gleason1 + gleason2). Value  0 should not be possible (prostate cancer is inclusion criterum). |
| free_psa | real | 0 | Free-PSA test measures the percentage of unbound PSA. | Free prostate specific antigen level - 4194418, % - 8554 | Measurement |
| pro_psa | int |  | Do not map. Barely filled in, same in follow-up. |
| phi | int |  | Prostate Health Index. Derived variable from free-psa and pro-psa. Sometimes phi captured while free/pro not captured, so also save phi. | TODO: PHI concept | Measurement |
| charlson | int | 0 | Charlson Comorbidity Index (CCI) predicts the ten-year mortality for a patient who may have a range of comorbid conditions. | Charlson Comorbidity Index - 42538860 | Measurement |
| tnm | int | 1992 | Do not map. Not relevant, always the same. TNM version from 1992 (not 1998 or 2002). |
| method_detection | varchar | Screen-detected | Do we want to map this? This type of low-grade prostate cancer would not give complaints? Clinically = by doctor during hospital visit due to complaints,  screen-detected = by routine check without complaints. |
| length | int | 0 | Length of patient (in cm). | Body height measured - 3023540, cm - 8582 | Measurement |
| weight | int | 0 | Weight of patient (in kg). | Body weight measured - 3013762, kg - 9529 | Measurement |
| num_cores2 | int | 0 | Repeated biopsy, if first was less than 8 cores. See num_cores. |
| num_cores_pc2 | int | 0 | Repeated biopsy, if first was less than 8 cores. See num_cores_pc. |
| gleason1_2 | int | 0 | Repeated biopsy, if first was less than 8 cores.  See gleason_1. |
| gleason2_2 | int | 0 | Repeated biopsy, if first was less than 8 cores.  See gleason1_2. |
| no_co_morbidity | int | 1 | Do not map. Other comorbidities.  Should always be true (no comorbitidy), if other, it is an error as patient should then not be included. |
| active_visit | int | 1 | Do not map. Always active at basedata (=1). |
| biopt_prob_type | int | 0 | Antibioticum given (profylaxe).  0 - data not provided (empty),  1 - no antibioticum used (capture, to distinguish from missing),  2 - yes, fluoroquinolones,  3 - yes, tmp smx,  4 - yes, other. | TODO: concept 'Antibiotic given', No - 45878245, Fluoroquinolone - 1176676, Trimethoprim+Sulfamethoxazole - 40792503, Other Antibiotic - 40779119 | Measurement |
| biopt_infection | int | 0 | Infection occurred after biopsy. 0 - not provided (does not mean no complications occurred),  1 - yes 2 - no | TODO: concept of 'Infection occurred after biopsy', Yes - 4188539, No - 45878245 | Measurement |
| biopt_inf_urine_culture | int | 0 | Urine culture measured.  0 - not provided or not measured (empty)  1 - positive (bacterium is cultured, is an infection), 2 - negative (no bacterium cultered, not an infection) | Urine culture - 4024509, Positive - 9191, Negative - 9189 | Measurement |
| biopt_inf_urine_bacterium | int |  | Type of urine bacterium measured. 0 - not filled in, 1 - *E.coli*,  2 - *pseudomonas*, 3 - *Enterococci*, 4 - *proteus*, 5 - *Staphylococci*, 6 - *Klebsiella*, 7 - other enterobacteria, 8 - other | Bacteria [Presence] in Urine - 36304419, Escherichia coli - 4011683, Pseudomonas - 4211547, Genus Enterococcus - 4101235, Proteus - 4196666, Staphylococcus - 4278981, Klebsiella - 4327473, Enterobacter - 4242438, Other - 9177 | Measurement |
| biopt_inf_unrine_resistant | varchar |  | To which antibiotic is the urine bacteria resistant.  0 - not filled in,  1 - Fluoroquinolones, 2 - Trimethoprim-sulfonamide (TMP-SMX) combination, 3 - Cephalosporin (group 1 or 2), 4 - Cephalosporin (group >=3), 5 - Carbapenems, 6 - Penicillins (without B-lactam),  7 - Aminoglycosides, 8 - Nitrofuran, 9 - other. | Fluoroquinolone resistant bacteria - 46272500, Carbapenem resistant bacteria - 45768954, Other - 9177, TODO: concept 'Trimethoprim+Sulfamethoxazole resistant bacteria', concept 'Cephalosporin resistant bacteria',  concept 'Penicillins resistant bacteria', concept 'Aminoglycosides resistant bacteria',  concept 'Nitrofuran resistant bacteria'| Measurement |
| biopt_inf_antibiotic_therapy | int | 0 | If antibiotic therapy is given.  0 - not filled in, 1 - yes, 2 - no. | 4085730 - Antibiotic therapy, Yes - 4188539, No - 45878245 | Measurement |
| biopt_inf_antibiotic_type | int |  | What kind of antibiotic is given. 0 - not filled in,  1 - Fluoroquinolones, 2 - trimethoprim-sulfamethoxazole (TMP-SMX) combination, 3 - Cephalosporin (group 1 or 2), 4 - Cephalosporin (group >=3), 5 - Carbapenems, 6 - Penicillins (without B-lactam), 7 - Penicillins (with B-lactam), 8 - Aminoglycosides, 9 - Nitrofuran, 10 - other. | Fluoroquinolone - 1176676, Trimethoprim+Sulfamethoxazole - 40792503, Cephalosporin - 37026981, 1176571 - Carbapenem, Penicillin - 40772521, Aminoglycoside - 36306522, Nitrofurantoin - 40795842, Other - 9177 | Measurement |
| biopt_inf_hospitalisation | int | 0 | Hospitalisation due to bioptic infection. 0 - not filled in, 1 - yes, 2 - no. | Hospitalization - 45884746, Yes - 4188539, No - 45878245 | Measurement |
| biopt_inf_hospitalisation_days | int | 0 | Days in hospital. | Hospitalization - 45884746, day - 8512 | Measurement |
| biopt_inf_outcome | int | 0 | Cured or death.  0 = not given (empty)  1 = cured  2 = death (not in baseline). | Patient cured - 4159637, Patient died - 4216643 | Measurement | 
| biopt_hematuria | int | 0 | Hematuria for more than 3 days. 0 - not filled in,  1 - yes  2 - no. | 437038 - Blood in urine, Yes - 4188539, No - 45878245 | Measurement |
| biopt_hemospermia | int | 0 | Hemospermia. 0 - not filled in,  1 - yes  2 - no. | 439871 - Hemospermia, Yes - 4188539, No - 45878245 | Measurement |
| biopt_pain | int | 0 | Pain after biopsy. 0 - not filled in,  1 - yes  2 - no. | TODO: concept 'Pain after biopsy', Yes - 4188539, No - 45878245 | Measurement |
| biopt_route | int | 0 | 0 - not given,  1 - transrectal  2 - transperineal. | Transrectal biopsy of prostate - 4339403, Transperineal needle biopsy of prostate - 4142388 | Procedure_Occurrence |
| biopt_max_cancer_score_lenght | int | 0 | Number of millimeters on a prostate cancer biopsy consisting of prostate cancer (largest part). | TODO: concept 'Biopsy consisting prostate cancer', millimeter - 8588 
| mri_included | int | 0 | Do not map. Whether patient has been selected for MRI side study. |
| bonescan | varchar |  | Do not map. Old variable. |
| mri_taken.0 | int | 0 | MRI made at baseline. Result MRI does not always have to be given, so save separately. | MRI of prostate - 4192638, Yes - 4188539, No - 45878245| Measurement |
| mri_lesions.0 | int | 0 | Abnormalities detected on MRI. | MRI scan abnormal - 4059669 | Observation | 
| mri_suspected_number.0 | int | 0 | Number of suspected abnormalities/lesions on MRI. | Number of lesions - 4085855 | Measurement |
| mri_pirads_1.0 | int | 0 | The PIRADS score is given for each suspected lesion (maximum of 3). |
| mri_largest_dia_1.0 | int | 0 | The largest diameter in mm of lesion 1. |
| mri_location_1.0 | int | 0 | Location of lesion 1 in the prostate. |
| mri_location_free_1.0 | varchar |  | Text field for extra information for mri_location_1.0 |
| mri_pirads_2.0 | int | 0 | The PIRADS score is given for each suspected lesion (maximum of 3). |
| mri_largest_dia_2.0 | int | 0 | The largest diameter in mm of lesion 2.  |
| mri_location_2.0 | int | 0 | Location of lesion 2 in the prostate. |
| mri_location_free_2.0 | varchar |  | Text field for extra information of mri_location_2.0 |
| mri_pirads_3.0 | int | 0 | The PIRADS score is given for each suspected lesion (maximum of 3). |
| mri_largest_dia_3.0 | int | 0 | The largest diameter in mm of lesion 3. |
| mri_location_3.0 | int | 0 | Location of lesion 3 in the prostate.  |
| mri_location_free_3.0 | varchar |  | Text field for extra information of mri_location_3.0 |
| mri_progrssion_lesions.0 | int |  | Whether there is change compared to the previous MRI, about lesion 1. 0 - empty (not given),  use PRECISE recommendations (make stages for each score). |
| mri_targeted_biopsy.0 | int | 0 | Targeted biopsies. 0 - empty, 1 - yes, 2 - no |
| mri_targeted_cores.0 | int | 0 | Number of cores with prostate cancer from targeted biopsies taken.  Only use when targeted biopsys - yes (0 can mean both not given and no pc cores found). |
| mri_targeted_taken.0 | int | 0 | Number of cores taken from the abnormalities seen on MRI (targeted).  |
| mri_targeted_gleason1.0 | int | 0 | See gleason_score, map to grade group. |
| mri_targeted_gleason1.0.1 | int | 0 | See gleason_score, map to grade group. |
| mri_lesion_positive.0 | int |  | Number of lesions  that are confirmed by biopt as prostate cancer. 0 can mean both not recorded and no positive found. |
| mri_method_used.0 | int | 0 | Combine with mri_targeted_biopsy.0, if done also include this method. |
| mri_prostate_volume.0 | int |  | Not measured by MRI, but manually entered based on MRI in ml. |
| mri_prostate_volume_method.0 | int |  | Combine with mri_prostate_volume (do not map?). |
| age_diagnosis | real | 66.92 | Age at diagnosis (observation).  Include to be complete. |
| year_diagnosis | int | 2015 | Year of diagnosis  | | observation_period, visit_occurrence |

### Table: fulong.csv

| Field | Type | Most freq. value | Comment |
| --- | --- | --- | --- |
| p_id | int | 3064 | Patient id |
| time | int | 1 | Visit number |
| psa_fu | real | 5.8 | Measuring prostate-specific antigen |
| dre_fu | varchar |  |  Digital rectal examination  If empty, this visit only measured psa (do not capture). |
| dre_fu_recode | int |  | Administrative. Use actual dre_fu. |
| num_cores_biop_fu | int | 0 | Number of core biopsies. |
| num_cores_pc_fu | int | 0 |  Number of core biopsies that contained prostate cancer.  |
| asa_fu | int | 0 | Charlson score (see charlson variable in basedata). |
| log2psa_fu | real | 2.58496 | Log2 of the PSA value. |
| psadt | real | -0.8 | PSA doubling time |
| gleason1_fu | int | 0 | Gleason primary grade |
| gleason2_fu | int | 0 | Gleason secondary grade |
| gleason_sum_fu | int | 0 | Gleason score (gleason1 + gleason2). Do not map, info captured in more detail from gleason1 and 2.  |
| slope | real | 0 | Used to calculate psadt (doubling time)  Do not map, captured by psadt. |
| free_psa_fu | real | 0 | Free-PSA test measures the percentage of unbound PSA. |
| pro_psa_fu | int |  | Do not map, given for just one person. |
| phi_fu | int |  |  |
| visit_action | varchar | LAB | Does not always match. The actual measurements done decided by clincians.  Administrative field. |
| active_visit | int | 1 |  1 - yes, 0 - No. Do not map.  |
| biopt_prob_type_fu | int | 0 | Antibioticum given (profylaxe).  0 - data not provided (empty),  1 - no antibioticum used (capture, to distinguish from missing),  2 - yes, fluorquinolones,  3 - yes, tmp smx,  4 - yes, other. |
| biopt_infection_fu | int | 0 | Infection occurred after biopsy. 0 - not provided (does not mean no complications occurred),  1 - yes 2 - no |
| biopt_inf_urine_culture_fu | int | 0 |  Urine culture measured.  0 - not provided or not measured (empty)  1 - positive (bacterium is cultured, is an infection), 2 - negative (no bacterium cultered, not an infection) |
| biopt_inf_urine_bacterium_fu | int |  | Type of urine bacterium measured. Type of urine bacterium measured. 0 - not filled in, 1 - *E.coli*,  2 - *pseudomonas*, 3 - *Enterococci*, 4 - *proteus*, 5 - *Staphylococci*, 6 - *Klebsiella*, 7 - other enterobacteria, 8 - other. |
| biopt_inf_unrine_resistant_fu | varchar |  | To which antibioticum is the urine bacteria resistant.  0 - not filled in,  1 - Fluoroquinolones, 2 - Trimethoprim-sulfonamide (TMP-SMX) combination, 3 - Cephalosporin (group 1 or 2), 4 - Cephalosporin (group >=3), 5 - Carbapenems, 6 - Penicillins (without B-lactam),  7 - Aminoglycosides, 8 - Nitrofuran, 9 - other. |
| biopt_inf_antibiotic_therapy_fu | int | 0 |   If antibiotic therapy is given.  If antibiotic therapy is given.  0 - not filled in, 1 - yes, 2 - no. |
| biopt_inf_antibiotic_type_fu | varchar |  | What kind of antibiotic is given. 0 - not filled in,  1 - Fluoroquinolones, 2 - Trimethoprim-sulfonamide (TMP-SMX) combination, 3 - Cephalosporin (group 1 or 2), 4 - Cephalosporin (group >=3), 5 - Carbapenems, 6 - Penicillins (without B-lactam), 7 - Penicillins (with B-lactam), 8 - Aminoglycosides, 9 - Nitrofuran, 10 - other. |
| biopt_inf_hospitalisation_fu | int | 0 | Hospitalisation due to bioptic infection. 0 - not filled in, 1 - yes, 2 - no. |
| biopt_inf_hospitalisation_days_fu | int | 0 | Days in hospital. |
| biopt_inf_outcome_fu | int | 0 | Cured or death.  0 - not given (empty)  1 - cured  2 - death. |
| biopt_hematuria_fu | int | 0 | Hematuria (red blood cells in urine), more than 3 days.  0 - not filled in,   1 - yes,  2 - no. |
| biopt_hemospermia_fu | int | 0 | Hemospermia (blood in sperm). 0 - not filled in,  1 - yes, 2 - no. |
| biopt_pain_fu | int | 0 | Pain after biopsy. 0 - not filled in , 1 - yes,  2 - no. |
| biopt_route_fu | int | 0 | 0 - not given,  1 - transrectal  2 - transperineal. |
| biopt_max_cancer_score_lenght_fu | int | 0 | Number of millimeters on a prostate cancer biopsy consisting of prostate cancer (largest part). |
| mri_taken | int | 0 | MRI made at baseline. Result MRI does not always have to be given, so save separately. |
| mri_lesions | int | 0 | Abnormalities detected on MRI. |
| mri_suspected_number | int | 0 | Number of suspected abnormalities/lesions on MRI. |
| mri_pirads_1 | int | 0 | The PIRADS score is given for each suspected lesion (maximum of 3).  |
| mri_largest_dia_1 | int | 0 | The largest diameter in mm of lesion 1. |
| mri_location_1 | int | 0 | Location of lesion 1 in the prostate. |
| mri_location_free_1 | varchar |  |  Location of lesion 1 in the prostate. |
| mri_pirads_2 | int | 0 | The PIRADS score is given for each suspected lesion (maximum of 3).  |
| mri_largest_dia_2 | int | 0 | The largest diameter in mm of lesion 2.   |
| mri_location_2 | int | 0 |  Location of lesion 2 in the prostate.  |
| mri_location_free_2 | varchar |  | Location of lesion 1 in the prostate. |
| mri_pirads_3 | int | 0 | The PIRADS score is given for each suspected lesion (maximum of 3).  |
| mri_largest_dia_3 | int | 0 | The largest diameter in mm of lesion 3. |
| mri_location_3 | int | 0 | Location of lesion 3 in the prostate. |
| mri_location_free_3 | varchar |  | Location of lesion 1 in the prostate. |
| mri_progrssion_lesions | real |  | Progressions of lesions on MRI compared to previous MRI. |
| mri_targeted_biopsy | int | 0 |  Targeted biopsies. 0 - empty, 1 - yes, 2 - no |
| mri_targeted_cores | int | 0 | Number of cores with prostate cancer from targeted biopsies taken.  Only use when targeted biopsys - yes (0 can mean both not given and no pc cores found).  |
| mri_targeted_taken | int | 0 | Number of cores taken from the abnormalities seen on MRI (targeted). |
| mri_targeted_gleason1 | int | 0 | To be checked; missing field for second part of the gleason score |
| mri_lesion_positive | real | 0 | Number of lesions  that are confirmed by biopt as prostate cancer. 0 can mean both not recorded and no positive found. |
| mri_method_used | int | 0 | Combine with mri_targeted_biopsy.0, if done also include this method.  |
| mri_prostate_volume | int |  | Not measured by MRI, but manually entered based on MRI in ml. |
| mri_prostate_volume_method | int |  |  |
| year_visit | int | 2017 | Do not map, use days_psa_diag |
| days_psa_diag | int |  | Days since prostate cancer diagnosis (from the basedata table).  If negative, report and do not include (to be fixed on source side). |

### Table: enddata.csv

| Field | Type | Most freq. value | Comment |
| --- | --- | --- | --- |
| p_id | int | List truncated... | Multiple rows per id? Patient id? |
| nr_fuvisits | int | 4 | Number of follow up visits.  Do not map, administrative (max from time in fudata) |
| discontinued | varchar | Robot radical prostatectomy | Given therapy  Except; death, lost to follow-up and on request   |
| days_discontinued_diagnosis | int | 385 | Days from diagnosis to discontinuation? |
| reason_treatment | varchar | Based on protocol advice | General reason for discontinuation in Active Surveillance (additional information may be still collected, not in extract) |
| days_surgery_diagnosis | int |  | Days from diagnosis to surgery.  This is often later than discontinued  Do not map, Often not given, use days_discontinued |
| pt | varchar |  | Surgery T stadium by pathologist  Same mapping as dre |
| pn | int |  | N stadium.   9 - pnx, unknown (no prostatectomy)  0 - pn0  1 - pn1 |
| pm | int |  | M stadium.   9 - pmx (no prostatectomy)  0 - pm0  1 - pm1 |
| gleason1_rad_prost | int |  | Radical (geheel verwijderd) prostatectomy |
| gleason2_rad_prost | int |  |  |
| prostatevolume | varchar |  | Volume as by pathologist |
| tumorvolume | real |  | Volume in ml of only the tumor |
| ece | int |  | Extra capsulaire extension (yes/no/unknown)  0 - no  1 - yes  9 - unknown (do not map)  To be checked   |
| svi | int |  | seminal vesical invasion (yes/no/unknown)  0 - no  1 - yes  9 - unknown (do not map, might not be different from empty)  To be checked   |
| pos_surgical_margins | int |  | Positive surgical margins  Is the tumor completely (cleanly) removed?  0 - no  1 - yes  9 - unknown (do not map)   |
| postoperative_psa | varchar |  | PSA level after surgery. Typical 6 weeks-3months after surgery   |
| pathology_reported | int |  | Do not map, administrative whether pathology done. |
| adjuvant_radiotherapy | int |  | Radiotherapy after surgery  1 - yes  0 - no  9 - unknown  Only map 1 |
| year_discontinued | int | 2015 | Year of discontinuation  Do not use, instead use days discontinued and year_diag as proxy |

### Table: stem_table

| Field | Type | Most freq. value | Comment |
| --- | --- | --- | --- |
| domain_id | CHARACTER VARYING |  |  |
| person_id | INTEGER |  |  |
| visit_occurrence_id | INTEGER |  |  |
| visit_detail_id | INTEGER |  |  |
| provider_id | INTEGER |  |  |
| id | INTEGER |  |  |
| concept_id | INTEGER |  |  |
| source_value | CHARACTER VARYING |  | TODO: variable name |
| source_concept_id | INTEGER |  |  |
| type_concept_id | INTEGER |  |  |
| start_date | DATE |  |  |
| start_datetime | DATETIME |  |  |
| end_date | DATE |  |  |
| end_datetime | DATETIME |  |  |
| verbatim_end_date | DATE |  |  |
| days_supply | INTEGER |  |  |
| dose_unit_source_value | CHARACTER VARYING |  |  |
| lot_number | CHARACTER VARYING |  |  |
| modifier_concept_id | INTEGER |  |  |
| operator_concept_id | INTEGER |  |  |
| modifier_concept_id | INTEGER |  |  |
| modifier_source_value | CHARACTER VARYING |  |  |
| quantity | INTEGER |  |  |
| range_high | FLOAT |  |  |
| range_low | FLOAT |  |  |
| refills | INTEGER |  |  |
| route_concept_id | INTEGER |  |  |
| route_source_value | CHARACTER VARYING |  |  |
| sig | CHARACTER VARYING |  |  |
| stop_reason | CHARACTER VARYING |  |  |
| unique_device_id | CHARACTER VARYING |  |  |
| unit_concept_id | INTEGER |  |  |
| unit_source_value | CHARACTER VARYING |  |  |
| value_as_concept_id | INTEGER |  |  |
| value_as_number | DECIMAL |  |  |
| value_as_string | CHARACTER VARYING |  |  |
| value_source_value | CHARACTER VARYING |  |  |
| anatomic_site_concept_id | INTEGER |  |  |
| disease_status_concept_id | INTEGER |  |  |
| specimen_source_id | INTEGER |  |  |
| anatomic_site_source_value | CHARACTER VARYING |  |  |
| disease_status_source_value | CHARACTER VARYING |  |  |
| condition_status_concept_id | CHARACTER VARYING |  |  |
| condition_status_source_value | INTEGER |  |  |
| event_id | INTEGER |  |  |
| event_field_concept_id | INTEGER |  |  |
| value_as_datetime | DATETIME |  |  |
| qualifier_concept_id | INTEGER |  |  |
| qualifier_source_value | CHARACTER VARYING |  |  |

