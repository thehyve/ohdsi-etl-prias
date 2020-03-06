initFramework <- function() {
  frameworkContext <- new.env(parent = globalenv())
  class(frameworkContext) <- 'frameworkContext'
  assign('frameworkContext', frameworkContext, envir = globalenv())
  frameworkContext$inserts <- list()
  frameworkContext$expects <- list()
  frameworkContext$testId <- -1
  frameworkContext$testDescription <- ""
  frameworkContext$defaultValues <- new.env(parent = frameworkContext)

  defaults <- list()
  defaults$year_birth <- '1946'
  defaults$p_id <- ''
  defaults$psa <- '5.1'
  defaults$prostatic_vol <- '40'
  defaults$dre <- 'T1c'
  defaults$num_cores <- '12'
  defaults$num_cores_pc <- '1'
  defaults$asa <- '0'
  defaults$log2psa <- '2.26303'
  defaults$gleason1 <- '3'
  defaults$gleason2 <- '3'
  defaults$gleason_sum <- '6'
  defaults$free_psa <- '0'
  defaults$pro_psa <- ''
  defaults$phi <- ''
  defaults$charlson <- '0'
  defaults$tnm <- '1992'
  defaults$method_detection <- 'Screen-detected'
  defaults$length <- '0'
  defaults$weight <- '0'
  defaults$num_cores2 <- '0'
  defaults$num_cores_pc2 <- '0'
  defaults$gleason1_2 <- '0'
  defaults$gleason2_2 <- '0'
  defaults$no_co_morbidity <- '1'
  defaults$active_visit <- '1'
  defaults$biopt_prob_type <- '0'
  defaults$biopt_infection <- '0'
  defaults$biopt_inf_urine_culture <- '0'
  defaults$biopt_inf_urine_bacterium <- ''
  defaults$biopt_inf_unrine_resistant <- ''
  defaults$biopt_inf_antibiotic_therapy <- '0'
  defaults$biopt_inf_antibiotic_type <- ''
  defaults$biopt_inf_hospitalisation <- '0'
  defaults$biopt_inf_hospitalisation_days <- '0'
  defaults$biopt_inf_outcome <- '0'
  defaults$biopt_hematuria <- '0'
  defaults$biopt_hemospermia <- '0'
  defaults$biopt_pain <- '0'
  defaults$biopt_route <- '0'
  defaults$biopt_max_cancer_score_lenght <- '0'
  defaults$mri_included <- '0'
  defaults$bonescan <- ''
  defaults$mri_taken.0 <- '0'
  defaults$mri_lesions.0 <- '0'
  defaults$mri_suspected_number.0 <- '0'
  defaults$mri_pirads_1.0 <- '0'
  defaults$mri_largest_dia_1.0 <- '0'
  defaults$mri_location_1.0 <- '0'
  defaults$mri_location_free_1.0 <- ''
  defaults$mri_pirads_2.0 <- '0'
  defaults$mri_largest_dia_2.0 <- '0'
  defaults$mri_location_2.0 <- '0'
  defaults$mri_location_free_2.0 <- ''
  defaults$mri_pirads_3.0 <- '0'
  defaults$mri_largest_dia_3.0 <- '0'
  defaults$mri_location_3.0 <- '0'
  defaults$mri_location_free_3.0 <- ''
  defaults$mri_progrssion_lesions.0 <- ''
  defaults$mri_targeted_biopsy.0 <- '0'
  defaults$mri_targeted_cores.0 <- '0'
  defaults$mri_targeted_taken.0 <- '0'
  defaults$mri_targeted_gleason1.0 <- '0'
  defaults$mri_targeted_gleason1.0.1 <- '0'
  defaults$mri_targeted_gleason2.0 <- '0'
  defaults$mri_targeted_gleason2.0.1 <- '0'
  defaults$mri_lesion_positive.0 <- ''
  defaults$mri_method_used.0 <- '0'
  defaults$mri_prostate_volume.0 <- ''
  defaults$mri_prostate_volume_method.0 <- ''
  defaults$age_diagnosis <- '66.92'
  defaults$year_diagnosis <- '2015'
  assign('basedata', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$p_id <- '3064'
  defaults$time <- '1'
  defaults$psa_fu <- '5.8'
  defaults$dre_fu <- ''
  defaults$dre_fu_recode <- ''
  defaults$num_cores_biop_fu <- '0'
  defaults$num_cores_pc_fu <- '0'
  defaults$asa_fu <- '0'
  defaults$log2psa_fu <- '2.58496'
  defaults$psadt <- '-0.8'
  defaults$gleason1_fu <- '0'
  defaults$gleason2_fu <- '0'
  defaults$gleason_sum_fu <- '0'
  defaults$slope <- '0'
  defaults$free_psa_fu <- '0'
  defaults$pro_psa_fu <- ''
  defaults$phi_fu <- ''
  defaults$visit_action <- 'LAB'
  defaults$active_visit <- '1'
  defaults$biopt_prob_type_fu <- '0'
  defaults$biopt_infection_fu <- '0'
  defaults$biopt_inf_urine_culture_fu <- '0'
  defaults$biopt_inf_urine_bacterium_fu <- ''
  defaults$biopt_inf_unrine_resistant_fu <- ''
  defaults$biopt_inf_antibiotic_therapy_fu <- '0'
  defaults$biopt_inf_antibiotic_type_fu <- ''
  defaults$biopt_inf_hospitalisation_fu <- '0'
  defaults$biopt_inf_hospitalisation_days_fu <- '0'
  defaults$biopt_inf_outcome_fu <- '0'
  defaults$biopt_hematuria_fu <- '0'
  defaults$biopt_hemospermia_fu <- '0'
  defaults$biopt_pain_fu <- '0'
  defaults$biopt_route_fu <- '0'
  defaults$biopt_max_cancer_score_lenght_fu <- '0'
  defaults$mri_taken <- '0'
  defaults$mri_lesions <- '0'
  defaults$mri_suspected_number <- '0'
  defaults$mri_pirads_1 <- '0'
  defaults$mri_largest_dia_1 <- '0'
  defaults$mri_location_1 <- '0'
  defaults$mri_location_free_1 <- ''
  defaults$mri_pirads_2 <- '0'
  defaults$mri_largest_dia_2 <- '0'
  defaults$mri_location_2 <- '0'
  defaults$mri_location_free_2 <- ''
  defaults$mri_pirads_3 <- '0'
  defaults$mri_largest_dia_3 <- '0'
  defaults$mri_location_3 <- '0'
  defaults$mri_location_free_3 <- ''
  defaults$mri_progrssion_lesions <- ''
  defaults$mri_targeted_biopsy <- '0'
  defaults$mri_targeted_cores <- '0'
  defaults$mri_targeted_taken <- '0'
  defaults$mri_targeted_gleason1 <- '0'
  defaults$mri_targeted_gleason2 <- '0'
  defaults$mri_lesion_positive <- '0'
  defaults$mri_method_used <- '0'
  defaults$mri_prostate_volume <- ''
  defaults$mri_prostate_volume_method <- ''
  defaults$year_visit <- '2017'
  defaults$days_psa_diag <- ''
  assign('fulong', defaults, envir = frameworkContext$defaultValues)

  defaults <- list()
  defaults$p_id <- ''
  defaults$nr_fuvisits <- '4'
  defaults$discontinued <- 'Robot radical prostatectomy'
  defaults$days_discontinued_diagnosis <- '385'
  defaults$reason_treatment <- 'Based on protocol advice'
  defaults$days_surgery_diagnosis <- ''
  defaults$pt <- ''
  defaults$pn <- ''
  defaults$pm <- ''
  defaults$gleason1_rad_prost <- ''
  defaults$gleason2_rad_prost <- ''
  defaults$prostatevolume <- ''
  defaults$tumorvolume <- ''
  defaults$ece <- ''
  defaults$svi <- ''
  defaults$pos_surgical_margins <- ''
  defaults$postoperative_psa <- ''
  defaults$pathology_reported <- ''
  defaults$adjuvant_radiotherapy <- ''
  defaults$year_discontinued <- '2015'
  assign('enddata', defaults, envir = frameworkContext$defaultValues)

  frameworkContext$sourceFieldsMapped <- c(
     'basedata.p_id'
    ,'fulong.time'
    ,'enddata.year_discontinued'
    ,'fulong.p_id'
    ,'basedata.year_birth'
    ,'fulong.days_psa_diag'
    ,'basedata.year_diagnosis'
  )

  frameworkContext$targetFieldsMapped <- c(
     'person.year_of_birth'
    ,'person.person_id'
    ,'visit_occurrence.visit_end_date'
    ,'observation_period.observation_period_end_date'
    ,'observation_period.person_id'
    ,'visit_occurrence.visit_concept_id'
    ,'observation_period.observation_period_start_date'
    ,'visit_occurrence.person_id'
    ,'person.person_source_value'
    ,'visit_occurrence.visit_start_date'
  )

  frameworkContext$sourceFieldsTested <- c()
  frameworkContext$targetFieldsTested <- c()
}

initFramework()

set_defaults_basedata <- function(year_birth, p_id, psa, prostatic_vol, dre, num_cores, num_cores_pc, asa, log2psa, gleason1, gleason2, gleason_sum, free_psa, pro_psa, phi, charlson, tnm, method_detection, length, weight, num_cores2, num_cores_pc2, gleason1_2, gleason2_2, no_co_morbidity, active_visit, biopt_prob_type, biopt_infection, biopt_inf_urine_culture, biopt_inf_urine_bacterium, biopt_inf_unrine_resistant, biopt_inf_antibiotic_therapy, biopt_inf_antibiotic_type, biopt_inf_hospitalisation, biopt_inf_hospitalisation_days, biopt_inf_outcome, biopt_hematuria, biopt_hemospermia, biopt_pain, biopt_route, biopt_max_cancer_score_lenght, mri_included, bonescan, mri_taken.0, mri_lesions.0, mri_suspected_number.0, mri_pirads_1.0, mri_largest_dia_1.0, mri_location_1.0, mri_location_free_1.0, mri_pirads_2.0, mri_largest_dia_2.0, mri_location_2.0, mri_location_free_2.0, mri_pirads_3.0, mri_largest_dia_3.0, mri_location_3.0, mri_location_free_3.0, mri_progrssion_lesions.0, mri_targeted_biopsy.0, mri_targeted_cores.0, mri_targeted_taken.0, mri_targeted_gleason1.0, mri_targeted_gleason1.0.1, mri_targeted_gleason2.0, mri_targeted_gleason2.0.1, mri_lesion_positive.0, mri_method_used.0, mri_prostate_volume.0, mri_prostate_volume_method.0, age_diagnosis, year_diagnosis) {
  defaults <- get('basedata', envir = frameworkContext$defaultValues)
  if (!missing(year_birth)) {
    defaults$year_birth <- year_birth
  }
  if (!missing(p_id)) {
    defaults$p_id <- p_id
  }
  if (!missing(psa)) {
    defaults$psa <- psa
  }
  if (!missing(prostatic_vol)) {
    defaults$prostatic_vol <- prostatic_vol
  }
  if (!missing(dre)) {
    defaults$dre <- dre
  }
  if (!missing(num_cores)) {
    defaults$num_cores <- num_cores
  }
  if (!missing(num_cores_pc)) {
    defaults$num_cores_pc <- num_cores_pc
  }
  if (!missing(asa)) {
    defaults$asa <- asa
  }
  if (!missing(log2psa)) {
    defaults$log2psa <- log2psa
  }
  if (!missing(gleason1)) {
    defaults$gleason1 <- gleason1
  }
  if (!missing(gleason2)) {
    defaults$gleason2 <- gleason2
  }
  if (!missing(gleason_sum)) {
    defaults$gleason_sum <- gleason_sum
  }
  if (!missing(free_psa)) {
    defaults$free_psa <- free_psa
  }
  if (!missing(pro_psa)) {
    defaults$pro_psa <- pro_psa
  }
  if (!missing(phi)) {
    defaults$phi <- phi
  }
  if (!missing(charlson)) {
    defaults$charlson <- charlson
  }
  if (!missing(tnm)) {
    defaults$tnm <- tnm
  }
  if (!missing(method_detection)) {
    defaults$method_detection <- method_detection
  }
  if (!missing(length)) {
    defaults$length <- length
  }
  if (!missing(weight)) {
    defaults$weight <- weight
  }
  if (!missing(num_cores2)) {
    defaults$num_cores2 <- num_cores2
  }
  if (!missing(num_cores_pc2)) {
    defaults$num_cores_pc2 <- num_cores_pc2
  }
  if (!missing(gleason1_2)) {
    defaults$gleason1_2 <- gleason1_2
  }
  if (!missing(gleason2_2)) {
    defaults$gleason2_2 <- gleason2_2
  }
  if (!missing(no_co_morbidity)) {
    defaults$no_co_morbidity <- no_co_morbidity
  }
  if (!missing(active_visit)) {
    defaults$active_visit <- active_visit
  }
  if (!missing(biopt_prob_type)) {
    defaults$biopt_prob_type <- biopt_prob_type
  }
  if (!missing(biopt_infection)) {
    defaults$biopt_infection <- biopt_infection
  }
  if (!missing(biopt_inf_urine_culture)) {
    defaults$biopt_inf_urine_culture <- biopt_inf_urine_culture
  }
  if (!missing(biopt_inf_urine_bacterium)) {
    defaults$biopt_inf_urine_bacterium <- biopt_inf_urine_bacterium
  }
  if (!missing(biopt_inf_unrine_resistant)) {
    defaults$biopt_inf_unrine_resistant <- biopt_inf_unrine_resistant
  }
  if (!missing(biopt_inf_antibiotic_therapy)) {
    defaults$biopt_inf_antibiotic_therapy <- biopt_inf_antibiotic_therapy
  }
  if (!missing(biopt_inf_antibiotic_type)) {
    defaults$biopt_inf_antibiotic_type <- biopt_inf_antibiotic_type
  }
  if (!missing(biopt_inf_hospitalisation)) {
    defaults$biopt_inf_hospitalisation <- biopt_inf_hospitalisation
  }
  if (!missing(biopt_inf_hospitalisation_days)) {
    defaults$biopt_inf_hospitalisation_days <- biopt_inf_hospitalisation_days
  }
  if (!missing(biopt_inf_outcome)) {
    defaults$biopt_inf_outcome <- biopt_inf_outcome
  }
  if (!missing(biopt_hematuria)) {
    defaults$biopt_hematuria <- biopt_hematuria
  }
  if (!missing(biopt_hemospermia)) {
    defaults$biopt_hemospermia <- biopt_hemospermia
  }
  if (!missing(biopt_pain)) {
    defaults$biopt_pain <- biopt_pain
  }
  if (!missing(biopt_route)) {
    defaults$biopt_route <- biopt_route
  }
  if (!missing(biopt_max_cancer_score_lenght)) {
    defaults$biopt_max_cancer_score_lenght <- biopt_max_cancer_score_lenght
  }
  if (!missing(mri_included)) {
    defaults$mri_included <- mri_included
  }
  if (!missing(bonescan)) {
    defaults$bonescan <- bonescan
  }
  if (!missing(mri_taken.0)) {
    defaults$mri_taken.0 <- mri_taken.0
  }
  if (!missing(mri_lesions.0)) {
    defaults$mri_lesions.0 <- mri_lesions.0
  }
  if (!missing(mri_suspected_number.0)) {
    defaults$mri_suspected_number.0 <- mri_suspected_number.0
  }
  if (!missing(mri_pirads_1.0)) {
    defaults$mri_pirads_1.0 <- mri_pirads_1.0
  }
  if (!missing(mri_largest_dia_1.0)) {
    defaults$mri_largest_dia_1.0 <- mri_largest_dia_1.0
  }
  if (!missing(mri_location_1.0)) {
    defaults$mri_location_1.0 <- mri_location_1.0
  }
  if (!missing(mri_location_free_1.0)) {
    defaults$mri_location_free_1.0 <- mri_location_free_1.0
  }
  if (!missing(mri_pirads_2.0)) {
    defaults$mri_pirads_2.0 <- mri_pirads_2.0
  }
  if (!missing(mri_largest_dia_2.0)) {
    defaults$mri_largest_dia_2.0 <- mri_largest_dia_2.0
  }
  if (!missing(mri_location_2.0)) {
    defaults$mri_location_2.0 <- mri_location_2.0
  }
  if (!missing(mri_location_free_2.0)) {
    defaults$mri_location_free_2.0 <- mri_location_free_2.0
  }
  if (!missing(mri_pirads_3.0)) {
    defaults$mri_pirads_3.0 <- mri_pirads_3.0
  }
  if (!missing(mri_largest_dia_3.0)) {
    defaults$mri_largest_dia_3.0 <- mri_largest_dia_3.0
  }
  if (!missing(mri_location_3.0)) {
    defaults$mri_location_3.0 <- mri_location_3.0
  }
  if (!missing(mri_location_free_3.0)) {
    defaults$mri_location_free_3.0 <- mri_location_free_3.0
  }
  if (!missing(mri_progrssion_lesions.0)) {
    defaults$mri_progrssion_lesions.0 <- mri_progrssion_lesions.0
  }
  if (!missing(mri_targeted_biopsy.0)) {
    defaults$mri_targeted_biopsy.0 <- mri_targeted_biopsy.0
  }
  if (!missing(mri_targeted_cores.0)) {
    defaults$mri_targeted_cores.0 <- mri_targeted_cores.0
  }
  if (!missing(mri_targeted_taken.0)) {
    defaults$mri_targeted_taken.0 <- mri_targeted_taken.0
  }
  if (!missing(mri_targeted_gleason1.0)) {
    defaults$mri_targeted_gleason1.0 <- mri_targeted_gleason1.0
  }
  if (!missing(mri_targeted_gleason1.0.1)) {
    defaults$mri_targeted_gleason1.0.1 <- mri_targeted_gleason1.0.1
  }
  if (!missing(mri_targeted_gleason2.0)) {
    defaults$mri_targeted_gleason2.0 <- mri_targeted_gleason2.0
  }
  if (!missing(mri_targeted_gleason2.0.1)) {
    defaults$mri_targeted_gleason2.0.1 <- mri_targeted_gleason2.0.1
  }
  if (!missing(mri_lesion_positive.0)) {
    defaults$mri_lesion_positive.0 <- mri_lesion_positive.0
  }
  if (!missing(mri_method_used.0)) {
    defaults$mri_method_used.0 <- mri_method_used.0
  }
  if (!missing(mri_prostate_volume.0)) {
    defaults$mri_prostate_volume.0 <- mri_prostate_volume.0
  }
  if (!missing(mri_prostate_volume_method.0)) {
    defaults$mri_prostate_volume_method.0 <- mri_prostate_volume_method.0
  }
  if (!missing(age_diagnosis)) {
    defaults$age_diagnosis <- age_diagnosis
  }
  if (!missing(year_diagnosis)) {
    defaults$year_diagnosis <- year_diagnosis
  }
  assign('basedata', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_fulong <- function(p_id, time, psa_fu, dre_fu, dre_fu_recode, num_cores_biop_fu, num_cores_pc_fu, asa_fu, log2psa_fu, psadt, gleason1_fu, gleason2_fu, gleason_sum_fu, slope, free_psa_fu, pro_psa_fu, phi_fu, visit_action, active_visit, biopt_prob_type_fu, biopt_infection_fu, biopt_inf_urine_culture_fu, biopt_inf_urine_bacterium_fu, biopt_inf_unrine_resistant_fu, biopt_inf_antibiotic_therapy_fu, biopt_inf_antibiotic_type_fu, biopt_inf_hospitalisation_fu, biopt_inf_hospitalisation_days_fu, biopt_inf_outcome_fu, biopt_hematuria_fu, biopt_hemospermia_fu, biopt_pain_fu, biopt_route_fu, biopt_max_cancer_score_lenght_fu, mri_taken, mri_lesions, mri_suspected_number, mri_pirads_1, mri_largest_dia_1, mri_location_1, mri_location_free_1, mri_pirads_2, mri_largest_dia_2, mri_location_2, mri_location_free_2, mri_pirads_3, mri_largest_dia_3, mri_location_3, mri_location_free_3, mri_progrssion_lesions, mri_targeted_biopsy, mri_targeted_cores, mri_targeted_taken, mri_targeted_gleason1, mri_targeted_gleason2, mri_lesion_positive, mri_method_used, mri_prostate_volume, mri_prostate_volume_method, year_visit, days_psa_diag) {
  defaults <- get('fulong', envir = frameworkContext$defaultValues)
  if (!missing(p_id)) {
    defaults$p_id <- p_id
  }
  if (!missing(time)) {
    defaults$time <- time
  }
  if (!missing(psa_fu)) {
    defaults$psa_fu <- psa_fu
  }
  if (!missing(dre_fu)) {
    defaults$dre_fu <- dre_fu
  }
  if (!missing(dre_fu_recode)) {
    defaults$dre_fu_recode <- dre_fu_recode
  }
  if (!missing(num_cores_biop_fu)) {
    defaults$num_cores_biop_fu <- num_cores_biop_fu
  }
  if (!missing(num_cores_pc_fu)) {
    defaults$num_cores_pc_fu <- num_cores_pc_fu
  }
  if (!missing(asa_fu)) {
    defaults$asa_fu <- asa_fu
  }
  if (!missing(log2psa_fu)) {
    defaults$log2psa_fu <- log2psa_fu
  }
  if (!missing(psadt)) {
    defaults$psadt <- psadt
  }
  if (!missing(gleason1_fu)) {
    defaults$gleason1_fu <- gleason1_fu
  }
  if (!missing(gleason2_fu)) {
    defaults$gleason2_fu <- gleason2_fu
  }
  if (!missing(gleason_sum_fu)) {
    defaults$gleason_sum_fu <- gleason_sum_fu
  }
  if (!missing(slope)) {
    defaults$slope <- slope
  }
  if (!missing(free_psa_fu)) {
    defaults$free_psa_fu <- free_psa_fu
  }
  if (!missing(pro_psa_fu)) {
    defaults$pro_psa_fu <- pro_psa_fu
  }
  if (!missing(phi_fu)) {
    defaults$phi_fu <- phi_fu
  }
  if (!missing(visit_action)) {
    defaults$visit_action <- visit_action
  }
  if (!missing(active_visit)) {
    defaults$active_visit <- active_visit
  }
  if (!missing(biopt_prob_type_fu)) {
    defaults$biopt_prob_type_fu <- biopt_prob_type_fu
  }
  if (!missing(biopt_infection_fu)) {
    defaults$biopt_infection_fu <- biopt_infection_fu
  }
  if (!missing(biopt_inf_urine_culture_fu)) {
    defaults$biopt_inf_urine_culture_fu <- biopt_inf_urine_culture_fu
  }
  if (!missing(biopt_inf_urine_bacterium_fu)) {
    defaults$biopt_inf_urine_bacterium_fu <- biopt_inf_urine_bacterium_fu
  }
  if (!missing(biopt_inf_unrine_resistant_fu)) {
    defaults$biopt_inf_unrine_resistant_fu <- biopt_inf_unrine_resistant_fu
  }
  if (!missing(biopt_inf_antibiotic_therapy_fu)) {
    defaults$biopt_inf_antibiotic_therapy_fu <- biopt_inf_antibiotic_therapy_fu
  }
  if (!missing(biopt_inf_antibiotic_type_fu)) {
    defaults$biopt_inf_antibiotic_type_fu <- biopt_inf_antibiotic_type_fu
  }
  if (!missing(biopt_inf_hospitalisation_fu)) {
    defaults$biopt_inf_hospitalisation_fu <- biopt_inf_hospitalisation_fu
  }
  if (!missing(biopt_inf_hospitalisation_days_fu)) {
    defaults$biopt_inf_hospitalisation_days_fu <- biopt_inf_hospitalisation_days_fu
  }
  if (!missing(biopt_inf_outcome_fu)) {
    defaults$biopt_inf_outcome_fu <- biopt_inf_outcome_fu
  }
  if (!missing(biopt_hematuria_fu)) {
    defaults$biopt_hematuria_fu <- biopt_hematuria_fu
  }
  if (!missing(biopt_hemospermia_fu)) {
    defaults$biopt_hemospermia_fu <- biopt_hemospermia_fu
  }
  if (!missing(biopt_pain_fu)) {
    defaults$biopt_pain_fu <- biopt_pain_fu
  }
  if (!missing(biopt_route_fu)) {
    defaults$biopt_route_fu <- biopt_route_fu
  }
  if (!missing(biopt_max_cancer_score_lenght_fu)) {
    defaults$biopt_max_cancer_score_lenght_fu <- biopt_max_cancer_score_lenght_fu
  }
  if (!missing(mri_taken)) {
    defaults$mri_taken <- mri_taken
  }
  if (!missing(mri_lesions)) {
    defaults$mri_lesions <- mri_lesions
  }
  if (!missing(mri_suspected_number)) {
    defaults$mri_suspected_number <- mri_suspected_number
  }
  if (!missing(mri_pirads_1)) {
    defaults$mri_pirads_1 <- mri_pirads_1
  }
  if (!missing(mri_largest_dia_1)) {
    defaults$mri_largest_dia_1 <- mri_largest_dia_1
  }
  if (!missing(mri_location_1)) {
    defaults$mri_location_1 <- mri_location_1
  }
  if (!missing(mri_location_free_1)) {
    defaults$mri_location_free_1 <- mri_location_free_1
  }
  if (!missing(mri_pirads_2)) {
    defaults$mri_pirads_2 <- mri_pirads_2
  }
  if (!missing(mri_largest_dia_2)) {
    defaults$mri_largest_dia_2 <- mri_largest_dia_2
  }
  if (!missing(mri_location_2)) {
    defaults$mri_location_2 <- mri_location_2
  }
  if (!missing(mri_location_free_2)) {
    defaults$mri_location_free_2 <- mri_location_free_2
  }
  if (!missing(mri_pirads_3)) {
    defaults$mri_pirads_3 <- mri_pirads_3
  }
  if (!missing(mri_largest_dia_3)) {
    defaults$mri_largest_dia_3 <- mri_largest_dia_3
  }
  if (!missing(mri_location_3)) {
    defaults$mri_location_3 <- mri_location_3
  }
  if (!missing(mri_location_free_3)) {
    defaults$mri_location_free_3 <- mri_location_free_3
  }
  if (!missing(mri_progrssion_lesions)) {
    defaults$mri_progrssion_lesions <- mri_progrssion_lesions
  }
  if (!missing(mri_targeted_biopsy)) {
    defaults$mri_targeted_biopsy <- mri_targeted_biopsy
  }
  if (!missing(mri_targeted_cores)) {
    defaults$mri_targeted_cores <- mri_targeted_cores
  }
  if (!missing(mri_targeted_taken)) {
    defaults$mri_targeted_taken <- mri_targeted_taken
  }
  if (!missing(mri_targeted_gleason1)) {
    defaults$mri_targeted_gleason1 <- mri_targeted_gleason1
  }
  if (!missing(mri_targeted_gleason2)) {
    defaults$mri_targeted_gleason2 <- mri_targeted_gleason2
  }
  if (!missing(mri_lesion_positive)) {
    defaults$mri_lesion_positive <- mri_lesion_positive
  }
  if (!missing(mri_method_used)) {
    defaults$mri_method_used <- mri_method_used
  }
  if (!missing(mri_prostate_volume)) {
    defaults$mri_prostate_volume <- mri_prostate_volume
  }
  if (!missing(mri_prostate_volume_method)) {
    defaults$mri_prostate_volume_method <- mri_prostate_volume_method
  }
  if (!missing(year_visit)) {
    defaults$year_visit <- year_visit
  }
  if (!missing(days_psa_diag)) {
    defaults$days_psa_diag <- days_psa_diag
  }
  assign('fulong', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

set_defaults_enddata <- function(p_id, nr_fuvisits, discontinued, days_discontinued_diagnosis, reason_treatment, days_surgery_diagnosis, pt, pn, pm, gleason1_rad_prost, gleason2_rad_prost, prostatevolume, tumorvolume, ece, svi, pos_surgical_margins, postoperative_psa, pathology_reported, adjuvant_radiotherapy, year_discontinued) {
  defaults <- get('enddata', envir = frameworkContext$defaultValues)
  if (!missing(p_id)) {
    defaults$p_id <- p_id
  }
  if (!missing(nr_fuvisits)) {
    defaults$nr_fuvisits <- nr_fuvisits
  }
  if (!missing(discontinued)) {
    defaults$discontinued <- discontinued
  }
  if (!missing(days_discontinued_diagnosis)) {
    defaults$days_discontinued_diagnosis <- days_discontinued_diagnosis
  }
  if (!missing(reason_treatment)) {
    defaults$reason_treatment <- reason_treatment
  }
  if (!missing(days_surgery_diagnosis)) {
    defaults$days_surgery_diagnosis <- days_surgery_diagnosis
  }
  if (!missing(pt)) {
    defaults$pt <- pt
  }
  if (!missing(pn)) {
    defaults$pn <- pn
  }
  if (!missing(pm)) {
    defaults$pm <- pm
  }
  if (!missing(gleason1_rad_prost)) {
    defaults$gleason1_rad_prost <- gleason1_rad_prost
  }
  if (!missing(gleason2_rad_prost)) {
    defaults$gleason2_rad_prost <- gleason2_rad_prost
  }
  if (!missing(prostatevolume)) {
    defaults$prostatevolume <- prostatevolume
  }
  if (!missing(tumorvolume)) {
    defaults$tumorvolume <- tumorvolume
  }
  if (!missing(ece)) {
    defaults$ece <- ece
  }
  if (!missing(svi)) {
    defaults$svi <- svi
  }
  if (!missing(pos_surgical_margins)) {
    defaults$pos_surgical_margins <- pos_surgical_margins
  }
  if (!missing(postoperative_psa)) {
    defaults$postoperative_psa <- postoperative_psa
  }
  if (!missing(pathology_reported)) {
    defaults$pathology_reported <- pathology_reported
  }
  if (!missing(adjuvant_radiotherapy)) {
    defaults$adjuvant_radiotherapy <- adjuvant_radiotherapy
  }
  if (!missing(year_discontinued)) {
    defaults$year_discontinued <- year_discontinued
  }
  assign('enddata', defaults, envir = frameworkContext$defaultValues)
  invisible(defaults)
}

get_defaults_basedata <- function() {
  defaults <- get('basedata', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_fulong <- function() {
  defaults <- get('fulong', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_enddata <- function() {
  defaults <- get('enddata', envir = frameworkContext$defaultValues)
  return(defaults)
}

get_defaults_stem_table <- function() {
  defaults <- get('stem_table', envir = frameworkContext$defaultValues)
  return(defaults)
}

declareTest <- function(id, description) {
  frameworkContext$testId <- id
  frameworkContext$testDescription <- description
}

add_basedata <- function(year_birth, p_id, psa, prostatic_vol, dre, num_cores, num_cores_pc, asa, log2psa, gleason1, gleason2, gleason_sum, free_psa, pro_psa, phi, charlson, tnm, method_detection, length, weight, num_cores2, num_cores_pc2, gleason1_2, gleason2_2, no_co_morbidity, active_visit, biopt_prob_type, biopt_infection, biopt_inf_urine_culture, biopt_inf_urine_bacterium, biopt_inf_unrine_resistant, biopt_inf_antibiotic_therapy, biopt_inf_antibiotic_type, biopt_inf_hospitalisation, biopt_inf_hospitalisation_days, biopt_inf_outcome, biopt_hematuria, biopt_hemospermia, biopt_pain, biopt_route, biopt_max_cancer_score_lenght, mri_included, bonescan, mri_taken.0, mri_lesions.0, mri_suspected_number.0, mri_pirads_1.0, mri_largest_dia_1.0, mri_location_1.0, mri_location_free_1.0, mri_pirads_2.0, mri_largest_dia_2.0, mri_location_2.0, mri_location_free_2.0, mri_pirads_3.0, mri_largest_dia_3.0, mri_location_3.0, mri_location_free_3.0, mri_progrssion_lesions.0, mri_targeted_biopsy.0, mri_targeted_cores.0, mri_targeted_taken.0, mri_targeted_gleason1.0, mri_targeted_gleason1.0.1, mri_targeted_gleason2.0, mri_targeted_gleason2.0.1, mri_lesion_positive.0, mri_method_used.0, mri_prostate_volume.0, mri_prostate_volume_method.0, age_diagnosis, year_diagnosis) {
  defaults <- get('basedata', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(year_birth)) {
    year_birth <- defaults$year_birth
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.year_birth')
  }
  fields <- c(fields, "year_birth")
  values <- c(values, if (is.null(year_birth)) "NULL" else if (is(year_birth, "subQuery")) paste0("(", as.character(year_birth), ")") else paste0("'", as.character(year_birth), "'"))

  if (missing(p_id)) {
    p_id <- defaults$p_id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.p_id')
  }
  fields <- c(fields, "p_id")
  values <- c(values, if (is.null(p_id)) "NULL" else if (is(p_id, "subQuery")) paste0("(", as.character(p_id), ")") else paste0("'", as.character(p_id), "'"))

  if (missing(psa)) {
    psa <- defaults$psa
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.psa')
  }
  fields <- c(fields, "psa")
  values <- c(values, if (is.null(psa)) "NULL" else if (is(psa, "subQuery")) paste0("(", as.character(psa), ")") else paste0("'", as.character(psa), "'"))

  if (missing(prostatic_vol)) {
    prostatic_vol <- defaults$prostatic_vol
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.prostatic_vol')
  }
  fields <- c(fields, "prostatic_vol")
  values <- c(values, if (is.null(prostatic_vol)) "NULL" else if (is(prostatic_vol, "subQuery")) paste0("(", as.character(prostatic_vol), ")") else paste0("'", as.character(prostatic_vol), "'"))

  if (missing(dre)) {
    dre <- defaults$dre
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.dre')
  }
  fields <- c(fields, "dre")
  values <- c(values, if (is.null(dre)) "NULL" else if (is(dre, "subQuery")) paste0("(", as.character(dre), ")") else paste0("'", as.character(dre), "'"))

  if (missing(num_cores)) {
    num_cores <- defaults$num_cores
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.num_cores')
  }
  fields <- c(fields, "num_cores")
  values <- c(values, if (is.null(num_cores)) "NULL" else if (is(num_cores, "subQuery")) paste0("(", as.character(num_cores), ")") else paste0("'", as.character(num_cores), "'"))

  if (missing(num_cores_pc)) {
    num_cores_pc <- defaults$num_cores_pc
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.num_cores_pc')
  }
  fields <- c(fields, "num_cores_pc")
  values <- c(values, if (is.null(num_cores_pc)) "NULL" else if (is(num_cores_pc, "subQuery")) paste0("(", as.character(num_cores_pc), ")") else paste0("'", as.character(num_cores_pc), "'"))

  if (missing(asa)) {
    asa <- defaults$asa
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.asa')
  }
  fields <- c(fields, "asa")
  values <- c(values, if (is.null(asa)) "NULL" else if (is(asa, "subQuery")) paste0("(", as.character(asa), ")") else paste0("'", as.character(asa), "'"))

  if (missing(log2psa)) {
    log2psa <- defaults$log2psa
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.log2psa')
  }
  fields <- c(fields, "log2psa")
  values <- c(values, if (is.null(log2psa)) "NULL" else if (is(log2psa, "subQuery")) paste0("(", as.character(log2psa), ")") else paste0("'", as.character(log2psa), "'"))

  if (missing(gleason1)) {
    gleason1 <- defaults$gleason1
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.gleason1')
  }
  fields <- c(fields, "gleason1")
  values <- c(values, if (is.null(gleason1)) "NULL" else if (is(gleason1, "subQuery")) paste0("(", as.character(gleason1), ")") else paste0("'", as.character(gleason1), "'"))

  if (missing(gleason2)) {
    gleason2 <- defaults$gleason2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.gleason2')
  }
  fields <- c(fields, "gleason2")
  values <- c(values, if (is.null(gleason2)) "NULL" else if (is(gleason2, "subQuery")) paste0("(", as.character(gleason2), ")") else paste0("'", as.character(gleason2), "'"))

  if (missing(gleason_sum)) {
    gleason_sum <- defaults$gleason_sum
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.gleason_sum')
  }
  fields <- c(fields, "gleason_sum")
  values <- c(values, if (is.null(gleason_sum)) "NULL" else if (is(gleason_sum, "subQuery")) paste0("(", as.character(gleason_sum), ")") else paste0("'", as.character(gleason_sum), "'"))

  if (missing(free_psa)) {
    free_psa <- defaults$free_psa
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.free_psa')
  }
  fields <- c(fields, "free_psa")
  values <- c(values, if (is.null(free_psa)) "NULL" else if (is(free_psa, "subQuery")) paste0("(", as.character(free_psa), ")") else paste0("'", as.character(free_psa), "'"))

  if (missing(pro_psa)) {
    pro_psa <- defaults$pro_psa
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.pro_psa')
  }
  fields <- c(fields, "pro_psa")
  values <- c(values, if (is.null(pro_psa)) "NULL" else if (is(pro_psa, "subQuery")) paste0("(", as.character(pro_psa), ")") else paste0("'", as.character(pro_psa), "'"))

  if (missing(phi)) {
    phi <- defaults$phi
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.phi')
  }
  fields <- c(fields, "phi")
  values <- c(values, if (is.null(phi)) "NULL" else if (is(phi, "subQuery")) paste0("(", as.character(phi), ")") else paste0("'", as.character(phi), "'"))

  if (missing(charlson)) {
    charlson <- defaults$charlson
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.charlson')
  }
  fields <- c(fields, "charlson")
  values <- c(values, if (is.null(charlson)) "NULL" else if (is(charlson, "subQuery")) paste0("(", as.character(charlson), ")") else paste0("'", as.character(charlson), "'"))

  if (missing(tnm)) {
    tnm <- defaults$tnm
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.tnm')
  }
  fields <- c(fields, "tnm")
  values <- c(values, if (is.null(tnm)) "NULL" else if (is(tnm, "subQuery")) paste0("(", as.character(tnm), ")") else paste0("'", as.character(tnm), "'"))

  if (missing(method_detection)) {
    method_detection <- defaults$method_detection
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.method_detection')
  }
  fields <- c(fields, "method_detection")
  values <- c(values, if (is.null(method_detection)) "NULL" else if (is(method_detection, "subQuery")) paste0("(", as.character(method_detection), ")") else paste0("'", as.character(method_detection), "'"))

  if (missing(length)) {
    length <- defaults$length
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.length')
  }
  fields <- c(fields, "length")
  values <- c(values, if (is.null(length)) "NULL" else if (is(length, "subQuery")) paste0("(", as.character(length), ")") else paste0("'", as.character(length), "'"))

  if (missing(weight)) {
    weight <- defaults$weight
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.weight')
  }
  fields <- c(fields, "weight")
  values <- c(values, if (is.null(weight)) "NULL" else if (is(weight, "subQuery")) paste0("(", as.character(weight), ")") else paste0("'", as.character(weight), "'"))

  if (missing(num_cores2)) {
    num_cores2 <- defaults$num_cores2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.num_cores2')
  }
  fields <- c(fields, "num_cores2")
  values <- c(values, if (is.null(num_cores2)) "NULL" else if (is(num_cores2, "subQuery")) paste0("(", as.character(num_cores2), ")") else paste0("'", as.character(num_cores2), "'"))

  if (missing(num_cores_pc2)) {
    num_cores_pc2 <- defaults$num_cores_pc2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.num_cores_pc2')
  }
  fields <- c(fields, "num_cores_pc2")
  values <- c(values, if (is.null(num_cores_pc2)) "NULL" else if (is(num_cores_pc2, "subQuery")) paste0("(", as.character(num_cores_pc2), ")") else paste0("'", as.character(num_cores_pc2), "'"))

  if (missing(gleason1_2)) {
    gleason1_2 <- defaults$gleason1_2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.gleason1_2')
  }
  fields <- c(fields, "gleason1_2")
  values <- c(values, if (is.null(gleason1_2)) "NULL" else if (is(gleason1_2, "subQuery")) paste0("(", as.character(gleason1_2), ")") else paste0("'", as.character(gleason1_2), "'"))

  if (missing(gleason2_2)) {
    gleason2_2 <- defaults$gleason2_2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.gleason2_2')
  }
  fields <- c(fields, "gleason2_2")
  values <- c(values, if (is.null(gleason2_2)) "NULL" else if (is(gleason2_2, "subQuery")) paste0("(", as.character(gleason2_2), ")") else paste0("'", as.character(gleason2_2), "'"))

  if (missing(no_co_morbidity)) {
    no_co_morbidity <- defaults$no_co_morbidity
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.no_co_morbidity')
  }
  fields <- c(fields, "no_co_morbidity")
  values <- c(values, if (is.null(no_co_morbidity)) "NULL" else if (is(no_co_morbidity, "subQuery")) paste0("(", as.character(no_co_morbidity), ")") else paste0("'", as.character(no_co_morbidity), "'"))

  if (missing(active_visit)) {
    active_visit <- defaults$active_visit
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.active_visit')
  }
  fields <- c(fields, "active_visit")
  values <- c(values, if (is.null(active_visit)) "NULL" else if (is(active_visit, "subQuery")) paste0("(", as.character(active_visit), ")") else paste0("'", as.character(active_visit), "'"))

  if (missing(biopt_prob_type)) {
    biopt_prob_type <- defaults$biopt_prob_type
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.biopt_prob_type')
  }
  fields <- c(fields, "biopt_prob_type")
  values <- c(values, if (is.null(biopt_prob_type)) "NULL" else if (is(biopt_prob_type, "subQuery")) paste0("(", as.character(biopt_prob_type), ")") else paste0("'", as.character(biopt_prob_type), "'"))

  if (missing(biopt_infection)) {
    biopt_infection <- defaults$biopt_infection
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.biopt_infection')
  }
  fields <- c(fields, "biopt_infection")
  values <- c(values, if (is.null(biopt_infection)) "NULL" else if (is(biopt_infection, "subQuery")) paste0("(", as.character(biopt_infection), ")") else paste0("'", as.character(biopt_infection), "'"))

  if (missing(biopt_inf_urine_culture)) {
    biopt_inf_urine_culture <- defaults$biopt_inf_urine_culture
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.biopt_inf_urine_culture')
  }
  fields <- c(fields, "biopt_inf_urine_culture")
  values <- c(values, if (is.null(biopt_inf_urine_culture)) "NULL" else if (is(biopt_inf_urine_culture, "subQuery")) paste0("(", as.character(biopt_inf_urine_culture), ")") else paste0("'", as.character(biopt_inf_urine_culture), "'"))

  if (missing(biopt_inf_urine_bacterium)) {
    biopt_inf_urine_bacterium <- defaults$biopt_inf_urine_bacterium
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.biopt_inf_urine_bacterium')
  }
  fields <- c(fields, "biopt_inf_urine_bacterium")
  values <- c(values, if (is.null(biopt_inf_urine_bacterium)) "NULL" else if (is(biopt_inf_urine_bacterium, "subQuery")) paste0("(", as.character(biopt_inf_urine_bacterium), ")") else paste0("'", as.character(biopt_inf_urine_bacterium), "'"))

  if (missing(biopt_inf_unrine_resistant)) {
    biopt_inf_unrine_resistant <- defaults$biopt_inf_unrine_resistant
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.biopt_inf_unrine_resistant')
  }
  fields <- c(fields, "biopt_inf_unrine_resistant")
  values <- c(values, if (is.null(biopt_inf_unrine_resistant)) "NULL" else if (is(biopt_inf_unrine_resistant, "subQuery")) paste0("(", as.character(biopt_inf_unrine_resistant), ")") else paste0("'", as.character(biopt_inf_unrine_resistant), "'"))

  if (missing(biopt_inf_antibiotic_therapy)) {
    biopt_inf_antibiotic_therapy <- defaults$biopt_inf_antibiotic_therapy
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.biopt_inf_antibiotic_therapy')
  }
  fields <- c(fields, "biopt_inf_antibiotic_therapy")
  values <- c(values, if (is.null(biopt_inf_antibiotic_therapy)) "NULL" else if (is(biopt_inf_antibiotic_therapy, "subQuery")) paste0("(", as.character(biopt_inf_antibiotic_therapy), ")") else paste0("'", as.character(biopt_inf_antibiotic_therapy), "'"))

  if (missing(biopt_inf_antibiotic_type)) {
    biopt_inf_antibiotic_type <- defaults$biopt_inf_antibiotic_type
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.biopt_inf_antibiotic_type')
  }
  fields <- c(fields, "biopt_inf_antibiotic_type")
  values <- c(values, if (is.null(biopt_inf_antibiotic_type)) "NULL" else if (is(biopt_inf_antibiotic_type, "subQuery")) paste0("(", as.character(biopt_inf_antibiotic_type), ")") else paste0("'", as.character(biopt_inf_antibiotic_type), "'"))

  if (missing(biopt_inf_hospitalisation)) {
    biopt_inf_hospitalisation <- defaults$biopt_inf_hospitalisation
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.biopt_inf_hospitalisation')
  }
  fields <- c(fields, "biopt_inf_hospitalisation")
  values <- c(values, if (is.null(biopt_inf_hospitalisation)) "NULL" else if (is(biopt_inf_hospitalisation, "subQuery")) paste0("(", as.character(biopt_inf_hospitalisation), ")") else paste0("'", as.character(biopt_inf_hospitalisation), "'"))

  if (missing(biopt_inf_hospitalisation_days)) {
    biopt_inf_hospitalisation_days <- defaults$biopt_inf_hospitalisation_days
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.biopt_inf_hospitalisation_days')
  }
  fields <- c(fields, "biopt_inf_hospitalisation_days")
  values <- c(values, if (is.null(biopt_inf_hospitalisation_days)) "NULL" else if (is(biopt_inf_hospitalisation_days, "subQuery")) paste0("(", as.character(biopt_inf_hospitalisation_days), ")") else paste0("'", as.character(biopt_inf_hospitalisation_days), "'"))

  if (missing(biopt_inf_outcome)) {
    biopt_inf_outcome <- defaults$biopt_inf_outcome
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.biopt_inf_outcome')
  }
  fields <- c(fields, "biopt_inf_outcome")
  values <- c(values, if (is.null(biopt_inf_outcome)) "NULL" else if (is(biopt_inf_outcome, "subQuery")) paste0("(", as.character(biopt_inf_outcome), ")") else paste0("'", as.character(biopt_inf_outcome), "'"))

  if (missing(biopt_hematuria)) {
    biopt_hematuria <- defaults$biopt_hematuria
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.biopt_hematuria')
  }
  fields <- c(fields, "biopt_hematuria")
  values <- c(values, if (is.null(biopt_hematuria)) "NULL" else if (is(biopt_hematuria, "subQuery")) paste0("(", as.character(biopt_hematuria), ")") else paste0("'", as.character(biopt_hematuria), "'"))

  if (missing(biopt_hemospermia)) {
    biopt_hemospermia <- defaults$biopt_hemospermia
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.biopt_hemospermia')
  }
  fields <- c(fields, "biopt_hemospermia")
  values <- c(values, if (is.null(biopt_hemospermia)) "NULL" else if (is(biopt_hemospermia, "subQuery")) paste0("(", as.character(biopt_hemospermia), ")") else paste0("'", as.character(biopt_hemospermia), "'"))

  if (missing(biopt_pain)) {
    biopt_pain <- defaults$biopt_pain
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.biopt_pain')
  }
  fields <- c(fields, "biopt_pain")
  values <- c(values, if (is.null(biopt_pain)) "NULL" else if (is(biopt_pain, "subQuery")) paste0("(", as.character(biopt_pain), ")") else paste0("'", as.character(biopt_pain), "'"))

  if (missing(biopt_route)) {
    biopt_route <- defaults$biopt_route
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.biopt_route')
  }
  fields <- c(fields, "biopt_route")
  values <- c(values, if (is.null(biopt_route)) "NULL" else if (is(biopt_route, "subQuery")) paste0("(", as.character(biopt_route), ")") else paste0("'", as.character(biopt_route), "'"))

  if (missing(biopt_max_cancer_score_lenght)) {
    biopt_max_cancer_score_lenght <- defaults$biopt_max_cancer_score_lenght
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.biopt_max_cancer_score_lenght')
  }
  fields <- c(fields, "biopt_max_cancer_score_lenght")
  values <- c(values, if (is.null(biopt_max_cancer_score_lenght)) "NULL" else if (is(biopt_max_cancer_score_lenght, "subQuery")) paste0("(", as.character(biopt_max_cancer_score_lenght), ")") else paste0("'", as.character(biopt_max_cancer_score_lenght), "'"))

  if (missing(mri_included)) {
    mri_included <- defaults$mri_included
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_included')
  }
  fields <- c(fields, "mri_included")
  values <- c(values, if (is.null(mri_included)) "NULL" else if (is(mri_included, "subQuery")) paste0("(", as.character(mri_included), ")") else paste0("'", as.character(mri_included), "'"))

  if (missing(bonescan)) {
    bonescan <- defaults$bonescan
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.bonescan')
  }
  fields <- c(fields, "bonescan")
  values <- c(values, if (is.null(bonescan)) "NULL" else if (is(bonescan, "subQuery")) paste0("(", as.character(bonescan), ")") else paste0("'", as.character(bonescan), "'"))

  if (missing(mri_taken.0)) {
    mri_taken.0 <- defaults$mri_taken.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_taken.0')
  }
  fields <- c(fields, "[mri_taken.0]")
  values <- c(values, if (is.null(mri_taken.0)) "NULL" else if (is(mri_taken.0, "subQuery")) paste0("(", as.character(mri_taken.0), ")") else paste0("'", as.character(mri_taken.0), "'"))

  if (missing(mri_lesions.0)) {
    mri_lesions.0 <- defaults$mri_lesions.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_lesions.0')
  }
  fields <- c(fields, "[mri_lesions.0]")
  values <- c(values, if (is.null(mri_lesions.0)) "NULL" else if (is(mri_lesions.0, "subQuery")) paste0("(", as.character(mri_lesions.0), ")") else paste0("'", as.character(mri_lesions.0), "'"))

  if (missing(mri_suspected_number.0)) {
    mri_suspected_number.0 <- defaults$mri_suspected_number.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_suspected_number.0')
  }
  fields <- c(fields, "[mri_suspected_number.0]")
  values <- c(values, if (is.null(mri_suspected_number.0)) "NULL" else if (is(mri_suspected_number.0, "subQuery")) paste0("(", as.character(mri_suspected_number.0), ")") else paste0("'", as.character(mri_suspected_number.0), "'"))

  if (missing(mri_pirads_1.0)) {
    mri_pirads_1.0 <- defaults$mri_pirads_1.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_pirads_1.0')
  }
  fields <- c(fields, "[mri_pirads_1.0]")
  values <- c(values, if (is.null(mri_pirads_1.0)) "NULL" else if (is(mri_pirads_1.0, "subQuery")) paste0("(", as.character(mri_pirads_1.0), ")") else paste0("'", as.character(mri_pirads_1.0), "'"))

  if (missing(mri_largest_dia_1.0)) {
    mri_largest_dia_1.0 <- defaults$mri_largest_dia_1.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_largest_dia_1.0')
  }
  fields <- c(fields, "[mri_largest_dia_1.0]")
  values <- c(values, if (is.null(mri_largest_dia_1.0)) "NULL" else if (is(mri_largest_dia_1.0, "subQuery")) paste0("(", as.character(mri_largest_dia_1.0), ")") else paste0("'", as.character(mri_largest_dia_1.0), "'"))

  if (missing(mri_location_1.0)) {
    mri_location_1.0 <- defaults$mri_location_1.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_location_1.0')
  }
  fields <- c(fields, "[mri_location_1.0]")
  values <- c(values, if (is.null(mri_location_1.0)) "NULL" else if (is(mri_location_1.0, "subQuery")) paste0("(", as.character(mri_location_1.0), ")") else paste0("'", as.character(mri_location_1.0), "'"))

  if (missing(mri_location_free_1.0)) {
    mri_location_free_1.0 <- defaults$mri_location_free_1.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_location_free_1.0')
  }
  fields <- c(fields, "[mri_location_free_1.0]")
  values <- c(values, if (is.null(mri_location_free_1.0)) "NULL" else if (is(mri_location_free_1.0, "subQuery")) paste0("(", as.character(mri_location_free_1.0), ")") else paste0("'", as.character(mri_location_free_1.0), "'"))

  if (missing(mri_pirads_2.0)) {
    mri_pirads_2.0 <- defaults$mri_pirads_2.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_pirads_2.0')
  }
  fields <- c(fields, "[mri_pirads_2.0]")
  values <- c(values, if (is.null(mri_pirads_2.0)) "NULL" else if (is(mri_pirads_2.0, "subQuery")) paste0("(", as.character(mri_pirads_2.0), ")") else paste0("'", as.character(mri_pirads_2.0), "'"))

  if (missing(mri_largest_dia_2.0)) {
    mri_largest_dia_2.0 <- defaults$mri_largest_dia_2.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_largest_dia_2.0')
  }
  fields <- c(fields, "[mri_largest_dia_2.0]")
  values <- c(values, if (is.null(mri_largest_dia_2.0)) "NULL" else if (is(mri_largest_dia_2.0, "subQuery")) paste0("(", as.character(mri_largest_dia_2.0), ")") else paste0("'", as.character(mri_largest_dia_2.0), "'"))

  if (missing(mri_location_2.0)) {
    mri_location_2.0 <- defaults$mri_location_2.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_location_2.0')
  }
  fields <- c(fields, "[mri_location_2.0]")
  values <- c(values, if (is.null(mri_location_2.0)) "NULL" else if (is(mri_location_2.0, "subQuery")) paste0("(", as.character(mri_location_2.0), ")") else paste0("'", as.character(mri_location_2.0), "'"))

  if (missing(mri_location_free_2.0)) {
    mri_location_free_2.0 <- defaults$mri_location_free_2.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_location_free_2.0')
  }
  fields <- c(fields, "[mri_location_free_2.0]")
  values <- c(values, if (is.null(mri_location_free_2.0)) "NULL" else if (is(mri_location_free_2.0, "subQuery")) paste0("(", as.character(mri_location_free_2.0), ")") else paste0("'", as.character(mri_location_free_2.0), "'"))

  if (missing(mri_pirads_3.0)) {
    mri_pirads_3.0 <- defaults$mri_pirads_3.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_pirads_3.0')
  }
  fields <- c(fields, "[mri_pirads_3.0]")
  values <- c(values, if (is.null(mri_pirads_3.0)) "NULL" else if (is(mri_pirads_3.0, "subQuery")) paste0("(", as.character(mri_pirads_3.0), ")") else paste0("'", as.character(mri_pirads_3.0), "'"))

  if (missing(mri_largest_dia_3.0)) {
    mri_largest_dia_3.0 <- defaults$mri_largest_dia_3.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_largest_dia_3.0')
  }
  fields <- c(fields, "[mri_largest_dia_3.0]")
  values <- c(values, if (is.null(mri_largest_dia_3.0)) "NULL" else if (is(mri_largest_dia_3.0, "subQuery")) paste0("(", as.character(mri_largest_dia_3.0), ")") else paste0("'", as.character(mri_largest_dia_3.0), "'"))

  if (missing(mri_location_3.0)) {
    mri_location_3.0 <- defaults$mri_location_3.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_location_3.0')
  }
  fields <- c(fields, "[mri_location_3.0]")
  values <- c(values, if (is.null(mri_location_3.0)) "NULL" else if (is(mri_location_3.0, "subQuery")) paste0("(", as.character(mri_location_3.0), ")") else paste0("'", as.character(mri_location_3.0), "'"))

  if (missing(mri_location_free_3.0)) {
    mri_location_free_3.0 <- defaults$mri_location_free_3.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_location_free_3.0')
  }
  fields <- c(fields, "[mri_location_free_3.0]")
  values <- c(values, if (is.null(mri_location_free_3.0)) "NULL" else if (is(mri_location_free_3.0, "subQuery")) paste0("(", as.character(mri_location_free_3.0), ")") else paste0("'", as.character(mri_location_free_3.0), "'"))

  if (missing(mri_progrssion_lesions.0)) {
    mri_progrssion_lesions.0 <- defaults$mri_progrssion_lesions.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_progrssion_lesions.0')
  }
  fields <- c(fields, "[mri_progrssion_lesions.0]")
  values <- c(values, if (is.null(mri_progrssion_lesions.0)) "NULL" else if (is(mri_progrssion_lesions.0, "subQuery")) paste0("(", as.character(mri_progrssion_lesions.0), ")") else paste0("'", as.character(mri_progrssion_lesions.0), "'"))

  if (missing(mri_targeted_biopsy.0)) {
    mri_targeted_biopsy.0 <- defaults$mri_targeted_biopsy.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_targeted_biopsy.0')
  }
  fields <- c(fields, "[mri_targeted_biopsy.0]")
  values <- c(values, if (is.null(mri_targeted_biopsy.0)) "NULL" else if (is(mri_targeted_biopsy.0, "subQuery")) paste0("(", as.character(mri_targeted_biopsy.0), ")") else paste0("'", as.character(mri_targeted_biopsy.0), "'"))

  if (missing(mri_targeted_cores.0)) {
    mri_targeted_cores.0 <- defaults$mri_targeted_cores.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_targeted_cores.0')
  }
  fields <- c(fields, "[mri_targeted_cores.0]")
  values <- c(values, if (is.null(mri_targeted_cores.0)) "NULL" else if (is(mri_targeted_cores.0, "subQuery")) paste0("(", as.character(mri_targeted_cores.0), ")") else paste0("'", as.character(mri_targeted_cores.0), "'"))

  if (missing(mri_targeted_taken.0)) {
    mri_targeted_taken.0 <- defaults$mri_targeted_taken.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_targeted_taken.0')
  }
  fields <- c(fields, "[mri_targeted_taken.0]")
  values <- c(values, if (is.null(mri_targeted_taken.0)) "NULL" else if (is(mri_targeted_taken.0, "subQuery")) paste0("(", as.character(mri_targeted_taken.0), ")") else paste0("'", as.character(mri_targeted_taken.0), "'"))

  if (missing(mri_targeted_gleason1.0)) {
    mri_targeted_gleason1.0 <- defaults$mri_targeted_gleason1.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_targeted_gleason1.0')
  }
  fields <- c(fields, "[mri_targeted_gleason1.0]")
  values <- c(values, if (is.null(mri_targeted_gleason1.0)) "NULL" else if (is(mri_targeted_gleason1.0, "subQuery")) paste0("(", as.character(mri_targeted_gleason1.0), ")") else paste0("'", as.character(mri_targeted_gleason1.0), "'"))

  if (missing(mri_targeted_gleason1.0.1)) {
    mri_targeted_gleason1.0.1 <- defaults$mri_targeted_gleason1.0.1
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_targeted_gleason1.0.1')
  }
  fields <- c(fields, "[mri_targeted_gleason1.0.1]")
  values <- c(values, if (is.null(mri_targeted_gleason1.0.1)) "NULL" else if (is(mri_targeted_gleason1.0.1, "subQuery")) paste0("(", as.character(mri_targeted_gleason1.0.1), ")") else paste0("'", as.character(mri_targeted_gleason1.0.1), "'"))

  if (missing(mri_targeted_gleason2.0)) {
    mri_targeted_gleason2.0 <- defaults$mri_targeted_gleason2.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_targeted_gleason2.0')
  }
  fields <- c(fields, "[mri_targeted_gleason2.0]")
  values <- c(values, if (is.null(mri_targeted_gleason2.0)) "NULL" else if (is(mri_targeted_gleason2.0, "subQuery")) paste0("(", as.character(mri_targeted_gleason2.0), ")") else paste0("'", as.character(mri_targeted_gleason2.0), "'"))

  if (missing(mri_targeted_gleason2.0.1)) {
    mri_targeted_gleason2.0.1 <- defaults$mri_targeted_gleason2.0.1
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_targeted_gleason2.0.1')
  }
  fields <- c(fields, "[mri_targeted_gleason2.0.1]")
  values <- c(values, if (is.null(mri_targeted_gleason2.0.1)) "NULL" else if (is(mri_targeted_gleason2.0.1, "subQuery")) paste0("(", as.character(mri_targeted_gleason2.0.1), ")") else paste0("'", as.character(mri_targeted_gleason2.0.1), "'"))

  if (missing(mri_lesion_positive.0)) {
    mri_lesion_positive.0 <- defaults$mri_lesion_positive.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_lesion_positive.0')
  }
  fields <- c(fields, "[mri_lesion_positive.0]")
  values <- c(values, if (is.null(mri_lesion_positive.0)) "NULL" else if (is(mri_lesion_positive.0, "subQuery")) paste0("(", as.character(mri_lesion_positive.0), ")") else paste0("'", as.character(mri_lesion_positive.0), "'"))

  if (missing(mri_method_used.0)) {
    mri_method_used.0 <- defaults$mri_method_used.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_method_used.0')
  }
  fields <- c(fields, "[mri_method_used.0]")
  values <- c(values, if (is.null(mri_method_used.0)) "NULL" else if (is(mri_method_used.0, "subQuery")) paste0("(", as.character(mri_method_used.0), ")") else paste0("'", as.character(mri_method_used.0), "'"))

  if (missing(mri_prostate_volume.0)) {
    mri_prostate_volume.0 <- defaults$mri_prostate_volume.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_prostate_volume.0')
  }
  fields <- c(fields, "[mri_prostate_volume.0]")
  values <- c(values, if (is.null(mri_prostate_volume.0)) "NULL" else if (is(mri_prostate_volume.0, "subQuery")) paste0("(", as.character(mri_prostate_volume.0), ")") else paste0("'", as.character(mri_prostate_volume.0), "'"))

  if (missing(mri_prostate_volume_method.0)) {
    mri_prostate_volume_method.0 <- defaults$mri_prostate_volume_method.0
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.mri_prostate_volume_method.0')
  }
  fields <- c(fields, "[mri_prostate_volume_method.0]")
  values <- c(values, if (is.null(mri_prostate_volume_method.0)) "NULL" else if (is(mri_prostate_volume_method.0, "subQuery")) paste0("(", as.character(mri_prostate_volume_method.0), ")") else paste0("'", as.character(mri_prostate_volume_method.0), "'"))

  if (missing(age_diagnosis)) {
    age_diagnosis <- defaults$age_diagnosis
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.age_diagnosis')
  }
  fields <- c(fields, "age_diagnosis")
  values <- c(values, if (is.null(age_diagnosis)) "NULL" else if (is(age_diagnosis, "subQuery")) paste0("(", as.character(age_diagnosis), ")") else paste0("'", as.character(age_diagnosis), "'"))

  if (missing(year_diagnosis)) {
    year_diagnosis <- defaults$year_diagnosis
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'basedata.year_diagnosis')
  }
  fields <- c(fields, "year_diagnosis")
  values <- c(values, if (is.null(year_diagnosis)) "NULL" else if (is(year_diagnosis, "subQuery")) paste0("(", as.character(year_diagnosis), ")") else paste0("'", as.character(year_diagnosis), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "basedata", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_fulong <- function(p_id, time, psa_fu, dre_fu, dre_fu_recode, num_cores_biop_fu, num_cores_pc_fu, asa_fu, log2psa_fu, psadt, gleason1_fu, gleason2_fu, gleason_sum_fu, slope, free_psa_fu, pro_psa_fu, phi_fu, visit_action, active_visit, biopt_prob_type_fu, biopt_infection_fu, biopt_inf_urine_culture_fu, biopt_inf_urine_bacterium_fu, biopt_inf_unrine_resistant_fu, biopt_inf_antibiotic_therapy_fu, biopt_inf_antibiotic_type_fu, biopt_inf_hospitalisation_fu, biopt_inf_hospitalisation_days_fu, biopt_inf_outcome_fu, biopt_hematuria_fu, biopt_hemospermia_fu, biopt_pain_fu, biopt_route_fu, biopt_max_cancer_score_lenght_fu, mri_taken, mri_lesions, mri_suspected_number, mri_pirads_1, mri_largest_dia_1, mri_location_1, mri_location_free_1, mri_pirads_2, mri_largest_dia_2, mri_location_2, mri_location_free_2, mri_pirads_3, mri_largest_dia_3, mri_location_3, mri_location_free_3, mri_progrssion_lesions, mri_targeted_biopsy, mri_targeted_cores, mri_targeted_taken, mri_targeted_gleason1, mri_targeted_gleason2, mri_lesion_positive, mri_method_used, mri_prostate_volume, mri_prostate_volume_method, year_visit, days_psa_diag) {
  defaults <- get('fulong', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(p_id)) {
    p_id <- defaults$p_id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.p_id')
  }
  fields <- c(fields, "p_id")
  values <- c(values, if (is.null(p_id)) "NULL" else if (is(p_id, "subQuery")) paste0("(", as.character(p_id), ")") else paste0("'", as.character(p_id), "'"))

  if (missing(time)) {
    time <- defaults$time
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.time')
  }
  fields <- c(fields, "time")
  values <- c(values, if (is.null(time)) "NULL" else if (is(time, "subQuery")) paste0("(", as.character(time), ")") else paste0("'", as.character(time), "'"))

  if (missing(psa_fu)) {
    psa_fu <- defaults$psa_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.psa_fu')
  }
  fields <- c(fields, "psa_fu")
  values <- c(values, if (is.null(psa_fu)) "NULL" else if (is(psa_fu, "subQuery")) paste0("(", as.character(psa_fu), ")") else paste0("'", as.character(psa_fu), "'"))

  if (missing(dre_fu)) {
    dre_fu <- defaults$dre_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.dre_fu')
  }
  fields <- c(fields, "dre_fu")
  values <- c(values, if (is.null(dre_fu)) "NULL" else if (is(dre_fu, "subQuery")) paste0("(", as.character(dre_fu), ")") else paste0("'", as.character(dre_fu), "'"))

  if (missing(dre_fu_recode)) {
    dre_fu_recode <- defaults$dre_fu_recode
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.dre_fu_recode')
  }
  fields <- c(fields, "dre_fu_recode")
  values <- c(values, if (is.null(dre_fu_recode)) "NULL" else if (is(dre_fu_recode, "subQuery")) paste0("(", as.character(dre_fu_recode), ")") else paste0("'", as.character(dre_fu_recode), "'"))

  if (missing(num_cores_biop_fu)) {
    num_cores_biop_fu <- defaults$num_cores_biop_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.num_cores_biop_fu')
  }
  fields <- c(fields, "num_cores_biop_fu")
  values <- c(values, if (is.null(num_cores_biop_fu)) "NULL" else if (is(num_cores_biop_fu, "subQuery")) paste0("(", as.character(num_cores_biop_fu), ")") else paste0("'", as.character(num_cores_biop_fu), "'"))

  if (missing(num_cores_pc_fu)) {
    num_cores_pc_fu <- defaults$num_cores_pc_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.num_cores_pc_fu')
  }
  fields <- c(fields, "num_cores_pc_fu")
  values <- c(values, if (is.null(num_cores_pc_fu)) "NULL" else if (is(num_cores_pc_fu, "subQuery")) paste0("(", as.character(num_cores_pc_fu), ")") else paste0("'", as.character(num_cores_pc_fu), "'"))

  if (missing(asa_fu)) {
    asa_fu <- defaults$asa_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.asa_fu')
  }
  fields <- c(fields, "asa_fu")
  values <- c(values, if (is.null(asa_fu)) "NULL" else if (is(asa_fu, "subQuery")) paste0("(", as.character(asa_fu), ")") else paste0("'", as.character(asa_fu), "'"))

  if (missing(log2psa_fu)) {
    log2psa_fu <- defaults$log2psa_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.log2psa_fu')
  }
  fields <- c(fields, "log2psa_fu")
  values <- c(values, if (is.null(log2psa_fu)) "NULL" else if (is(log2psa_fu, "subQuery")) paste0("(", as.character(log2psa_fu), ")") else paste0("'", as.character(log2psa_fu), "'"))

  if (missing(psadt)) {
    psadt <- defaults$psadt
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.psadt')
  }
  fields <- c(fields, "psadt")
  values <- c(values, if (is.null(psadt)) "NULL" else if (is(psadt, "subQuery")) paste0("(", as.character(psadt), ")") else paste0("'", as.character(psadt), "'"))

  if (missing(gleason1_fu)) {
    gleason1_fu <- defaults$gleason1_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.gleason1_fu')
  }
  fields <- c(fields, "gleason1_fu")
  values <- c(values, if (is.null(gleason1_fu)) "NULL" else if (is(gleason1_fu, "subQuery")) paste0("(", as.character(gleason1_fu), ")") else paste0("'", as.character(gleason1_fu), "'"))

  if (missing(gleason2_fu)) {
    gleason2_fu <- defaults$gleason2_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.gleason2_fu')
  }
  fields <- c(fields, "gleason2_fu")
  values <- c(values, if (is.null(gleason2_fu)) "NULL" else if (is(gleason2_fu, "subQuery")) paste0("(", as.character(gleason2_fu), ")") else paste0("'", as.character(gleason2_fu), "'"))

  if (missing(gleason_sum_fu)) {
    gleason_sum_fu <- defaults$gleason_sum_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.gleason_sum_fu')
  }
  fields <- c(fields, "gleason_sum_fu")
  values <- c(values, if (is.null(gleason_sum_fu)) "NULL" else if (is(gleason_sum_fu, "subQuery")) paste0("(", as.character(gleason_sum_fu), ")") else paste0("'", as.character(gleason_sum_fu), "'"))

  if (missing(slope)) {
    slope <- defaults$slope
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.slope')
  }
  fields <- c(fields, "slope")
  values <- c(values, if (is.null(slope)) "NULL" else if (is(slope, "subQuery")) paste0("(", as.character(slope), ")") else paste0("'", as.character(slope), "'"))

  if (missing(free_psa_fu)) {
    free_psa_fu <- defaults$free_psa_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.free_psa_fu')
  }
  fields <- c(fields, "free_psa_fu")
  values <- c(values, if (is.null(free_psa_fu)) "NULL" else if (is(free_psa_fu, "subQuery")) paste0("(", as.character(free_psa_fu), ")") else paste0("'", as.character(free_psa_fu), "'"))

  if (missing(pro_psa_fu)) {
    pro_psa_fu <- defaults$pro_psa_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.pro_psa_fu')
  }
  fields <- c(fields, "pro_psa_fu")
  values <- c(values, if (is.null(pro_psa_fu)) "NULL" else if (is(pro_psa_fu, "subQuery")) paste0("(", as.character(pro_psa_fu), ")") else paste0("'", as.character(pro_psa_fu), "'"))

  if (missing(phi_fu)) {
    phi_fu <- defaults$phi_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.phi_fu')
  }
  fields <- c(fields, "phi_fu")
  values <- c(values, if (is.null(phi_fu)) "NULL" else if (is(phi_fu, "subQuery")) paste0("(", as.character(phi_fu), ")") else paste0("'", as.character(phi_fu), "'"))

  if (missing(visit_action)) {
    visit_action <- defaults$visit_action
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.visit_action')
  }
  fields <- c(fields, "visit_action")
  values <- c(values, if (is.null(visit_action)) "NULL" else if (is(visit_action, "subQuery")) paste0("(", as.character(visit_action), ")") else paste0("'", as.character(visit_action), "'"))

  if (missing(active_visit)) {
    active_visit <- defaults$active_visit
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.active_visit')
  }
  fields <- c(fields, "active_visit")
  values <- c(values, if (is.null(active_visit)) "NULL" else if (is(active_visit, "subQuery")) paste0("(", as.character(active_visit), ")") else paste0("'", as.character(active_visit), "'"))

  if (missing(biopt_prob_type_fu)) {
    biopt_prob_type_fu <- defaults$biopt_prob_type_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.biopt_prob_type_fu')
  }
  fields <- c(fields, "biopt_prob_type_fu")
  values <- c(values, if (is.null(biopt_prob_type_fu)) "NULL" else if (is(biopt_prob_type_fu, "subQuery")) paste0("(", as.character(biopt_prob_type_fu), ")") else paste0("'", as.character(biopt_prob_type_fu), "'"))

  if (missing(biopt_infection_fu)) {
    biopt_infection_fu <- defaults$biopt_infection_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.biopt_infection_fu')
  }
  fields <- c(fields, "biopt_infection_fu")
  values <- c(values, if (is.null(biopt_infection_fu)) "NULL" else if (is(biopt_infection_fu, "subQuery")) paste0("(", as.character(biopt_infection_fu), ")") else paste0("'", as.character(biopt_infection_fu), "'"))

  if (missing(biopt_inf_urine_culture_fu)) {
    biopt_inf_urine_culture_fu <- defaults$biopt_inf_urine_culture_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.biopt_inf_urine_culture_fu')
  }
  fields <- c(fields, "biopt_inf_urine_culture_fu")
  values <- c(values, if (is.null(biopt_inf_urine_culture_fu)) "NULL" else if (is(biopt_inf_urine_culture_fu, "subQuery")) paste0("(", as.character(biopt_inf_urine_culture_fu), ")") else paste0("'", as.character(biopt_inf_urine_culture_fu), "'"))

  if (missing(biopt_inf_urine_bacterium_fu)) {
    biopt_inf_urine_bacterium_fu <- defaults$biopt_inf_urine_bacterium_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.biopt_inf_urine_bacterium_fu')
  }
  fields <- c(fields, "biopt_inf_urine_bacterium_fu")
  values <- c(values, if (is.null(biopt_inf_urine_bacterium_fu)) "NULL" else if (is(biopt_inf_urine_bacterium_fu, "subQuery")) paste0("(", as.character(biopt_inf_urine_bacterium_fu), ")") else paste0("'", as.character(biopt_inf_urine_bacterium_fu), "'"))

  if (missing(biopt_inf_unrine_resistant_fu)) {
    biopt_inf_unrine_resistant_fu <- defaults$biopt_inf_unrine_resistant_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.biopt_inf_unrine_resistant_fu')
  }
  fields <- c(fields, "biopt_inf_unrine_resistant_fu")
  values <- c(values, if (is.null(biopt_inf_unrine_resistant_fu)) "NULL" else if (is(biopt_inf_unrine_resistant_fu, "subQuery")) paste0("(", as.character(biopt_inf_unrine_resistant_fu), ")") else paste0("'", as.character(biopt_inf_unrine_resistant_fu), "'"))

  if (missing(biopt_inf_antibiotic_therapy_fu)) {
    biopt_inf_antibiotic_therapy_fu <- defaults$biopt_inf_antibiotic_therapy_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.biopt_inf_antibiotic_therapy_fu')
  }
  fields <- c(fields, "biopt_inf_antibiotic_therapy_fu")
  values <- c(values, if (is.null(biopt_inf_antibiotic_therapy_fu)) "NULL" else if (is(biopt_inf_antibiotic_therapy_fu, "subQuery")) paste0("(", as.character(biopt_inf_antibiotic_therapy_fu), ")") else paste0("'", as.character(biopt_inf_antibiotic_therapy_fu), "'"))

  if (missing(biopt_inf_antibiotic_type_fu)) {
    biopt_inf_antibiotic_type_fu <- defaults$biopt_inf_antibiotic_type_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.biopt_inf_antibiotic_type_fu')
  }
  fields <- c(fields, "biopt_inf_antibiotic_type_fu")
  values <- c(values, if (is.null(biopt_inf_antibiotic_type_fu)) "NULL" else if (is(biopt_inf_antibiotic_type_fu, "subQuery")) paste0("(", as.character(biopt_inf_antibiotic_type_fu), ")") else paste0("'", as.character(biopt_inf_antibiotic_type_fu), "'"))

  if (missing(biopt_inf_hospitalisation_fu)) {
    biopt_inf_hospitalisation_fu <- defaults$biopt_inf_hospitalisation_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.biopt_inf_hospitalisation_fu')
  }
  fields <- c(fields, "biopt_inf_hospitalisation_fu")
  values <- c(values, if (is.null(biopt_inf_hospitalisation_fu)) "NULL" else if (is(biopt_inf_hospitalisation_fu, "subQuery")) paste0("(", as.character(biopt_inf_hospitalisation_fu), ")") else paste0("'", as.character(biopt_inf_hospitalisation_fu), "'"))

  if (missing(biopt_inf_hospitalisation_days_fu)) {
    biopt_inf_hospitalisation_days_fu <- defaults$biopt_inf_hospitalisation_days_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.biopt_inf_hospitalisation_days_fu')
  }
  fields <- c(fields, "biopt_inf_hospitalisation_days_fu")
  values <- c(values, if (is.null(biopt_inf_hospitalisation_days_fu)) "NULL" else if (is(biopt_inf_hospitalisation_days_fu, "subQuery")) paste0("(", as.character(biopt_inf_hospitalisation_days_fu), ")") else paste0("'", as.character(biopt_inf_hospitalisation_days_fu), "'"))

  if (missing(biopt_inf_outcome_fu)) {
    biopt_inf_outcome_fu <- defaults$biopt_inf_outcome_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.biopt_inf_outcome_fu')
  }
  fields <- c(fields, "biopt_inf_outcome_fu")
  values <- c(values, if (is.null(biopt_inf_outcome_fu)) "NULL" else if (is(biopt_inf_outcome_fu, "subQuery")) paste0("(", as.character(biopt_inf_outcome_fu), ")") else paste0("'", as.character(biopt_inf_outcome_fu), "'"))

  if (missing(biopt_hematuria_fu)) {
    biopt_hematuria_fu <- defaults$biopt_hematuria_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.biopt_hematuria_fu')
  }
  fields <- c(fields, "biopt_hematuria_fu")
  values <- c(values, if (is.null(biopt_hematuria_fu)) "NULL" else if (is(biopt_hematuria_fu, "subQuery")) paste0("(", as.character(biopt_hematuria_fu), ")") else paste0("'", as.character(biopt_hematuria_fu), "'"))

  if (missing(biopt_hemospermia_fu)) {
    biopt_hemospermia_fu <- defaults$biopt_hemospermia_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.biopt_hemospermia_fu')
  }
  fields <- c(fields, "biopt_hemospermia_fu")
  values <- c(values, if (is.null(biopt_hemospermia_fu)) "NULL" else if (is(biopt_hemospermia_fu, "subQuery")) paste0("(", as.character(biopt_hemospermia_fu), ")") else paste0("'", as.character(biopt_hemospermia_fu), "'"))

  if (missing(biopt_pain_fu)) {
    biopt_pain_fu <- defaults$biopt_pain_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.biopt_pain_fu')
  }
  fields <- c(fields, "biopt_pain_fu")
  values <- c(values, if (is.null(biopt_pain_fu)) "NULL" else if (is(biopt_pain_fu, "subQuery")) paste0("(", as.character(biopt_pain_fu), ")") else paste0("'", as.character(biopt_pain_fu), "'"))

  if (missing(biopt_route_fu)) {
    biopt_route_fu <- defaults$biopt_route_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.biopt_route_fu')
  }
  fields <- c(fields, "biopt_route_fu")
  values <- c(values, if (is.null(biopt_route_fu)) "NULL" else if (is(biopt_route_fu, "subQuery")) paste0("(", as.character(biopt_route_fu), ")") else paste0("'", as.character(biopt_route_fu), "'"))

  if (missing(biopt_max_cancer_score_lenght_fu)) {
    biopt_max_cancer_score_lenght_fu <- defaults$biopt_max_cancer_score_lenght_fu
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.biopt_max_cancer_score_lenght_fu')
  }
  fields <- c(fields, "biopt_max_cancer_score_lenght_fu")
  values <- c(values, if (is.null(biopt_max_cancer_score_lenght_fu)) "NULL" else if (is(biopt_max_cancer_score_lenght_fu, "subQuery")) paste0("(", as.character(biopt_max_cancer_score_lenght_fu), ")") else paste0("'", as.character(biopt_max_cancer_score_lenght_fu), "'"))

  if (missing(mri_taken)) {
    mri_taken <- defaults$mri_taken
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_taken')
  }
  fields <- c(fields, "mri_taken")
  values <- c(values, if (is.null(mri_taken)) "NULL" else if (is(mri_taken, "subQuery")) paste0("(", as.character(mri_taken), ")") else paste0("'", as.character(mri_taken), "'"))

  if (missing(mri_lesions)) {
    mri_lesions <- defaults$mri_lesions
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_lesions')
  }
  fields <- c(fields, "mri_lesions")
  values <- c(values, if (is.null(mri_lesions)) "NULL" else if (is(mri_lesions, "subQuery")) paste0("(", as.character(mri_lesions), ")") else paste0("'", as.character(mri_lesions), "'"))

  if (missing(mri_suspected_number)) {
    mri_suspected_number <- defaults$mri_suspected_number
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_suspected_number')
  }
  fields <- c(fields, "mri_suspected_number")
  values <- c(values, if (is.null(mri_suspected_number)) "NULL" else if (is(mri_suspected_number, "subQuery")) paste0("(", as.character(mri_suspected_number), ")") else paste0("'", as.character(mri_suspected_number), "'"))

  if (missing(mri_pirads_1)) {
    mri_pirads_1 <- defaults$mri_pirads_1
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_pirads_1')
  }
  fields <- c(fields, "mri_pirads_1")
  values <- c(values, if (is.null(mri_pirads_1)) "NULL" else if (is(mri_pirads_1, "subQuery")) paste0("(", as.character(mri_pirads_1), ")") else paste0("'", as.character(mri_pirads_1), "'"))

  if (missing(mri_largest_dia_1)) {
    mri_largest_dia_1 <- defaults$mri_largest_dia_1
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_largest_dia_1')
  }
  fields <- c(fields, "mri_largest_dia_1")
  values <- c(values, if (is.null(mri_largest_dia_1)) "NULL" else if (is(mri_largest_dia_1, "subQuery")) paste0("(", as.character(mri_largest_dia_1), ")") else paste0("'", as.character(mri_largest_dia_1), "'"))

  if (missing(mri_location_1)) {
    mri_location_1 <- defaults$mri_location_1
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_location_1')
  }
  fields <- c(fields, "mri_location_1")
  values <- c(values, if (is.null(mri_location_1)) "NULL" else if (is(mri_location_1, "subQuery")) paste0("(", as.character(mri_location_1), ")") else paste0("'", as.character(mri_location_1), "'"))

  if (missing(mri_location_free_1)) {
    mri_location_free_1 <- defaults$mri_location_free_1
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_location_free_1')
  }
  fields <- c(fields, "mri_location_free_1")
  values <- c(values, if (is.null(mri_location_free_1)) "NULL" else if (is(mri_location_free_1, "subQuery")) paste0("(", as.character(mri_location_free_1), ")") else paste0("'", as.character(mri_location_free_1), "'"))

  if (missing(mri_pirads_2)) {
    mri_pirads_2 <- defaults$mri_pirads_2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_pirads_2')
  }
  fields <- c(fields, "mri_pirads_2")
  values <- c(values, if (is.null(mri_pirads_2)) "NULL" else if (is(mri_pirads_2, "subQuery")) paste0("(", as.character(mri_pirads_2), ")") else paste0("'", as.character(mri_pirads_2), "'"))

  if (missing(mri_largest_dia_2)) {
    mri_largest_dia_2 <- defaults$mri_largest_dia_2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_largest_dia_2')
  }
  fields <- c(fields, "mri_largest_dia_2")
  values <- c(values, if (is.null(mri_largest_dia_2)) "NULL" else if (is(mri_largest_dia_2, "subQuery")) paste0("(", as.character(mri_largest_dia_2), ")") else paste0("'", as.character(mri_largest_dia_2), "'"))

  if (missing(mri_location_2)) {
    mri_location_2 <- defaults$mri_location_2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_location_2')
  }
  fields <- c(fields, "mri_location_2")
  values <- c(values, if (is.null(mri_location_2)) "NULL" else if (is(mri_location_2, "subQuery")) paste0("(", as.character(mri_location_2), ")") else paste0("'", as.character(mri_location_2), "'"))

  if (missing(mri_location_free_2)) {
    mri_location_free_2 <- defaults$mri_location_free_2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_location_free_2')
  }
  fields <- c(fields, "mri_location_free_2")
  values <- c(values, if (is.null(mri_location_free_2)) "NULL" else if (is(mri_location_free_2, "subQuery")) paste0("(", as.character(mri_location_free_2), ")") else paste0("'", as.character(mri_location_free_2), "'"))

  if (missing(mri_pirads_3)) {
    mri_pirads_3 <- defaults$mri_pirads_3
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_pirads_3')
  }
  fields <- c(fields, "mri_pirads_3")
  values <- c(values, if (is.null(mri_pirads_3)) "NULL" else if (is(mri_pirads_3, "subQuery")) paste0("(", as.character(mri_pirads_3), ")") else paste0("'", as.character(mri_pirads_3), "'"))

  if (missing(mri_largest_dia_3)) {
    mri_largest_dia_3 <- defaults$mri_largest_dia_3
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_largest_dia_3')
  }
  fields <- c(fields, "mri_largest_dia_3")
  values <- c(values, if (is.null(mri_largest_dia_3)) "NULL" else if (is(mri_largest_dia_3, "subQuery")) paste0("(", as.character(mri_largest_dia_3), ")") else paste0("'", as.character(mri_largest_dia_3), "'"))

  if (missing(mri_location_3)) {
    mri_location_3 <- defaults$mri_location_3
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_location_3')
  }
  fields <- c(fields, "mri_location_3")
  values <- c(values, if (is.null(mri_location_3)) "NULL" else if (is(mri_location_3, "subQuery")) paste0("(", as.character(mri_location_3), ")") else paste0("'", as.character(mri_location_3), "'"))

  if (missing(mri_location_free_3)) {
    mri_location_free_3 <- defaults$mri_location_free_3
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_location_free_3')
  }
  fields <- c(fields, "mri_location_free_3")
  values <- c(values, if (is.null(mri_location_free_3)) "NULL" else if (is(mri_location_free_3, "subQuery")) paste0("(", as.character(mri_location_free_3), ")") else paste0("'", as.character(mri_location_free_3), "'"))

  if (missing(mri_progrssion_lesions)) {
    mri_progrssion_lesions <- defaults$mri_progrssion_lesions
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_progrssion_lesions')
  }
  fields <- c(fields, "mri_progrssion_lesions")
  values <- c(values, if (is.null(mri_progrssion_lesions)) "NULL" else if (is(mri_progrssion_lesions, "subQuery")) paste0("(", as.character(mri_progrssion_lesions), ")") else paste0("'", as.character(mri_progrssion_lesions), "'"))

  if (missing(mri_targeted_biopsy)) {
    mri_targeted_biopsy <- defaults$mri_targeted_biopsy
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_targeted_biopsy')
  }
  fields <- c(fields, "mri_targeted_biopsy")
  values <- c(values, if (is.null(mri_targeted_biopsy)) "NULL" else if (is(mri_targeted_biopsy, "subQuery")) paste0("(", as.character(mri_targeted_biopsy), ")") else paste0("'", as.character(mri_targeted_biopsy), "'"))

  if (missing(mri_targeted_cores)) {
    mri_targeted_cores <- defaults$mri_targeted_cores
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_targeted_cores')
  }
  fields <- c(fields, "mri_targeted_cores")
  values <- c(values, if (is.null(mri_targeted_cores)) "NULL" else if (is(mri_targeted_cores, "subQuery")) paste0("(", as.character(mri_targeted_cores), ")") else paste0("'", as.character(mri_targeted_cores), "'"))

  if (missing(mri_targeted_taken)) {
    mri_targeted_taken <- defaults$mri_targeted_taken
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_targeted_taken')
  }
  fields <- c(fields, "mri_targeted_taken")
  values <- c(values, if (is.null(mri_targeted_taken)) "NULL" else if (is(mri_targeted_taken, "subQuery")) paste0("(", as.character(mri_targeted_taken), ")") else paste0("'", as.character(mri_targeted_taken), "'"))

  if (missing(mri_targeted_gleason1)) {
    mri_targeted_gleason1 <- defaults$mri_targeted_gleason1
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_targeted_gleason1')
  }
  fields <- c(fields, "mri_targeted_gleason1")
  values <- c(values, if (is.null(mri_targeted_gleason1)) "NULL" else if (is(mri_targeted_gleason1, "subQuery")) paste0("(", as.character(mri_targeted_gleason1), ")") else paste0("'", as.character(mri_targeted_gleason1), "'"))

  if (missing(mri_targeted_gleason2)) {
    mri_targeted_gleason2 <- defaults$mri_targeted_gleason2
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_targeted_gleason2')
  }
  fields <- c(fields, "mri_targeted_gleason2")
  values <- c(values, if (is.null(mri_targeted_gleason2)) "NULL" else if (is(mri_targeted_gleason2, "subQuery")) paste0("(", as.character(mri_targeted_gleason2), ")") else paste0("'", as.character(mri_targeted_gleason2), "'"))

  if (missing(mri_lesion_positive)) {
    mri_lesion_positive <- defaults$mri_lesion_positive
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_lesion_positive')
  }
  fields <- c(fields, "mri_lesion_positive")
  values <- c(values, if (is.null(mri_lesion_positive)) "NULL" else if (is(mri_lesion_positive, "subQuery")) paste0("(", as.character(mri_lesion_positive), ")") else paste0("'", as.character(mri_lesion_positive), "'"))

  if (missing(mri_method_used)) {
    mri_method_used <- defaults$mri_method_used
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_method_used')
  }
  fields <- c(fields, "mri_method_used")
  values <- c(values, if (is.null(mri_method_used)) "NULL" else if (is(mri_method_used, "subQuery")) paste0("(", as.character(mri_method_used), ")") else paste0("'", as.character(mri_method_used), "'"))

  if (missing(mri_prostate_volume)) {
    mri_prostate_volume <- defaults$mri_prostate_volume
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_prostate_volume')
  }
  fields <- c(fields, "mri_prostate_volume")
  values <- c(values, if (is.null(mri_prostate_volume)) "NULL" else if (is(mri_prostate_volume, "subQuery")) paste0("(", as.character(mri_prostate_volume), ")") else paste0("'", as.character(mri_prostate_volume), "'"))

  if (missing(mri_prostate_volume_method)) {
    mri_prostate_volume_method <- defaults$mri_prostate_volume_method
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.mri_prostate_volume_method')
  }
  fields <- c(fields, "mri_prostate_volume_method")
  values <- c(values, if (is.null(mri_prostate_volume_method)) "NULL" else if (is(mri_prostate_volume_method, "subQuery")) paste0("(", as.character(mri_prostate_volume_method), ")") else paste0("'", as.character(mri_prostate_volume_method), "'"))

  if (missing(year_visit)) {
    year_visit <- defaults$year_visit
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.year_visit')
  }
  fields <- c(fields, "year_visit")
  values <- c(values, if (is.null(year_visit)) "NULL" else if (is(year_visit, "subQuery")) paste0("(", as.character(year_visit), ")") else paste0("'", as.character(year_visit), "'"))

  if (missing(days_psa_diag)) {
    days_psa_diag <- defaults$days_psa_diag
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'fulong.days_psa_diag')
  }
  fields <- c(fields, "days_psa_diag")
  values <- c(values, if (is.null(days_psa_diag)) "NULL" else if (is(days_psa_diag, "subQuery")) paste0("(", as.character(days_psa_diag), ")") else paste0("'", as.character(days_psa_diag), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "fulong", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

add_enddata <- function(p_id, nr_fuvisits, discontinued, days_discontinued_diagnosis, reason_treatment, days_surgery_diagnosis, pt, pn, pm, gleason1_rad_prost, gleason2_rad_prost, prostatevolume, tumorvolume, ece, svi, pos_surgical_margins, postoperative_psa, pathology_reported, adjuvant_radiotherapy, year_discontinued) {
  defaults <- get('enddata', envir = frameworkContext$defaultValues)
  fields <- c()
  values <- c()
  if (missing(p_id)) {
    p_id <- defaults$p_id
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.p_id')
  }
  fields <- c(fields, "p_id")
  values <- c(values, if (is.null(p_id)) "NULL" else if (is(p_id, "subQuery")) paste0("(", as.character(p_id), ")") else paste0("'", as.character(p_id), "'"))

  if (missing(nr_fuvisits)) {
    nr_fuvisits <- defaults$nr_fuvisits
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.nr_fuvisits')
  }
  fields <- c(fields, "nr_fuvisits")
  values <- c(values, if (is.null(nr_fuvisits)) "NULL" else if (is(nr_fuvisits, "subQuery")) paste0("(", as.character(nr_fuvisits), ")") else paste0("'", as.character(nr_fuvisits), "'"))

  if (missing(discontinued)) {
    discontinued <- defaults$discontinued
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.discontinued')
  }
  fields <- c(fields, "discontinued")
  values <- c(values, if (is.null(discontinued)) "NULL" else if (is(discontinued, "subQuery")) paste0("(", as.character(discontinued), ")") else paste0("'", as.character(discontinued), "'"))

  if (missing(days_discontinued_diagnosis)) {
    days_discontinued_diagnosis <- defaults$days_discontinued_diagnosis
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.days_discontinued_diagnosis')
  }
  fields <- c(fields, "days_discontinued_diagnosis")
  values <- c(values, if (is.null(days_discontinued_diagnosis)) "NULL" else if (is(days_discontinued_diagnosis, "subQuery")) paste0("(", as.character(days_discontinued_diagnosis), ")") else paste0("'", as.character(days_discontinued_diagnosis), "'"))

  if (missing(reason_treatment)) {
    reason_treatment <- defaults$reason_treatment
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.reason_treatment')
  }
  fields <- c(fields, "reason_treatment")
  values <- c(values, if (is.null(reason_treatment)) "NULL" else if (is(reason_treatment, "subQuery")) paste0("(", as.character(reason_treatment), ")") else paste0("'", as.character(reason_treatment), "'"))

  if (missing(days_surgery_diagnosis)) {
    days_surgery_diagnosis <- defaults$days_surgery_diagnosis
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.days_surgery_diagnosis')
  }
  fields <- c(fields, "days_surgery_diagnosis")
  values <- c(values, if (is.null(days_surgery_diagnosis)) "NULL" else if (is(days_surgery_diagnosis, "subQuery")) paste0("(", as.character(days_surgery_diagnosis), ")") else paste0("'", as.character(days_surgery_diagnosis), "'"))

  if (missing(pt)) {
    pt <- defaults$pt
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.pt')
  }
  fields <- c(fields, "pt")
  values <- c(values, if (is.null(pt)) "NULL" else if (is(pt, "subQuery")) paste0("(", as.character(pt), ")") else paste0("'", as.character(pt), "'"))

  if (missing(pn)) {
    pn <- defaults$pn
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.pn')
  }
  fields <- c(fields, "pn")
  values <- c(values, if (is.null(pn)) "NULL" else if (is(pn, "subQuery")) paste0("(", as.character(pn), ")") else paste0("'", as.character(pn), "'"))

  if (missing(pm)) {
    pm <- defaults$pm
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.pm')
  }
  fields <- c(fields, "pm")
  values <- c(values, if (is.null(pm)) "NULL" else if (is(pm, "subQuery")) paste0("(", as.character(pm), ")") else paste0("'", as.character(pm), "'"))

  if (missing(gleason1_rad_prost)) {
    gleason1_rad_prost <- defaults$gleason1_rad_prost
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.gleason1_rad_prost')
  }
  fields <- c(fields, "gleason1_rad_prost")
  values <- c(values, if (is.null(gleason1_rad_prost)) "NULL" else if (is(gleason1_rad_prost, "subQuery")) paste0("(", as.character(gleason1_rad_prost), ")") else paste0("'", as.character(gleason1_rad_prost), "'"))

  if (missing(gleason2_rad_prost)) {
    gleason2_rad_prost <- defaults$gleason2_rad_prost
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.gleason2_rad_prost')
  }
  fields <- c(fields, "gleason2_rad_prost")
  values <- c(values, if (is.null(gleason2_rad_prost)) "NULL" else if (is(gleason2_rad_prost, "subQuery")) paste0("(", as.character(gleason2_rad_prost), ")") else paste0("'", as.character(gleason2_rad_prost), "'"))

  if (missing(prostatevolume)) {
    prostatevolume <- defaults$prostatevolume
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.prostatevolume')
  }
  fields <- c(fields, "prostatevolume")
  values <- c(values, if (is.null(prostatevolume)) "NULL" else if (is(prostatevolume, "subQuery")) paste0("(", as.character(prostatevolume), ")") else paste0("'", as.character(prostatevolume), "'"))

  if (missing(tumorvolume)) {
    tumorvolume <- defaults$tumorvolume
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.tumorvolume')
  }
  fields <- c(fields, "tumorvolume")
  values <- c(values, if (is.null(tumorvolume)) "NULL" else if (is(tumorvolume, "subQuery")) paste0("(", as.character(tumorvolume), ")") else paste0("'", as.character(tumorvolume), "'"))

  if (missing(ece)) {
    ece <- defaults$ece
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.ece')
  }
  fields <- c(fields, "ece")
  values <- c(values, if (is.null(ece)) "NULL" else if (is(ece, "subQuery")) paste0("(", as.character(ece), ")") else paste0("'", as.character(ece), "'"))

  if (missing(svi)) {
    svi <- defaults$svi
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.svi')
  }
  fields <- c(fields, "svi")
  values <- c(values, if (is.null(svi)) "NULL" else if (is(svi, "subQuery")) paste0("(", as.character(svi), ")") else paste0("'", as.character(svi), "'"))

  if (missing(pos_surgical_margins)) {
    pos_surgical_margins <- defaults$pos_surgical_margins
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.pos_surgical_margins')
  }
  fields <- c(fields, "pos_surgical_margins")
  values <- c(values, if (is.null(pos_surgical_margins)) "NULL" else if (is(pos_surgical_margins, "subQuery")) paste0("(", as.character(pos_surgical_margins), ")") else paste0("'", as.character(pos_surgical_margins), "'"))

  if (missing(postoperative_psa)) {
    postoperative_psa <- defaults$postoperative_psa
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.postoperative_psa')
  }
  fields <- c(fields, "postoperative_psa")
  values <- c(values, if (is.null(postoperative_psa)) "NULL" else if (is(postoperative_psa, "subQuery")) paste0("(", as.character(postoperative_psa), ")") else paste0("'", as.character(postoperative_psa), "'"))

  if (missing(pathology_reported)) {
    pathology_reported <- defaults$pathology_reported
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.pathology_reported')
  }
  fields <- c(fields, "pathology_reported")
  values <- c(values, if (is.null(pathology_reported)) "NULL" else if (is(pathology_reported, "subQuery")) paste0("(", as.character(pathology_reported), ")") else paste0("'", as.character(pathology_reported), "'"))

  if (missing(adjuvant_radiotherapy)) {
    adjuvant_radiotherapy <- defaults$adjuvant_radiotherapy
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.adjuvant_radiotherapy')
  }
  fields <- c(fields, "adjuvant_radiotherapy")
  values <- c(values, if (is.null(adjuvant_radiotherapy)) "NULL" else if (is(adjuvant_radiotherapy, "subQuery")) paste0("(", as.character(adjuvant_radiotherapy), ")") else paste0("'", as.character(adjuvant_radiotherapy), "'"))

  if (missing(year_discontinued)) {
    year_discontinued <- defaults$year_discontinued
  } else {
    frameworkContext$sourceFieldsTested <- c(frameworkContext$sourceFieldsTested, 'enddata.year_discontinued')
  }
  fields <- c(fields, "year_discontinued")
  values <- c(values, if (is.null(year_discontinued)) "NULL" else if (is(year_discontinued, "subQuery")) paste0("(", as.character(year_discontinued), ")") else paste0("'", as.character(year_discontinued), "'"))

  inserts <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, table = "enddata", fields = fields, values = values)
  frameworkContext$inserts[[length(frameworkContext$inserts) + 1]] <- inserts
  invisible(NULL)
}

expect_person <- function(person_id, gender_concept_id, year_of_birth, month_of_birth, day_of_birth, birth_datetime, death_datetime, race_concept_id, ethnicity_concept_id, location_id, provider_id, care_site_id, person_source_value, gender_source_value, gender_source_concept_id, race_source_value, race_source_concept_id, ethnicity_source_value, ethnicity_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.person_id')
  }

  if (!missing(gender_concept_id)) {
    fields <- c(fields, "gender_concept_id")
    values <- c(values, if (is.null(gender_concept_id)) "NULL" else if (is(gender_concept_id, "subQuery")) paste0("(", as.character(gender_concept_id), ")") else paste0("'", as.character(gender_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.gender_concept_id')
  }

  if (!missing(year_of_birth)) {
    fields <- c(fields, "year_of_birth")
    values <- c(values, if (is.null(year_of_birth)) "NULL" else if (is(year_of_birth, "subQuery")) paste0("(", as.character(year_of_birth), ")") else paste0("'", as.character(year_of_birth), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.year_of_birth')
  }

  if (!missing(month_of_birth)) {
    fields <- c(fields, "month_of_birth")
    values <- c(values, if (is.null(month_of_birth)) "NULL" else if (is(month_of_birth, "subQuery")) paste0("(", as.character(month_of_birth), ")") else paste0("'", as.character(month_of_birth), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.month_of_birth')
  }

  if (!missing(day_of_birth)) {
    fields <- c(fields, "day_of_birth")
    values <- c(values, if (is.null(day_of_birth)) "NULL" else if (is(day_of_birth, "subQuery")) paste0("(", as.character(day_of_birth), ")") else paste0("'", as.character(day_of_birth), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.day_of_birth')
  }

  if (!missing(birth_datetime)) {
    fields <- c(fields, "birth_datetime")
    values <- c(values, if (is.null(birth_datetime)) "NULL" else if (is(birth_datetime, "subQuery")) paste0("(", as.character(birth_datetime), ")") else paste0("'", as.character(birth_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.birth_datetime')
  }

  if (!missing(death_datetime)) {
    fields <- c(fields, "death_datetime")
    values <- c(values, if (is.null(death_datetime)) "NULL" else if (is(death_datetime, "subQuery")) paste0("(", as.character(death_datetime), ")") else paste0("'", as.character(death_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.death_datetime')
  }

  if (!missing(race_concept_id)) {
    fields <- c(fields, "race_concept_id")
    values <- c(values, if (is.null(race_concept_id)) "NULL" else if (is(race_concept_id, "subQuery")) paste0("(", as.character(race_concept_id), ")") else paste0("'", as.character(race_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.race_concept_id')
  }

  if (!missing(ethnicity_concept_id)) {
    fields <- c(fields, "ethnicity_concept_id")
    values <- c(values, if (is.null(ethnicity_concept_id)) "NULL" else if (is(ethnicity_concept_id, "subQuery")) paste0("(", as.character(ethnicity_concept_id), ")") else paste0("'", as.character(ethnicity_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.ethnicity_concept_id')
  }

  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) "NULL" else if (is(location_id, "subQuery")) paste0("(", as.character(location_id), ")") else paste0("'", as.character(location_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.location_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.provider_id')
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.care_site_id')
  }

  if (!missing(person_source_value)) {
    fields <- c(fields, "person_source_value")
    values <- c(values, if (is.null(person_source_value)) "NULL" else if (is(person_source_value, "subQuery")) paste0("(", as.character(person_source_value), ")") else paste0("'", as.character(person_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.person_source_value')
  }

  if (!missing(gender_source_value)) {
    fields <- c(fields, "gender_source_value")
    values <- c(values, if (is.null(gender_source_value)) "NULL" else if (is(gender_source_value, "subQuery")) paste0("(", as.character(gender_source_value), ")") else paste0("'", as.character(gender_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.gender_source_value')
  }

  if (!missing(gender_source_concept_id)) {
    fields <- c(fields, "gender_source_concept_id")
    values <- c(values, if (is.null(gender_source_concept_id)) "NULL" else if (is(gender_source_concept_id, "subQuery")) paste0("(", as.character(gender_source_concept_id), ")") else paste0("'", as.character(gender_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.gender_source_concept_id')
  }

  if (!missing(race_source_value)) {
    fields <- c(fields, "race_source_value")
    values <- c(values, if (is.null(race_source_value)) "NULL" else if (is(race_source_value, "subQuery")) paste0("(", as.character(race_source_value), ")") else paste0("'", as.character(race_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.race_source_value')
  }

  if (!missing(race_source_concept_id)) {
    fields <- c(fields, "race_source_concept_id")
    values <- c(values, if (is.null(race_source_concept_id)) "NULL" else if (is(race_source_concept_id, "subQuery")) paste0("(", as.character(race_source_concept_id), ")") else paste0("'", as.character(race_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.race_source_concept_id')
  }

  if (!missing(ethnicity_source_value)) {
    fields <- c(fields, "ethnicity_source_value")
    values <- c(values, if (is.null(ethnicity_source_value)) "NULL" else if (is(ethnicity_source_value, "subQuery")) paste0("(", as.character(ethnicity_source_value), ")") else paste0("'", as.character(ethnicity_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.ethnicity_source_value')
  }

  if (!missing(ethnicity_source_concept_id)) {
    fields <- c(fields, "ethnicity_source_concept_id")
    values <- c(values, if (is.null(ethnicity_source_concept_id)) "NULL" else if (is(ethnicity_source_concept_id, "subQuery")) paste0("(", as.character(ethnicity_source_concept_id), ")") else paste0("'", as.character(ethnicity_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.ethnicity_source_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "person", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_observation_period <- function(observation_period_id, person_id, observation_period_start_date, observation_period_end_date, period_type_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(observation_period_id)) {
    fields <- c(fields, "observation_period_id")
    values <- c(values, if (is.null(observation_period_id)) "NULL" else if (is(observation_period_id, "subQuery")) paste0("(", as.character(observation_period_id), ")") else paste0("'", as.character(observation_period_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.observation_period_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.person_id')
  }

  if (!missing(observation_period_start_date)) {
    fields <- c(fields, "observation_period_start_date")
    values <- c(values, if (is.null(observation_period_start_date)) "NULL" else if (is(observation_period_start_date, "subQuery")) paste0("(", as.character(observation_period_start_date), ")") else paste0("'", as.character(observation_period_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.observation_period_start_date')
  }

  if (!missing(observation_period_end_date)) {
    fields <- c(fields, "observation_period_end_date")
    values <- c(values, if (is.null(observation_period_end_date)) "NULL" else if (is(observation_period_end_date, "subQuery")) paste0("(", as.character(observation_period_end_date), ")") else paste0("'", as.character(observation_period_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.observation_period_end_date')
  }

  if (!missing(period_type_concept_id)) {
    fields <- c(fields, "period_type_concept_id")
    values <- c(values, if (is.null(period_type_concept_id)) "NULL" else if (is(period_type_concept_id, "subQuery")) paste0("(", as.character(period_type_concept_id), ")") else paste0("'", as.character(period_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.period_type_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "observation_period", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_visit_occurrence <- function(visit_occurrence_id, person_id, visit_concept_id, visit_start_date, visit_start_datetime, visit_end_date, visit_end_datetime, visit_type_concept_id, provider_id, care_site_id, visit_source_value, visit_source_concept_id, admitted_from_concept_id, admitted_from_source_value, discharge_to_concept_id, discharge_to_source_value, preceding_visit_occurrence_id) {
  fields <- c()
  values <- c()
  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_occurrence_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.person_id')
  }

  if (!missing(visit_concept_id)) {
    fields <- c(fields, "visit_concept_id")
    values <- c(values, if (is.null(visit_concept_id)) "NULL" else if (is(visit_concept_id, "subQuery")) paste0("(", as.character(visit_concept_id), ")") else paste0("'", as.character(visit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_concept_id')
  }

  if (!missing(visit_start_date)) {
    fields <- c(fields, "visit_start_date")
    values <- c(values, if (is.null(visit_start_date)) "NULL" else if (is(visit_start_date, "subQuery")) paste0("(", as.character(visit_start_date), ")") else paste0("'", as.character(visit_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_start_date')
  }

  if (!missing(visit_start_datetime)) {
    fields <- c(fields, "visit_start_datetime")
    values <- c(values, if (is.null(visit_start_datetime)) "NULL" else if (is(visit_start_datetime, "subQuery")) paste0("(", as.character(visit_start_datetime), ")") else paste0("'", as.character(visit_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_start_datetime')
  }

  if (!missing(visit_end_date)) {
    fields <- c(fields, "visit_end_date")
    values <- c(values, if (is.null(visit_end_date)) "NULL" else if (is(visit_end_date, "subQuery")) paste0("(", as.character(visit_end_date), ")") else paste0("'", as.character(visit_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_end_date')
  }

  if (!missing(visit_end_datetime)) {
    fields <- c(fields, "visit_end_datetime")
    values <- c(values, if (is.null(visit_end_datetime)) "NULL" else if (is(visit_end_datetime, "subQuery")) paste0("(", as.character(visit_end_datetime), ")") else paste0("'", as.character(visit_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_end_datetime')
  }

  if (!missing(visit_type_concept_id)) {
    fields <- c(fields, "visit_type_concept_id")
    values <- c(values, if (is.null(visit_type_concept_id)) "NULL" else if (is(visit_type_concept_id, "subQuery")) paste0("(", as.character(visit_type_concept_id), ")") else paste0("'", as.character(visit_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_type_concept_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.provider_id')
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.care_site_id')
  }

  if (!missing(visit_source_value)) {
    fields <- c(fields, "visit_source_value")
    values <- c(values, if (is.null(visit_source_value)) "NULL" else if (is(visit_source_value, "subQuery")) paste0("(", as.character(visit_source_value), ")") else paste0("'", as.character(visit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_source_value')
  }

  if (!missing(visit_source_concept_id)) {
    fields <- c(fields, "visit_source_concept_id")
    values <- c(values, if (is.null(visit_source_concept_id)) "NULL" else if (is(visit_source_concept_id, "subQuery")) paste0("(", as.character(visit_source_concept_id), ")") else paste0("'", as.character(visit_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_source_concept_id')
  }

  if (!missing(admitted_from_concept_id)) {
    fields <- c(fields, "admitted_from_concept_id")
    values <- c(values, if (is.null(admitted_from_concept_id)) "NULL" else if (is(admitted_from_concept_id, "subQuery")) paste0("(", as.character(admitted_from_concept_id), ")") else paste0("'", as.character(admitted_from_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.admitted_from_concept_id')
  }

  if (!missing(admitted_from_source_value)) {
    fields <- c(fields, "admitted_from_source_value")
    values <- c(values, if (is.null(admitted_from_source_value)) "NULL" else if (is(admitted_from_source_value, "subQuery")) paste0("(", as.character(admitted_from_source_value), ")") else paste0("'", as.character(admitted_from_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.admitted_from_source_value')
  }

  if (!missing(discharge_to_concept_id)) {
    fields <- c(fields, "discharge_to_concept_id")
    values <- c(values, if (is.null(discharge_to_concept_id)) "NULL" else if (is(discharge_to_concept_id, "subQuery")) paste0("(", as.character(discharge_to_concept_id), ")") else paste0("'", as.character(discharge_to_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.discharge_to_concept_id')
  }

  if (!missing(discharge_to_source_value)) {
    fields <- c(fields, "discharge_to_source_value")
    values <- c(values, if (is.null(discharge_to_source_value)) "NULL" else if (is(discharge_to_source_value, "subQuery")) paste0("(", as.character(discharge_to_source_value), ")") else paste0("'", as.character(discharge_to_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.discharge_to_source_value')
  }

  if (!missing(preceding_visit_occurrence_id)) {
    fields <- c(fields, "preceding_visit_occurrence_id")
    values <- c(values, if (is.null(preceding_visit_occurrence_id)) "NULL" else if (is(preceding_visit_occurrence_id, "subQuery")) paste0("(", as.character(preceding_visit_occurrence_id), ")") else paste0("'", as.character(preceding_visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.preceding_visit_occurrence_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "visit_occurrence", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_condition_occurrence <- function(condition_occurrence_id, person_id, condition_concept_id, condition_start_date, condition_start_datetime, condition_end_date, condition_end_datetime, condition_type_concept_id, stop_reason, provider_id, visit_occurrence_id, visit_detail_id, condition_source_value, condition_source_concept_id, condition_status_source_value, condition_status_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(condition_occurrence_id)) {
    fields <- c(fields, "condition_occurrence_id")
    values <- c(values, if (is.null(condition_occurrence_id)) "NULL" else if (is(condition_occurrence_id, "subQuery")) paste0("(", as.character(condition_occurrence_id), ")") else paste0("'", as.character(condition_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_occurrence_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.person_id')
  }

  if (!missing(condition_concept_id)) {
    fields <- c(fields, "condition_concept_id")
    values <- c(values, if (is.null(condition_concept_id)) "NULL" else if (is(condition_concept_id, "subQuery")) paste0("(", as.character(condition_concept_id), ")") else paste0("'", as.character(condition_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_concept_id')
  }

  if (!missing(condition_start_date)) {
    fields <- c(fields, "condition_start_date")
    values <- c(values, if (is.null(condition_start_date)) "NULL" else if (is(condition_start_date, "subQuery")) paste0("(", as.character(condition_start_date), ")") else paste0("'", as.character(condition_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_start_date')
  }

  if (!missing(condition_start_datetime)) {
    fields <- c(fields, "condition_start_datetime")
    values <- c(values, if (is.null(condition_start_datetime)) "NULL" else if (is(condition_start_datetime, "subQuery")) paste0("(", as.character(condition_start_datetime), ")") else paste0("'", as.character(condition_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_start_datetime')
  }

  if (!missing(condition_end_date)) {
    fields <- c(fields, "condition_end_date")
    values <- c(values, if (is.null(condition_end_date)) "NULL" else if (is(condition_end_date, "subQuery")) paste0("(", as.character(condition_end_date), ")") else paste0("'", as.character(condition_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_end_date')
  }

  if (!missing(condition_end_datetime)) {
    fields <- c(fields, "condition_end_datetime")
    values <- c(values, if (is.null(condition_end_datetime)) "NULL" else if (is(condition_end_datetime, "subQuery")) paste0("(", as.character(condition_end_datetime), ")") else paste0("'", as.character(condition_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_end_datetime')
  }

  if (!missing(condition_type_concept_id)) {
    fields <- c(fields, "condition_type_concept_id")
    values <- c(values, if (is.null(condition_type_concept_id)) "NULL" else if (is(condition_type_concept_id, "subQuery")) paste0("(", as.character(condition_type_concept_id), ")") else paste0("'", as.character(condition_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_type_concept_id')
  }

  if (!missing(stop_reason)) {
    fields <- c(fields, "stop_reason")
    values <- c(values, if (is.null(stop_reason)) "NULL" else if (is(stop_reason, "subQuery")) paste0("(", as.character(stop_reason), ")") else paste0("'", as.character(stop_reason), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.stop_reason')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.visit_detail_id')
  }

  if (!missing(condition_source_value)) {
    fields <- c(fields, "condition_source_value")
    values <- c(values, if (is.null(condition_source_value)) "NULL" else if (is(condition_source_value, "subQuery")) paste0("(", as.character(condition_source_value), ")") else paste0("'", as.character(condition_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_source_value')
  }

  if (!missing(condition_source_concept_id)) {
    fields <- c(fields, "condition_source_concept_id")
    values <- c(values, if (is.null(condition_source_concept_id)) "NULL" else if (is(condition_source_concept_id, "subQuery")) paste0("(", as.character(condition_source_concept_id), ")") else paste0("'", as.character(condition_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_source_concept_id')
  }

  if (!missing(condition_status_source_value)) {
    fields <- c(fields, "condition_status_source_value")
    values <- c(values, if (is.null(condition_status_source_value)) "NULL" else if (is(condition_status_source_value, "subQuery")) paste0("(", as.character(condition_status_source_value), ")") else paste0("'", as.character(condition_status_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_status_source_value')
  }

  if (!missing(condition_status_concept_id)) {
    fields <- c(fields, "condition_status_concept_id")
    values <- c(values, if (is.null(condition_status_concept_id)) "NULL" else if (is(condition_status_concept_id, "subQuery")) paste0("(", as.character(condition_status_concept_id), ")") else paste0("'", as.character(condition_status_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_status_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "condition_occurrence", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_device_exposure <- function(device_exposure_id, person_id, device_concept_id, device_exposure_start_date, device_exposure_start_datetime, device_exposure_end_date, device_exposure_end_datetime, device_type_concept_id, unique_device_id, quantity, provider_id, visit_occurrence_id, visit_detail_id, device_source_value, device_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(device_exposure_id)) {
    fields <- c(fields, "device_exposure_id")
    values <- c(values, if (is.null(device_exposure_id)) "NULL" else if (is(device_exposure_id, "subQuery")) paste0("(", as.character(device_exposure_id), ")") else paste0("'", as.character(device_exposure_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.person_id')
  }

  if (!missing(device_concept_id)) {
    fields <- c(fields, "device_concept_id")
    values <- c(values, if (is.null(device_concept_id)) "NULL" else if (is(device_concept_id, "subQuery")) paste0("(", as.character(device_concept_id), ")") else paste0("'", as.character(device_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_concept_id')
  }

  if (!missing(device_exposure_start_date)) {
    fields <- c(fields, "device_exposure_start_date")
    values <- c(values, if (is.null(device_exposure_start_date)) "NULL" else if (is(device_exposure_start_date, "subQuery")) paste0("(", as.character(device_exposure_start_date), ")") else paste0("'", as.character(device_exposure_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_start_date')
  }

  if (!missing(device_exposure_start_datetime)) {
    fields <- c(fields, "device_exposure_start_datetime")
    values <- c(values, if (is.null(device_exposure_start_datetime)) "NULL" else if (is(device_exposure_start_datetime, "subQuery")) paste0("(", as.character(device_exposure_start_datetime), ")") else paste0("'", as.character(device_exposure_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_start_datetime')
  }

  if (!missing(device_exposure_end_date)) {
    fields <- c(fields, "device_exposure_end_date")
    values <- c(values, if (is.null(device_exposure_end_date)) "NULL" else if (is(device_exposure_end_date, "subQuery")) paste0("(", as.character(device_exposure_end_date), ")") else paste0("'", as.character(device_exposure_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_end_date')
  }

  if (!missing(device_exposure_end_datetime)) {
    fields <- c(fields, "device_exposure_end_datetime")
    values <- c(values, if (is.null(device_exposure_end_datetime)) "NULL" else if (is(device_exposure_end_datetime, "subQuery")) paste0("(", as.character(device_exposure_end_datetime), ")") else paste0("'", as.character(device_exposure_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_end_datetime')
  }

  if (!missing(device_type_concept_id)) {
    fields <- c(fields, "device_type_concept_id")
    values <- c(values, if (is.null(device_type_concept_id)) "NULL" else if (is(device_type_concept_id, "subQuery")) paste0("(", as.character(device_type_concept_id), ")") else paste0("'", as.character(device_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_type_concept_id')
  }

  if (!missing(unique_device_id)) {
    fields <- c(fields, "unique_device_id")
    values <- c(values, if (is.null(unique_device_id)) "NULL" else if (is(unique_device_id, "subQuery")) paste0("(", as.character(unique_device_id), ")") else paste0("'", as.character(unique_device_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.unique_device_id')
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) "NULL" else if (is(quantity, "subQuery")) paste0("(", as.character(quantity), ")") else paste0("'", as.character(quantity), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.quantity')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.visit_detail_id')
  }

  if (!missing(device_source_value)) {
    fields <- c(fields, "device_source_value")
    values <- c(values, if (is.null(device_source_value)) "NULL" else if (is(device_source_value, "subQuery")) paste0("(", as.character(device_source_value), ")") else paste0("'", as.character(device_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_source_value')
  }

  if (!missing(device_source_concept_id)) {
    fields <- c(fields, "device_source_concept_id")
    values <- c(values, if (is.null(device_source_concept_id)) "NULL" else if (is(device_source_concept_id, "subQuery")) paste0("(", as.character(device_source_concept_id), ")") else paste0("'", as.character(device_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_source_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "device_exposure", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_drug_exposure <- function(drug_exposure_id, person_id, drug_concept_id, drug_exposure_start_date, drug_exposure_start_datetime, drug_exposure_end_date, drug_exposure_end_datetime, verbatim_end_date, drug_type_concept_id, stop_reason, refills, quantity, days_supply, sig, route_concept_id, lot_number, provider_id, visit_occurrence_id, visit_detail_id, drug_source_value, drug_source_concept_id, route_source_value, dose_unit_source_value) {
  fields <- c()
  values <- c()
  if (!missing(drug_exposure_id)) {
    fields <- c(fields, "drug_exposure_id")
    values <- c(values, if (is.null(drug_exposure_id)) "NULL" else if (is(drug_exposure_id, "subQuery")) paste0("(", as.character(drug_exposure_id), ")") else paste0("'", as.character(drug_exposure_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.person_id')
  }

  if (!missing(drug_concept_id)) {
    fields <- c(fields, "drug_concept_id")
    values <- c(values, if (is.null(drug_concept_id)) "NULL" else if (is(drug_concept_id, "subQuery")) paste0("(", as.character(drug_concept_id), ")") else paste0("'", as.character(drug_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_concept_id')
  }

  if (!missing(drug_exposure_start_date)) {
    fields <- c(fields, "drug_exposure_start_date")
    values <- c(values, if (is.null(drug_exposure_start_date)) "NULL" else if (is(drug_exposure_start_date, "subQuery")) paste0("(", as.character(drug_exposure_start_date), ")") else paste0("'", as.character(drug_exposure_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_start_date')
  }

  if (!missing(drug_exposure_start_datetime)) {
    fields <- c(fields, "drug_exposure_start_datetime")
    values <- c(values, if (is.null(drug_exposure_start_datetime)) "NULL" else if (is(drug_exposure_start_datetime, "subQuery")) paste0("(", as.character(drug_exposure_start_datetime), ")") else paste0("'", as.character(drug_exposure_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_start_datetime')
  }

  if (!missing(drug_exposure_end_date)) {
    fields <- c(fields, "drug_exposure_end_date")
    values <- c(values, if (is.null(drug_exposure_end_date)) "NULL" else if (is(drug_exposure_end_date, "subQuery")) paste0("(", as.character(drug_exposure_end_date), ")") else paste0("'", as.character(drug_exposure_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_end_date')
  }

  if (!missing(drug_exposure_end_datetime)) {
    fields <- c(fields, "drug_exposure_end_datetime")
    values <- c(values, if (is.null(drug_exposure_end_datetime)) "NULL" else if (is(drug_exposure_end_datetime, "subQuery")) paste0("(", as.character(drug_exposure_end_datetime), ")") else paste0("'", as.character(drug_exposure_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_end_datetime')
  }

  if (!missing(verbatim_end_date)) {
    fields <- c(fields, "verbatim_end_date")
    values <- c(values, if (is.null(verbatim_end_date)) "NULL" else if (is(verbatim_end_date, "subQuery")) paste0("(", as.character(verbatim_end_date), ")") else paste0("'", as.character(verbatim_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.verbatim_end_date')
  }

  if (!missing(drug_type_concept_id)) {
    fields <- c(fields, "drug_type_concept_id")
    values <- c(values, if (is.null(drug_type_concept_id)) "NULL" else if (is(drug_type_concept_id, "subQuery")) paste0("(", as.character(drug_type_concept_id), ")") else paste0("'", as.character(drug_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_type_concept_id')
  }

  if (!missing(stop_reason)) {
    fields <- c(fields, "stop_reason")
    values <- c(values, if (is.null(stop_reason)) "NULL" else if (is(stop_reason, "subQuery")) paste0("(", as.character(stop_reason), ")") else paste0("'", as.character(stop_reason), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.stop_reason')
  }

  if (!missing(refills)) {
    fields <- c(fields, "refills")
    values <- c(values, if (is.null(refills)) "NULL" else if (is(refills, "subQuery")) paste0("(", as.character(refills), ")") else paste0("'", as.character(refills), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.refills')
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) "NULL" else if (is(quantity, "subQuery")) paste0("(", as.character(quantity), ")") else paste0("'", as.character(quantity), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.quantity')
  }

  if (!missing(days_supply)) {
    fields <- c(fields, "days_supply")
    values <- c(values, if (is.null(days_supply)) "NULL" else if (is(days_supply, "subQuery")) paste0("(", as.character(days_supply), ")") else paste0("'", as.character(days_supply), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.days_supply')
  }

  if (!missing(sig)) {
    fields <- c(fields, "sig")
    values <- c(values, if (is.null(sig)) "NULL" else if (is(sig, "subQuery")) paste0("(", as.character(sig), ")") else paste0("'", as.character(sig), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.sig')
  }

  if (!missing(route_concept_id)) {
    fields <- c(fields, "route_concept_id")
    values <- c(values, if (is.null(route_concept_id)) "NULL" else if (is(route_concept_id, "subQuery")) paste0("(", as.character(route_concept_id), ")") else paste0("'", as.character(route_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.route_concept_id')
  }

  if (!missing(lot_number)) {
    fields <- c(fields, "lot_number")
    values <- c(values, if (is.null(lot_number)) "NULL" else if (is(lot_number, "subQuery")) paste0("(", as.character(lot_number), ")") else paste0("'", as.character(lot_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.lot_number')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.visit_detail_id')
  }

  if (!missing(drug_source_value)) {
    fields <- c(fields, "drug_source_value")
    values <- c(values, if (is.null(drug_source_value)) "NULL" else if (is(drug_source_value, "subQuery")) paste0("(", as.character(drug_source_value), ")") else paste0("'", as.character(drug_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_source_value')
  }

  if (!missing(drug_source_concept_id)) {
    fields <- c(fields, "drug_source_concept_id")
    values <- c(values, if (is.null(drug_source_concept_id)) "NULL" else if (is(drug_source_concept_id, "subQuery")) paste0("(", as.character(drug_source_concept_id), ")") else paste0("'", as.character(drug_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_source_concept_id')
  }

  if (!missing(route_source_value)) {
    fields <- c(fields, "route_source_value")
    values <- c(values, if (is.null(route_source_value)) "NULL" else if (is(route_source_value, "subQuery")) paste0("(", as.character(route_source_value), ")") else paste0("'", as.character(route_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.route_source_value')
  }

  if (!missing(dose_unit_source_value)) {
    fields <- c(fields, "dose_unit_source_value")
    values <- c(values, if (is.null(dose_unit_source_value)) "NULL" else if (is(dose_unit_source_value, "subQuery")) paste0("(", as.character(dose_unit_source_value), ")") else paste0("'", as.character(dose_unit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.dose_unit_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "drug_exposure", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_fact_relationship <- function(domain_concept_id_1, fact_id_1, domain_concept_id_2, fact_id_2, relationship_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(domain_concept_id_1)) {
    fields <- c(fields, "domain_concept_id_1")
    values <- c(values, if (is.null(domain_concept_id_1)) "NULL" else if (is(domain_concept_id_1, "subQuery")) paste0("(", as.character(domain_concept_id_1), ")") else paste0("'", as.character(domain_concept_id_1), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.domain_concept_id_1')
  }

  if (!missing(fact_id_1)) {
    fields <- c(fields, "fact_id_1")
    values <- c(values, if (is.null(fact_id_1)) "NULL" else if (is(fact_id_1, "subQuery")) paste0("(", as.character(fact_id_1), ")") else paste0("'", as.character(fact_id_1), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.fact_id_1')
  }

  if (!missing(domain_concept_id_2)) {
    fields <- c(fields, "domain_concept_id_2")
    values <- c(values, if (is.null(domain_concept_id_2)) "NULL" else if (is(domain_concept_id_2, "subQuery")) paste0("(", as.character(domain_concept_id_2), ")") else paste0("'", as.character(domain_concept_id_2), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.domain_concept_id_2')
  }

  if (!missing(fact_id_2)) {
    fields <- c(fields, "fact_id_2")
    values <- c(values, if (is.null(fact_id_2)) "NULL" else if (is(fact_id_2, "subQuery")) paste0("(", as.character(fact_id_2), ")") else paste0("'", as.character(fact_id_2), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.fact_id_2')
  }

  if (!missing(relationship_concept_id)) {
    fields <- c(fields, "relationship_concept_id")
    values <- c(values, if (is.null(relationship_concept_id)) "NULL" else if (is(relationship_concept_id, "subQuery")) paste0("(", as.character(relationship_concept_id), ")") else paste0("'", as.character(relationship_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.relationship_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "fact_relationship", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_measurement <- function(measurement_id, person_id, measurement_concept_id, measurement_date, measurement_datetime, measurement_time, measurement_type_concept_id, operator_concept_id, value_as_number, value_as_concept_id, unit_concept_id, range_low, range_high, provider_id, visit_occurrence_id, visit_detail_id, measurement_source_value, measurement_source_concept_id, unit_source_value, value_source_value) {
  fields <- c()
  values <- c()
  if (!missing(measurement_id)) {
    fields <- c(fields, "measurement_id")
    values <- c(values, if (is.null(measurement_id)) "NULL" else if (is(measurement_id, "subQuery")) paste0("(", as.character(measurement_id), ")") else paste0("'", as.character(measurement_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.person_id')
  }

  if (!missing(measurement_concept_id)) {
    fields <- c(fields, "measurement_concept_id")
    values <- c(values, if (is.null(measurement_concept_id)) "NULL" else if (is(measurement_concept_id, "subQuery")) paste0("(", as.character(measurement_concept_id), ")") else paste0("'", as.character(measurement_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_concept_id')
  }

  if (!missing(measurement_date)) {
    fields <- c(fields, "measurement_date")
    values <- c(values, if (is.null(measurement_date)) "NULL" else if (is(measurement_date, "subQuery")) paste0("(", as.character(measurement_date), ")") else paste0("'", as.character(measurement_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_date')
  }

  if (!missing(measurement_datetime)) {
    fields <- c(fields, "measurement_datetime")
    values <- c(values, if (is.null(measurement_datetime)) "NULL" else if (is(measurement_datetime, "subQuery")) paste0("(", as.character(measurement_datetime), ")") else paste0("'", as.character(measurement_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_datetime')
  }

  if (!missing(measurement_time)) {
    fields <- c(fields, "measurement_time")
    values <- c(values, if (is.null(measurement_time)) "NULL" else if (is(measurement_time, "subQuery")) paste0("(", as.character(measurement_time), ")") else paste0("'", as.character(measurement_time), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_time')
  }

  if (!missing(measurement_type_concept_id)) {
    fields <- c(fields, "measurement_type_concept_id")
    values <- c(values, if (is.null(measurement_type_concept_id)) "NULL" else if (is(measurement_type_concept_id, "subQuery")) paste0("(", as.character(measurement_type_concept_id), ")") else paste0("'", as.character(measurement_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_type_concept_id')
  }

  if (!missing(operator_concept_id)) {
    fields <- c(fields, "operator_concept_id")
    values <- c(values, if (is.null(operator_concept_id)) "NULL" else if (is(operator_concept_id, "subQuery")) paste0("(", as.character(operator_concept_id), ")") else paste0("'", as.character(operator_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.operator_concept_id')
  }

  if (!missing(value_as_number)) {
    fields <- c(fields, "value_as_number")
    values <- c(values, if (is.null(value_as_number)) "NULL" else if (is(value_as_number, "subQuery")) paste0("(", as.character(value_as_number), ")") else paste0("'", as.character(value_as_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.value_as_number')
  }

  if (!missing(value_as_concept_id)) {
    fields <- c(fields, "value_as_concept_id")
    values <- c(values, if (is.null(value_as_concept_id)) "NULL" else if (is(value_as_concept_id, "subQuery")) paste0("(", as.character(value_as_concept_id), ")") else paste0("'", as.character(value_as_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.value_as_concept_id')
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) "NULL" else if (is(unit_concept_id, "subQuery")) paste0("(", as.character(unit_concept_id), ")") else paste0("'", as.character(unit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.unit_concept_id')
  }

  if (!missing(range_low)) {
    fields <- c(fields, "range_low")
    values <- c(values, if (is.null(range_low)) "NULL" else if (is(range_low, "subQuery")) paste0("(", as.character(range_low), ")") else paste0("'", as.character(range_low), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.range_low')
  }

  if (!missing(range_high)) {
    fields <- c(fields, "range_high")
    values <- c(values, if (is.null(range_high)) "NULL" else if (is(range_high, "subQuery")) paste0("(", as.character(range_high), ")") else paste0("'", as.character(range_high), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.range_high')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.visit_detail_id')
  }

  if (!missing(measurement_source_value)) {
    fields <- c(fields, "measurement_source_value")
    values <- c(values, if (is.null(measurement_source_value)) "NULL" else if (is(measurement_source_value, "subQuery")) paste0("(", as.character(measurement_source_value), ")") else paste0("'", as.character(measurement_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_source_value')
  }

  if (!missing(measurement_source_concept_id)) {
    fields <- c(fields, "measurement_source_concept_id")
    values <- c(values, if (is.null(measurement_source_concept_id)) "NULL" else if (is(measurement_source_concept_id, "subQuery")) paste0("(", as.character(measurement_source_concept_id), ")") else paste0("'", as.character(measurement_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_source_concept_id')
  }

  if (!missing(unit_source_value)) {
    fields <- c(fields, "unit_source_value")
    values <- c(values, if (is.null(unit_source_value)) "NULL" else if (is(unit_source_value, "subQuery")) paste0("(", as.character(unit_source_value), ")") else paste0("'", as.character(unit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.unit_source_value')
  }

  if (!missing(value_source_value)) {
    fields <- c(fields, "value_source_value")
    values <- c(values, if (is.null(value_source_value)) "NULL" else if (is(value_source_value, "subQuery")) paste0("(", as.character(value_source_value), ")") else paste0("'", as.character(value_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.value_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "measurement", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_note <- function(note_id, person_id, note_event_id, note_event_field_concept_id, note_date, note_datetime, note_type_concept_id, note_class_concept_id, note_title, note_text, encoding_concept_id, language_concept_id, provider_id, visit_occurrence_id, visit_detail_id, note_source_value) {
  fields <- c()
  values <- c()
  if (!missing(note_id)) {
    fields <- c(fields, "note_id")
    values <- c(values, if (is.null(note_id)) "NULL" else if (is(note_id, "subQuery")) paste0("(", as.character(note_id), ")") else paste0("'", as.character(note_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.person_id')
  }

  if (!missing(note_event_id)) {
    fields <- c(fields, "note_event_id")
    values <- c(values, if (is.null(note_event_id)) "NULL" else if (is(note_event_id, "subQuery")) paste0("(", as.character(note_event_id), ")") else paste0("'", as.character(note_event_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_event_id')
  }

  if (!missing(note_event_field_concept_id)) {
    fields <- c(fields, "note_event_field_concept_id")
    values <- c(values, if (is.null(note_event_field_concept_id)) "NULL" else if (is(note_event_field_concept_id, "subQuery")) paste0("(", as.character(note_event_field_concept_id), ")") else paste0("'", as.character(note_event_field_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_event_field_concept_id')
  }

  if (!missing(note_date)) {
    fields <- c(fields, "note_date")
    values <- c(values, if (is.null(note_date)) "NULL" else if (is(note_date, "subQuery")) paste0("(", as.character(note_date), ")") else paste0("'", as.character(note_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_date')
  }

  if (!missing(note_datetime)) {
    fields <- c(fields, "note_datetime")
    values <- c(values, if (is.null(note_datetime)) "NULL" else if (is(note_datetime, "subQuery")) paste0("(", as.character(note_datetime), ")") else paste0("'", as.character(note_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_datetime')
  }

  if (!missing(note_type_concept_id)) {
    fields <- c(fields, "note_type_concept_id")
    values <- c(values, if (is.null(note_type_concept_id)) "NULL" else if (is(note_type_concept_id, "subQuery")) paste0("(", as.character(note_type_concept_id), ")") else paste0("'", as.character(note_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_type_concept_id')
  }

  if (!missing(note_class_concept_id)) {
    fields <- c(fields, "note_class_concept_id")
    values <- c(values, if (is.null(note_class_concept_id)) "NULL" else if (is(note_class_concept_id, "subQuery")) paste0("(", as.character(note_class_concept_id), ")") else paste0("'", as.character(note_class_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_class_concept_id')
  }

  if (!missing(note_title)) {
    fields <- c(fields, "note_title")
    values <- c(values, if (is.null(note_title)) "NULL" else if (is(note_title, "subQuery")) paste0("(", as.character(note_title), ")") else paste0("'", as.character(note_title), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_title')
  }

  if (!missing(note_text)) {
    fields <- c(fields, "note_text")
    values <- c(values, if (is.null(note_text)) "NULL" else if (is(note_text, "subQuery")) paste0("(", as.character(note_text), ")") else paste0("'", as.character(note_text), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_text')
  }

  if (!missing(encoding_concept_id)) {
    fields <- c(fields, "encoding_concept_id")
    values <- c(values, if (is.null(encoding_concept_id)) "NULL" else if (is(encoding_concept_id, "subQuery")) paste0("(", as.character(encoding_concept_id), ")") else paste0("'", as.character(encoding_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.encoding_concept_id')
  }

  if (!missing(language_concept_id)) {
    fields <- c(fields, "language_concept_id")
    values <- c(values, if (is.null(language_concept_id)) "NULL" else if (is(language_concept_id, "subQuery")) paste0("(", as.character(language_concept_id), ")") else paste0("'", as.character(language_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.language_concept_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.visit_detail_id')
  }

  if (!missing(note_source_value)) {
    fields <- c(fields, "note_source_value")
    values <- c(values, if (is.null(note_source_value)) "NULL" else if (is(note_source_value, "subQuery")) paste0("(", as.character(note_source_value), ")") else paste0("'", as.character(note_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "note", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_note_nlp <- function(note_nlp_id, note_id, section_concept_id, snippet, offset, lexical_variant, note_nlp_concept_id, note_nlp_source_concept_id, nlp_system, nlp_date, nlp_datetime, term_exists, term_temporal, term_modifiers) {
  fields <- c()
  values <- c()
  if (!missing(note_nlp_id)) {
    fields <- c(fields, "note_nlp_id")
    values <- c(values, if (is.null(note_nlp_id)) "NULL" else if (is(note_nlp_id, "subQuery")) paste0("(", as.character(note_nlp_id), ")") else paste0("'", as.character(note_nlp_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.note_nlp_id')
  }

  if (!missing(note_id)) {
    fields <- c(fields, "note_id")
    values <- c(values, if (is.null(note_id)) "NULL" else if (is(note_id, "subQuery")) paste0("(", as.character(note_id), ")") else paste0("'", as.character(note_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.note_id')
  }

  if (!missing(section_concept_id)) {
    fields <- c(fields, "section_concept_id")
    values <- c(values, if (is.null(section_concept_id)) "NULL" else if (is(section_concept_id, "subQuery")) paste0("(", as.character(section_concept_id), ")") else paste0("'", as.character(section_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.section_concept_id')
  }

  if (!missing(snippet)) {
    fields <- c(fields, "snippet")
    values <- c(values, if (is.null(snippet)) "NULL" else if (is(snippet, "subQuery")) paste0("(", as.character(snippet), ")") else paste0("'", as.character(snippet), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.snippet')
  }

  if (!missing(offset)) {
    fields <- c(fields, "offset")
    values <- c(values, if (is.null(offset)) "NULL" else if (is(offset, "subQuery")) paste0("(", as.character(offset), ")") else paste0("'", as.character(offset), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.offset')
  }

  if (!missing(lexical_variant)) {
    fields <- c(fields, "lexical_variant")
    values <- c(values, if (is.null(lexical_variant)) "NULL" else if (is(lexical_variant, "subQuery")) paste0("(", as.character(lexical_variant), ")") else paste0("'", as.character(lexical_variant), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.lexical_variant')
  }

  if (!missing(note_nlp_concept_id)) {
    fields <- c(fields, "note_nlp_concept_id")
    values <- c(values, if (is.null(note_nlp_concept_id)) "NULL" else if (is(note_nlp_concept_id, "subQuery")) paste0("(", as.character(note_nlp_concept_id), ")") else paste0("'", as.character(note_nlp_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.note_nlp_concept_id')
  }

  if (!missing(note_nlp_source_concept_id)) {
    fields <- c(fields, "note_nlp_source_concept_id")
    values <- c(values, if (is.null(note_nlp_source_concept_id)) "NULL" else if (is(note_nlp_source_concept_id, "subQuery")) paste0("(", as.character(note_nlp_source_concept_id), ")") else paste0("'", as.character(note_nlp_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.note_nlp_source_concept_id')
  }

  if (!missing(nlp_system)) {
    fields <- c(fields, "nlp_system")
    values <- c(values, if (is.null(nlp_system)) "NULL" else if (is(nlp_system, "subQuery")) paste0("(", as.character(nlp_system), ")") else paste0("'", as.character(nlp_system), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.nlp_system')
  }

  if (!missing(nlp_date)) {
    fields <- c(fields, "nlp_date")
    values <- c(values, if (is.null(nlp_date)) "NULL" else if (is(nlp_date, "subQuery")) paste0("(", as.character(nlp_date), ")") else paste0("'", as.character(nlp_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.nlp_date')
  }

  if (!missing(nlp_datetime)) {
    fields <- c(fields, "nlp_datetime")
    values <- c(values, if (is.null(nlp_datetime)) "NULL" else if (is(nlp_datetime, "subQuery")) paste0("(", as.character(nlp_datetime), ")") else paste0("'", as.character(nlp_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.nlp_datetime')
  }

  if (!missing(term_exists)) {
    fields <- c(fields, "term_exists")
    values <- c(values, if (is.null(term_exists)) "NULL" else if (is(term_exists, "subQuery")) paste0("(", as.character(term_exists), ")") else paste0("'", as.character(term_exists), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.term_exists')
  }

  if (!missing(term_temporal)) {
    fields <- c(fields, "term_temporal")
    values <- c(values, if (is.null(term_temporal)) "NULL" else if (is(term_temporal, "subQuery")) paste0("(", as.character(term_temporal), ")") else paste0("'", as.character(term_temporal), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.term_temporal')
  }

  if (!missing(term_modifiers)) {
    fields <- c(fields, "term_modifiers")
    values <- c(values, if (is.null(term_modifiers)) "NULL" else if (is(term_modifiers, "subQuery")) paste0("(", as.character(term_modifiers), ")") else paste0("'", as.character(term_modifiers), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.term_modifiers')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "note_nlp", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_observation <- function(observation_id, person_id, observation_concept_id, observation_date, observation_datetime, observation_type_concept_id, value_as_number, value_as_string, value_as_concept_id, qualifier_concept_id, unit_concept_id, provider_id, visit_occurrence_id, visit_detail_id, observation_source_value, observation_source_concept_id, unit_source_value, qualifier_source_value, observation_event_id, obs_event_field_concept_id, value_as_datetime) {
  fields <- c()
  values <- c()
  if (!missing(observation_id)) {
    fields <- c(fields, "observation_id")
    values <- c(values, if (is.null(observation_id)) "NULL" else if (is(observation_id, "subQuery")) paste0("(", as.character(observation_id), ")") else paste0("'", as.character(observation_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.person_id')
  }

  if (!missing(observation_concept_id)) {
    fields <- c(fields, "observation_concept_id")
    values <- c(values, if (is.null(observation_concept_id)) "NULL" else if (is(observation_concept_id, "subQuery")) paste0("(", as.character(observation_concept_id), ")") else paste0("'", as.character(observation_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_concept_id')
  }

  if (!missing(observation_date)) {
    fields <- c(fields, "observation_date")
    values <- c(values, if (is.null(observation_date)) "NULL" else if (is(observation_date, "subQuery")) paste0("(", as.character(observation_date), ")") else paste0("'", as.character(observation_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_date')
  }

  if (!missing(observation_datetime)) {
    fields <- c(fields, "observation_datetime")
    values <- c(values, if (is.null(observation_datetime)) "NULL" else if (is(observation_datetime, "subQuery")) paste0("(", as.character(observation_datetime), ")") else paste0("'", as.character(observation_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_datetime')
  }

  if (!missing(observation_type_concept_id)) {
    fields <- c(fields, "observation_type_concept_id")
    values <- c(values, if (is.null(observation_type_concept_id)) "NULL" else if (is(observation_type_concept_id, "subQuery")) paste0("(", as.character(observation_type_concept_id), ")") else paste0("'", as.character(observation_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_type_concept_id')
  }

  if (!missing(value_as_number)) {
    fields <- c(fields, "value_as_number")
    values <- c(values, if (is.null(value_as_number)) "NULL" else if (is(value_as_number, "subQuery")) paste0("(", as.character(value_as_number), ")") else paste0("'", as.character(value_as_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.value_as_number')
  }

  if (!missing(value_as_string)) {
    fields <- c(fields, "value_as_string")
    values <- c(values, if (is.null(value_as_string)) "NULL" else if (is(value_as_string, "subQuery")) paste0("(", as.character(value_as_string), ")") else paste0("'", as.character(value_as_string), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.value_as_string')
  }

  if (!missing(value_as_concept_id)) {
    fields <- c(fields, "value_as_concept_id")
    values <- c(values, if (is.null(value_as_concept_id)) "NULL" else if (is(value_as_concept_id, "subQuery")) paste0("(", as.character(value_as_concept_id), ")") else paste0("'", as.character(value_as_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.value_as_concept_id')
  }

  if (!missing(qualifier_concept_id)) {
    fields <- c(fields, "qualifier_concept_id")
    values <- c(values, if (is.null(qualifier_concept_id)) "NULL" else if (is(qualifier_concept_id, "subQuery")) paste0("(", as.character(qualifier_concept_id), ")") else paste0("'", as.character(qualifier_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.qualifier_concept_id')
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) "NULL" else if (is(unit_concept_id, "subQuery")) paste0("(", as.character(unit_concept_id), ")") else paste0("'", as.character(unit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.unit_concept_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.visit_detail_id')
  }

  if (!missing(observation_source_value)) {
    fields <- c(fields, "observation_source_value")
    values <- c(values, if (is.null(observation_source_value)) "NULL" else if (is(observation_source_value, "subQuery")) paste0("(", as.character(observation_source_value), ")") else paste0("'", as.character(observation_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_source_value')
  }

  if (!missing(observation_source_concept_id)) {
    fields <- c(fields, "observation_source_concept_id")
    values <- c(values, if (is.null(observation_source_concept_id)) "NULL" else if (is(observation_source_concept_id, "subQuery")) paste0("(", as.character(observation_source_concept_id), ")") else paste0("'", as.character(observation_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_source_concept_id')
  }

  if (!missing(unit_source_value)) {
    fields <- c(fields, "unit_source_value")
    values <- c(values, if (is.null(unit_source_value)) "NULL" else if (is(unit_source_value, "subQuery")) paste0("(", as.character(unit_source_value), ")") else paste0("'", as.character(unit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.unit_source_value')
  }

  if (!missing(qualifier_source_value)) {
    fields <- c(fields, "qualifier_source_value")
    values <- c(values, if (is.null(qualifier_source_value)) "NULL" else if (is(qualifier_source_value, "subQuery")) paste0("(", as.character(qualifier_source_value), ")") else paste0("'", as.character(qualifier_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.qualifier_source_value')
  }

  if (!missing(observation_event_id)) {
    fields <- c(fields, "observation_event_id")
    values <- c(values, if (is.null(observation_event_id)) "NULL" else if (is(observation_event_id, "subQuery")) paste0("(", as.character(observation_event_id), ")") else paste0("'", as.character(observation_event_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_event_id')
  }

  if (!missing(obs_event_field_concept_id)) {
    fields <- c(fields, "obs_event_field_concept_id")
    values <- c(values, if (is.null(obs_event_field_concept_id)) "NULL" else if (is(obs_event_field_concept_id, "subQuery")) paste0("(", as.character(obs_event_field_concept_id), ")") else paste0("'", as.character(obs_event_field_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.obs_event_field_concept_id')
  }

  if (!missing(value_as_datetime)) {
    fields <- c(fields, "value_as_datetime")
    values <- c(values, if (is.null(value_as_datetime)) "NULL" else if (is(value_as_datetime, "subQuery")) paste0("(", as.character(value_as_datetime), ")") else paste0("'", as.character(value_as_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.value_as_datetime')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "observation", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_procedure_occurrence <- function(procedure_occurrence_id, person_id, procedure_concept_id, procedure_date, procedure_datetime, procedure_type_concept_id, modifier_concept_id, quantity, provider_id, visit_occurrence_id, visit_detail_id, procedure_source_value, procedure_source_concept_id, modifier_source_value) {
  fields <- c()
  values <- c()
  if (!missing(procedure_occurrence_id)) {
    fields <- c(fields, "procedure_occurrence_id")
    values <- c(values, if (is.null(procedure_occurrence_id)) "NULL" else if (is(procedure_occurrence_id, "subQuery")) paste0("(", as.character(procedure_occurrence_id), ")") else paste0("'", as.character(procedure_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_occurrence_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.person_id')
  }

  if (!missing(procedure_concept_id)) {
    fields <- c(fields, "procedure_concept_id")
    values <- c(values, if (is.null(procedure_concept_id)) "NULL" else if (is(procedure_concept_id, "subQuery")) paste0("(", as.character(procedure_concept_id), ")") else paste0("'", as.character(procedure_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_concept_id')
  }

  if (!missing(procedure_date)) {
    fields <- c(fields, "procedure_date")
    values <- c(values, if (is.null(procedure_date)) "NULL" else if (is(procedure_date, "subQuery")) paste0("(", as.character(procedure_date), ")") else paste0("'", as.character(procedure_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_date')
  }

  if (!missing(procedure_datetime)) {
    fields <- c(fields, "procedure_datetime")
    values <- c(values, if (is.null(procedure_datetime)) "NULL" else if (is(procedure_datetime, "subQuery")) paste0("(", as.character(procedure_datetime), ")") else paste0("'", as.character(procedure_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_datetime')
  }

  if (!missing(procedure_type_concept_id)) {
    fields <- c(fields, "procedure_type_concept_id")
    values <- c(values, if (is.null(procedure_type_concept_id)) "NULL" else if (is(procedure_type_concept_id, "subQuery")) paste0("(", as.character(procedure_type_concept_id), ")") else paste0("'", as.character(procedure_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_type_concept_id')
  }

  if (!missing(modifier_concept_id)) {
    fields <- c(fields, "modifier_concept_id")
    values <- c(values, if (is.null(modifier_concept_id)) "NULL" else if (is(modifier_concept_id, "subQuery")) paste0("(", as.character(modifier_concept_id), ")") else paste0("'", as.character(modifier_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.modifier_concept_id')
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) "NULL" else if (is(quantity, "subQuery")) paste0("(", as.character(quantity), ")") else paste0("'", as.character(quantity), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.quantity')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.visit_detail_id')
  }

  if (!missing(procedure_source_value)) {
    fields <- c(fields, "procedure_source_value")
    values <- c(values, if (is.null(procedure_source_value)) "NULL" else if (is(procedure_source_value, "subQuery")) paste0("(", as.character(procedure_source_value), ")") else paste0("'", as.character(procedure_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_source_value')
  }

  if (!missing(procedure_source_concept_id)) {
    fields <- c(fields, "procedure_source_concept_id")
    values <- c(values, if (is.null(procedure_source_concept_id)) "NULL" else if (is(procedure_source_concept_id, "subQuery")) paste0("(", as.character(procedure_source_concept_id), ")") else paste0("'", as.character(procedure_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_source_concept_id')
  }

  if (!missing(modifier_source_value)) {
    fields <- c(fields, "modifier_source_value")
    values <- c(values, if (is.null(modifier_source_value)) "NULL" else if (is(modifier_source_value, "subQuery")) paste0("(", as.character(modifier_source_value), ")") else paste0("'", as.character(modifier_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.modifier_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "procedure_occurrence", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_specimen <- function(specimen_id, person_id, specimen_concept_id, specimen_type_concept_id, specimen_date, specimen_datetime, quantity, unit_concept_id, anatomic_site_concept_id, disease_status_concept_id, specimen_source_id, specimen_source_value, unit_source_value, anatomic_site_source_value, disease_status_source_value) {
  fields <- c()
  values <- c()
  if (!missing(specimen_id)) {
    fields <- c(fields, "specimen_id")
    values <- c(values, if (is.null(specimen_id)) "NULL" else if (is(specimen_id, "subQuery")) paste0("(", as.character(specimen_id), ")") else paste0("'", as.character(specimen_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.person_id')
  }

  if (!missing(specimen_concept_id)) {
    fields <- c(fields, "specimen_concept_id")
    values <- c(values, if (is.null(specimen_concept_id)) "NULL" else if (is(specimen_concept_id, "subQuery")) paste0("(", as.character(specimen_concept_id), ")") else paste0("'", as.character(specimen_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_concept_id')
  }

  if (!missing(specimen_type_concept_id)) {
    fields <- c(fields, "specimen_type_concept_id")
    values <- c(values, if (is.null(specimen_type_concept_id)) "NULL" else if (is(specimen_type_concept_id, "subQuery")) paste0("(", as.character(specimen_type_concept_id), ")") else paste0("'", as.character(specimen_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_type_concept_id')
  }

  if (!missing(specimen_date)) {
    fields <- c(fields, "specimen_date")
    values <- c(values, if (is.null(specimen_date)) "NULL" else if (is(specimen_date, "subQuery")) paste0("(", as.character(specimen_date), ")") else paste0("'", as.character(specimen_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_date')
  }

  if (!missing(specimen_datetime)) {
    fields <- c(fields, "specimen_datetime")
    values <- c(values, if (is.null(specimen_datetime)) "NULL" else if (is(specimen_datetime, "subQuery")) paste0("(", as.character(specimen_datetime), ")") else paste0("'", as.character(specimen_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_datetime')
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) "NULL" else if (is(quantity, "subQuery")) paste0("(", as.character(quantity), ")") else paste0("'", as.character(quantity), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.quantity')
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) "NULL" else if (is(unit_concept_id, "subQuery")) paste0("(", as.character(unit_concept_id), ")") else paste0("'", as.character(unit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.unit_concept_id')
  }

  if (!missing(anatomic_site_concept_id)) {
    fields <- c(fields, "anatomic_site_concept_id")
    values <- c(values, if (is.null(anatomic_site_concept_id)) "NULL" else if (is(anatomic_site_concept_id, "subQuery")) paste0("(", as.character(anatomic_site_concept_id), ")") else paste0("'", as.character(anatomic_site_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.anatomic_site_concept_id')
  }

  if (!missing(disease_status_concept_id)) {
    fields <- c(fields, "disease_status_concept_id")
    values <- c(values, if (is.null(disease_status_concept_id)) "NULL" else if (is(disease_status_concept_id, "subQuery")) paste0("(", as.character(disease_status_concept_id), ")") else paste0("'", as.character(disease_status_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.disease_status_concept_id')
  }

  if (!missing(specimen_source_id)) {
    fields <- c(fields, "specimen_source_id")
    values <- c(values, if (is.null(specimen_source_id)) "NULL" else if (is(specimen_source_id, "subQuery")) paste0("(", as.character(specimen_source_id), ")") else paste0("'", as.character(specimen_source_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_source_id')
  }

  if (!missing(specimen_source_value)) {
    fields <- c(fields, "specimen_source_value")
    values <- c(values, if (is.null(specimen_source_value)) "NULL" else if (is(specimen_source_value, "subQuery")) paste0("(", as.character(specimen_source_value), ")") else paste0("'", as.character(specimen_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_source_value')
  }

  if (!missing(unit_source_value)) {
    fields <- c(fields, "unit_source_value")
    values <- c(values, if (is.null(unit_source_value)) "NULL" else if (is(unit_source_value, "subQuery")) paste0("(", as.character(unit_source_value), ")") else paste0("'", as.character(unit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.unit_source_value')
  }

  if (!missing(anatomic_site_source_value)) {
    fields <- c(fields, "anatomic_site_source_value")
    values <- c(values, if (is.null(anatomic_site_source_value)) "NULL" else if (is(anatomic_site_source_value, "subQuery")) paste0("(", as.character(anatomic_site_source_value), ")") else paste0("'", as.character(anatomic_site_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.anatomic_site_source_value')
  }

  if (!missing(disease_status_source_value)) {
    fields <- c(fields, "disease_status_source_value")
    values <- c(values, if (is.null(disease_status_source_value)) "NULL" else if (is(disease_status_source_value, "subQuery")) paste0("(", as.character(disease_status_source_value), ")") else paste0("'", as.character(disease_status_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.disease_status_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "specimen", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_visit_detail <- function(visit_detail_id, person_id, visit_detail_concept_id, visit_detail_start_date, visit_detail_start_datetime, visit_detail_end_date, visit_detail_end_datetime, visit_detail_type_concept_id, provider_id, care_site_id, visit_detail_source_value, visit_detail_source_concept_id, admitting_source_value, admitting_source_concept_id, admitted_from_source_value, admitted_from_concept_id, preceding_visit_detail_id, visit_detail_parent_id, visit_occurrence_id) {
  fields <- c()
  values <- c()
  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.person_id')
  }

  if (!missing(visit_detail_concept_id)) {
    fields <- c(fields, "visit_detail_concept_id")
    values <- c(values, if (is.null(visit_detail_concept_id)) "NULL" else if (is(visit_detail_concept_id, "subQuery")) paste0("(", as.character(visit_detail_concept_id), ")") else paste0("'", as.character(visit_detail_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_concept_id')
  }

  if (!missing(visit_detail_start_date)) {
    fields <- c(fields, "visit_detail_start_date")
    values <- c(values, if (is.null(visit_detail_start_date)) "NULL" else if (is(visit_detail_start_date, "subQuery")) paste0("(", as.character(visit_detail_start_date), ")") else paste0("'", as.character(visit_detail_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_start_date')
  }

  if (!missing(visit_detail_start_datetime)) {
    fields <- c(fields, "visit_detail_start_datetime")
    values <- c(values, if (is.null(visit_detail_start_datetime)) "NULL" else if (is(visit_detail_start_datetime, "subQuery")) paste0("(", as.character(visit_detail_start_datetime), ")") else paste0("'", as.character(visit_detail_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_start_datetime')
  }

  if (!missing(visit_detail_end_date)) {
    fields <- c(fields, "visit_detail_end_date")
    values <- c(values, if (is.null(visit_detail_end_date)) "NULL" else if (is(visit_detail_end_date, "subQuery")) paste0("(", as.character(visit_detail_end_date), ")") else paste0("'", as.character(visit_detail_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_end_date')
  }

  if (!missing(visit_detail_end_datetime)) {
    fields <- c(fields, "visit_detail_end_datetime")
    values <- c(values, if (is.null(visit_detail_end_datetime)) "NULL" else if (is(visit_detail_end_datetime, "subQuery")) paste0("(", as.character(visit_detail_end_datetime), ")") else paste0("'", as.character(visit_detail_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_end_datetime')
  }

  if (!missing(visit_detail_type_concept_id)) {
    fields <- c(fields, "visit_detail_type_concept_id")
    values <- c(values, if (is.null(visit_detail_type_concept_id)) "NULL" else if (is(visit_detail_type_concept_id, "subQuery")) paste0("(", as.character(visit_detail_type_concept_id), ")") else paste0("'", as.character(visit_detail_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_type_concept_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.provider_id')
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.care_site_id')
  }

  if (!missing(visit_detail_source_value)) {
    fields <- c(fields, "visit_detail_source_value")
    values <- c(values, if (is.null(visit_detail_source_value)) "NULL" else if (is(visit_detail_source_value, "subQuery")) paste0("(", as.character(visit_detail_source_value), ")") else paste0("'", as.character(visit_detail_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_source_value')
  }

  if (!missing(visit_detail_source_concept_id)) {
    fields <- c(fields, "visit_detail_source_concept_id")
    values <- c(values, if (is.null(visit_detail_source_concept_id)) "NULL" else if (is(visit_detail_source_concept_id, "subQuery")) paste0("(", as.character(visit_detail_source_concept_id), ")") else paste0("'", as.character(visit_detail_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_source_concept_id')
  }

  if (!missing(admitting_source_value)) {
    fields <- c(fields, "admitting_source_value")
    values <- c(values, if (is.null(admitting_source_value)) "NULL" else if (is(admitting_source_value, "subQuery")) paste0("(", as.character(admitting_source_value), ")") else paste0("'", as.character(admitting_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.admitting_source_value')
  }

  if (!missing(admitting_source_concept_id)) {
    fields <- c(fields, "admitting_source_concept_id")
    values <- c(values, if (is.null(admitting_source_concept_id)) "NULL" else if (is(admitting_source_concept_id, "subQuery")) paste0("(", as.character(admitting_source_concept_id), ")") else paste0("'", as.character(admitting_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.admitting_source_concept_id')
  }

  if (!missing(admitted_from_source_value)) {
    fields <- c(fields, "admitted_from_source_value")
    values <- c(values, if (is.null(admitted_from_source_value)) "NULL" else if (is(admitted_from_source_value, "subQuery")) paste0("(", as.character(admitted_from_source_value), ")") else paste0("'", as.character(admitted_from_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.admitted_from_source_value')
  }

  if (!missing(admitted_from_concept_id)) {
    fields <- c(fields, "admitted_from_concept_id")
    values <- c(values, if (is.null(admitted_from_concept_id)) "NULL" else if (is(admitted_from_concept_id, "subQuery")) paste0("(", as.character(admitted_from_concept_id), ")") else paste0("'", as.character(admitted_from_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.admitted_from_concept_id')
  }

  if (!missing(preceding_visit_detail_id)) {
    fields <- c(fields, "preceding_visit_detail_id")
    values <- c(values, if (is.null(preceding_visit_detail_id)) "NULL" else if (is(preceding_visit_detail_id, "subQuery")) paste0("(", as.character(preceding_visit_detail_id), ")") else paste0("'", as.character(preceding_visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.preceding_visit_detail_id')
  }

  if (!missing(visit_detail_parent_id)) {
    fields <- c(fields, "visit_detail_parent_id")
    values <- c(values, if (is.null(visit_detail_parent_id)) "NULL" else if (is(visit_detail_parent_id, "subQuery")) paste0("(", as.character(visit_detail_parent_id), ")") else paste0("'", as.character(visit_detail_parent_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_parent_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_occurrence_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "visit_detail", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_cohort <- function(cohort_definition_id, subject_id, cohort_start_date, cohort_end_date) {
  fields <- c()
  values <- c()
  if (!missing(cohort_definition_id)) {
    fields <- c(fields, "cohort_definition_id")
    values <- c(values, if (is.null(cohort_definition_id)) "NULL" else if (is(cohort_definition_id, "subQuery")) paste0("(", as.character(cohort_definition_id), ")") else paste0("'", as.character(cohort_definition_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort.cohort_definition_id')
  }

  if (!missing(subject_id)) {
    fields <- c(fields, "subject_id")
    values <- c(values, if (is.null(subject_id)) "NULL" else if (is(subject_id, "subQuery")) paste0("(", as.character(subject_id), ")") else paste0("'", as.character(subject_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort.subject_id')
  }

  if (!missing(cohort_start_date)) {
    fields <- c(fields, "cohort_start_date")
    values <- c(values, if (is.null(cohort_start_date)) "NULL" else if (is(cohort_start_date, "subQuery")) paste0("(", as.character(cohort_start_date), ")") else paste0("'", as.character(cohort_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort.cohort_start_date')
  }

  if (!missing(cohort_end_date)) {
    fields <- c(fields, "cohort_end_date")
    values <- c(values, if (is.null(cohort_end_date)) "NULL" else if (is(cohort_end_date, "subQuery")) paste0("(", as.character(cohort_end_date), ")") else paste0("'", as.character(cohort_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort.cohort_end_date')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "cohort", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_condition_era <- function(condition_era_id, person_id, condition_concept_id, condition_era_start_datetime, condition_era_end_datetime, condition_occurrence_count) {
  fields <- c()
  values <- c()
  if (!missing(condition_era_id)) {
    fields <- c(fields, "condition_era_id")
    values <- c(values, if (is.null(condition_era_id)) "NULL" else if (is(condition_era_id, "subQuery")) paste0("(", as.character(condition_era_id), ")") else paste0("'", as.character(condition_era_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_era_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.person_id')
  }

  if (!missing(condition_concept_id)) {
    fields <- c(fields, "condition_concept_id")
    values <- c(values, if (is.null(condition_concept_id)) "NULL" else if (is(condition_concept_id, "subQuery")) paste0("(", as.character(condition_concept_id), ")") else paste0("'", as.character(condition_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_concept_id')
  }

  if (!missing(condition_era_start_datetime)) {
    fields <- c(fields, "condition_era_start_datetime")
    values <- c(values, if (is.null(condition_era_start_datetime)) "NULL" else if (is(condition_era_start_datetime, "subQuery")) paste0("(", as.character(condition_era_start_datetime), ")") else paste0("'", as.character(condition_era_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_era_start_datetime')
  }

  if (!missing(condition_era_end_datetime)) {
    fields <- c(fields, "condition_era_end_datetime")
    values <- c(values, if (is.null(condition_era_end_datetime)) "NULL" else if (is(condition_era_end_datetime, "subQuery")) paste0("(", as.character(condition_era_end_datetime), ")") else paste0("'", as.character(condition_era_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_era_end_datetime')
  }

  if (!missing(condition_occurrence_count)) {
    fields <- c(fields, "condition_occurrence_count")
    values <- c(values, if (is.null(condition_occurrence_count)) "NULL" else if (is(condition_occurrence_count, "subQuery")) paste0("(", as.character(condition_occurrence_count), ")") else paste0("'", as.character(condition_occurrence_count), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_occurrence_count')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "condition_era", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_dose_era <- function(dose_era_id, person_id, drug_concept_id, unit_concept_id, dose_value, dose_era_start_datetime, dose_era_end_datetime) {
  fields <- c()
  values <- c()
  if (!missing(dose_era_id)) {
    fields <- c(fields, "dose_era_id")
    values <- c(values, if (is.null(dose_era_id)) "NULL" else if (is(dose_era_id, "subQuery")) paste0("(", as.character(dose_era_id), ")") else paste0("'", as.character(dose_era_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.dose_era_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.person_id')
  }

  if (!missing(drug_concept_id)) {
    fields <- c(fields, "drug_concept_id")
    values <- c(values, if (is.null(drug_concept_id)) "NULL" else if (is(drug_concept_id, "subQuery")) paste0("(", as.character(drug_concept_id), ")") else paste0("'", as.character(drug_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.drug_concept_id')
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) "NULL" else if (is(unit_concept_id, "subQuery")) paste0("(", as.character(unit_concept_id), ")") else paste0("'", as.character(unit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.unit_concept_id')
  }

  if (!missing(dose_value)) {
    fields <- c(fields, "dose_value")
    values <- c(values, if (is.null(dose_value)) "NULL" else if (is(dose_value, "subQuery")) paste0("(", as.character(dose_value), ")") else paste0("'", as.character(dose_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.dose_value')
  }

  if (!missing(dose_era_start_datetime)) {
    fields <- c(fields, "dose_era_start_datetime")
    values <- c(values, if (is.null(dose_era_start_datetime)) "NULL" else if (is(dose_era_start_datetime, "subQuery")) paste0("(", as.character(dose_era_start_datetime), ")") else paste0("'", as.character(dose_era_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.dose_era_start_datetime')
  }

  if (!missing(dose_era_end_datetime)) {
    fields <- c(fields, "dose_era_end_datetime")
    values <- c(values, if (is.null(dose_era_end_datetime)) "NULL" else if (is(dose_era_end_datetime, "subQuery")) paste0("(", as.character(dose_era_end_datetime), ")") else paste0("'", as.character(dose_era_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.dose_era_end_datetime')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "dose_era", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_drug_era <- function(drug_era_id, person_id, drug_concept_id, drug_era_start_datetime, drug_era_end_datetime, drug_exposure_count, gap_days) {
  fields <- c()
  values <- c()
  if (!missing(drug_era_id)) {
    fields <- c(fields, "drug_era_id")
    values <- c(values, if (is.null(drug_era_id)) "NULL" else if (is(drug_era_id, "subQuery")) paste0("(", as.character(drug_era_id), ")") else paste0("'", as.character(drug_era_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_era_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.person_id')
  }

  if (!missing(drug_concept_id)) {
    fields <- c(fields, "drug_concept_id")
    values <- c(values, if (is.null(drug_concept_id)) "NULL" else if (is(drug_concept_id, "subQuery")) paste0("(", as.character(drug_concept_id), ")") else paste0("'", as.character(drug_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_concept_id')
  }

  if (!missing(drug_era_start_datetime)) {
    fields <- c(fields, "drug_era_start_datetime")
    values <- c(values, if (is.null(drug_era_start_datetime)) "NULL" else if (is(drug_era_start_datetime, "subQuery")) paste0("(", as.character(drug_era_start_datetime), ")") else paste0("'", as.character(drug_era_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_era_start_datetime')
  }

  if (!missing(drug_era_end_datetime)) {
    fields <- c(fields, "drug_era_end_datetime")
    values <- c(values, if (is.null(drug_era_end_datetime)) "NULL" else if (is(drug_era_end_datetime, "subQuery")) paste0("(", as.character(drug_era_end_datetime), ")") else paste0("'", as.character(drug_era_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_era_end_datetime')
  }

  if (!missing(drug_exposure_count)) {
    fields <- c(fields, "drug_exposure_count")
    values <- c(values, if (is.null(drug_exposure_count)) "NULL" else if (is(drug_exposure_count, "subQuery")) paste0("(", as.character(drug_exposure_count), ")") else paste0("'", as.character(drug_exposure_count), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_exposure_count')
  }

  if (!missing(gap_days)) {
    fields <- c(fields, "gap_days")
    values <- c(values, if (is.null(gap_days)) "NULL" else if (is(gap_days, "subQuery")) paste0("(", as.character(gap_days), ")") else paste0("'", as.character(gap_days), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.gap_days')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "drug_era", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_cost <- function(cost_id, person_id, cost_event_id, cost_event_field_concept_id, cost_concept_id, cost_type_concept_id, cost_source_concept_id, cost_source_value, currency_concept_id, cost, incurred_date, billed_date, paid_date, revenue_code_concept_id, drg_concept_id, revenue_code_source_value, drg_source_value, payer_plan_period_id) {
  fields <- c()
  values <- c()
  if (!missing(cost_id)) {
    fields <- c(fields, "cost_id")
    values <- c(values, if (is.null(cost_id)) "NULL" else if (is(cost_id, "subQuery")) paste0("(", as.character(cost_id), ")") else paste0("'", as.character(cost_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.person_id')
  }

  if (!missing(cost_event_id)) {
    fields <- c(fields, "cost_event_id")
    values <- c(values, if (is.null(cost_event_id)) "NULL" else if (is(cost_event_id, "subQuery")) paste0("(", as.character(cost_event_id), ")") else paste0("'", as.character(cost_event_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_event_id')
  }

  if (!missing(cost_event_field_concept_id)) {
    fields <- c(fields, "cost_event_field_concept_id")
    values <- c(values, if (is.null(cost_event_field_concept_id)) "NULL" else if (is(cost_event_field_concept_id, "subQuery")) paste0("(", as.character(cost_event_field_concept_id), ")") else paste0("'", as.character(cost_event_field_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_event_field_concept_id')
  }

  if (!missing(cost_concept_id)) {
    fields <- c(fields, "cost_concept_id")
    values <- c(values, if (is.null(cost_concept_id)) "NULL" else if (is(cost_concept_id, "subQuery")) paste0("(", as.character(cost_concept_id), ")") else paste0("'", as.character(cost_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_concept_id')
  }

  if (!missing(cost_type_concept_id)) {
    fields <- c(fields, "cost_type_concept_id")
    values <- c(values, if (is.null(cost_type_concept_id)) "NULL" else if (is(cost_type_concept_id, "subQuery")) paste0("(", as.character(cost_type_concept_id), ")") else paste0("'", as.character(cost_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_type_concept_id')
  }

  if (!missing(cost_source_concept_id)) {
    fields <- c(fields, "cost_source_concept_id")
    values <- c(values, if (is.null(cost_source_concept_id)) "NULL" else if (is(cost_source_concept_id, "subQuery")) paste0("(", as.character(cost_source_concept_id), ")") else paste0("'", as.character(cost_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_source_concept_id')
  }

  if (!missing(cost_source_value)) {
    fields <- c(fields, "cost_source_value")
    values <- c(values, if (is.null(cost_source_value)) "NULL" else if (is(cost_source_value, "subQuery")) paste0("(", as.character(cost_source_value), ")") else paste0("'", as.character(cost_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_source_value')
  }

  if (!missing(currency_concept_id)) {
    fields <- c(fields, "currency_concept_id")
    values <- c(values, if (is.null(currency_concept_id)) "NULL" else if (is(currency_concept_id, "subQuery")) paste0("(", as.character(currency_concept_id), ")") else paste0("'", as.character(currency_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.currency_concept_id')
  }

  if (!missing(cost)) {
    fields <- c(fields, "cost")
    values <- c(values, if (is.null(cost)) "NULL" else if (is(cost, "subQuery")) paste0("(", as.character(cost), ")") else paste0("'", as.character(cost), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost')
  }

  if (!missing(incurred_date)) {
    fields <- c(fields, "incurred_date")
    values <- c(values, if (is.null(incurred_date)) "NULL" else if (is(incurred_date, "subQuery")) paste0("(", as.character(incurred_date), ")") else paste0("'", as.character(incurred_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.incurred_date')
  }

  if (!missing(billed_date)) {
    fields <- c(fields, "billed_date")
    values <- c(values, if (is.null(billed_date)) "NULL" else if (is(billed_date, "subQuery")) paste0("(", as.character(billed_date), ")") else paste0("'", as.character(billed_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.billed_date')
  }

  if (!missing(paid_date)) {
    fields <- c(fields, "paid_date")
    values <- c(values, if (is.null(paid_date)) "NULL" else if (is(paid_date, "subQuery")) paste0("(", as.character(paid_date), ")") else paste0("'", as.character(paid_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.paid_date')
  }

  if (!missing(revenue_code_concept_id)) {
    fields <- c(fields, "revenue_code_concept_id")
    values <- c(values, if (is.null(revenue_code_concept_id)) "NULL" else if (is(revenue_code_concept_id, "subQuery")) paste0("(", as.character(revenue_code_concept_id), ")") else paste0("'", as.character(revenue_code_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.revenue_code_concept_id')
  }

  if (!missing(drg_concept_id)) {
    fields <- c(fields, "drg_concept_id")
    values <- c(values, if (is.null(drg_concept_id)) "NULL" else if (is(drg_concept_id, "subQuery")) paste0("(", as.character(drg_concept_id), ")") else paste0("'", as.character(drg_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.drg_concept_id')
  }

  if (!missing(revenue_code_source_value)) {
    fields <- c(fields, "revenue_code_source_value")
    values <- c(values, if (is.null(revenue_code_source_value)) "NULL" else if (is(revenue_code_source_value, "subQuery")) paste0("(", as.character(revenue_code_source_value), ")") else paste0("'", as.character(revenue_code_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.revenue_code_source_value')
  }

  if (!missing(drg_source_value)) {
    fields <- c(fields, "drg_source_value")
    values <- c(values, if (is.null(drg_source_value)) "NULL" else if (is(drg_source_value, "subQuery")) paste0("(", as.character(drg_source_value), ")") else paste0("'", as.character(drg_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.drg_source_value')
  }

  if (!missing(payer_plan_period_id)) {
    fields <- c(fields, "payer_plan_period_id")
    values <- c(values, if (is.null(payer_plan_period_id)) "NULL" else if (is(payer_plan_period_id, "subQuery")) paste0("(", as.character(payer_plan_period_id), ")") else paste0("'", as.character(payer_plan_period_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.payer_plan_period_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "cost", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_payer_plan_period <- function(payer_plan_period_id, person_id, contract_person_id, payer_plan_period_start_date, payer_plan_period_end_date, payer_concept_id, payer_source_value, payer_source_concept_id, plan_concept_id, plan_source_value, plan_source_concept_id, contract_concept_id, contract_source_value, contract_source_concept_id, sponsor_concept_id, sponsor_source_value, sponsor_source_concept_id, family_source_value, stop_reason_concept_id, stop_reason_source_value, stop_reason_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(payer_plan_period_id)) {
    fields <- c(fields, "payer_plan_period_id")
    values <- c(values, if (is.null(payer_plan_period_id)) "NULL" else if (is(payer_plan_period_id, "subQuery")) paste0("(", as.character(payer_plan_period_id), ")") else paste0("'", as.character(payer_plan_period_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_plan_period_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.person_id')
  }

  if (!missing(contract_person_id)) {
    fields <- c(fields, "contract_person_id")
    values <- c(values, if (is.null(contract_person_id)) "NULL" else if (is(contract_person_id, "subQuery")) paste0("(", as.character(contract_person_id), ")") else paste0("'", as.character(contract_person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.contract_person_id')
  }

  if (!missing(payer_plan_period_start_date)) {
    fields <- c(fields, "payer_plan_period_start_date")
    values <- c(values, if (is.null(payer_plan_period_start_date)) "NULL" else if (is(payer_plan_period_start_date, "subQuery")) paste0("(", as.character(payer_plan_period_start_date), ")") else paste0("'", as.character(payer_plan_period_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_plan_period_start_date')
  }

  if (!missing(payer_plan_period_end_date)) {
    fields <- c(fields, "payer_plan_period_end_date")
    values <- c(values, if (is.null(payer_plan_period_end_date)) "NULL" else if (is(payer_plan_period_end_date, "subQuery")) paste0("(", as.character(payer_plan_period_end_date), ")") else paste0("'", as.character(payer_plan_period_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_plan_period_end_date')
  }

  if (!missing(payer_concept_id)) {
    fields <- c(fields, "payer_concept_id")
    values <- c(values, if (is.null(payer_concept_id)) "NULL" else if (is(payer_concept_id, "subQuery")) paste0("(", as.character(payer_concept_id), ")") else paste0("'", as.character(payer_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_concept_id')
  }

  if (!missing(payer_source_value)) {
    fields <- c(fields, "payer_source_value")
    values <- c(values, if (is.null(payer_source_value)) "NULL" else if (is(payer_source_value, "subQuery")) paste0("(", as.character(payer_source_value), ")") else paste0("'", as.character(payer_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_source_value')
  }

  if (!missing(payer_source_concept_id)) {
    fields <- c(fields, "payer_source_concept_id")
    values <- c(values, if (is.null(payer_source_concept_id)) "NULL" else if (is(payer_source_concept_id, "subQuery")) paste0("(", as.character(payer_source_concept_id), ")") else paste0("'", as.character(payer_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_source_concept_id')
  }

  if (!missing(plan_concept_id)) {
    fields <- c(fields, "plan_concept_id")
    values <- c(values, if (is.null(plan_concept_id)) "NULL" else if (is(plan_concept_id, "subQuery")) paste0("(", as.character(plan_concept_id), ")") else paste0("'", as.character(plan_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.plan_concept_id')
  }

  if (!missing(plan_source_value)) {
    fields <- c(fields, "plan_source_value")
    values <- c(values, if (is.null(plan_source_value)) "NULL" else if (is(plan_source_value, "subQuery")) paste0("(", as.character(plan_source_value), ")") else paste0("'", as.character(plan_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.plan_source_value')
  }

  if (!missing(plan_source_concept_id)) {
    fields <- c(fields, "plan_source_concept_id")
    values <- c(values, if (is.null(plan_source_concept_id)) "NULL" else if (is(plan_source_concept_id, "subQuery")) paste0("(", as.character(plan_source_concept_id), ")") else paste0("'", as.character(plan_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.plan_source_concept_id')
  }

  if (!missing(contract_concept_id)) {
    fields <- c(fields, "contract_concept_id")
    values <- c(values, if (is.null(contract_concept_id)) "NULL" else if (is(contract_concept_id, "subQuery")) paste0("(", as.character(contract_concept_id), ")") else paste0("'", as.character(contract_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.contract_concept_id')
  }

  if (!missing(contract_source_value)) {
    fields <- c(fields, "contract_source_value")
    values <- c(values, if (is.null(contract_source_value)) "NULL" else if (is(contract_source_value, "subQuery")) paste0("(", as.character(contract_source_value), ")") else paste0("'", as.character(contract_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.contract_source_value')
  }

  if (!missing(contract_source_concept_id)) {
    fields <- c(fields, "contract_source_concept_id")
    values <- c(values, if (is.null(contract_source_concept_id)) "NULL" else if (is(contract_source_concept_id, "subQuery")) paste0("(", as.character(contract_source_concept_id), ")") else paste0("'", as.character(contract_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.contract_source_concept_id')
  }

  if (!missing(sponsor_concept_id)) {
    fields <- c(fields, "sponsor_concept_id")
    values <- c(values, if (is.null(sponsor_concept_id)) "NULL" else if (is(sponsor_concept_id, "subQuery")) paste0("(", as.character(sponsor_concept_id), ")") else paste0("'", as.character(sponsor_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.sponsor_concept_id')
  }

  if (!missing(sponsor_source_value)) {
    fields <- c(fields, "sponsor_source_value")
    values <- c(values, if (is.null(sponsor_source_value)) "NULL" else if (is(sponsor_source_value, "subQuery")) paste0("(", as.character(sponsor_source_value), ")") else paste0("'", as.character(sponsor_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.sponsor_source_value')
  }

  if (!missing(sponsor_source_concept_id)) {
    fields <- c(fields, "sponsor_source_concept_id")
    values <- c(values, if (is.null(sponsor_source_concept_id)) "NULL" else if (is(sponsor_source_concept_id, "subQuery")) paste0("(", as.character(sponsor_source_concept_id), ")") else paste0("'", as.character(sponsor_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.sponsor_source_concept_id')
  }

  if (!missing(family_source_value)) {
    fields <- c(fields, "family_source_value")
    values <- c(values, if (is.null(family_source_value)) "NULL" else if (is(family_source_value, "subQuery")) paste0("(", as.character(family_source_value), ")") else paste0("'", as.character(family_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.family_source_value')
  }

  if (!missing(stop_reason_concept_id)) {
    fields <- c(fields, "stop_reason_concept_id")
    values <- c(values, if (is.null(stop_reason_concept_id)) "NULL" else if (is(stop_reason_concept_id, "subQuery")) paste0("(", as.character(stop_reason_concept_id), ")") else paste0("'", as.character(stop_reason_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.stop_reason_concept_id')
  }

  if (!missing(stop_reason_source_value)) {
    fields <- c(fields, "stop_reason_source_value")
    values <- c(values, if (is.null(stop_reason_source_value)) "NULL" else if (is(stop_reason_source_value, "subQuery")) paste0("(", as.character(stop_reason_source_value), ")") else paste0("'", as.character(stop_reason_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.stop_reason_source_value')
  }

  if (!missing(stop_reason_source_concept_id)) {
    fields <- c(fields, "stop_reason_source_concept_id")
    values <- c(values, if (is.null(stop_reason_source_concept_id)) "NULL" else if (is(stop_reason_source_concept_id, "subQuery")) paste0("(", as.character(stop_reason_source_concept_id), ")") else paste0("'", as.character(stop_reason_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.stop_reason_source_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "payer_plan_period", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_care_site <- function(care_site_id, care_site_name, place_of_service_concept_id, location_id, care_site_source_value, place_of_service_source_value) {
  fields <- c()
  values <- c()
  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.care_site_id')
  }

  if (!missing(care_site_name)) {
    fields <- c(fields, "care_site_name")
    values <- c(values, if (is.null(care_site_name)) "NULL" else if (is(care_site_name, "subQuery")) paste0("(", as.character(care_site_name), ")") else paste0("'", as.character(care_site_name), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.care_site_name')
  }

  if (!missing(place_of_service_concept_id)) {
    fields <- c(fields, "place_of_service_concept_id")
    values <- c(values, if (is.null(place_of_service_concept_id)) "NULL" else if (is(place_of_service_concept_id, "subQuery")) paste0("(", as.character(place_of_service_concept_id), ")") else paste0("'", as.character(place_of_service_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.place_of_service_concept_id')
  }

  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) "NULL" else if (is(location_id, "subQuery")) paste0("(", as.character(location_id), ")") else paste0("'", as.character(location_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.location_id')
  }

  if (!missing(care_site_source_value)) {
    fields <- c(fields, "care_site_source_value")
    values <- c(values, if (is.null(care_site_source_value)) "NULL" else if (is(care_site_source_value, "subQuery")) paste0("(", as.character(care_site_source_value), ")") else paste0("'", as.character(care_site_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.care_site_source_value')
  }

  if (!missing(place_of_service_source_value)) {
    fields <- c(fields, "place_of_service_source_value")
    values <- c(values, if (is.null(place_of_service_source_value)) "NULL" else if (is(place_of_service_source_value, "subQuery")) paste0("(", as.character(place_of_service_source_value), ")") else paste0("'", as.character(place_of_service_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.place_of_service_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "care_site", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_location <- function(location_id, address_1, address_2, city, state, zip, county, country, location_source_value, latitude, longitude) {
  fields <- c()
  values <- c()
  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) "NULL" else if (is(location_id, "subQuery")) paste0("(", as.character(location_id), ")") else paste0("'", as.character(location_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.location_id')
  }

  if (!missing(address_1)) {
    fields <- c(fields, "address_1")
    values <- c(values, if (is.null(address_1)) "NULL" else if (is(address_1, "subQuery")) paste0("(", as.character(address_1), ")") else paste0("'", as.character(address_1), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.address_1')
  }

  if (!missing(address_2)) {
    fields <- c(fields, "address_2")
    values <- c(values, if (is.null(address_2)) "NULL" else if (is(address_2, "subQuery")) paste0("(", as.character(address_2), ")") else paste0("'", as.character(address_2), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.address_2')
  }

  if (!missing(city)) {
    fields <- c(fields, "city")
    values <- c(values, if (is.null(city)) "NULL" else if (is(city, "subQuery")) paste0("(", as.character(city), ")") else paste0("'", as.character(city), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.city')
  }

  if (!missing(state)) {
    fields <- c(fields, "state")
    values <- c(values, if (is.null(state)) "NULL" else if (is(state, "subQuery")) paste0("(", as.character(state), ")") else paste0("'", as.character(state), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.state')
  }

  if (!missing(zip)) {
    fields <- c(fields, "zip")
    values <- c(values, if (is.null(zip)) "NULL" else if (is(zip, "subQuery")) paste0("(", as.character(zip), ")") else paste0("'", as.character(zip), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.zip')
  }

  if (!missing(county)) {
    fields <- c(fields, "county")
    values <- c(values, if (is.null(county)) "NULL" else if (is(county, "subQuery")) paste0("(", as.character(county), ")") else paste0("'", as.character(county), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.county')
  }

  if (!missing(country)) {
    fields <- c(fields, "country")
    values <- c(values, if (is.null(country)) "NULL" else if (is(country, "subQuery")) paste0("(", as.character(country), ")") else paste0("'", as.character(country), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.country')
  }

  if (!missing(location_source_value)) {
    fields <- c(fields, "location_source_value")
    values <- c(values, if (is.null(location_source_value)) "NULL" else if (is(location_source_value, "subQuery")) paste0("(", as.character(location_source_value), ")") else paste0("'", as.character(location_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.location_source_value')
  }

  if (!missing(latitude)) {
    fields <- c(fields, "latitude")
    values <- c(values, if (is.null(latitude)) "NULL" else if (is(latitude, "subQuery")) paste0("(", as.character(latitude), ")") else paste0("'", as.character(latitude), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.latitude')
  }

  if (!missing(longitude)) {
    fields <- c(fields, "longitude")
    values <- c(values, if (is.null(longitude)) "NULL" else if (is(longitude, "subQuery")) paste0("(", as.character(longitude), ")") else paste0("'", as.character(longitude), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.longitude')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "location", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_provider <- function(provider_id, provider_name, npi, dea, specialty_concept_id, care_site_id, year_of_birth, gender_concept_id, provider_source_value, specialty_source_value, specialty_source_concept_id, gender_source_value, gender_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.provider_id')
  }

  if (!missing(provider_name)) {
    fields <- c(fields, "provider_name")
    values <- c(values, if (is.null(provider_name)) "NULL" else if (is(provider_name, "subQuery")) paste0("(", as.character(provider_name), ")") else paste0("'", as.character(provider_name), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.provider_name')
  }

  if (!missing(npi)) {
    fields <- c(fields, "npi")
    values <- c(values, if (is.null(npi)) "NULL" else if (is(npi, "subQuery")) paste0("(", as.character(npi), ")") else paste0("'", as.character(npi), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.npi')
  }

  if (!missing(dea)) {
    fields <- c(fields, "dea")
    values <- c(values, if (is.null(dea)) "NULL" else if (is(dea, "subQuery")) paste0("(", as.character(dea), ")") else paste0("'", as.character(dea), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.dea')
  }

  if (!missing(specialty_concept_id)) {
    fields <- c(fields, "specialty_concept_id")
    values <- c(values, if (is.null(specialty_concept_id)) "NULL" else if (is(specialty_concept_id, "subQuery")) paste0("(", as.character(specialty_concept_id), ")") else paste0("'", as.character(specialty_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.specialty_concept_id')
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.care_site_id')
  }

  if (!missing(year_of_birth)) {
    fields <- c(fields, "year_of_birth")
    values <- c(values, if (is.null(year_of_birth)) "NULL" else if (is(year_of_birth, "subQuery")) paste0("(", as.character(year_of_birth), ")") else paste0("'", as.character(year_of_birth), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.year_of_birth')
  }

  if (!missing(gender_concept_id)) {
    fields <- c(fields, "gender_concept_id")
    values <- c(values, if (is.null(gender_concept_id)) "NULL" else if (is(gender_concept_id, "subQuery")) paste0("(", as.character(gender_concept_id), ")") else paste0("'", as.character(gender_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.gender_concept_id')
  }

  if (!missing(provider_source_value)) {
    fields <- c(fields, "provider_source_value")
    values <- c(values, if (is.null(provider_source_value)) "NULL" else if (is(provider_source_value, "subQuery")) paste0("(", as.character(provider_source_value), ")") else paste0("'", as.character(provider_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.provider_source_value')
  }

  if (!missing(specialty_source_value)) {
    fields <- c(fields, "specialty_source_value")
    values <- c(values, if (is.null(specialty_source_value)) "NULL" else if (is(specialty_source_value, "subQuery")) paste0("(", as.character(specialty_source_value), ")") else paste0("'", as.character(specialty_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.specialty_source_value')
  }

  if (!missing(specialty_source_concept_id)) {
    fields <- c(fields, "specialty_source_concept_id")
    values <- c(values, if (is.null(specialty_source_concept_id)) "NULL" else if (is(specialty_source_concept_id, "subQuery")) paste0("(", as.character(specialty_source_concept_id), ")") else paste0("'", as.character(specialty_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.specialty_source_concept_id')
  }

  if (!missing(gender_source_value)) {
    fields <- c(fields, "gender_source_value")
    values <- c(values, if (is.null(gender_source_value)) "NULL" else if (is(gender_source_value, "subQuery")) paste0("(", as.character(gender_source_value), ")") else paste0("'", as.character(gender_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.gender_source_value')
  }

  if (!missing(gender_source_concept_id)) {
    fields <- c(fields, "gender_source_concept_id")
    values <- c(values, if (is.null(gender_source_concept_id)) "NULL" else if (is(gender_source_concept_id, "subQuery")) paste0("(", as.character(gender_source_concept_id), ")") else paste0("'", as.character(gender_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.gender_source_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "provider", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_cdm_source <- function(cdm_source_name, cdm_source_abbreviation, cdm_holder, source_description, source_documentation_reference, cdm_etl_reference, source_release_date, cdm_release_date, cdm_version, vocabulary_version) {
  fields <- c()
  values <- c()
  if (!missing(cdm_source_name)) {
    fields <- c(fields, "cdm_source_name")
    values <- c(values, if (is.null(cdm_source_name)) "NULL" else if (is(cdm_source_name, "subQuery")) paste0("(", as.character(cdm_source_name), ")") else paste0("'", as.character(cdm_source_name), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_source_name')
  }

  if (!missing(cdm_source_abbreviation)) {
    fields <- c(fields, "cdm_source_abbreviation")
    values <- c(values, if (is.null(cdm_source_abbreviation)) "NULL" else if (is(cdm_source_abbreviation, "subQuery")) paste0("(", as.character(cdm_source_abbreviation), ")") else paste0("'", as.character(cdm_source_abbreviation), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_source_abbreviation')
  }

  if (!missing(cdm_holder)) {
    fields <- c(fields, "cdm_holder")
    values <- c(values, if (is.null(cdm_holder)) "NULL" else if (is(cdm_holder, "subQuery")) paste0("(", as.character(cdm_holder), ")") else paste0("'", as.character(cdm_holder), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_holder')
  }

  if (!missing(source_description)) {
    fields <- c(fields, "source_description")
    values <- c(values, if (is.null(source_description)) "NULL" else if (is(source_description, "subQuery")) paste0("(", as.character(source_description), ")") else paste0("'", as.character(source_description), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.source_description')
  }

  if (!missing(source_documentation_reference)) {
    fields <- c(fields, "source_documentation_reference")
    values <- c(values, if (is.null(source_documentation_reference)) "NULL" else if (is(source_documentation_reference, "subQuery")) paste0("(", as.character(source_documentation_reference), ")") else paste0("'", as.character(source_documentation_reference), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.source_documentation_reference')
  }

  if (!missing(cdm_etl_reference)) {
    fields <- c(fields, "cdm_etl_reference")
    values <- c(values, if (is.null(cdm_etl_reference)) "NULL" else if (is(cdm_etl_reference, "subQuery")) paste0("(", as.character(cdm_etl_reference), ")") else paste0("'", as.character(cdm_etl_reference), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_etl_reference')
  }

  if (!missing(source_release_date)) {
    fields <- c(fields, "source_release_date")
    values <- c(values, if (is.null(source_release_date)) "NULL" else if (is(source_release_date, "subQuery")) paste0("(", as.character(source_release_date), ")") else paste0("'", as.character(source_release_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.source_release_date')
  }

  if (!missing(cdm_release_date)) {
    fields <- c(fields, "cdm_release_date")
    values <- c(values, if (is.null(cdm_release_date)) "NULL" else if (is(cdm_release_date, "subQuery")) paste0("(", as.character(cdm_release_date), ")") else paste0("'", as.character(cdm_release_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_release_date')
  }

  if (!missing(cdm_version)) {
    fields <- c(fields, "cdm_version")
    values <- c(values, if (is.null(cdm_version)) "NULL" else if (is(cdm_version, "subQuery")) paste0("(", as.character(cdm_version), ")") else paste0("'", as.character(cdm_version), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_version')
  }

  if (!missing(vocabulary_version)) {
    fields <- c(fields, "vocabulary_version")
    values <- c(values, if (is.null(vocabulary_version)) "NULL" else if (is(vocabulary_version, "subQuery")) paste0("(", as.character(vocabulary_version), ")") else paste0("'", as.character(vocabulary_version), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.vocabulary_version')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "cdm_source", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_metadata <- function(metadata_concept_id, metadata_type_concept_id, name, value_as_string, value_as_concept_id, metadata_date, metadata_datetime) {
  fields <- c()
  values <- c()
  if (!missing(metadata_concept_id)) {
    fields <- c(fields, "metadata_concept_id")
    values <- c(values, if (is.null(metadata_concept_id)) "NULL" else if (is(metadata_concept_id, "subQuery")) paste0("(", as.character(metadata_concept_id), ")") else paste0("'", as.character(metadata_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.metadata_concept_id')
  }

  if (!missing(metadata_type_concept_id)) {
    fields <- c(fields, "metadata_type_concept_id")
    values <- c(values, if (is.null(metadata_type_concept_id)) "NULL" else if (is(metadata_type_concept_id, "subQuery")) paste0("(", as.character(metadata_type_concept_id), ")") else paste0("'", as.character(metadata_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.metadata_type_concept_id')
  }

  if (!missing(name)) {
    fields <- c(fields, "name")
    values <- c(values, if (is.null(name)) "NULL" else if (is(name, "subQuery")) paste0("(", as.character(name), ")") else paste0("'", as.character(name), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.name')
  }

  if (!missing(value_as_string)) {
    fields <- c(fields, "value_as_string")
    values <- c(values, if (is.null(value_as_string)) "NULL" else if (is(value_as_string, "subQuery")) paste0("(", as.character(value_as_string), ")") else paste0("'", as.character(value_as_string), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.value_as_string')
  }

  if (!missing(value_as_concept_id)) {
    fields <- c(fields, "value_as_concept_id")
    values <- c(values, if (is.null(value_as_concept_id)) "NULL" else if (is(value_as_concept_id, "subQuery")) paste0("(", as.character(value_as_concept_id), ")") else paste0("'", as.character(value_as_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.value_as_concept_id')
  }

  if (!missing(metadata_date)) {
    fields <- c(fields, "[metadata date]")
    values <- c(values, if (is.null(metadata_date)) "NULL" else if (is(metadata_date, "subQuery")) paste0("(", as.character(metadata_date), ")") else paste0("'", as.character(metadata_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.metadata_date')
  }

  if (!missing(metadata_datetime)) {
    fields <- c(fields, "metadata_datetime")
    values <- c(values, if (is.null(metadata_datetime)) "NULL" else if (is(metadata_datetime, "subQuery")) paste0("(", as.character(metadata_datetime), ")") else paste0("'", as.character(metadata_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.metadata_datetime')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "metadata", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_cohort_definition <- function(cohort_definition_id, cohort_definition_name, cohort_definition_description, definition_type_concept_id, cohort_definition_syntax, subject_concept_id, cohort_initiation_date) {
  fields <- c()
  values <- c()
  if (!missing(cohort_definition_id)) {
    fields <- c(fields, "cohort_definition_id")
    values <- c(values, if (is.null(cohort_definition_id)) "NULL" else if (is(cohort_definition_id, "subQuery")) paste0("(", as.character(cohort_definition_id), ")") else paste0("'", as.character(cohort_definition_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort_definition.cohort_definition_id')
  }

  if (!missing(cohort_definition_name)) {
    fields <- c(fields, "cohort_definition_name")
    values <- c(values, if (is.null(cohort_definition_name)) "NULL" else if (is(cohort_definition_name, "subQuery")) paste0("(", as.character(cohort_definition_name), ")") else paste0("'", as.character(cohort_definition_name), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort_definition.cohort_definition_name')
  }

  if (!missing(cohort_definition_description)) {
    fields <- c(fields, "cohort_definition_description")
    values <- c(values, if (is.null(cohort_definition_description)) "NULL" else if (is(cohort_definition_description, "subQuery")) paste0("(", as.character(cohort_definition_description), ")") else paste0("'", as.character(cohort_definition_description), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort_definition.cohort_definition_description')
  }

  if (!missing(definition_type_concept_id)) {
    fields <- c(fields, "definition_type_concept_id")
    values <- c(values, if (is.null(definition_type_concept_id)) "NULL" else if (is(definition_type_concept_id, "subQuery")) paste0("(", as.character(definition_type_concept_id), ")") else paste0("'", as.character(definition_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort_definition.definition_type_concept_id')
  }

  if (!missing(cohort_definition_syntax)) {
    fields <- c(fields, "cohort_definition_syntax")
    values <- c(values, if (is.null(cohort_definition_syntax)) "NULL" else if (is(cohort_definition_syntax, "subQuery")) paste0("(", as.character(cohort_definition_syntax), ")") else paste0("'", as.character(cohort_definition_syntax), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort_definition.cohort_definition_syntax')
  }

  if (!missing(subject_concept_id)) {
    fields <- c(fields, "subject_concept_id")
    values <- c(values, if (is.null(subject_concept_id)) "NULL" else if (is(subject_concept_id, "subQuery")) paste0("(", as.character(subject_concept_id), ")") else paste0("'", as.character(subject_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort_definition.subject_concept_id')
  }

  if (!missing(cohort_initiation_date)) {
    fields <- c(fields, "cohort_initiation_date")
    values <- c(values, if (is.null(cohort_initiation_date)) "NULL" else if (is(cohort_initiation_date, "subQuery")) paste0("(", as.character(cohort_initiation_date), ")") else paste0("'", as.character(cohort_initiation_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort_definition.cohort_initiation_date')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "cohort_definition", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_survey_conduct <- function(survey_conduct_id, person_id, survey_concept_id, survey_start_date, survey_start_datetime, survey_end_date, survey_end_datetime, provider_id, assisted_concept_id, respondent_type_concept_id, timing_concept_id, collection_method_concept_id, assisted_source_value, respondent_type_source_value, timing_source_value, collection_method_source_value, survey_source_value, survey_source_concept_id, survey_source_identifier, validated_survey_concept_id, validated_survey_source_value, survey_version_number, visit_occurrence_id, response_visit_occurrence_id) {
  fields <- c()
  values <- c()
  if (!missing(survey_conduct_id)) {
    fields <- c(fields, "survey_conduct_id")
    values <- c(values, if (is.null(survey_conduct_id)) "NULL" else if (is(survey_conduct_id, "subQuery")) paste0("(", as.character(survey_conduct_id), ")") else paste0("'", as.character(survey_conduct_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_conduct_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.person_id')
  }

  if (!missing(survey_concept_id)) {
    fields <- c(fields, "survey_concept_id")
    values <- c(values, if (is.null(survey_concept_id)) "NULL" else if (is(survey_concept_id, "subQuery")) paste0("(", as.character(survey_concept_id), ")") else paste0("'", as.character(survey_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_concept_id')
  }

  if (!missing(survey_start_date)) {
    fields <- c(fields, "survey_start_date")
    values <- c(values, if (is.null(survey_start_date)) "NULL" else if (is(survey_start_date, "subQuery")) paste0("(", as.character(survey_start_date), ")") else paste0("'", as.character(survey_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_start_date')
  }

  if (!missing(survey_start_datetime)) {
    fields <- c(fields, "survey_start_datetime")
    values <- c(values, if (is.null(survey_start_datetime)) "NULL" else if (is(survey_start_datetime, "subQuery")) paste0("(", as.character(survey_start_datetime), ")") else paste0("'", as.character(survey_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_start_datetime')
  }

  if (!missing(survey_end_date)) {
    fields <- c(fields, "survey_end_date")
    values <- c(values, if (is.null(survey_end_date)) "NULL" else if (is(survey_end_date, "subQuery")) paste0("(", as.character(survey_end_date), ")") else paste0("'", as.character(survey_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_end_date')
  }

  if (!missing(survey_end_datetime)) {
    fields <- c(fields, "survey_end_datetime")
    values <- c(values, if (is.null(survey_end_datetime)) "NULL" else if (is(survey_end_datetime, "subQuery")) paste0("(", as.character(survey_end_datetime), ")") else paste0("'", as.character(survey_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_end_datetime')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.provider_id')
  }

  if (!missing(assisted_concept_id)) {
    fields <- c(fields, "assisted_concept_id")
    values <- c(values, if (is.null(assisted_concept_id)) "NULL" else if (is(assisted_concept_id, "subQuery")) paste0("(", as.character(assisted_concept_id), ")") else paste0("'", as.character(assisted_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.assisted_concept_id')
  }

  if (!missing(respondent_type_concept_id)) {
    fields <- c(fields, "respondent_type_concept_id")
    values <- c(values, if (is.null(respondent_type_concept_id)) "NULL" else if (is(respondent_type_concept_id, "subQuery")) paste0("(", as.character(respondent_type_concept_id), ")") else paste0("'", as.character(respondent_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.respondent_type_concept_id')
  }

  if (!missing(timing_concept_id)) {
    fields <- c(fields, "timing_concept_id")
    values <- c(values, if (is.null(timing_concept_id)) "NULL" else if (is(timing_concept_id, "subQuery")) paste0("(", as.character(timing_concept_id), ")") else paste0("'", as.character(timing_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.timing_concept_id')
  }

  if (!missing(collection_method_concept_id)) {
    fields <- c(fields, "collection_method_concept_id")
    values <- c(values, if (is.null(collection_method_concept_id)) "NULL" else if (is(collection_method_concept_id, "subQuery")) paste0("(", as.character(collection_method_concept_id), ")") else paste0("'", as.character(collection_method_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.collection_method_concept_id')
  }

  if (!missing(assisted_source_value)) {
    fields <- c(fields, "assisted_source_value")
    values <- c(values, if (is.null(assisted_source_value)) "NULL" else if (is(assisted_source_value, "subQuery")) paste0("(", as.character(assisted_source_value), ")") else paste0("'", as.character(assisted_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.assisted_source_value')
  }

  if (!missing(respondent_type_source_value)) {
    fields <- c(fields, "respondent_type_source_value")
    values <- c(values, if (is.null(respondent_type_source_value)) "NULL" else if (is(respondent_type_source_value, "subQuery")) paste0("(", as.character(respondent_type_source_value), ")") else paste0("'", as.character(respondent_type_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.respondent_type_source_value')
  }

  if (!missing(timing_source_value)) {
    fields <- c(fields, "timing_source_value")
    values <- c(values, if (is.null(timing_source_value)) "NULL" else if (is(timing_source_value, "subQuery")) paste0("(", as.character(timing_source_value), ")") else paste0("'", as.character(timing_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.timing_source_value')
  }

  if (!missing(collection_method_source_value)) {
    fields <- c(fields, "collection_method_source_value")
    values <- c(values, if (is.null(collection_method_source_value)) "NULL" else if (is(collection_method_source_value, "subQuery")) paste0("(", as.character(collection_method_source_value), ")") else paste0("'", as.character(collection_method_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.collection_method_source_value')
  }

  if (!missing(survey_source_value)) {
    fields <- c(fields, "survey_source_value")
    values <- c(values, if (is.null(survey_source_value)) "NULL" else if (is(survey_source_value, "subQuery")) paste0("(", as.character(survey_source_value), ")") else paste0("'", as.character(survey_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_source_value')
  }

  if (!missing(survey_source_concept_id)) {
    fields <- c(fields, "survey_source_concept_id")
    values <- c(values, if (is.null(survey_source_concept_id)) "NULL" else if (is(survey_source_concept_id, "subQuery")) paste0("(", as.character(survey_source_concept_id), ")") else paste0("'", as.character(survey_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_source_concept_id')
  }

  if (!missing(survey_source_identifier)) {
    fields <- c(fields, "survey_source_identifier")
    values <- c(values, if (is.null(survey_source_identifier)) "NULL" else if (is(survey_source_identifier, "subQuery")) paste0("(", as.character(survey_source_identifier), ")") else paste0("'", as.character(survey_source_identifier), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_source_identifier')
  }

  if (!missing(validated_survey_concept_id)) {
    fields <- c(fields, "validated_survey_concept_id")
    values <- c(values, if (is.null(validated_survey_concept_id)) "NULL" else if (is(validated_survey_concept_id, "subQuery")) paste0("(", as.character(validated_survey_concept_id), ")") else paste0("'", as.character(validated_survey_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.validated_survey_concept_id')
  }

  if (!missing(validated_survey_source_value)) {
    fields <- c(fields, "validated_survey_source_value")
    values <- c(values, if (is.null(validated_survey_source_value)) "NULL" else if (is(validated_survey_source_value, "subQuery")) paste0("(", as.character(validated_survey_source_value), ")") else paste0("'", as.character(validated_survey_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.validated_survey_source_value')
  }

  if (!missing(survey_version_number)) {
    fields <- c(fields, "survey_version_number")
    values <- c(values, if (is.null(survey_version_number)) "NULL" else if (is(survey_version_number, "subQuery")) paste0("(", as.character(survey_version_number), ")") else paste0("'", as.character(survey_version_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_version_number')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.visit_occurrence_id')
  }

  if (!missing(response_visit_occurrence_id)) {
    fields <- c(fields, "response_visit_occurrence_id")
    values <- c(values, if (is.null(response_visit_occurrence_id)) "NULL" else if (is(response_visit_occurrence_id, "subQuery")) paste0("(", as.character(response_visit_occurrence_id), ")") else paste0("'", as.character(response_visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.response_visit_occurrence_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "survey_conduct", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_location_history <- function(location_id, relationship_type_concept_id, domain_id, entity_id, start_date, end_date) {
  fields <- c()
  values <- c()
  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) "NULL" else if (is(location_id, "subQuery")) paste0("(", as.character(location_id), ")") else paste0("'", as.character(location_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.location_id')
  }

  if (!missing(relationship_type_concept_id)) {
    fields <- c(fields, "relationship_type_concept_id")
    values <- c(values, if (is.null(relationship_type_concept_id)) "NULL" else if (is(relationship_type_concept_id, "subQuery")) paste0("(", as.character(relationship_type_concept_id), ")") else paste0("'", as.character(relationship_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.relationship_type_concept_id')
  }

  if (!missing(domain_id)) {
    fields <- c(fields, "domain_id")
    values <- c(values, if (is.null(domain_id)) "NULL" else if (is(domain_id, "subQuery")) paste0("(", as.character(domain_id), ")") else paste0("'", as.character(domain_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.domain_id')
  }

  if (!missing(entity_id)) {
    fields <- c(fields, "entity_id")
    values <- c(values, if (is.null(entity_id)) "NULL" else if (is(entity_id, "subQuery")) paste0("(", as.character(entity_id), ")") else paste0("'", as.character(entity_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.entity_id')
  }

  if (!missing(start_date)) {
    fields <- c(fields, "start_date")
    values <- c(values, if (is.null(start_date)) "NULL" else if (is(start_date, "subQuery")) paste0("(", as.character(start_date), ")") else paste0("'", as.character(start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.start_date')
  }

  if (!missing(end_date)) {
    fields <- c(fields, "end_date")
    values <- c(values, if (is.null(end_date)) "NULL" else if (is(end_date, "subQuery")) paste0("(", as.character(end_date), ")") else paste0("'", as.character(end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.end_date')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "location_history", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_episode <- function(episode_id, person_id, episode_start_datetime, episode_end_datetime, episode_concept_id, episode_parent_id, episode_number, episode_object_concept_id, episode_type_concept_id, episode_source_value, episode_source_concept_id, record_source_value) {
  fields <- c()
  values <- c()
  if (!missing(episode_id)) {
    fields <- c(fields, "episode_id")
    values <- c(values, if (is.null(episode_id)) "NULL" else if (is(episode_id, "subQuery")) paste0("(", as.character(episode_id), ")") else paste0("'", as.character(episode_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_id')
  }
  
  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.person_id')
  }
  
  if (!missing(episode_start_datetime)) {
    fields <- c(fields, "episode_start_datetime")
    values <- c(values, if (is.null(episode_start_datetime)) "NULL" else if (is(episode_start_datetime, "subQuery")) paste0("(", as.character(episode_start_datetime), ")") else paste0("'", as.character(episode_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_start_datetime')
  }
  
  if (!missing(episode_end_datetime)) {
    fields <- c(fields, "episode_end_datetime")
    values <- c(values, if (is.null(episode_end_datetime)) "NULL" else if (is(episode_end_datetime, "subQuery")) paste0("(", as.character(episode_end_datetime), ")") else paste0("'", as.character(episode_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_end_datetime')
  }
  
  if (!missing(episode_concept_id)) {
    fields <- c(fields, "episode_concept_id")
    values <- c(values, if (is.null(episode_concept_id)) "NULL" else if (is(episode_concept_id, "subQuery")) paste0("(", as.character(episode_concept_id), ")") else paste0("'", as.character(episode_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_concept_id')
  }
  
  if (!missing(episode_parent_id)) {
    fields <- c(fields, "episode_parent_id")
    values <- c(values, if (is.null(episode_parent_id)) "NULL" else if (is(episode_parent_id, "subQuery")) paste0("(", as.character(episode_parent_id), ")") else paste0("'", as.character(episode_parent_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_parent_id')
  }
  
  if (!missing(episode_number)) {
    fields <- c(fields, "episode_number")
    values <- c(values, if (is.null(episode_number)) "NULL" else if (is(episode_number, "subQuery")) paste0("(", as.character(episode_number), ")") else paste0("'", as.character(episode_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_number')
  }
  
  if (!missing(episode_object_concept_id)) {
    fields <- c(fields, "episode_object_concept_id")
    values <- c(values, if (is.null(episode_object_concept_id)) "NULL" else if (is(episode_object_concept_id, "subQuery")) paste0("(", as.character(episode_object_concept_id), ")") else paste0("'", as.character(episode_object_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_object_concept_id')
  }
  
  if (!missing(episode_type_concept_id)) {
    fields <- c(fields, "episode_type_concept_id")
    values <- c(values, if (is.null(episode_type_concept_id)) "NULL" else if (is(episode_type_concept_id, "subQuery")) paste0("(", as.character(episode_type_concept_id), ")") else paste0("'", as.character(episode_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_type_concept_id')
  }
  
  if (!missing(episode_source_value)) {
    fields <- c(fields, "episode_source_value")
    values <- c(values, if (is.null(episode_source_value)) "NULL" else if (is(episode_source_value, "subQuery")) paste0("(", as.character(episode_source_value), ")") else paste0("'", as.character(episode_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_source_value')
  }
  
  if (!missing(episode_source_concept_id)) {
    fields <- c(fields, "episode_source_concept_id")
    values <- c(values, if (is.null(episode_source_concept_id)) "NULL" else if (is(episode_source_concept_id, "subQuery")) paste0("(", as.character(episode_source_concept_id), ")") else paste0("'", as.character(episode_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_source_concept_id')
  }
  
  if (!missing(record_source_value)) {
    fields <- c(fields, "record_source_value")
    values <- c(values, if (is.null(record_source_value)) "NULL" else if (is(record_source_value, "subQuery")) paste0("(", as.character(record_source_value), ")") else paste0("'", as.character(record_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.record_source_value')
  }
  
  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "episode", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_episode_event <- function(episode_id, event_id, event_field_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(episode_id)) {
    fields <- c(fields, "episode_id")
    values <- c(values, if (is.null(episode_id)) "NULL" else if (is(episode_id, "subQuery")) paste0("(", as.character(episode_id), ")") else paste0("'", as.character(episode_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_id')
  }
  
  if (!missing(event_id)) {
    fields <- c(fields, "event_id")
    values <- c(values, if (is.null(event_id)) "NULL" else if (is(event_id, "subQuery")) paste0("(", as.character(event_id), ")") else paste0("'", as.character(event_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.event_id')
  }
  
  if (!missing(event_field_concept_id)) {
    fields <- c(fields, "event_field_concept_id")
    values <- c(values, if (is.null(event_field_concept_id)) "NULL" else if (is(event_field_concept_id, "subQuery")) paste0("(", as.character(event_field_concept_id), ")") else paste0("'", as.character(event_field_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.event_field_concept_id')
  }
  
  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 0, table = "episode_event", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_person <- function(person_id, gender_concept_id, year_of_birth, month_of_birth, day_of_birth, birth_datetime, death_datetime, race_concept_id, ethnicity_concept_id, location_id, provider_id, care_site_id, person_source_value, gender_source_value, gender_source_concept_id, race_source_value, race_source_concept_id, ethnicity_source_value, ethnicity_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(gender_concept_id)) {
    fields <- c(fields, "gender_concept_id")
    values <- c(values, if (is.null(gender_concept_id)) "NULL" else if (is(gender_concept_id, "subQuery")) paste0("(", as.character(gender_concept_id), ")") else paste0("'", as.character(gender_concept_id), "'"))
  }

  if (!missing(year_of_birth)) {
    fields <- c(fields, "year_of_birth")
    values <- c(values, if (is.null(year_of_birth)) "NULL" else if (is(year_of_birth, "subQuery")) paste0("(", as.character(year_of_birth), ")") else paste0("'", as.character(year_of_birth), "'"))
  }

  if (!missing(month_of_birth)) {
    fields <- c(fields, "month_of_birth")
    values <- c(values, if (is.null(month_of_birth)) "NULL" else if (is(month_of_birth, "subQuery")) paste0("(", as.character(month_of_birth), ")") else paste0("'", as.character(month_of_birth), "'"))
  }

  if (!missing(day_of_birth)) {
    fields <- c(fields, "day_of_birth")
    values <- c(values, if (is.null(day_of_birth)) "NULL" else if (is(day_of_birth, "subQuery")) paste0("(", as.character(day_of_birth), ")") else paste0("'", as.character(day_of_birth), "'"))
  }

  if (!missing(birth_datetime)) {
    fields <- c(fields, "birth_datetime")
    values <- c(values, if (is.null(birth_datetime)) "NULL" else if (is(birth_datetime, "subQuery")) paste0("(", as.character(birth_datetime), ")") else paste0("'", as.character(birth_datetime), "'"))
  }

  if (!missing(death_datetime)) {
    fields <- c(fields, "death_datetime")
    values <- c(values, if (is.null(death_datetime)) "NULL" else if (is(death_datetime, "subQuery")) paste0("(", as.character(death_datetime), ")") else paste0("'", as.character(death_datetime), "'"))
  }

  if (!missing(race_concept_id)) {
    fields <- c(fields, "race_concept_id")
    values <- c(values, if (is.null(race_concept_id)) "NULL" else if (is(race_concept_id, "subQuery")) paste0("(", as.character(race_concept_id), ")") else paste0("'", as.character(race_concept_id), "'"))
  }

  if (!missing(ethnicity_concept_id)) {
    fields <- c(fields, "ethnicity_concept_id")
    values <- c(values, if (is.null(ethnicity_concept_id)) "NULL" else if (is(ethnicity_concept_id, "subQuery")) paste0("(", as.character(ethnicity_concept_id), ")") else paste0("'", as.character(ethnicity_concept_id), "'"))
  }

  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) "NULL" else if (is(location_id, "subQuery")) paste0("(", as.character(location_id), ")") else paste0("'", as.character(location_id), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
  }

  if (!missing(person_source_value)) {
    fields <- c(fields, "person_source_value")
    values <- c(values, if (is.null(person_source_value)) "NULL" else if (is(person_source_value, "subQuery")) paste0("(", as.character(person_source_value), ")") else paste0("'", as.character(person_source_value), "'"))
  }

  if (!missing(gender_source_value)) {
    fields <- c(fields, "gender_source_value")
    values <- c(values, if (is.null(gender_source_value)) "NULL" else if (is(gender_source_value, "subQuery")) paste0("(", as.character(gender_source_value), ")") else paste0("'", as.character(gender_source_value), "'"))
  }

  if (!missing(gender_source_concept_id)) {
    fields <- c(fields, "gender_source_concept_id")
    values <- c(values, if (is.null(gender_source_concept_id)) "NULL" else if (is(gender_source_concept_id, "subQuery")) paste0("(", as.character(gender_source_concept_id), ")") else paste0("'", as.character(gender_source_concept_id), "'"))
  }

  if (!missing(race_source_value)) {
    fields <- c(fields, "race_source_value")
    values <- c(values, if (is.null(race_source_value)) "NULL" else if (is(race_source_value, "subQuery")) paste0("(", as.character(race_source_value), ")") else paste0("'", as.character(race_source_value), "'"))
  }

  if (!missing(race_source_concept_id)) {
    fields <- c(fields, "race_source_concept_id")
    values <- c(values, if (is.null(race_source_concept_id)) "NULL" else if (is(race_source_concept_id, "subQuery")) paste0("(", as.character(race_source_concept_id), ")") else paste0("'", as.character(race_source_concept_id), "'"))
  }

  if (!missing(ethnicity_source_value)) {
    fields <- c(fields, "ethnicity_source_value")
    values <- c(values, if (is.null(ethnicity_source_value)) "NULL" else if (is(ethnicity_source_value, "subQuery")) paste0("(", as.character(ethnicity_source_value), ")") else paste0("'", as.character(ethnicity_source_value), "'"))
  }

  if (!missing(ethnicity_source_concept_id)) {
    fields <- c(fields, "ethnicity_source_concept_id")
    values <- c(values, if (is.null(ethnicity_source_concept_id)) "NULL" else if (is(ethnicity_source_concept_id, "subQuery")) paste0("(", as.character(ethnicity_source_concept_id), ")") else paste0("'", as.character(ethnicity_source_concept_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "person", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_observation_period <- function(observation_period_id, person_id, observation_period_start_date, observation_period_end_date, period_type_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(observation_period_id)) {
    fields <- c(fields, "observation_period_id")
    values <- c(values, if (is.null(observation_period_id)) "NULL" else if (is(observation_period_id, "subQuery")) paste0("(", as.character(observation_period_id), ")") else paste0("'", as.character(observation_period_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(observation_period_start_date)) {
    fields <- c(fields, "observation_period_start_date")
    values <- c(values, if (is.null(observation_period_start_date)) "NULL" else if (is(observation_period_start_date, "subQuery")) paste0("(", as.character(observation_period_start_date), ")") else paste0("'", as.character(observation_period_start_date), "'"))
  }

  if (!missing(observation_period_end_date)) {
    fields <- c(fields, "observation_period_end_date")
    values <- c(values, if (is.null(observation_period_end_date)) "NULL" else if (is(observation_period_end_date, "subQuery")) paste0("(", as.character(observation_period_end_date), ")") else paste0("'", as.character(observation_period_end_date), "'"))
  }

  if (!missing(period_type_concept_id)) {
    fields <- c(fields, "period_type_concept_id")
    values <- c(values, if (is.null(period_type_concept_id)) "NULL" else if (is(period_type_concept_id, "subQuery")) paste0("(", as.character(period_type_concept_id), ")") else paste0("'", as.character(period_type_concept_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "observation_period", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_visit_occurrence <- function(visit_occurrence_id, person_id, visit_concept_id, visit_start_date, visit_start_datetime, visit_end_date, visit_end_datetime, visit_type_concept_id, provider_id, care_site_id, visit_source_value, visit_source_concept_id, admitted_from_concept_id, admitted_from_source_value, discharge_to_concept_id, discharge_to_source_value, preceding_visit_occurrence_id) {
  fields <- c()
  values <- c()
  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(visit_concept_id)) {
    fields <- c(fields, "visit_concept_id")
    values <- c(values, if (is.null(visit_concept_id)) "NULL" else if (is(visit_concept_id, "subQuery")) paste0("(", as.character(visit_concept_id), ")") else paste0("'", as.character(visit_concept_id), "'"))
  }

  if (!missing(visit_start_date)) {
    fields <- c(fields, "visit_start_date")
    values <- c(values, if (is.null(visit_start_date)) "NULL" else if (is(visit_start_date, "subQuery")) paste0("(", as.character(visit_start_date), ")") else paste0("'", as.character(visit_start_date), "'"))
  }

  if (!missing(visit_start_datetime)) {
    fields <- c(fields, "visit_start_datetime")
    values <- c(values, if (is.null(visit_start_datetime)) "NULL" else if (is(visit_start_datetime, "subQuery")) paste0("(", as.character(visit_start_datetime), ")") else paste0("'", as.character(visit_start_datetime), "'"))
  }

  if (!missing(visit_end_date)) {
    fields <- c(fields, "visit_end_date")
    values <- c(values, if (is.null(visit_end_date)) "NULL" else if (is(visit_end_date, "subQuery")) paste0("(", as.character(visit_end_date), ")") else paste0("'", as.character(visit_end_date), "'"))
  }

  if (!missing(visit_end_datetime)) {
    fields <- c(fields, "visit_end_datetime")
    values <- c(values, if (is.null(visit_end_datetime)) "NULL" else if (is(visit_end_datetime, "subQuery")) paste0("(", as.character(visit_end_datetime), ")") else paste0("'", as.character(visit_end_datetime), "'"))
  }

  if (!missing(visit_type_concept_id)) {
    fields <- c(fields, "visit_type_concept_id")
    values <- c(values, if (is.null(visit_type_concept_id)) "NULL" else if (is(visit_type_concept_id, "subQuery")) paste0("(", as.character(visit_type_concept_id), ")") else paste0("'", as.character(visit_type_concept_id), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
  }

  if (!missing(visit_source_value)) {
    fields <- c(fields, "visit_source_value")
    values <- c(values, if (is.null(visit_source_value)) "NULL" else if (is(visit_source_value, "subQuery")) paste0("(", as.character(visit_source_value), ")") else paste0("'", as.character(visit_source_value), "'"))
  }

  if (!missing(visit_source_concept_id)) {
    fields <- c(fields, "visit_source_concept_id")
    values <- c(values, if (is.null(visit_source_concept_id)) "NULL" else if (is(visit_source_concept_id, "subQuery")) paste0("(", as.character(visit_source_concept_id), ")") else paste0("'", as.character(visit_source_concept_id), "'"))
  }

  if (!missing(admitted_from_concept_id)) {
    fields <- c(fields, "admitted_from_concept_id")
    values <- c(values, if (is.null(admitted_from_concept_id)) "NULL" else if (is(admitted_from_concept_id, "subQuery")) paste0("(", as.character(admitted_from_concept_id), ")") else paste0("'", as.character(admitted_from_concept_id), "'"))
  }

  if (!missing(admitted_from_source_value)) {
    fields <- c(fields, "admitted_from_source_value")
    values <- c(values, if (is.null(admitted_from_source_value)) "NULL" else if (is(admitted_from_source_value, "subQuery")) paste0("(", as.character(admitted_from_source_value), ")") else paste0("'", as.character(admitted_from_source_value), "'"))
  }

  if (!missing(discharge_to_concept_id)) {
    fields <- c(fields, "discharge_to_concept_id")
    values <- c(values, if (is.null(discharge_to_concept_id)) "NULL" else if (is(discharge_to_concept_id, "subQuery")) paste0("(", as.character(discharge_to_concept_id), ")") else paste0("'", as.character(discharge_to_concept_id), "'"))
  }

  if (!missing(discharge_to_source_value)) {
    fields <- c(fields, "discharge_to_source_value")
    values <- c(values, if (is.null(discharge_to_source_value)) "NULL" else if (is(discharge_to_source_value, "subQuery")) paste0("(", as.character(discharge_to_source_value), ")") else paste0("'", as.character(discharge_to_source_value), "'"))
  }

  if (!missing(preceding_visit_occurrence_id)) {
    fields <- c(fields, "preceding_visit_occurrence_id")
    values <- c(values, if (is.null(preceding_visit_occurrence_id)) "NULL" else if (is(preceding_visit_occurrence_id, "subQuery")) paste0("(", as.character(preceding_visit_occurrence_id), ")") else paste0("'", as.character(preceding_visit_occurrence_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "visit_occurrence", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_condition_occurrence <- function(condition_occurrence_id, person_id, condition_concept_id, condition_start_date, condition_start_datetime, condition_end_date, condition_end_datetime, condition_type_concept_id, stop_reason, provider_id, visit_occurrence_id, visit_detail_id, condition_source_value, condition_source_concept_id, condition_status_source_value, condition_status_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(condition_occurrence_id)) {
    fields <- c(fields, "condition_occurrence_id")
    values <- c(values, if (is.null(condition_occurrence_id)) "NULL" else if (is(condition_occurrence_id, "subQuery")) paste0("(", as.character(condition_occurrence_id), ")") else paste0("'", as.character(condition_occurrence_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(condition_concept_id)) {
    fields <- c(fields, "condition_concept_id")
    values <- c(values, if (is.null(condition_concept_id)) "NULL" else if (is(condition_concept_id, "subQuery")) paste0("(", as.character(condition_concept_id), ")") else paste0("'", as.character(condition_concept_id), "'"))
  }

  if (!missing(condition_start_date)) {
    fields <- c(fields, "condition_start_date")
    values <- c(values, if (is.null(condition_start_date)) "NULL" else if (is(condition_start_date, "subQuery")) paste0("(", as.character(condition_start_date), ")") else paste0("'", as.character(condition_start_date), "'"))
  }

  if (!missing(condition_start_datetime)) {
    fields <- c(fields, "condition_start_datetime")
    values <- c(values, if (is.null(condition_start_datetime)) "NULL" else if (is(condition_start_datetime, "subQuery")) paste0("(", as.character(condition_start_datetime), ")") else paste0("'", as.character(condition_start_datetime), "'"))
  }

  if (!missing(condition_end_date)) {
    fields <- c(fields, "condition_end_date")
    values <- c(values, if (is.null(condition_end_date)) "NULL" else if (is(condition_end_date, "subQuery")) paste0("(", as.character(condition_end_date), ")") else paste0("'", as.character(condition_end_date), "'"))
  }

  if (!missing(condition_end_datetime)) {
    fields <- c(fields, "condition_end_datetime")
    values <- c(values, if (is.null(condition_end_datetime)) "NULL" else if (is(condition_end_datetime, "subQuery")) paste0("(", as.character(condition_end_datetime), ")") else paste0("'", as.character(condition_end_datetime), "'"))
  }

  if (!missing(condition_type_concept_id)) {
    fields <- c(fields, "condition_type_concept_id")
    values <- c(values, if (is.null(condition_type_concept_id)) "NULL" else if (is(condition_type_concept_id, "subQuery")) paste0("(", as.character(condition_type_concept_id), ")") else paste0("'", as.character(condition_type_concept_id), "'"))
  }

  if (!missing(stop_reason)) {
    fields <- c(fields, "stop_reason")
    values <- c(values, if (is.null(stop_reason)) "NULL" else if (is(stop_reason, "subQuery")) paste0("(", as.character(stop_reason), ")") else paste0("'", as.character(stop_reason), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
  }

  if (!missing(condition_source_value)) {
    fields <- c(fields, "condition_source_value")
    values <- c(values, if (is.null(condition_source_value)) "NULL" else if (is(condition_source_value, "subQuery")) paste0("(", as.character(condition_source_value), ")") else paste0("'", as.character(condition_source_value), "'"))
  }

  if (!missing(condition_source_concept_id)) {
    fields <- c(fields, "condition_source_concept_id")
    values <- c(values, if (is.null(condition_source_concept_id)) "NULL" else if (is(condition_source_concept_id, "subQuery")) paste0("(", as.character(condition_source_concept_id), ")") else paste0("'", as.character(condition_source_concept_id), "'"))
  }

  if (!missing(condition_status_source_value)) {
    fields <- c(fields, "condition_status_source_value")
    values <- c(values, if (is.null(condition_status_source_value)) "NULL" else if (is(condition_status_source_value, "subQuery")) paste0("(", as.character(condition_status_source_value), ")") else paste0("'", as.character(condition_status_source_value), "'"))
  }

  if (!missing(condition_status_concept_id)) {
    fields <- c(fields, "condition_status_concept_id")
    values <- c(values, if (is.null(condition_status_concept_id)) "NULL" else if (is(condition_status_concept_id, "subQuery")) paste0("(", as.character(condition_status_concept_id), ")") else paste0("'", as.character(condition_status_concept_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "condition_occurrence", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_device_exposure <- function(device_exposure_id, person_id, device_concept_id, device_exposure_start_date, device_exposure_start_datetime, device_exposure_end_date, device_exposure_end_datetime, device_type_concept_id, unique_device_id, quantity, provider_id, visit_occurrence_id, visit_detail_id, device_source_value, device_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(device_exposure_id)) {
    fields <- c(fields, "device_exposure_id")
    values <- c(values, if (is.null(device_exposure_id)) "NULL" else if (is(device_exposure_id, "subQuery")) paste0("(", as.character(device_exposure_id), ")") else paste0("'", as.character(device_exposure_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(device_concept_id)) {
    fields <- c(fields, "device_concept_id")
    values <- c(values, if (is.null(device_concept_id)) "NULL" else if (is(device_concept_id, "subQuery")) paste0("(", as.character(device_concept_id), ")") else paste0("'", as.character(device_concept_id), "'"))
  }

  if (!missing(device_exposure_start_date)) {
    fields <- c(fields, "device_exposure_start_date")
    values <- c(values, if (is.null(device_exposure_start_date)) "NULL" else if (is(device_exposure_start_date, "subQuery")) paste0("(", as.character(device_exposure_start_date), ")") else paste0("'", as.character(device_exposure_start_date), "'"))
  }

  if (!missing(device_exposure_start_datetime)) {
    fields <- c(fields, "device_exposure_start_datetime")
    values <- c(values, if (is.null(device_exposure_start_datetime)) "NULL" else if (is(device_exposure_start_datetime, "subQuery")) paste0("(", as.character(device_exposure_start_datetime), ")") else paste0("'", as.character(device_exposure_start_datetime), "'"))
  }

  if (!missing(device_exposure_end_date)) {
    fields <- c(fields, "device_exposure_end_date")
    values <- c(values, if (is.null(device_exposure_end_date)) "NULL" else if (is(device_exposure_end_date, "subQuery")) paste0("(", as.character(device_exposure_end_date), ")") else paste0("'", as.character(device_exposure_end_date), "'"))
  }

  if (!missing(device_exposure_end_datetime)) {
    fields <- c(fields, "device_exposure_end_datetime")
    values <- c(values, if (is.null(device_exposure_end_datetime)) "NULL" else if (is(device_exposure_end_datetime, "subQuery")) paste0("(", as.character(device_exposure_end_datetime), ")") else paste0("'", as.character(device_exposure_end_datetime), "'"))
  }

  if (!missing(device_type_concept_id)) {
    fields <- c(fields, "device_type_concept_id")
    values <- c(values, if (is.null(device_type_concept_id)) "NULL" else if (is(device_type_concept_id, "subQuery")) paste0("(", as.character(device_type_concept_id), ")") else paste0("'", as.character(device_type_concept_id), "'"))
  }

  if (!missing(unique_device_id)) {
    fields <- c(fields, "unique_device_id")
    values <- c(values, if (is.null(unique_device_id)) "NULL" else if (is(unique_device_id, "subQuery")) paste0("(", as.character(unique_device_id), ")") else paste0("'", as.character(unique_device_id), "'"))
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) "NULL" else if (is(quantity, "subQuery")) paste0("(", as.character(quantity), ")") else paste0("'", as.character(quantity), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
  }

  if (!missing(device_source_value)) {
    fields <- c(fields, "device_source_value")
    values <- c(values, if (is.null(device_source_value)) "NULL" else if (is(device_source_value, "subQuery")) paste0("(", as.character(device_source_value), ")") else paste0("'", as.character(device_source_value), "'"))
  }

  if (!missing(device_source_concept_id)) {
    fields <- c(fields, "device_source_concept_id")
    values <- c(values, if (is.null(device_source_concept_id)) "NULL" else if (is(device_source_concept_id, "subQuery")) paste0("(", as.character(device_source_concept_id), ")") else paste0("'", as.character(device_source_concept_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "device_exposure", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_drug_exposure <- function(drug_exposure_id, person_id, drug_concept_id, drug_exposure_start_date, drug_exposure_start_datetime, drug_exposure_end_date, drug_exposure_end_datetime, verbatim_end_date, drug_type_concept_id, stop_reason, refills, quantity, days_supply, sig, route_concept_id, lot_number, provider_id, visit_occurrence_id, visit_detail_id, drug_source_value, drug_source_concept_id, route_source_value, dose_unit_source_value) {
  fields <- c()
  values <- c()
  if (!missing(drug_exposure_id)) {
    fields <- c(fields, "drug_exposure_id")
    values <- c(values, if (is.null(drug_exposure_id)) "NULL" else if (is(drug_exposure_id, "subQuery")) paste0("(", as.character(drug_exposure_id), ")") else paste0("'", as.character(drug_exposure_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(drug_concept_id)) {
    fields <- c(fields, "drug_concept_id")
    values <- c(values, if (is.null(drug_concept_id)) "NULL" else if (is(drug_concept_id, "subQuery")) paste0("(", as.character(drug_concept_id), ")") else paste0("'", as.character(drug_concept_id), "'"))
  }

  if (!missing(drug_exposure_start_date)) {
    fields <- c(fields, "drug_exposure_start_date")
    values <- c(values, if (is.null(drug_exposure_start_date)) "NULL" else if (is(drug_exposure_start_date, "subQuery")) paste0("(", as.character(drug_exposure_start_date), ")") else paste0("'", as.character(drug_exposure_start_date), "'"))
  }

  if (!missing(drug_exposure_start_datetime)) {
    fields <- c(fields, "drug_exposure_start_datetime")
    values <- c(values, if (is.null(drug_exposure_start_datetime)) "NULL" else if (is(drug_exposure_start_datetime, "subQuery")) paste0("(", as.character(drug_exposure_start_datetime), ")") else paste0("'", as.character(drug_exposure_start_datetime), "'"))
  }

  if (!missing(drug_exposure_end_date)) {
    fields <- c(fields, "drug_exposure_end_date")
    values <- c(values, if (is.null(drug_exposure_end_date)) "NULL" else if (is(drug_exposure_end_date, "subQuery")) paste0("(", as.character(drug_exposure_end_date), ")") else paste0("'", as.character(drug_exposure_end_date), "'"))
  }

  if (!missing(drug_exposure_end_datetime)) {
    fields <- c(fields, "drug_exposure_end_datetime")
    values <- c(values, if (is.null(drug_exposure_end_datetime)) "NULL" else if (is(drug_exposure_end_datetime, "subQuery")) paste0("(", as.character(drug_exposure_end_datetime), ")") else paste0("'", as.character(drug_exposure_end_datetime), "'"))
  }

  if (!missing(verbatim_end_date)) {
    fields <- c(fields, "verbatim_end_date")
    values <- c(values, if (is.null(verbatim_end_date)) "NULL" else if (is(verbatim_end_date, "subQuery")) paste0("(", as.character(verbatim_end_date), ")") else paste0("'", as.character(verbatim_end_date), "'"))
  }

  if (!missing(drug_type_concept_id)) {
    fields <- c(fields, "drug_type_concept_id")
    values <- c(values, if (is.null(drug_type_concept_id)) "NULL" else if (is(drug_type_concept_id, "subQuery")) paste0("(", as.character(drug_type_concept_id), ")") else paste0("'", as.character(drug_type_concept_id), "'"))
  }

  if (!missing(stop_reason)) {
    fields <- c(fields, "stop_reason")
    values <- c(values, if (is.null(stop_reason)) "NULL" else if (is(stop_reason, "subQuery")) paste0("(", as.character(stop_reason), ")") else paste0("'", as.character(stop_reason), "'"))
  }

  if (!missing(refills)) {
    fields <- c(fields, "refills")
    values <- c(values, if (is.null(refills)) "NULL" else if (is(refills, "subQuery")) paste0("(", as.character(refills), ")") else paste0("'", as.character(refills), "'"))
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) "NULL" else if (is(quantity, "subQuery")) paste0("(", as.character(quantity), ")") else paste0("'", as.character(quantity), "'"))
  }

  if (!missing(days_supply)) {
    fields <- c(fields, "days_supply")
    values <- c(values, if (is.null(days_supply)) "NULL" else if (is(days_supply, "subQuery")) paste0("(", as.character(days_supply), ")") else paste0("'", as.character(days_supply), "'"))
  }

  if (!missing(sig)) {
    fields <- c(fields, "sig")
    values <- c(values, if (is.null(sig)) "NULL" else if (is(sig, "subQuery")) paste0("(", as.character(sig), ")") else paste0("'", as.character(sig), "'"))
  }

  if (!missing(route_concept_id)) {
    fields <- c(fields, "route_concept_id")
    values <- c(values, if (is.null(route_concept_id)) "NULL" else if (is(route_concept_id, "subQuery")) paste0("(", as.character(route_concept_id), ")") else paste0("'", as.character(route_concept_id), "'"))
  }

  if (!missing(lot_number)) {
    fields <- c(fields, "lot_number")
    values <- c(values, if (is.null(lot_number)) "NULL" else if (is(lot_number, "subQuery")) paste0("(", as.character(lot_number), ")") else paste0("'", as.character(lot_number), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
  }

  if (!missing(drug_source_value)) {
    fields <- c(fields, "drug_source_value")
    values <- c(values, if (is.null(drug_source_value)) "NULL" else if (is(drug_source_value, "subQuery")) paste0("(", as.character(drug_source_value), ")") else paste0("'", as.character(drug_source_value), "'"))
  }

  if (!missing(drug_source_concept_id)) {
    fields <- c(fields, "drug_source_concept_id")
    values <- c(values, if (is.null(drug_source_concept_id)) "NULL" else if (is(drug_source_concept_id, "subQuery")) paste0("(", as.character(drug_source_concept_id), ")") else paste0("'", as.character(drug_source_concept_id), "'"))
  }

  if (!missing(route_source_value)) {
    fields <- c(fields, "route_source_value")
    values <- c(values, if (is.null(route_source_value)) "NULL" else if (is(route_source_value, "subQuery")) paste0("(", as.character(route_source_value), ")") else paste0("'", as.character(route_source_value), "'"))
  }

  if (!missing(dose_unit_source_value)) {
    fields <- c(fields, "dose_unit_source_value")
    values <- c(values, if (is.null(dose_unit_source_value)) "NULL" else if (is(dose_unit_source_value, "subQuery")) paste0("(", as.character(dose_unit_source_value), ")") else paste0("'", as.character(dose_unit_source_value), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "drug_exposure", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_fact_relationship <- function(domain_concept_id_1, fact_id_1, domain_concept_id_2, fact_id_2, relationship_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(domain_concept_id_1)) {
    fields <- c(fields, "domain_concept_id_1")
    values <- c(values, if (is.null(domain_concept_id_1)) "NULL" else if (is(domain_concept_id_1, "subQuery")) paste0("(", as.character(domain_concept_id_1), ")") else paste0("'", as.character(domain_concept_id_1), "'"))
  }

  if (!missing(fact_id_1)) {
    fields <- c(fields, "fact_id_1")
    values <- c(values, if (is.null(fact_id_1)) "NULL" else if (is(fact_id_1, "subQuery")) paste0("(", as.character(fact_id_1), ")") else paste0("'", as.character(fact_id_1), "'"))
  }

  if (!missing(domain_concept_id_2)) {
    fields <- c(fields, "domain_concept_id_2")
    values <- c(values, if (is.null(domain_concept_id_2)) "NULL" else if (is(domain_concept_id_2, "subQuery")) paste0("(", as.character(domain_concept_id_2), ")") else paste0("'", as.character(domain_concept_id_2), "'"))
  }

  if (!missing(fact_id_2)) {
    fields <- c(fields, "fact_id_2")
    values <- c(values, if (is.null(fact_id_2)) "NULL" else if (is(fact_id_2, "subQuery")) paste0("(", as.character(fact_id_2), ")") else paste0("'", as.character(fact_id_2), "'"))
  }

  if (!missing(relationship_concept_id)) {
    fields <- c(fields, "relationship_concept_id")
    values <- c(values, if (is.null(relationship_concept_id)) "NULL" else if (is(relationship_concept_id, "subQuery")) paste0("(", as.character(relationship_concept_id), ")") else paste0("'", as.character(relationship_concept_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "fact_relationship", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_measurement <- function(measurement_id, person_id, measurement_concept_id, measurement_date, measurement_datetime, measurement_time, measurement_type_concept_id, operator_concept_id, value_as_number, value_as_concept_id, unit_concept_id, range_low, range_high, provider_id, visit_occurrence_id, visit_detail_id, measurement_source_value, measurement_source_concept_id, unit_source_value, value_source_value) {
  fields <- c()
  values <- c()
  if (!missing(measurement_id)) {
    fields <- c(fields, "measurement_id")
    values <- c(values, if (is.null(measurement_id)) "NULL" else if (is(measurement_id, "subQuery")) paste0("(", as.character(measurement_id), ")") else paste0("'", as.character(measurement_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(measurement_concept_id)) {
    fields <- c(fields, "measurement_concept_id")
    values <- c(values, if (is.null(measurement_concept_id)) "NULL" else if (is(measurement_concept_id, "subQuery")) paste0("(", as.character(measurement_concept_id), ")") else paste0("'", as.character(measurement_concept_id), "'"))
  }

  if (!missing(measurement_date)) {
    fields <- c(fields, "measurement_date")
    values <- c(values, if (is.null(measurement_date)) "NULL" else if (is(measurement_date, "subQuery")) paste0("(", as.character(measurement_date), ")") else paste0("'", as.character(measurement_date), "'"))
  }

  if (!missing(measurement_datetime)) {
    fields <- c(fields, "measurement_datetime")
    values <- c(values, if (is.null(measurement_datetime)) "NULL" else if (is(measurement_datetime, "subQuery")) paste0("(", as.character(measurement_datetime), ")") else paste0("'", as.character(measurement_datetime), "'"))
  }

  if (!missing(measurement_time)) {
    fields <- c(fields, "measurement_time")
    values <- c(values, if (is.null(measurement_time)) "NULL" else if (is(measurement_time, "subQuery")) paste0("(", as.character(measurement_time), ")") else paste0("'", as.character(measurement_time), "'"))
  }

  if (!missing(measurement_type_concept_id)) {
    fields <- c(fields, "measurement_type_concept_id")
    values <- c(values, if (is.null(measurement_type_concept_id)) "NULL" else if (is(measurement_type_concept_id, "subQuery")) paste0("(", as.character(measurement_type_concept_id), ")") else paste0("'", as.character(measurement_type_concept_id), "'"))
  }

  if (!missing(operator_concept_id)) {
    fields <- c(fields, "operator_concept_id")
    values <- c(values, if (is.null(operator_concept_id)) "NULL" else if (is(operator_concept_id, "subQuery")) paste0("(", as.character(operator_concept_id), ")") else paste0("'", as.character(operator_concept_id), "'"))
  }

  if (!missing(value_as_number)) {
    fields <- c(fields, "value_as_number")
    values <- c(values, if (is.null(value_as_number)) "NULL" else if (is(value_as_number, "subQuery")) paste0("(", as.character(value_as_number), ")") else paste0("'", as.character(value_as_number), "'"))
  }

  if (!missing(value_as_concept_id)) {
    fields <- c(fields, "value_as_concept_id")
    values <- c(values, if (is.null(value_as_concept_id)) "NULL" else if (is(value_as_concept_id, "subQuery")) paste0("(", as.character(value_as_concept_id), ")") else paste0("'", as.character(value_as_concept_id), "'"))
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) "NULL" else if (is(unit_concept_id, "subQuery")) paste0("(", as.character(unit_concept_id), ")") else paste0("'", as.character(unit_concept_id), "'"))
  }

  if (!missing(range_low)) {
    fields <- c(fields, "range_low")
    values <- c(values, if (is.null(range_low)) "NULL" else if (is(range_low, "subQuery")) paste0("(", as.character(range_low), ")") else paste0("'", as.character(range_low), "'"))
  }

  if (!missing(range_high)) {
    fields <- c(fields, "range_high")
    values <- c(values, if (is.null(range_high)) "NULL" else if (is(range_high, "subQuery")) paste0("(", as.character(range_high), ")") else paste0("'", as.character(range_high), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
  }

  if (!missing(measurement_source_value)) {
    fields <- c(fields, "measurement_source_value")
    values <- c(values, if (is.null(measurement_source_value)) "NULL" else if (is(measurement_source_value, "subQuery")) paste0("(", as.character(measurement_source_value), ")") else paste0("'", as.character(measurement_source_value), "'"))
  }

  if (!missing(measurement_source_concept_id)) {
    fields <- c(fields, "measurement_source_concept_id")
    values <- c(values, if (is.null(measurement_source_concept_id)) "NULL" else if (is(measurement_source_concept_id, "subQuery")) paste0("(", as.character(measurement_source_concept_id), ")") else paste0("'", as.character(measurement_source_concept_id), "'"))
  }

  if (!missing(unit_source_value)) {
    fields <- c(fields, "unit_source_value")
    values <- c(values, if (is.null(unit_source_value)) "NULL" else if (is(unit_source_value, "subQuery")) paste0("(", as.character(unit_source_value), ")") else paste0("'", as.character(unit_source_value), "'"))
  }

  if (!missing(value_source_value)) {
    fields <- c(fields, "value_source_value")
    values <- c(values, if (is.null(value_source_value)) "NULL" else if (is(value_source_value, "subQuery")) paste0("(", as.character(value_source_value), ")") else paste0("'", as.character(value_source_value), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "measurement", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_note <- function(note_id, person_id, note_event_id, note_event_field_concept_id, note_date, note_datetime, note_type_concept_id, note_class_concept_id, note_title, note_text, encoding_concept_id, language_concept_id, provider_id, visit_occurrence_id, visit_detail_id, note_source_value) {
  fields <- c()
  values <- c()
  if (!missing(note_id)) {
    fields <- c(fields, "note_id")
    values <- c(values, if (is.null(note_id)) "NULL" else if (is(note_id, "subQuery")) paste0("(", as.character(note_id), ")") else paste0("'", as.character(note_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(note_event_id)) {
    fields <- c(fields, "note_event_id")
    values <- c(values, if (is.null(note_event_id)) "NULL" else if (is(note_event_id, "subQuery")) paste0("(", as.character(note_event_id), ")") else paste0("'", as.character(note_event_id), "'"))
  }

  if (!missing(note_event_field_concept_id)) {
    fields <- c(fields, "note_event_field_concept_id")
    values <- c(values, if (is.null(note_event_field_concept_id)) "NULL" else if (is(note_event_field_concept_id, "subQuery")) paste0("(", as.character(note_event_field_concept_id), ")") else paste0("'", as.character(note_event_field_concept_id), "'"))
  }

  if (!missing(note_date)) {
    fields <- c(fields, "note_date")
    values <- c(values, if (is.null(note_date)) "NULL" else if (is(note_date, "subQuery")) paste0("(", as.character(note_date), ")") else paste0("'", as.character(note_date), "'"))
  }

  if (!missing(note_datetime)) {
    fields <- c(fields, "note_datetime")
    values <- c(values, if (is.null(note_datetime)) "NULL" else if (is(note_datetime, "subQuery")) paste0("(", as.character(note_datetime), ")") else paste0("'", as.character(note_datetime), "'"))
  }

  if (!missing(note_type_concept_id)) {
    fields <- c(fields, "note_type_concept_id")
    values <- c(values, if (is.null(note_type_concept_id)) "NULL" else if (is(note_type_concept_id, "subQuery")) paste0("(", as.character(note_type_concept_id), ")") else paste0("'", as.character(note_type_concept_id), "'"))
  }

  if (!missing(note_class_concept_id)) {
    fields <- c(fields, "note_class_concept_id")
    values <- c(values, if (is.null(note_class_concept_id)) "NULL" else if (is(note_class_concept_id, "subQuery")) paste0("(", as.character(note_class_concept_id), ")") else paste0("'", as.character(note_class_concept_id), "'"))
  }

  if (!missing(note_title)) {
    fields <- c(fields, "note_title")
    values <- c(values, if (is.null(note_title)) "NULL" else if (is(note_title, "subQuery")) paste0("(", as.character(note_title), ")") else paste0("'", as.character(note_title), "'"))
  }

  if (!missing(note_text)) {
    fields <- c(fields, "note_text")
    values <- c(values, if (is.null(note_text)) "NULL" else if (is(note_text, "subQuery")) paste0("(", as.character(note_text), ")") else paste0("'", as.character(note_text), "'"))
  }

  if (!missing(encoding_concept_id)) {
    fields <- c(fields, "encoding_concept_id")
    values <- c(values, if (is.null(encoding_concept_id)) "NULL" else if (is(encoding_concept_id, "subQuery")) paste0("(", as.character(encoding_concept_id), ")") else paste0("'", as.character(encoding_concept_id), "'"))
  }

  if (!missing(language_concept_id)) {
    fields <- c(fields, "language_concept_id")
    values <- c(values, if (is.null(language_concept_id)) "NULL" else if (is(language_concept_id, "subQuery")) paste0("(", as.character(language_concept_id), ")") else paste0("'", as.character(language_concept_id), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
  }

  if (!missing(note_source_value)) {
    fields <- c(fields, "note_source_value")
    values <- c(values, if (is.null(note_source_value)) "NULL" else if (is(note_source_value, "subQuery")) paste0("(", as.character(note_source_value), ")") else paste0("'", as.character(note_source_value), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "note", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_note_nlp <- function(note_nlp_id, note_id, section_concept_id, snippet, offset, lexical_variant, note_nlp_concept_id, note_nlp_source_concept_id, nlp_system, nlp_date, nlp_datetime, term_exists, term_temporal, term_modifiers) {
  fields <- c()
  values <- c()
  if (!missing(note_nlp_id)) {
    fields <- c(fields, "note_nlp_id")
    values <- c(values, if (is.null(note_nlp_id)) "NULL" else if (is(note_nlp_id, "subQuery")) paste0("(", as.character(note_nlp_id), ")") else paste0("'", as.character(note_nlp_id), "'"))
  }

  if (!missing(note_id)) {
    fields <- c(fields, "note_id")
    values <- c(values, if (is.null(note_id)) "NULL" else if (is(note_id, "subQuery")) paste0("(", as.character(note_id), ")") else paste0("'", as.character(note_id), "'"))
  }

  if (!missing(section_concept_id)) {
    fields <- c(fields, "section_concept_id")
    values <- c(values, if (is.null(section_concept_id)) "NULL" else if (is(section_concept_id, "subQuery")) paste0("(", as.character(section_concept_id), ")") else paste0("'", as.character(section_concept_id), "'"))
  }

  if (!missing(snippet)) {
    fields <- c(fields, "snippet")
    values <- c(values, if (is.null(snippet)) "NULL" else if (is(snippet, "subQuery")) paste0("(", as.character(snippet), ")") else paste0("'", as.character(snippet), "'"))
  }

  if (!missing(offset)) {
    fields <- c(fields, "offset")
    values <- c(values, if (is.null(offset)) "NULL" else if (is(offset, "subQuery")) paste0("(", as.character(offset), ")") else paste0("'", as.character(offset), "'"))
  }

  if (!missing(lexical_variant)) {
    fields <- c(fields, "lexical_variant")
    values <- c(values, if (is.null(lexical_variant)) "NULL" else if (is(lexical_variant, "subQuery")) paste0("(", as.character(lexical_variant), ")") else paste0("'", as.character(lexical_variant), "'"))
  }

  if (!missing(note_nlp_concept_id)) {
    fields <- c(fields, "note_nlp_concept_id")
    values <- c(values, if (is.null(note_nlp_concept_id)) "NULL" else if (is(note_nlp_concept_id, "subQuery")) paste0("(", as.character(note_nlp_concept_id), ")") else paste0("'", as.character(note_nlp_concept_id), "'"))
  }

  if (!missing(note_nlp_source_concept_id)) {
    fields <- c(fields, "note_nlp_source_concept_id")
    values <- c(values, if (is.null(note_nlp_source_concept_id)) "NULL" else if (is(note_nlp_source_concept_id, "subQuery")) paste0("(", as.character(note_nlp_source_concept_id), ")") else paste0("'", as.character(note_nlp_source_concept_id), "'"))
  }

  if (!missing(nlp_system)) {
    fields <- c(fields, "nlp_system")
    values <- c(values, if (is.null(nlp_system)) "NULL" else if (is(nlp_system, "subQuery")) paste0("(", as.character(nlp_system), ")") else paste0("'", as.character(nlp_system), "'"))
  }

  if (!missing(nlp_date)) {
    fields <- c(fields, "nlp_date")
    values <- c(values, if (is.null(nlp_date)) "NULL" else if (is(nlp_date, "subQuery")) paste0("(", as.character(nlp_date), ")") else paste0("'", as.character(nlp_date), "'"))
  }

  if (!missing(nlp_datetime)) {
    fields <- c(fields, "nlp_datetime")
    values <- c(values, if (is.null(nlp_datetime)) "NULL" else if (is(nlp_datetime, "subQuery")) paste0("(", as.character(nlp_datetime), ")") else paste0("'", as.character(nlp_datetime), "'"))
  }

  if (!missing(term_exists)) {
    fields <- c(fields, "term_exists")
    values <- c(values, if (is.null(term_exists)) "NULL" else if (is(term_exists, "subQuery")) paste0("(", as.character(term_exists), ")") else paste0("'", as.character(term_exists), "'"))
  }

  if (!missing(term_temporal)) {
    fields <- c(fields, "term_temporal")
    values <- c(values, if (is.null(term_temporal)) "NULL" else if (is(term_temporal, "subQuery")) paste0("(", as.character(term_temporal), ")") else paste0("'", as.character(term_temporal), "'"))
  }

  if (!missing(term_modifiers)) {
    fields <- c(fields, "term_modifiers")
    values <- c(values, if (is.null(term_modifiers)) "NULL" else if (is(term_modifiers, "subQuery")) paste0("(", as.character(term_modifiers), ")") else paste0("'", as.character(term_modifiers), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "note_nlp", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_observation <- function(observation_id, person_id, observation_concept_id, observation_date, observation_datetime, observation_type_concept_id, value_as_number, value_as_string, value_as_concept_id, qualifier_concept_id, unit_concept_id, provider_id, visit_occurrence_id, visit_detail_id, observation_source_value, observation_source_concept_id, unit_source_value, qualifier_source_value, observation_event_id, obs_event_field_concept_id, value_as_datetime) {
  fields <- c()
  values <- c()
  if (!missing(observation_id)) {
    fields <- c(fields, "observation_id")
    values <- c(values, if (is.null(observation_id)) "NULL" else if (is(observation_id, "subQuery")) paste0("(", as.character(observation_id), ")") else paste0("'", as.character(observation_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(observation_concept_id)) {
    fields <- c(fields, "observation_concept_id")
    values <- c(values, if (is.null(observation_concept_id)) "NULL" else if (is(observation_concept_id, "subQuery")) paste0("(", as.character(observation_concept_id), ")") else paste0("'", as.character(observation_concept_id), "'"))
  }

  if (!missing(observation_date)) {
    fields <- c(fields, "observation_date")
    values <- c(values, if (is.null(observation_date)) "NULL" else if (is(observation_date, "subQuery")) paste0("(", as.character(observation_date), ")") else paste0("'", as.character(observation_date), "'"))
  }

  if (!missing(observation_datetime)) {
    fields <- c(fields, "observation_datetime")
    values <- c(values, if (is.null(observation_datetime)) "NULL" else if (is(observation_datetime, "subQuery")) paste0("(", as.character(observation_datetime), ")") else paste0("'", as.character(observation_datetime), "'"))
  }

  if (!missing(observation_type_concept_id)) {
    fields <- c(fields, "observation_type_concept_id")
    values <- c(values, if (is.null(observation_type_concept_id)) "NULL" else if (is(observation_type_concept_id, "subQuery")) paste0("(", as.character(observation_type_concept_id), ")") else paste0("'", as.character(observation_type_concept_id), "'"))
  }

  if (!missing(value_as_number)) {
    fields <- c(fields, "value_as_number")
    values <- c(values, if (is.null(value_as_number)) "NULL" else if (is(value_as_number, "subQuery")) paste0("(", as.character(value_as_number), ")") else paste0("'", as.character(value_as_number), "'"))
  }

  if (!missing(value_as_string)) {
    fields <- c(fields, "value_as_string")
    values <- c(values, if (is.null(value_as_string)) "NULL" else if (is(value_as_string, "subQuery")) paste0("(", as.character(value_as_string), ")") else paste0("'", as.character(value_as_string), "'"))
  }

  if (!missing(value_as_concept_id)) {
    fields <- c(fields, "value_as_concept_id")
    values <- c(values, if (is.null(value_as_concept_id)) "NULL" else if (is(value_as_concept_id, "subQuery")) paste0("(", as.character(value_as_concept_id), ")") else paste0("'", as.character(value_as_concept_id), "'"))
  }

  if (!missing(qualifier_concept_id)) {
    fields <- c(fields, "qualifier_concept_id")
    values <- c(values, if (is.null(qualifier_concept_id)) "NULL" else if (is(qualifier_concept_id, "subQuery")) paste0("(", as.character(qualifier_concept_id), ")") else paste0("'", as.character(qualifier_concept_id), "'"))
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) "NULL" else if (is(unit_concept_id, "subQuery")) paste0("(", as.character(unit_concept_id), ")") else paste0("'", as.character(unit_concept_id), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
  }

  if (!missing(observation_source_value)) {
    fields <- c(fields, "observation_source_value")
    values <- c(values, if (is.null(observation_source_value)) "NULL" else if (is(observation_source_value, "subQuery")) paste0("(", as.character(observation_source_value), ")") else paste0("'", as.character(observation_source_value), "'"))
  }

  if (!missing(observation_source_concept_id)) {
    fields <- c(fields, "observation_source_concept_id")
    values <- c(values, if (is.null(observation_source_concept_id)) "NULL" else if (is(observation_source_concept_id, "subQuery")) paste0("(", as.character(observation_source_concept_id), ")") else paste0("'", as.character(observation_source_concept_id), "'"))
  }

  if (!missing(unit_source_value)) {
    fields <- c(fields, "unit_source_value")
    values <- c(values, if (is.null(unit_source_value)) "NULL" else if (is(unit_source_value, "subQuery")) paste0("(", as.character(unit_source_value), ")") else paste0("'", as.character(unit_source_value), "'"))
  }

  if (!missing(qualifier_source_value)) {
    fields <- c(fields, "qualifier_source_value")
    values <- c(values, if (is.null(qualifier_source_value)) "NULL" else if (is(qualifier_source_value, "subQuery")) paste0("(", as.character(qualifier_source_value), ")") else paste0("'", as.character(qualifier_source_value), "'"))
  }

  if (!missing(observation_event_id)) {
    fields <- c(fields, "observation_event_id")
    values <- c(values, if (is.null(observation_event_id)) "NULL" else if (is(observation_event_id, "subQuery")) paste0("(", as.character(observation_event_id), ")") else paste0("'", as.character(observation_event_id), "'"))
  }

  if (!missing(obs_event_field_concept_id)) {
    fields <- c(fields, "obs_event_field_concept_id")
    values <- c(values, if (is.null(obs_event_field_concept_id)) "NULL" else if (is(obs_event_field_concept_id, "subQuery")) paste0("(", as.character(obs_event_field_concept_id), ")") else paste0("'", as.character(obs_event_field_concept_id), "'"))
  }

  if (!missing(value_as_datetime)) {
    fields <- c(fields, "value_as_datetime")
    values <- c(values, if (is.null(value_as_datetime)) "NULL" else if (is(value_as_datetime, "subQuery")) paste0("(", as.character(value_as_datetime), ")") else paste0("'", as.character(value_as_datetime), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "observation", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_procedure_occurrence <- function(procedure_occurrence_id, person_id, procedure_concept_id, procedure_date, procedure_datetime, procedure_type_concept_id, modifier_concept_id, quantity, provider_id, visit_occurrence_id, visit_detail_id, procedure_source_value, procedure_source_concept_id, modifier_source_value) {
  fields <- c()
  values <- c()
  if (!missing(procedure_occurrence_id)) {
    fields <- c(fields, "procedure_occurrence_id")
    values <- c(values, if (is.null(procedure_occurrence_id)) "NULL" else if (is(procedure_occurrence_id, "subQuery")) paste0("(", as.character(procedure_occurrence_id), ")") else paste0("'", as.character(procedure_occurrence_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(procedure_concept_id)) {
    fields <- c(fields, "procedure_concept_id")
    values <- c(values, if (is.null(procedure_concept_id)) "NULL" else if (is(procedure_concept_id, "subQuery")) paste0("(", as.character(procedure_concept_id), ")") else paste0("'", as.character(procedure_concept_id), "'"))
  }

  if (!missing(procedure_date)) {
    fields <- c(fields, "procedure_date")
    values <- c(values, if (is.null(procedure_date)) "NULL" else if (is(procedure_date, "subQuery")) paste0("(", as.character(procedure_date), ")") else paste0("'", as.character(procedure_date), "'"))
  }

  if (!missing(procedure_datetime)) {
    fields <- c(fields, "procedure_datetime")
    values <- c(values, if (is.null(procedure_datetime)) "NULL" else if (is(procedure_datetime, "subQuery")) paste0("(", as.character(procedure_datetime), ")") else paste0("'", as.character(procedure_datetime), "'"))
  }

  if (!missing(procedure_type_concept_id)) {
    fields <- c(fields, "procedure_type_concept_id")
    values <- c(values, if (is.null(procedure_type_concept_id)) "NULL" else if (is(procedure_type_concept_id, "subQuery")) paste0("(", as.character(procedure_type_concept_id), ")") else paste0("'", as.character(procedure_type_concept_id), "'"))
  }

  if (!missing(modifier_concept_id)) {
    fields <- c(fields, "modifier_concept_id")
    values <- c(values, if (is.null(modifier_concept_id)) "NULL" else if (is(modifier_concept_id, "subQuery")) paste0("(", as.character(modifier_concept_id), ")") else paste0("'", as.character(modifier_concept_id), "'"))
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) "NULL" else if (is(quantity, "subQuery")) paste0("(", as.character(quantity), ")") else paste0("'", as.character(quantity), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
  }

  if (!missing(procedure_source_value)) {
    fields <- c(fields, "procedure_source_value")
    values <- c(values, if (is.null(procedure_source_value)) "NULL" else if (is(procedure_source_value, "subQuery")) paste0("(", as.character(procedure_source_value), ")") else paste0("'", as.character(procedure_source_value), "'"))
  }

  if (!missing(procedure_source_concept_id)) {
    fields <- c(fields, "procedure_source_concept_id")
    values <- c(values, if (is.null(procedure_source_concept_id)) "NULL" else if (is(procedure_source_concept_id, "subQuery")) paste0("(", as.character(procedure_source_concept_id), ")") else paste0("'", as.character(procedure_source_concept_id), "'"))
  }

  if (!missing(modifier_source_value)) {
    fields <- c(fields, "modifier_source_value")
    values <- c(values, if (is.null(modifier_source_value)) "NULL" else if (is(modifier_source_value, "subQuery")) paste0("(", as.character(modifier_source_value), ")") else paste0("'", as.character(modifier_source_value), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "procedure_occurrence", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_specimen <- function(specimen_id, person_id, specimen_concept_id, specimen_type_concept_id, specimen_date, specimen_datetime, quantity, unit_concept_id, anatomic_site_concept_id, disease_status_concept_id, specimen_source_id, specimen_source_value, unit_source_value, anatomic_site_source_value, disease_status_source_value) {
  fields <- c()
  values <- c()
  if (!missing(specimen_id)) {
    fields <- c(fields, "specimen_id")
    values <- c(values, if (is.null(specimen_id)) "NULL" else if (is(specimen_id, "subQuery")) paste0("(", as.character(specimen_id), ")") else paste0("'", as.character(specimen_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(specimen_concept_id)) {
    fields <- c(fields, "specimen_concept_id")
    values <- c(values, if (is.null(specimen_concept_id)) "NULL" else if (is(specimen_concept_id, "subQuery")) paste0("(", as.character(specimen_concept_id), ")") else paste0("'", as.character(specimen_concept_id), "'"))
  }

  if (!missing(specimen_type_concept_id)) {
    fields <- c(fields, "specimen_type_concept_id")
    values <- c(values, if (is.null(specimen_type_concept_id)) "NULL" else if (is(specimen_type_concept_id, "subQuery")) paste0("(", as.character(specimen_type_concept_id), ")") else paste0("'", as.character(specimen_type_concept_id), "'"))
  }

  if (!missing(specimen_date)) {
    fields <- c(fields, "specimen_date")
    values <- c(values, if (is.null(specimen_date)) "NULL" else if (is(specimen_date, "subQuery")) paste0("(", as.character(specimen_date), ")") else paste0("'", as.character(specimen_date), "'"))
  }

  if (!missing(specimen_datetime)) {
    fields <- c(fields, "specimen_datetime")
    values <- c(values, if (is.null(specimen_datetime)) "NULL" else if (is(specimen_datetime, "subQuery")) paste0("(", as.character(specimen_datetime), ")") else paste0("'", as.character(specimen_datetime), "'"))
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) "NULL" else if (is(quantity, "subQuery")) paste0("(", as.character(quantity), ")") else paste0("'", as.character(quantity), "'"))
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) "NULL" else if (is(unit_concept_id, "subQuery")) paste0("(", as.character(unit_concept_id), ")") else paste0("'", as.character(unit_concept_id), "'"))
  }

  if (!missing(anatomic_site_concept_id)) {
    fields <- c(fields, "anatomic_site_concept_id")
    values <- c(values, if (is.null(anatomic_site_concept_id)) "NULL" else if (is(anatomic_site_concept_id, "subQuery")) paste0("(", as.character(anatomic_site_concept_id), ")") else paste0("'", as.character(anatomic_site_concept_id), "'"))
  }

  if (!missing(disease_status_concept_id)) {
    fields <- c(fields, "disease_status_concept_id")
    values <- c(values, if (is.null(disease_status_concept_id)) "NULL" else if (is(disease_status_concept_id, "subQuery")) paste0("(", as.character(disease_status_concept_id), ")") else paste0("'", as.character(disease_status_concept_id), "'"))
  }

  if (!missing(specimen_source_id)) {
    fields <- c(fields, "specimen_source_id")
    values <- c(values, if (is.null(specimen_source_id)) "NULL" else if (is(specimen_source_id, "subQuery")) paste0("(", as.character(specimen_source_id), ")") else paste0("'", as.character(specimen_source_id), "'"))
  }

  if (!missing(specimen_source_value)) {
    fields <- c(fields, "specimen_source_value")
    values <- c(values, if (is.null(specimen_source_value)) "NULL" else if (is(specimen_source_value, "subQuery")) paste0("(", as.character(specimen_source_value), ")") else paste0("'", as.character(specimen_source_value), "'"))
  }

  if (!missing(unit_source_value)) {
    fields <- c(fields, "unit_source_value")
    values <- c(values, if (is.null(unit_source_value)) "NULL" else if (is(unit_source_value, "subQuery")) paste0("(", as.character(unit_source_value), ")") else paste0("'", as.character(unit_source_value), "'"))
  }

  if (!missing(anatomic_site_source_value)) {
    fields <- c(fields, "anatomic_site_source_value")
    values <- c(values, if (is.null(anatomic_site_source_value)) "NULL" else if (is(anatomic_site_source_value, "subQuery")) paste0("(", as.character(anatomic_site_source_value), ")") else paste0("'", as.character(anatomic_site_source_value), "'"))
  }

  if (!missing(disease_status_source_value)) {
    fields <- c(fields, "disease_status_source_value")
    values <- c(values, if (is.null(disease_status_source_value)) "NULL" else if (is(disease_status_source_value, "subQuery")) paste0("(", as.character(disease_status_source_value), ")") else paste0("'", as.character(disease_status_source_value), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "specimen", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_visit_detail <- function(visit_detail_id, person_id, visit_detail_concept_id, visit_detail_start_date, visit_detail_start_datetime, visit_detail_end_date, visit_detail_end_datetime, visit_detail_type_concept_id, provider_id, care_site_id, visit_detail_source_value, visit_detail_source_concept_id, admitting_source_value, admitting_source_concept_id, admitted_from_source_value, admitted_from_concept_id, preceding_visit_detail_id, visit_detail_parent_id, visit_occurrence_id) {
  fields <- c()
  values <- c()
  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(visit_detail_concept_id)) {
    fields <- c(fields, "visit_detail_concept_id")
    values <- c(values, if (is.null(visit_detail_concept_id)) "NULL" else if (is(visit_detail_concept_id, "subQuery")) paste0("(", as.character(visit_detail_concept_id), ")") else paste0("'", as.character(visit_detail_concept_id), "'"))
  }

  if (!missing(visit_detail_start_date)) {
    fields <- c(fields, "visit_detail_start_date")
    values <- c(values, if (is.null(visit_detail_start_date)) "NULL" else if (is(visit_detail_start_date, "subQuery")) paste0("(", as.character(visit_detail_start_date), ")") else paste0("'", as.character(visit_detail_start_date), "'"))
  }

  if (!missing(visit_detail_start_datetime)) {
    fields <- c(fields, "visit_detail_start_datetime")
    values <- c(values, if (is.null(visit_detail_start_datetime)) "NULL" else if (is(visit_detail_start_datetime, "subQuery")) paste0("(", as.character(visit_detail_start_datetime), ")") else paste0("'", as.character(visit_detail_start_datetime), "'"))
  }

  if (!missing(visit_detail_end_date)) {
    fields <- c(fields, "visit_detail_end_date")
    values <- c(values, if (is.null(visit_detail_end_date)) "NULL" else if (is(visit_detail_end_date, "subQuery")) paste0("(", as.character(visit_detail_end_date), ")") else paste0("'", as.character(visit_detail_end_date), "'"))
  }

  if (!missing(visit_detail_end_datetime)) {
    fields <- c(fields, "visit_detail_end_datetime")
    values <- c(values, if (is.null(visit_detail_end_datetime)) "NULL" else if (is(visit_detail_end_datetime, "subQuery")) paste0("(", as.character(visit_detail_end_datetime), ")") else paste0("'", as.character(visit_detail_end_datetime), "'"))
  }

  if (!missing(visit_detail_type_concept_id)) {
    fields <- c(fields, "visit_detail_type_concept_id")
    values <- c(values, if (is.null(visit_detail_type_concept_id)) "NULL" else if (is(visit_detail_type_concept_id, "subQuery")) paste0("(", as.character(visit_detail_type_concept_id), ")") else paste0("'", as.character(visit_detail_type_concept_id), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
  }

  if (!missing(visit_detail_source_value)) {
    fields <- c(fields, "visit_detail_source_value")
    values <- c(values, if (is.null(visit_detail_source_value)) "NULL" else if (is(visit_detail_source_value, "subQuery")) paste0("(", as.character(visit_detail_source_value), ")") else paste0("'", as.character(visit_detail_source_value), "'"))
  }

  if (!missing(visit_detail_source_concept_id)) {
    fields <- c(fields, "visit_detail_source_concept_id")
    values <- c(values, if (is.null(visit_detail_source_concept_id)) "NULL" else if (is(visit_detail_source_concept_id, "subQuery")) paste0("(", as.character(visit_detail_source_concept_id), ")") else paste0("'", as.character(visit_detail_source_concept_id), "'"))
  }

  if (!missing(admitting_source_value)) {
    fields <- c(fields, "admitting_source_value")
    values <- c(values, if (is.null(admitting_source_value)) "NULL" else if (is(admitting_source_value, "subQuery")) paste0("(", as.character(admitting_source_value), ")") else paste0("'", as.character(admitting_source_value), "'"))
  }

  if (!missing(admitting_source_concept_id)) {
    fields <- c(fields, "admitting_source_concept_id")
    values <- c(values, if (is.null(admitting_source_concept_id)) "NULL" else if (is(admitting_source_concept_id, "subQuery")) paste0("(", as.character(admitting_source_concept_id), ")") else paste0("'", as.character(admitting_source_concept_id), "'"))
  }

  if (!missing(admitted_from_source_value)) {
    fields <- c(fields, "admitted_from_source_value")
    values <- c(values, if (is.null(admitted_from_source_value)) "NULL" else if (is(admitted_from_source_value, "subQuery")) paste0("(", as.character(admitted_from_source_value), ")") else paste0("'", as.character(admitted_from_source_value), "'"))
  }

  if (!missing(admitted_from_concept_id)) {
    fields <- c(fields, "admitted_from_concept_id")
    values <- c(values, if (is.null(admitted_from_concept_id)) "NULL" else if (is(admitted_from_concept_id, "subQuery")) paste0("(", as.character(admitted_from_concept_id), ")") else paste0("'", as.character(admitted_from_concept_id), "'"))
  }

  if (!missing(preceding_visit_detail_id)) {
    fields <- c(fields, "preceding_visit_detail_id")
    values <- c(values, if (is.null(preceding_visit_detail_id)) "NULL" else if (is(preceding_visit_detail_id, "subQuery")) paste0("(", as.character(preceding_visit_detail_id), ")") else paste0("'", as.character(preceding_visit_detail_id), "'"))
  }

  if (!missing(visit_detail_parent_id)) {
    fields <- c(fields, "visit_detail_parent_id")
    values <- c(values, if (is.null(visit_detail_parent_id)) "NULL" else if (is(visit_detail_parent_id, "subQuery")) paste0("(", as.character(visit_detail_parent_id), ")") else paste0("'", as.character(visit_detail_parent_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "visit_detail", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_cohort <- function(cohort_definition_id, subject_id, cohort_start_date, cohort_end_date) {
  fields <- c()
  values <- c()
  if (!missing(cohort_definition_id)) {
    fields <- c(fields, "cohort_definition_id")
    values <- c(values, if (is.null(cohort_definition_id)) "NULL" else if (is(cohort_definition_id, "subQuery")) paste0("(", as.character(cohort_definition_id), ")") else paste0("'", as.character(cohort_definition_id), "'"))
  }

  if (!missing(subject_id)) {
    fields <- c(fields, "subject_id")
    values <- c(values, if (is.null(subject_id)) "NULL" else if (is(subject_id, "subQuery")) paste0("(", as.character(subject_id), ")") else paste0("'", as.character(subject_id), "'"))
  }

  if (!missing(cohort_start_date)) {
    fields <- c(fields, "cohort_start_date")
    values <- c(values, if (is.null(cohort_start_date)) "NULL" else if (is(cohort_start_date, "subQuery")) paste0("(", as.character(cohort_start_date), ")") else paste0("'", as.character(cohort_start_date), "'"))
  }

  if (!missing(cohort_end_date)) {
    fields <- c(fields, "cohort_end_date")
    values <- c(values, if (is.null(cohort_end_date)) "NULL" else if (is(cohort_end_date, "subQuery")) paste0("(", as.character(cohort_end_date), ")") else paste0("'", as.character(cohort_end_date), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "cohort", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_condition_era <- function(condition_era_id, person_id, condition_concept_id, condition_era_start_datetime, condition_era_end_datetime, condition_occurrence_count) {
  fields <- c()
  values <- c()
  if (!missing(condition_era_id)) {
    fields <- c(fields, "condition_era_id")
    values <- c(values, if (is.null(condition_era_id)) "NULL" else if (is(condition_era_id, "subQuery")) paste0("(", as.character(condition_era_id), ")") else paste0("'", as.character(condition_era_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(condition_concept_id)) {
    fields <- c(fields, "condition_concept_id")
    values <- c(values, if (is.null(condition_concept_id)) "NULL" else if (is(condition_concept_id, "subQuery")) paste0("(", as.character(condition_concept_id), ")") else paste0("'", as.character(condition_concept_id), "'"))
  }

  if (!missing(condition_era_start_datetime)) {
    fields <- c(fields, "condition_era_start_datetime")
    values <- c(values, if (is.null(condition_era_start_datetime)) "NULL" else if (is(condition_era_start_datetime, "subQuery")) paste0("(", as.character(condition_era_start_datetime), ")") else paste0("'", as.character(condition_era_start_datetime), "'"))
  }

  if (!missing(condition_era_end_datetime)) {
    fields <- c(fields, "condition_era_end_datetime")
    values <- c(values, if (is.null(condition_era_end_datetime)) "NULL" else if (is(condition_era_end_datetime, "subQuery")) paste0("(", as.character(condition_era_end_datetime), ")") else paste0("'", as.character(condition_era_end_datetime), "'"))
  }

  if (!missing(condition_occurrence_count)) {
    fields <- c(fields, "condition_occurrence_count")
    values <- c(values, if (is.null(condition_occurrence_count)) "NULL" else if (is(condition_occurrence_count, "subQuery")) paste0("(", as.character(condition_occurrence_count), ")") else paste0("'", as.character(condition_occurrence_count), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "condition_era", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_dose_era <- function(dose_era_id, person_id, drug_concept_id, unit_concept_id, dose_value, dose_era_start_datetime, dose_era_end_datetime) {
  fields <- c()
  values <- c()
  if (!missing(dose_era_id)) {
    fields <- c(fields, "dose_era_id")
    values <- c(values, if (is.null(dose_era_id)) "NULL" else if (is(dose_era_id, "subQuery")) paste0("(", as.character(dose_era_id), ")") else paste0("'", as.character(dose_era_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(drug_concept_id)) {
    fields <- c(fields, "drug_concept_id")
    values <- c(values, if (is.null(drug_concept_id)) "NULL" else if (is(drug_concept_id, "subQuery")) paste0("(", as.character(drug_concept_id), ")") else paste0("'", as.character(drug_concept_id), "'"))
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) "NULL" else if (is(unit_concept_id, "subQuery")) paste0("(", as.character(unit_concept_id), ")") else paste0("'", as.character(unit_concept_id), "'"))
  }

  if (!missing(dose_value)) {
    fields <- c(fields, "dose_value")
    values <- c(values, if (is.null(dose_value)) "NULL" else if (is(dose_value, "subQuery")) paste0("(", as.character(dose_value), ")") else paste0("'", as.character(dose_value), "'"))
  }

  if (!missing(dose_era_start_datetime)) {
    fields <- c(fields, "dose_era_start_datetime")
    values <- c(values, if (is.null(dose_era_start_datetime)) "NULL" else if (is(dose_era_start_datetime, "subQuery")) paste0("(", as.character(dose_era_start_datetime), ")") else paste0("'", as.character(dose_era_start_datetime), "'"))
  }

  if (!missing(dose_era_end_datetime)) {
    fields <- c(fields, "dose_era_end_datetime")
    values <- c(values, if (is.null(dose_era_end_datetime)) "NULL" else if (is(dose_era_end_datetime, "subQuery")) paste0("(", as.character(dose_era_end_datetime), ")") else paste0("'", as.character(dose_era_end_datetime), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "dose_era", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_drug_era <- function(drug_era_id, person_id, drug_concept_id, drug_era_start_datetime, drug_era_end_datetime, drug_exposure_count, gap_days) {
  fields <- c()
  values <- c()
  if (!missing(drug_era_id)) {
    fields <- c(fields, "drug_era_id")
    values <- c(values, if (is.null(drug_era_id)) "NULL" else if (is(drug_era_id, "subQuery")) paste0("(", as.character(drug_era_id), ")") else paste0("'", as.character(drug_era_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(drug_concept_id)) {
    fields <- c(fields, "drug_concept_id")
    values <- c(values, if (is.null(drug_concept_id)) "NULL" else if (is(drug_concept_id, "subQuery")) paste0("(", as.character(drug_concept_id), ")") else paste0("'", as.character(drug_concept_id), "'"))
  }

  if (!missing(drug_era_start_datetime)) {
    fields <- c(fields, "drug_era_start_datetime")
    values <- c(values, if (is.null(drug_era_start_datetime)) "NULL" else if (is(drug_era_start_datetime, "subQuery")) paste0("(", as.character(drug_era_start_datetime), ")") else paste0("'", as.character(drug_era_start_datetime), "'"))
  }

  if (!missing(drug_era_end_datetime)) {
    fields <- c(fields, "drug_era_end_datetime")
    values <- c(values, if (is.null(drug_era_end_datetime)) "NULL" else if (is(drug_era_end_datetime, "subQuery")) paste0("(", as.character(drug_era_end_datetime), ")") else paste0("'", as.character(drug_era_end_datetime), "'"))
  }

  if (!missing(drug_exposure_count)) {
    fields <- c(fields, "drug_exposure_count")
    values <- c(values, if (is.null(drug_exposure_count)) "NULL" else if (is(drug_exposure_count, "subQuery")) paste0("(", as.character(drug_exposure_count), ")") else paste0("'", as.character(drug_exposure_count), "'"))
  }

  if (!missing(gap_days)) {
    fields <- c(fields, "gap_days")
    values <- c(values, if (is.null(gap_days)) "NULL" else if (is(gap_days, "subQuery")) paste0("(", as.character(gap_days), ")") else paste0("'", as.character(gap_days), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "drug_era", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_cost <- function(cost_id, person_id, cost_event_id, cost_event_field_concept_id, cost_concept_id, cost_type_concept_id, cost_source_concept_id, cost_source_value, currency_concept_id, cost, incurred_date, billed_date, paid_date, revenue_code_concept_id, drg_concept_id, revenue_code_source_value, drg_source_value, payer_plan_period_id) {
  fields <- c()
  values <- c()
  if (!missing(cost_id)) {
    fields <- c(fields, "cost_id")
    values <- c(values, if (is.null(cost_id)) "NULL" else if (is(cost_id, "subQuery")) paste0("(", as.character(cost_id), ")") else paste0("'", as.character(cost_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(cost_event_id)) {
    fields <- c(fields, "cost_event_id")
    values <- c(values, if (is.null(cost_event_id)) "NULL" else if (is(cost_event_id, "subQuery")) paste0("(", as.character(cost_event_id), ")") else paste0("'", as.character(cost_event_id), "'"))
  }

  if (!missing(cost_event_field_concept_id)) {
    fields <- c(fields, "cost_event_field_concept_id")
    values <- c(values, if (is.null(cost_event_field_concept_id)) "NULL" else if (is(cost_event_field_concept_id, "subQuery")) paste0("(", as.character(cost_event_field_concept_id), ")") else paste0("'", as.character(cost_event_field_concept_id), "'"))
  }

  if (!missing(cost_concept_id)) {
    fields <- c(fields, "cost_concept_id")
    values <- c(values, if (is.null(cost_concept_id)) "NULL" else if (is(cost_concept_id, "subQuery")) paste0("(", as.character(cost_concept_id), ")") else paste0("'", as.character(cost_concept_id), "'"))
  }

  if (!missing(cost_type_concept_id)) {
    fields <- c(fields, "cost_type_concept_id")
    values <- c(values, if (is.null(cost_type_concept_id)) "NULL" else if (is(cost_type_concept_id, "subQuery")) paste0("(", as.character(cost_type_concept_id), ")") else paste0("'", as.character(cost_type_concept_id), "'"))
  }

  if (!missing(cost_source_concept_id)) {
    fields <- c(fields, "cost_source_concept_id")
    values <- c(values, if (is.null(cost_source_concept_id)) "NULL" else if (is(cost_source_concept_id, "subQuery")) paste0("(", as.character(cost_source_concept_id), ")") else paste0("'", as.character(cost_source_concept_id), "'"))
  }

  if (!missing(cost_source_value)) {
    fields <- c(fields, "cost_source_value")
    values <- c(values, if (is.null(cost_source_value)) "NULL" else if (is(cost_source_value, "subQuery")) paste0("(", as.character(cost_source_value), ")") else paste0("'", as.character(cost_source_value), "'"))
  }

  if (!missing(currency_concept_id)) {
    fields <- c(fields, "currency_concept_id")
    values <- c(values, if (is.null(currency_concept_id)) "NULL" else if (is(currency_concept_id, "subQuery")) paste0("(", as.character(currency_concept_id), ")") else paste0("'", as.character(currency_concept_id), "'"))
  }

  if (!missing(cost)) {
    fields <- c(fields, "cost")
    values <- c(values, if (is.null(cost)) "NULL" else if (is(cost, "subQuery")) paste0("(", as.character(cost), ")") else paste0("'", as.character(cost), "'"))
  }

  if (!missing(incurred_date)) {
    fields <- c(fields, "incurred_date")
    values <- c(values, if (is.null(incurred_date)) "NULL" else if (is(incurred_date, "subQuery")) paste0("(", as.character(incurred_date), ")") else paste0("'", as.character(incurred_date), "'"))
  }

  if (!missing(billed_date)) {
    fields <- c(fields, "billed_date")
    values <- c(values, if (is.null(billed_date)) "NULL" else if (is(billed_date, "subQuery")) paste0("(", as.character(billed_date), ")") else paste0("'", as.character(billed_date), "'"))
  }

  if (!missing(paid_date)) {
    fields <- c(fields, "paid_date")
    values <- c(values, if (is.null(paid_date)) "NULL" else if (is(paid_date, "subQuery")) paste0("(", as.character(paid_date), ")") else paste0("'", as.character(paid_date), "'"))
  }

  if (!missing(revenue_code_concept_id)) {
    fields <- c(fields, "revenue_code_concept_id")
    values <- c(values, if (is.null(revenue_code_concept_id)) "NULL" else if (is(revenue_code_concept_id, "subQuery")) paste0("(", as.character(revenue_code_concept_id), ")") else paste0("'", as.character(revenue_code_concept_id), "'"))
  }

  if (!missing(drg_concept_id)) {
    fields <- c(fields, "drg_concept_id")
    values <- c(values, if (is.null(drg_concept_id)) "NULL" else if (is(drg_concept_id, "subQuery")) paste0("(", as.character(drg_concept_id), ")") else paste0("'", as.character(drg_concept_id), "'"))
  }

  if (!missing(revenue_code_source_value)) {
    fields <- c(fields, "revenue_code_source_value")
    values <- c(values, if (is.null(revenue_code_source_value)) "NULL" else if (is(revenue_code_source_value, "subQuery")) paste0("(", as.character(revenue_code_source_value), ")") else paste0("'", as.character(revenue_code_source_value), "'"))
  }

  if (!missing(drg_source_value)) {
    fields <- c(fields, "drg_source_value")
    values <- c(values, if (is.null(drg_source_value)) "NULL" else if (is(drg_source_value, "subQuery")) paste0("(", as.character(drg_source_value), ")") else paste0("'", as.character(drg_source_value), "'"))
  }

  if (!missing(payer_plan_period_id)) {
    fields <- c(fields, "payer_plan_period_id")
    values <- c(values, if (is.null(payer_plan_period_id)) "NULL" else if (is(payer_plan_period_id, "subQuery")) paste0("(", as.character(payer_plan_period_id), ")") else paste0("'", as.character(payer_plan_period_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "cost", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_payer_plan_period <- function(payer_plan_period_id, person_id, contract_person_id, payer_plan_period_start_date, payer_plan_period_end_date, payer_concept_id, payer_source_value, payer_source_concept_id, plan_concept_id, plan_source_value, plan_source_concept_id, contract_concept_id, contract_source_value, contract_source_concept_id, sponsor_concept_id, sponsor_source_value, sponsor_source_concept_id, family_source_value, stop_reason_concept_id, stop_reason_source_value, stop_reason_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(payer_plan_period_id)) {
    fields <- c(fields, "payer_plan_period_id")
    values <- c(values, if (is.null(payer_plan_period_id)) "NULL" else if (is(payer_plan_period_id, "subQuery")) paste0("(", as.character(payer_plan_period_id), ")") else paste0("'", as.character(payer_plan_period_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(contract_person_id)) {
    fields <- c(fields, "contract_person_id")
    values <- c(values, if (is.null(contract_person_id)) "NULL" else if (is(contract_person_id, "subQuery")) paste0("(", as.character(contract_person_id), ")") else paste0("'", as.character(contract_person_id), "'"))
  }

  if (!missing(payer_plan_period_start_date)) {
    fields <- c(fields, "payer_plan_period_start_date")
    values <- c(values, if (is.null(payer_plan_period_start_date)) "NULL" else if (is(payer_plan_period_start_date, "subQuery")) paste0("(", as.character(payer_plan_period_start_date), ")") else paste0("'", as.character(payer_plan_period_start_date), "'"))
  }

  if (!missing(payer_plan_period_end_date)) {
    fields <- c(fields, "payer_plan_period_end_date")
    values <- c(values, if (is.null(payer_plan_period_end_date)) "NULL" else if (is(payer_plan_period_end_date, "subQuery")) paste0("(", as.character(payer_plan_period_end_date), ")") else paste0("'", as.character(payer_plan_period_end_date), "'"))
  }

  if (!missing(payer_concept_id)) {
    fields <- c(fields, "payer_concept_id")
    values <- c(values, if (is.null(payer_concept_id)) "NULL" else if (is(payer_concept_id, "subQuery")) paste0("(", as.character(payer_concept_id), ")") else paste0("'", as.character(payer_concept_id), "'"))
  }

  if (!missing(payer_source_value)) {
    fields <- c(fields, "payer_source_value")
    values <- c(values, if (is.null(payer_source_value)) "NULL" else if (is(payer_source_value, "subQuery")) paste0("(", as.character(payer_source_value), ")") else paste0("'", as.character(payer_source_value), "'"))
  }

  if (!missing(payer_source_concept_id)) {
    fields <- c(fields, "payer_source_concept_id")
    values <- c(values, if (is.null(payer_source_concept_id)) "NULL" else if (is(payer_source_concept_id, "subQuery")) paste0("(", as.character(payer_source_concept_id), ")") else paste0("'", as.character(payer_source_concept_id), "'"))
  }

  if (!missing(plan_concept_id)) {
    fields <- c(fields, "plan_concept_id")
    values <- c(values, if (is.null(plan_concept_id)) "NULL" else if (is(plan_concept_id, "subQuery")) paste0("(", as.character(plan_concept_id), ")") else paste0("'", as.character(plan_concept_id), "'"))
  }

  if (!missing(plan_source_value)) {
    fields <- c(fields, "plan_source_value")
    values <- c(values, if (is.null(plan_source_value)) "NULL" else if (is(plan_source_value, "subQuery")) paste0("(", as.character(plan_source_value), ")") else paste0("'", as.character(plan_source_value), "'"))
  }

  if (!missing(plan_source_concept_id)) {
    fields <- c(fields, "plan_source_concept_id")
    values <- c(values, if (is.null(plan_source_concept_id)) "NULL" else if (is(plan_source_concept_id, "subQuery")) paste0("(", as.character(plan_source_concept_id), ")") else paste0("'", as.character(plan_source_concept_id), "'"))
  }

  if (!missing(contract_concept_id)) {
    fields <- c(fields, "contract_concept_id")
    values <- c(values, if (is.null(contract_concept_id)) "NULL" else if (is(contract_concept_id, "subQuery")) paste0("(", as.character(contract_concept_id), ")") else paste0("'", as.character(contract_concept_id), "'"))
  }

  if (!missing(contract_source_value)) {
    fields <- c(fields, "contract_source_value")
    values <- c(values, if (is.null(contract_source_value)) "NULL" else if (is(contract_source_value, "subQuery")) paste0("(", as.character(contract_source_value), ")") else paste0("'", as.character(contract_source_value), "'"))
  }

  if (!missing(contract_source_concept_id)) {
    fields <- c(fields, "contract_source_concept_id")
    values <- c(values, if (is.null(contract_source_concept_id)) "NULL" else if (is(contract_source_concept_id, "subQuery")) paste0("(", as.character(contract_source_concept_id), ")") else paste0("'", as.character(contract_source_concept_id), "'"))
  }

  if (!missing(sponsor_concept_id)) {
    fields <- c(fields, "sponsor_concept_id")
    values <- c(values, if (is.null(sponsor_concept_id)) "NULL" else if (is(sponsor_concept_id, "subQuery")) paste0("(", as.character(sponsor_concept_id), ")") else paste0("'", as.character(sponsor_concept_id), "'"))
  }

  if (!missing(sponsor_source_value)) {
    fields <- c(fields, "sponsor_source_value")
    values <- c(values, if (is.null(sponsor_source_value)) "NULL" else if (is(sponsor_source_value, "subQuery")) paste0("(", as.character(sponsor_source_value), ")") else paste0("'", as.character(sponsor_source_value), "'"))
  }

  if (!missing(sponsor_source_concept_id)) {
    fields <- c(fields, "sponsor_source_concept_id")
    values <- c(values, if (is.null(sponsor_source_concept_id)) "NULL" else if (is(sponsor_source_concept_id, "subQuery")) paste0("(", as.character(sponsor_source_concept_id), ")") else paste0("'", as.character(sponsor_source_concept_id), "'"))
  }

  if (!missing(family_source_value)) {
    fields <- c(fields, "family_source_value")
    values <- c(values, if (is.null(family_source_value)) "NULL" else if (is(family_source_value, "subQuery")) paste0("(", as.character(family_source_value), ")") else paste0("'", as.character(family_source_value), "'"))
  }

  if (!missing(stop_reason_concept_id)) {
    fields <- c(fields, "stop_reason_concept_id")
    values <- c(values, if (is.null(stop_reason_concept_id)) "NULL" else if (is(stop_reason_concept_id, "subQuery")) paste0("(", as.character(stop_reason_concept_id), ")") else paste0("'", as.character(stop_reason_concept_id), "'"))
  }

  if (!missing(stop_reason_source_value)) {
    fields <- c(fields, "stop_reason_source_value")
    values <- c(values, if (is.null(stop_reason_source_value)) "NULL" else if (is(stop_reason_source_value, "subQuery")) paste0("(", as.character(stop_reason_source_value), ")") else paste0("'", as.character(stop_reason_source_value), "'"))
  }

  if (!missing(stop_reason_source_concept_id)) {
    fields <- c(fields, "stop_reason_source_concept_id")
    values <- c(values, if (is.null(stop_reason_source_concept_id)) "NULL" else if (is(stop_reason_source_concept_id, "subQuery")) paste0("(", as.character(stop_reason_source_concept_id), ")") else paste0("'", as.character(stop_reason_source_concept_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "payer_plan_period", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_care_site <- function(care_site_id, care_site_name, place_of_service_concept_id, location_id, care_site_source_value, place_of_service_source_value) {
  fields <- c()
  values <- c()
  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
  }

  if (!missing(care_site_name)) {
    fields <- c(fields, "care_site_name")
    values <- c(values, if (is.null(care_site_name)) "NULL" else if (is(care_site_name, "subQuery")) paste0("(", as.character(care_site_name), ")") else paste0("'", as.character(care_site_name), "'"))
  }

  if (!missing(place_of_service_concept_id)) {
    fields <- c(fields, "place_of_service_concept_id")
    values <- c(values, if (is.null(place_of_service_concept_id)) "NULL" else if (is(place_of_service_concept_id, "subQuery")) paste0("(", as.character(place_of_service_concept_id), ")") else paste0("'", as.character(place_of_service_concept_id), "'"))
  }

  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) "NULL" else if (is(location_id, "subQuery")) paste0("(", as.character(location_id), ")") else paste0("'", as.character(location_id), "'"))
  }

  if (!missing(care_site_source_value)) {
    fields <- c(fields, "care_site_source_value")
    values <- c(values, if (is.null(care_site_source_value)) "NULL" else if (is(care_site_source_value, "subQuery")) paste0("(", as.character(care_site_source_value), ")") else paste0("'", as.character(care_site_source_value), "'"))
  }

  if (!missing(place_of_service_source_value)) {
    fields <- c(fields, "place_of_service_source_value")
    values <- c(values, if (is.null(place_of_service_source_value)) "NULL" else if (is(place_of_service_source_value, "subQuery")) paste0("(", as.character(place_of_service_source_value), ")") else paste0("'", as.character(place_of_service_source_value), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "care_site", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_location <- function(location_id, address_1, address_2, city, state, zip, county, country, location_source_value, latitude, longitude) {
  fields <- c()
  values <- c()
  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) "NULL" else if (is(location_id, "subQuery")) paste0("(", as.character(location_id), ")") else paste0("'", as.character(location_id), "'"))
  }

  if (!missing(address_1)) {
    fields <- c(fields, "address_1")
    values <- c(values, if (is.null(address_1)) "NULL" else if (is(address_1, "subQuery")) paste0("(", as.character(address_1), ")") else paste0("'", as.character(address_1), "'"))
  }

  if (!missing(address_2)) {
    fields <- c(fields, "address_2")
    values <- c(values, if (is.null(address_2)) "NULL" else if (is(address_2, "subQuery")) paste0("(", as.character(address_2), ")") else paste0("'", as.character(address_2), "'"))
  }

  if (!missing(city)) {
    fields <- c(fields, "city")
    values <- c(values, if (is.null(city)) "NULL" else if (is(city, "subQuery")) paste0("(", as.character(city), ")") else paste0("'", as.character(city), "'"))
  }

  if (!missing(state)) {
    fields <- c(fields, "state")
    values <- c(values, if (is.null(state)) "NULL" else if (is(state, "subQuery")) paste0("(", as.character(state), ")") else paste0("'", as.character(state), "'"))
  }

  if (!missing(zip)) {
    fields <- c(fields, "zip")
    values <- c(values, if (is.null(zip)) "NULL" else if (is(zip, "subQuery")) paste0("(", as.character(zip), ")") else paste0("'", as.character(zip), "'"))
  }

  if (!missing(county)) {
    fields <- c(fields, "county")
    values <- c(values, if (is.null(county)) "NULL" else if (is(county, "subQuery")) paste0("(", as.character(county), ")") else paste0("'", as.character(county), "'"))
  }

  if (!missing(country)) {
    fields <- c(fields, "country")
    values <- c(values, if (is.null(country)) "NULL" else if (is(country, "subQuery")) paste0("(", as.character(country), ")") else paste0("'", as.character(country), "'"))
  }

  if (!missing(location_source_value)) {
    fields <- c(fields, "location_source_value")
    values <- c(values, if (is.null(location_source_value)) "NULL" else if (is(location_source_value, "subQuery")) paste0("(", as.character(location_source_value), ")") else paste0("'", as.character(location_source_value), "'"))
  }

  if (!missing(latitude)) {
    fields <- c(fields, "latitude")
    values <- c(values, if (is.null(latitude)) "NULL" else if (is(latitude, "subQuery")) paste0("(", as.character(latitude), ")") else paste0("'", as.character(latitude), "'"))
  }

  if (!missing(longitude)) {
    fields <- c(fields, "longitude")
    values <- c(values, if (is.null(longitude)) "NULL" else if (is(longitude, "subQuery")) paste0("(", as.character(longitude), ")") else paste0("'", as.character(longitude), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "location", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_provider <- function(provider_id, provider_name, npi, dea, specialty_concept_id, care_site_id, year_of_birth, gender_concept_id, provider_source_value, specialty_source_value, specialty_source_concept_id, gender_source_value, gender_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(provider_name)) {
    fields <- c(fields, "provider_name")
    values <- c(values, if (is.null(provider_name)) "NULL" else if (is(provider_name, "subQuery")) paste0("(", as.character(provider_name), ")") else paste0("'", as.character(provider_name), "'"))
  }

  if (!missing(npi)) {
    fields <- c(fields, "npi")
    values <- c(values, if (is.null(npi)) "NULL" else if (is(npi, "subQuery")) paste0("(", as.character(npi), ")") else paste0("'", as.character(npi), "'"))
  }

  if (!missing(dea)) {
    fields <- c(fields, "dea")
    values <- c(values, if (is.null(dea)) "NULL" else if (is(dea, "subQuery")) paste0("(", as.character(dea), ")") else paste0("'", as.character(dea), "'"))
  }

  if (!missing(specialty_concept_id)) {
    fields <- c(fields, "specialty_concept_id")
    values <- c(values, if (is.null(specialty_concept_id)) "NULL" else if (is(specialty_concept_id, "subQuery")) paste0("(", as.character(specialty_concept_id), ")") else paste0("'", as.character(specialty_concept_id), "'"))
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
  }

  if (!missing(year_of_birth)) {
    fields <- c(fields, "year_of_birth")
    values <- c(values, if (is.null(year_of_birth)) "NULL" else if (is(year_of_birth, "subQuery")) paste0("(", as.character(year_of_birth), ")") else paste0("'", as.character(year_of_birth), "'"))
  }

  if (!missing(gender_concept_id)) {
    fields <- c(fields, "gender_concept_id")
    values <- c(values, if (is.null(gender_concept_id)) "NULL" else if (is(gender_concept_id, "subQuery")) paste0("(", as.character(gender_concept_id), ")") else paste0("'", as.character(gender_concept_id), "'"))
  }

  if (!missing(provider_source_value)) {
    fields <- c(fields, "provider_source_value")
    values <- c(values, if (is.null(provider_source_value)) "NULL" else if (is(provider_source_value, "subQuery")) paste0("(", as.character(provider_source_value), ")") else paste0("'", as.character(provider_source_value), "'"))
  }

  if (!missing(specialty_source_value)) {
    fields <- c(fields, "specialty_source_value")
    values <- c(values, if (is.null(specialty_source_value)) "NULL" else if (is(specialty_source_value, "subQuery")) paste0("(", as.character(specialty_source_value), ")") else paste0("'", as.character(specialty_source_value), "'"))
  }

  if (!missing(specialty_source_concept_id)) {
    fields <- c(fields, "specialty_source_concept_id")
    values <- c(values, if (is.null(specialty_source_concept_id)) "NULL" else if (is(specialty_source_concept_id, "subQuery")) paste0("(", as.character(specialty_source_concept_id), ")") else paste0("'", as.character(specialty_source_concept_id), "'"))
  }

  if (!missing(gender_source_value)) {
    fields <- c(fields, "gender_source_value")
    values <- c(values, if (is.null(gender_source_value)) "NULL" else if (is(gender_source_value, "subQuery")) paste0("(", as.character(gender_source_value), ")") else paste0("'", as.character(gender_source_value), "'"))
  }

  if (!missing(gender_source_concept_id)) {
    fields <- c(fields, "gender_source_concept_id")
    values <- c(values, if (is.null(gender_source_concept_id)) "NULL" else if (is(gender_source_concept_id, "subQuery")) paste0("(", as.character(gender_source_concept_id), ")") else paste0("'", as.character(gender_source_concept_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "provider", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_cdm_source <- function(cdm_source_name, cdm_source_abbreviation, cdm_holder, source_description, source_documentation_reference, cdm_etl_reference, source_release_date, cdm_release_date, cdm_version, vocabulary_version) {
  fields <- c()
  values <- c()
  if (!missing(cdm_source_name)) {
    fields <- c(fields, "cdm_source_name")
    values <- c(values, if (is.null(cdm_source_name)) "NULL" else if (is(cdm_source_name, "subQuery")) paste0("(", as.character(cdm_source_name), ")") else paste0("'", as.character(cdm_source_name), "'"))
  }

  if (!missing(cdm_source_abbreviation)) {
    fields <- c(fields, "cdm_source_abbreviation")
    values <- c(values, if (is.null(cdm_source_abbreviation)) "NULL" else if (is(cdm_source_abbreviation, "subQuery")) paste0("(", as.character(cdm_source_abbreviation), ")") else paste0("'", as.character(cdm_source_abbreviation), "'"))
  }

  if (!missing(cdm_holder)) {
    fields <- c(fields, "cdm_holder")
    values <- c(values, if (is.null(cdm_holder)) "NULL" else if (is(cdm_holder, "subQuery")) paste0("(", as.character(cdm_holder), ")") else paste0("'", as.character(cdm_holder), "'"))
  }

  if (!missing(source_description)) {
    fields <- c(fields, "source_description")
    values <- c(values, if (is.null(source_description)) "NULL" else if (is(source_description, "subQuery")) paste0("(", as.character(source_description), ")") else paste0("'", as.character(source_description), "'"))
  }

  if (!missing(source_documentation_reference)) {
    fields <- c(fields, "source_documentation_reference")
    values <- c(values, if (is.null(source_documentation_reference)) "NULL" else if (is(source_documentation_reference, "subQuery")) paste0("(", as.character(source_documentation_reference), ")") else paste0("'", as.character(source_documentation_reference), "'"))
  }

  if (!missing(cdm_etl_reference)) {
    fields <- c(fields, "cdm_etl_reference")
    values <- c(values, if (is.null(cdm_etl_reference)) "NULL" else if (is(cdm_etl_reference, "subQuery")) paste0("(", as.character(cdm_etl_reference), ")") else paste0("'", as.character(cdm_etl_reference), "'"))
  }

  if (!missing(source_release_date)) {
    fields <- c(fields, "source_release_date")
    values <- c(values, if (is.null(source_release_date)) "NULL" else if (is(source_release_date, "subQuery")) paste0("(", as.character(source_release_date), ")") else paste0("'", as.character(source_release_date), "'"))
  }

  if (!missing(cdm_release_date)) {
    fields <- c(fields, "cdm_release_date")
    values <- c(values, if (is.null(cdm_release_date)) "NULL" else if (is(cdm_release_date, "subQuery")) paste0("(", as.character(cdm_release_date), ")") else paste0("'", as.character(cdm_release_date), "'"))
  }

  if (!missing(cdm_version)) {
    fields <- c(fields, "cdm_version")
    values <- c(values, if (is.null(cdm_version)) "NULL" else if (is(cdm_version, "subQuery")) paste0("(", as.character(cdm_version), ")") else paste0("'", as.character(cdm_version), "'"))
  }

  if (!missing(vocabulary_version)) {
    fields <- c(fields, "vocabulary_version")
    values <- c(values, if (is.null(vocabulary_version)) "NULL" else if (is(vocabulary_version, "subQuery")) paste0("(", as.character(vocabulary_version), ")") else paste0("'", as.character(vocabulary_version), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "cdm_source", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_metadata <- function(metadata_concept_id, metadata_type_concept_id, name, value_as_string, value_as_concept_id, metadata_date, metadata_datetime) {
  fields <- c()
  values <- c()
  if (!missing(metadata_concept_id)) {
    fields <- c(fields, "metadata_concept_id")
    values <- c(values, if (is.null(metadata_concept_id)) "NULL" else if (is(metadata_concept_id, "subQuery")) paste0("(", as.character(metadata_concept_id), ")") else paste0("'", as.character(metadata_concept_id), "'"))
  }

  if (!missing(metadata_type_concept_id)) {
    fields <- c(fields, "metadata_type_concept_id")
    values <- c(values, if (is.null(metadata_type_concept_id)) "NULL" else if (is(metadata_type_concept_id, "subQuery")) paste0("(", as.character(metadata_type_concept_id), ")") else paste0("'", as.character(metadata_type_concept_id), "'"))
  }

  if (!missing(name)) {
    fields <- c(fields, "name")
    values <- c(values, if (is.null(name)) "NULL" else if (is(name, "subQuery")) paste0("(", as.character(name), ")") else paste0("'", as.character(name), "'"))
  }

  if (!missing(value_as_string)) {
    fields <- c(fields, "value_as_string")
    values <- c(values, if (is.null(value_as_string)) "NULL" else if (is(value_as_string, "subQuery")) paste0("(", as.character(value_as_string), ")") else paste0("'", as.character(value_as_string), "'"))
  }

  if (!missing(value_as_concept_id)) {
    fields <- c(fields, "value_as_concept_id")
    values <- c(values, if (is.null(value_as_concept_id)) "NULL" else if (is(value_as_concept_id, "subQuery")) paste0("(", as.character(value_as_concept_id), ")") else paste0("'", as.character(value_as_concept_id), "'"))
  }

  if (!missing(metadata_date)) {
    fields <- c(fields, "[metadata date]")
    values <- c(values, if (is.null(metadata_date)) "NULL" else if (is(metadata_date, "subQuery")) paste0("(", as.character(metadata_date), ")") else paste0("'", as.character(metadata_date), "'"))
  }

  if (!missing(metadata_datetime)) {
    fields <- c(fields, "metadata_datetime")
    values <- c(values, if (is.null(metadata_datetime)) "NULL" else if (is(metadata_datetime, "subQuery")) paste0("(", as.character(metadata_datetime), ")") else paste0("'", as.character(metadata_datetime), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "metadata", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_cohort_definition <- function(cohort_definition_id, cohort_definition_name, cohort_definition_description, definition_type_concept_id, cohort_definition_syntax, subject_concept_id, cohort_initiation_date) {
  fields <- c()
  values <- c()
  if (!missing(cohort_definition_id)) {
    fields <- c(fields, "cohort_definition_id")
    values <- c(values, if (is.null(cohort_definition_id)) "NULL" else if (is(cohort_definition_id, "subQuery")) paste0("(", as.character(cohort_definition_id), ")") else paste0("'", as.character(cohort_definition_id), "'"))
  }

  if (!missing(cohort_definition_name)) {
    fields <- c(fields, "cohort_definition_name")
    values <- c(values, if (is.null(cohort_definition_name)) "NULL" else if (is(cohort_definition_name, "subQuery")) paste0("(", as.character(cohort_definition_name), ")") else paste0("'", as.character(cohort_definition_name), "'"))
  }

  if (!missing(cohort_definition_description)) {
    fields <- c(fields, "cohort_definition_description")
    values <- c(values, if (is.null(cohort_definition_description)) "NULL" else if (is(cohort_definition_description, "subQuery")) paste0("(", as.character(cohort_definition_description), ")") else paste0("'", as.character(cohort_definition_description), "'"))
  }

  if (!missing(definition_type_concept_id)) {
    fields <- c(fields, "definition_type_concept_id")
    values <- c(values, if (is.null(definition_type_concept_id)) "NULL" else if (is(definition_type_concept_id, "subQuery")) paste0("(", as.character(definition_type_concept_id), ")") else paste0("'", as.character(definition_type_concept_id), "'"))
  }

  if (!missing(cohort_definition_syntax)) {
    fields <- c(fields, "cohort_definition_syntax")
    values <- c(values, if (is.null(cohort_definition_syntax)) "NULL" else if (is(cohort_definition_syntax, "subQuery")) paste0("(", as.character(cohort_definition_syntax), ")") else paste0("'", as.character(cohort_definition_syntax), "'"))
  }

  if (!missing(subject_concept_id)) {
    fields <- c(fields, "subject_concept_id")
    values <- c(values, if (is.null(subject_concept_id)) "NULL" else if (is(subject_concept_id, "subQuery")) paste0("(", as.character(subject_concept_id), ")") else paste0("'", as.character(subject_concept_id), "'"))
  }

  if (!missing(cohort_initiation_date)) {
    fields <- c(fields, "cohort_initiation_date")
    values <- c(values, if (is.null(cohort_initiation_date)) "NULL" else if (is(cohort_initiation_date, "subQuery")) paste0("(", as.character(cohort_initiation_date), ")") else paste0("'", as.character(cohort_initiation_date), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "cohort_definition", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_survey_conduct <- function(survey_conduct_id, person_id, survey_concept_id, survey_start_date, survey_start_datetime, survey_end_date, survey_end_datetime, provider_id, assisted_concept_id, respondent_type_concept_id, timing_concept_id, collection_method_concept_id, assisted_source_value, respondent_type_source_value, timing_source_value, collection_method_source_value, survey_source_value, survey_source_concept_id, survey_source_identifier, validated_survey_concept_id, validated_survey_source_value, survey_version_number, visit_occurrence_id, response_visit_occurrence_id) {
  fields <- c()
  values <- c()
  if (!missing(survey_conduct_id)) {
    fields <- c(fields, "survey_conduct_id")
    values <- c(values, if (is.null(survey_conduct_id)) "NULL" else if (is(survey_conduct_id, "subQuery")) paste0("(", as.character(survey_conduct_id), ")") else paste0("'", as.character(survey_conduct_id), "'"))
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(survey_concept_id)) {
    fields <- c(fields, "survey_concept_id")
    values <- c(values, if (is.null(survey_concept_id)) "NULL" else if (is(survey_concept_id, "subQuery")) paste0("(", as.character(survey_concept_id), ")") else paste0("'", as.character(survey_concept_id), "'"))
  }

  if (!missing(survey_start_date)) {
    fields <- c(fields, "survey_start_date")
    values <- c(values, if (is.null(survey_start_date)) "NULL" else if (is(survey_start_date, "subQuery")) paste0("(", as.character(survey_start_date), ")") else paste0("'", as.character(survey_start_date), "'"))
  }

  if (!missing(survey_start_datetime)) {
    fields <- c(fields, "survey_start_datetime")
    values <- c(values, if (is.null(survey_start_datetime)) "NULL" else if (is(survey_start_datetime, "subQuery")) paste0("(", as.character(survey_start_datetime), ")") else paste0("'", as.character(survey_start_datetime), "'"))
  }

  if (!missing(survey_end_date)) {
    fields <- c(fields, "survey_end_date")
    values <- c(values, if (is.null(survey_end_date)) "NULL" else if (is(survey_end_date, "subQuery")) paste0("(", as.character(survey_end_date), ")") else paste0("'", as.character(survey_end_date), "'"))
  }

  if (!missing(survey_end_datetime)) {
    fields <- c(fields, "survey_end_datetime")
    values <- c(values, if (is.null(survey_end_datetime)) "NULL" else if (is(survey_end_datetime, "subQuery")) paste0("(", as.character(survey_end_datetime), ")") else paste0("'", as.character(survey_end_datetime), "'"))
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(assisted_concept_id)) {
    fields <- c(fields, "assisted_concept_id")
    values <- c(values, if (is.null(assisted_concept_id)) "NULL" else if (is(assisted_concept_id, "subQuery")) paste0("(", as.character(assisted_concept_id), ")") else paste0("'", as.character(assisted_concept_id), "'"))
  }

  if (!missing(respondent_type_concept_id)) {
    fields <- c(fields, "respondent_type_concept_id")
    values <- c(values, if (is.null(respondent_type_concept_id)) "NULL" else if (is(respondent_type_concept_id, "subQuery")) paste0("(", as.character(respondent_type_concept_id), ")") else paste0("'", as.character(respondent_type_concept_id), "'"))
  }

  if (!missing(timing_concept_id)) {
    fields <- c(fields, "timing_concept_id")
    values <- c(values, if (is.null(timing_concept_id)) "NULL" else if (is(timing_concept_id, "subQuery")) paste0("(", as.character(timing_concept_id), ")") else paste0("'", as.character(timing_concept_id), "'"))
  }

  if (!missing(collection_method_concept_id)) {
    fields <- c(fields, "collection_method_concept_id")
    values <- c(values, if (is.null(collection_method_concept_id)) "NULL" else if (is(collection_method_concept_id, "subQuery")) paste0("(", as.character(collection_method_concept_id), ")") else paste0("'", as.character(collection_method_concept_id), "'"))
  }

  if (!missing(assisted_source_value)) {
    fields <- c(fields, "assisted_source_value")
    values <- c(values, if (is.null(assisted_source_value)) "NULL" else if (is(assisted_source_value, "subQuery")) paste0("(", as.character(assisted_source_value), ")") else paste0("'", as.character(assisted_source_value), "'"))
  }

  if (!missing(respondent_type_source_value)) {
    fields <- c(fields, "respondent_type_source_value")
    values <- c(values, if (is.null(respondent_type_source_value)) "NULL" else if (is(respondent_type_source_value, "subQuery")) paste0("(", as.character(respondent_type_source_value), ")") else paste0("'", as.character(respondent_type_source_value), "'"))
  }

  if (!missing(timing_source_value)) {
    fields <- c(fields, "timing_source_value")
    values <- c(values, if (is.null(timing_source_value)) "NULL" else if (is(timing_source_value, "subQuery")) paste0("(", as.character(timing_source_value), ")") else paste0("'", as.character(timing_source_value), "'"))
  }

  if (!missing(collection_method_source_value)) {
    fields <- c(fields, "collection_method_source_value")
    values <- c(values, if (is.null(collection_method_source_value)) "NULL" else if (is(collection_method_source_value, "subQuery")) paste0("(", as.character(collection_method_source_value), ")") else paste0("'", as.character(collection_method_source_value), "'"))
  }

  if (!missing(survey_source_value)) {
    fields <- c(fields, "survey_source_value")
    values <- c(values, if (is.null(survey_source_value)) "NULL" else if (is(survey_source_value, "subQuery")) paste0("(", as.character(survey_source_value), ")") else paste0("'", as.character(survey_source_value), "'"))
  }

  if (!missing(survey_source_concept_id)) {
    fields <- c(fields, "survey_source_concept_id")
    values <- c(values, if (is.null(survey_source_concept_id)) "NULL" else if (is(survey_source_concept_id, "subQuery")) paste0("(", as.character(survey_source_concept_id), ")") else paste0("'", as.character(survey_source_concept_id), "'"))
  }

  if (!missing(survey_source_identifier)) {
    fields <- c(fields, "survey_source_identifier")
    values <- c(values, if (is.null(survey_source_identifier)) "NULL" else if (is(survey_source_identifier, "subQuery")) paste0("(", as.character(survey_source_identifier), ")") else paste0("'", as.character(survey_source_identifier), "'"))
  }

  if (!missing(validated_survey_concept_id)) {
    fields <- c(fields, "validated_survey_concept_id")
    values <- c(values, if (is.null(validated_survey_concept_id)) "NULL" else if (is(validated_survey_concept_id, "subQuery")) paste0("(", as.character(validated_survey_concept_id), ")") else paste0("'", as.character(validated_survey_concept_id), "'"))
  }

  if (!missing(validated_survey_source_value)) {
    fields <- c(fields, "validated_survey_source_value")
    values <- c(values, if (is.null(validated_survey_source_value)) "NULL" else if (is(validated_survey_source_value, "subQuery")) paste0("(", as.character(validated_survey_source_value), ")") else paste0("'", as.character(validated_survey_source_value), "'"))
  }

  if (!missing(survey_version_number)) {
    fields <- c(fields, "survey_version_number")
    values <- c(values, if (is.null(survey_version_number)) "NULL" else if (is(survey_version_number, "subQuery")) paste0("(", as.character(survey_version_number), ")") else paste0("'", as.character(survey_version_number), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(response_visit_occurrence_id)) {
    fields <- c(fields, "response_visit_occurrence_id")
    values <- c(values, if (is.null(response_visit_occurrence_id)) "NULL" else if (is(response_visit_occurrence_id, "subQuery")) paste0("(", as.character(response_visit_occurrence_id), ")") else paste0("'", as.character(response_visit_occurrence_id), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "survey_conduct", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_location_history <- function(location_id, relationship_type_concept_id, domain_id, entity_id, start_date, end_date) {
  fields <- c()
  values <- c()
  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) "NULL" else if (is(location_id, "subQuery")) paste0("(", as.character(location_id), ")") else paste0("'", as.character(location_id), "'"))
  }

  if (!missing(relationship_type_concept_id)) {
    fields <- c(fields, "relationship_type_concept_id")
    values <- c(values, if (is.null(relationship_type_concept_id)) "NULL" else if (is(relationship_type_concept_id, "subQuery")) paste0("(", as.character(relationship_type_concept_id), ")") else paste0("'", as.character(relationship_type_concept_id), "'"))
  }

  if (!missing(domain_id)) {
    fields <- c(fields, "domain_id")
    values <- c(values, if (is.null(domain_id)) "NULL" else if (is(domain_id, "subQuery")) paste0("(", as.character(domain_id), ")") else paste0("'", as.character(domain_id), "'"))
  }

  if (!missing(entity_id)) {
    fields <- c(fields, "entity_id")
    values <- c(values, if (is.null(entity_id)) "NULL" else if (is(entity_id, "subQuery")) paste0("(", as.character(entity_id), ")") else paste0("'", as.character(entity_id), "'"))
  }

  if (!missing(start_date)) {
    fields <- c(fields, "start_date")
    values <- c(values, if (is.null(start_date)) "NULL" else if (is(start_date, "subQuery")) paste0("(", as.character(start_date), ")") else paste0("'", as.character(start_date), "'"))
  }

  if (!missing(end_date)) {
    fields <- c(fields, "end_date")
    values <- c(values, if (is.null(end_date)) "NULL" else if (is(end_date, "subQuery")) paste0("(", as.character(end_date), ")") else paste0("'", as.character(end_date), "'"))
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "location_history", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_episode <- function(episode_id, person_id, episode_start_datetime, episode_end_datetime, episode_concept_id, episode_parent_id, episode_number, episode_object_concept_id, episode_type_concept_id, episode_source_value, episode_source_concept_id, record_source_value) {
  fields <- c()
  values <- c()
  if (!missing(episode_id)) {
    fields <- c(fields, "episode_id")
    values <- c(values, if (is.null(episode_id)) "NULL" else if (is(episode_id, "subQuery")) paste0("(", as.character(episode_id), ")") else paste0("'", as.character(episode_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_id')
  }
  
  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.person_id')
  }
  
  if (!missing(episode_start_datetime)) {
    fields <- c(fields, "episode_start_datetime")
    values <- c(values, if (is.null(episode_start_datetime)) "NULL" else if (is(episode_start_datetime, "subQuery")) paste0("(", as.character(episode_start_datetime), ")") else paste0("'", as.character(episode_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_start_datetime')
  }
  
  if (!missing(episode_end_datetime)) {
    fields <- c(fields, "episode_end_datetime")
    values <- c(values, if (is.null(episode_end_datetime)) "NULL" else if (is(episode_end_datetime, "subQuery")) paste0("(", as.character(episode_end_datetime), ")") else paste0("'", as.character(episode_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_end_datetime')
  }
  
  if (!missing(episode_concept_id)) {
    fields <- c(fields, "episode_concept_id")
    values <- c(values, if (is.null(episode_concept_id)) "NULL" else if (is(episode_concept_id, "subQuery")) paste0("(", as.character(episode_concept_id), ")") else paste0("'", as.character(episode_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_concept_id')
  }
  
  if (!missing(episode_parent_id)) {
    fields <- c(fields, "episode_parent_id")
    values <- c(values, if (is.null(episode_parent_id)) "NULL" else if (is(episode_parent_id, "subQuery")) paste0("(", as.character(episode_parent_id), ")") else paste0("'", as.character(episode_parent_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_parent_id')
  }
  
  if (!missing(episode_number)) {
    fields <- c(fields, "episode_number")
    values <- c(values, if (is.null(episode_number)) "NULL" else if (is(episode_number, "subQuery")) paste0("(", as.character(episode_number), ")") else paste0("'", as.character(episode_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_number')
  }
  
  if (!missing(episode_object_concept_id)) {
    fields <- c(fields, "episode_object_concept_id")
    values <- c(values, if (is.null(episode_object_concept_id)) "NULL" else if (is(episode_object_concept_id, "subQuery")) paste0("(", as.character(episode_object_concept_id), ")") else paste0("'", as.character(episode_object_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_object_concept_id')
  }
  
  if (!missing(episode_type_concept_id)) {
    fields <- c(fields, "episode_type_concept_id")
    values <- c(values, if (is.null(episode_type_concept_id)) "NULL" else if (is(episode_type_concept_id, "subQuery")) paste0("(", as.character(episode_type_concept_id), ")") else paste0("'", as.character(episode_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_type_concept_id')
  }
  
  if (!missing(episode_source_value)) {
    fields <- c(fields, "episode_source_value")
    values <- c(values, if (is.null(episode_source_value)) "NULL" else if (is(episode_source_value, "subQuery")) paste0("(", as.character(episode_source_value), ")") else paste0("'", as.character(episode_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_source_value')
  }
  
  if (!missing(episode_source_concept_id)) {
    fields <- c(fields, "episode_source_concept_id")
    values <- c(values, if (is.null(episode_source_concept_id)) "NULL" else if (is(episode_source_concept_id, "subQuery")) paste0("(", as.character(episode_source_concept_id), ")") else paste0("'", as.character(episode_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_source_concept_id')
  }
  
  if (!missing(record_source_value)) {
    fields <- c(fields, "record_source_value")
    values <- c(values, if (is.null(record_source_value)) "NULL" else if (is(record_source_value, "subQuery")) paste0("(", as.character(record_source_value), ")") else paste0("'", as.character(record_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.record_source_value')
  }
  
  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "episode", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_no_episode_event <- function(episode_id, event_id, event_field_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(episode_id)) {
    fields <- c(fields, "episode_id")
    values <- c(values, if (is.null(episode_id)) "NULL" else if (is(episode_id, "subQuery")) paste0("(", as.character(episode_id), ")") else paste0("'", as.character(episode_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_id')
  }
  
  if (!missing(event_id)) {
    fields <- c(fields, "event_id")
    values <- c(values, if (is.null(event_id)) "NULL" else if (is(event_id, "subQuery")) paste0("(", as.character(event_id), ")") else paste0("'", as.character(event_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.event_id')
  }
  
  if (!missing(event_field_concept_id)) {
    fields <- c(fields, "event_field_concept_id")
    values <- c(values, if (is.null(event_field_concept_id)) "NULL" else if (is(event_field_concept_id, "subQuery")) paste0("(", as.character(event_field_concept_id), ")") else paste0("'", as.character(event_field_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.event_field_concept_id')
  }
  
  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 1, table = "episode_event", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_person <- function(rowCount, person_id, gender_concept_id, year_of_birth, month_of_birth, day_of_birth, birth_datetime, death_datetime, race_concept_id, ethnicity_concept_id, location_id, provider_id, care_site_id, person_source_value, gender_source_value, gender_source_concept_id, race_source_value, race_source_concept_id, ethnicity_source_value, ethnicity_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.person_id')
  }

  if (!missing(gender_concept_id)) {
    fields <- c(fields, "gender_concept_id")
    values <- c(values, if (is.null(gender_concept_id)) "NULL" else if (is(gender_concept_id, "subQuery")) paste0("(", as.character(gender_concept_id), ")") else paste0("'", as.character(gender_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.gender_concept_id')
  }

  if (!missing(year_of_birth)) {
    fields <- c(fields, "year_of_birth")
    values <- c(values, if (is.null(year_of_birth)) "NULL" else if (is(year_of_birth, "subQuery")) paste0("(", as.character(year_of_birth), ")") else paste0("'", as.character(year_of_birth), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.year_of_birth')
  }

  if (!missing(month_of_birth)) {
    fields <- c(fields, "month_of_birth")
    values <- c(values, if (is.null(month_of_birth)) "NULL" else if (is(month_of_birth, "subQuery")) paste0("(", as.character(month_of_birth), ")") else paste0("'", as.character(month_of_birth), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.month_of_birth')
  }

  if (!missing(day_of_birth)) {
    fields <- c(fields, "day_of_birth")
    values <- c(values, if (is.null(day_of_birth)) "NULL" else if (is(day_of_birth, "subQuery")) paste0("(", as.character(day_of_birth), ")") else paste0("'", as.character(day_of_birth), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.day_of_birth')
  }

  if (!missing(birth_datetime)) {
    fields <- c(fields, "birth_datetime")
    values <- c(values, if (is.null(birth_datetime)) "NULL" else if (is(birth_datetime, "subQuery")) paste0("(", as.character(birth_datetime), ")") else paste0("'", as.character(birth_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.birth_datetime')
  }

  if (!missing(death_datetime)) {
    fields <- c(fields, "death_datetime")
    values <- c(values, if (is.null(death_datetime)) "NULL" else if (is(death_datetime, "subQuery")) paste0("(", as.character(death_datetime), ")") else paste0("'", as.character(death_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.death_datetime')
  }

  if (!missing(race_concept_id)) {
    fields <- c(fields, "race_concept_id")
    values <- c(values, if (is.null(race_concept_id)) "NULL" else if (is(race_concept_id, "subQuery")) paste0("(", as.character(race_concept_id), ")") else paste0("'", as.character(race_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.race_concept_id')
  }

  if (!missing(ethnicity_concept_id)) {
    fields <- c(fields, "ethnicity_concept_id")
    values <- c(values, if (is.null(ethnicity_concept_id)) "NULL" else if (is(ethnicity_concept_id, "subQuery")) paste0("(", as.character(ethnicity_concept_id), ")") else paste0("'", as.character(ethnicity_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.ethnicity_concept_id')
  }

  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) "NULL" else if (is(location_id, "subQuery")) paste0("(", as.character(location_id), ")") else paste0("'", as.character(location_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.location_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.provider_id')
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.care_site_id')
  }

  if (!missing(person_source_value)) {
    fields <- c(fields, "person_source_value")
    values <- c(values, if (is.null(person_source_value)) "NULL" else if (is(person_source_value, "subQuery")) paste0("(", as.character(person_source_value), ")") else paste0("'", as.character(person_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.person_source_value')
  }

  if (!missing(gender_source_value)) {
    fields <- c(fields, "gender_source_value")
    values <- c(values, if (is.null(gender_source_value)) "NULL" else if (is(gender_source_value, "subQuery")) paste0("(", as.character(gender_source_value), ")") else paste0("'", as.character(gender_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.gender_source_value')
  }

  if (!missing(gender_source_concept_id)) {
    fields <- c(fields, "gender_source_concept_id")
    values <- c(values, if (is.null(gender_source_concept_id)) "NULL" else if (is(gender_source_concept_id, "subQuery")) paste0("(", as.character(gender_source_concept_id), ")") else paste0("'", as.character(gender_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.gender_source_concept_id')
  }

  if (!missing(race_source_value)) {
    fields <- c(fields, "race_source_value")
    values <- c(values, if (is.null(race_source_value)) "NULL" else if (is(race_source_value, "subQuery")) paste0("(", as.character(race_source_value), ")") else paste0("'", as.character(race_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.race_source_value')
  }

  if (!missing(race_source_concept_id)) {
    fields <- c(fields, "race_source_concept_id")
    values <- c(values, if (is.null(race_source_concept_id)) "NULL" else if (is(race_source_concept_id, "subQuery")) paste0("(", as.character(race_source_concept_id), ")") else paste0("'", as.character(race_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.race_source_concept_id')
  }

  if (!missing(ethnicity_source_value)) {
    fields <- c(fields, "ethnicity_source_value")
    values <- c(values, if (is.null(ethnicity_source_value)) "NULL" else if (is(ethnicity_source_value, "subQuery")) paste0("(", as.character(ethnicity_source_value), ")") else paste0("'", as.character(ethnicity_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.ethnicity_source_value')
  }

  if (!missing(ethnicity_source_concept_id)) {
    fields <- c(fields, "ethnicity_source_concept_id")
    values <- c(values, if (is.null(ethnicity_source_concept_id)) "NULL" else if (is(ethnicity_source_concept_id, "subQuery")) paste0("(", as.character(ethnicity_source_concept_id), ")") else paste0("'", as.character(ethnicity_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'person.ethnicity_source_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "person", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_observation_period <- function(rowCount, observation_period_id, person_id, observation_period_start_date, observation_period_end_date, period_type_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(observation_period_id)) {
    fields <- c(fields, "observation_period_id")
    values <- c(values, if (is.null(observation_period_id)) "NULL" else if (is(observation_period_id, "subQuery")) paste0("(", as.character(observation_period_id), ")") else paste0("'", as.character(observation_period_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.observation_period_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.person_id')
  }

  if (!missing(observation_period_start_date)) {
    fields <- c(fields, "observation_period_start_date")
    values <- c(values, if (is.null(observation_period_start_date)) "NULL" else if (is(observation_period_start_date, "subQuery")) paste0("(", as.character(observation_period_start_date), ")") else paste0("'", as.character(observation_period_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.observation_period_start_date')
  }

  if (!missing(observation_period_end_date)) {
    fields <- c(fields, "observation_period_end_date")
    values <- c(values, if (is.null(observation_period_end_date)) "NULL" else if (is(observation_period_end_date, "subQuery")) paste0("(", as.character(observation_period_end_date), ")") else paste0("'", as.character(observation_period_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.observation_period_end_date')
  }

  if (!missing(period_type_concept_id)) {
    fields <- c(fields, "period_type_concept_id")
    values <- c(values, if (is.null(period_type_concept_id)) "NULL" else if (is(period_type_concept_id, "subQuery")) paste0("(", as.character(period_type_concept_id), ")") else paste0("'", as.character(period_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation_period.period_type_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "observation_period", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_visit_occurrence <- function(rowCount, visit_occurrence_id, person_id, visit_concept_id, visit_start_date, visit_start_datetime, visit_end_date, visit_end_datetime, visit_type_concept_id, provider_id, care_site_id, visit_source_value, visit_source_concept_id, admitted_from_concept_id, admitted_from_source_value, discharge_to_concept_id, discharge_to_source_value, preceding_visit_occurrence_id) {
  fields <- c()
  values <- c()
  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_occurrence_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.person_id')
  }

  if (!missing(visit_concept_id)) {
    fields <- c(fields, "visit_concept_id")
    values <- c(values, if (is.null(visit_concept_id)) "NULL" else if (is(visit_concept_id, "subQuery")) paste0("(", as.character(visit_concept_id), ")") else paste0("'", as.character(visit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_concept_id')
  }

  if (!missing(visit_start_date)) {
    fields <- c(fields, "visit_start_date")
    values <- c(values, if (is.null(visit_start_date)) "NULL" else if (is(visit_start_date, "subQuery")) paste0("(", as.character(visit_start_date), ")") else paste0("'", as.character(visit_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_start_date')
  }

  if (!missing(visit_start_datetime)) {
    fields <- c(fields, "visit_start_datetime")
    values <- c(values, if (is.null(visit_start_datetime)) "NULL" else if (is(visit_start_datetime, "subQuery")) paste0("(", as.character(visit_start_datetime), ")") else paste0("'", as.character(visit_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_start_datetime')
  }

  if (!missing(visit_end_date)) {
    fields <- c(fields, "visit_end_date")
    values <- c(values, if (is.null(visit_end_date)) "NULL" else if (is(visit_end_date, "subQuery")) paste0("(", as.character(visit_end_date), ")") else paste0("'", as.character(visit_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_end_date')
  }

  if (!missing(visit_end_datetime)) {
    fields <- c(fields, "visit_end_datetime")
    values <- c(values, if (is.null(visit_end_datetime)) "NULL" else if (is(visit_end_datetime, "subQuery")) paste0("(", as.character(visit_end_datetime), ")") else paste0("'", as.character(visit_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_end_datetime')
  }

  if (!missing(visit_type_concept_id)) {
    fields <- c(fields, "visit_type_concept_id")
    values <- c(values, if (is.null(visit_type_concept_id)) "NULL" else if (is(visit_type_concept_id, "subQuery")) paste0("(", as.character(visit_type_concept_id), ")") else paste0("'", as.character(visit_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_type_concept_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.provider_id')
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.care_site_id')
  }

  if (!missing(visit_source_value)) {
    fields <- c(fields, "visit_source_value")
    values <- c(values, if (is.null(visit_source_value)) "NULL" else if (is(visit_source_value, "subQuery")) paste0("(", as.character(visit_source_value), ")") else paste0("'", as.character(visit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_source_value')
  }

  if (!missing(visit_source_concept_id)) {
    fields <- c(fields, "visit_source_concept_id")
    values <- c(values, if (is.null(visit_source_concept_id)) "NULL" else if (is(visit_source_concept_id, "subQuery")) paste0("(", as.character(visit_source_concept_id), ")") else paste0("'", as.character(visit_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.visit_source_concept_id')
  }

  if (!missing(admitted_from_concept_id)) {
    fields <- c(fields, "admitted_from_concept_id")
    values <- c(values, if (is.null(admitted_from_concept_id)) "NULL" else if (is(admitted_from_concept_id, "subQuery")) paste0("(", as.character(admitted_from_concept_id), ")") else paste0("'", as.character(admitted_from_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.admitted_from_concept_id')
  }

  if (!missing(admitted_from_source_value)) {
    fields <- c(fields, "admitted_from_source_value")
    values <- c(values, if (is.null(admitted_from_source_value)) "NULL" else if (is(admitted_from_source_value, "subQuery")) paste0("(", as.character(admitted_from_source_value), ")") else paste0("'", as.character(admitted_from_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.admitted_from_source_value')
  }

  if (!missing(discharge_to_concept_id)) {
    fields <- c(fields, "discharge_to_concept_id")
    values <- c(values, if (is.null(discharge_to_concept_id)) "NULL" else if (is(discharge_to_concept_id, "subQuery")) paste0("(", as.character(discharge_to_concept_id), ")") else paste0("'", as.character(discharge_to_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.discharge_to_concept_id')
  }

  if (!missing(discharge_to_source_value)) {
    fields <- c(fields, "discharge_to_source_value")
    values <- c(values, if (is.null(discharge_to_source_value)) "NULL" else if (is(discharge_to_source_value, "subQuery")) paste0("(", as.character(discharge_to_source_value), ")") else paste0("'", as.character(discharge_to_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.discharge_to_source_value')
  }

  if (!missing(preceding_visit_occurrence_id)) {
    fields <- c(fields, "preceding_visit_occurrence_id")
    values <- c(values, if (is.null(preceding_visit_occurrence_id)) "NULL" else if (is(preceding_visit_occurrence_id, "subQuery")) paste0("(", as.character(preceding_visit_occurrence_id), ")") else paste0("'", as.character(preceding_visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_occurrence.preceding_visit_occurrence_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "visit_occurrence", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_condition_occurrence <- function(rowCount, condition_occurrence_id, person_id, condition_concept_id, condition_start_date, condition_start_datetime, condition_end_date, condition_end_datetime, condition_type_concept_id, stop_reason, provider_id, visit_occurrence_id, visit_detail_id, condition_source_value, condition_source_concept_id, condition_status_source_value, condition_status_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(condition_occurrence_id)) {
    fields <- c(fields, "condition_occurrence_id")
    values <- c(values, if (is.null(condition_occurrence_id)) "NULL" else if (is(condition_occurrence_id, "subQuery")) paste0("(", as.character(condition_occurrence_id), ")") else paste0("'", as.character(condition_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_occurrence_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.person_id')
  }

  if (!missing(condition_concept_id)) {
    fields <- c(fields, "condition_concept_id")
    values <- c(values, if (is.null(condition_concept_id)) "NULL" else if (is(condition_concept_id, "subQuery")) paste0("(", as.character(condition_concept_id), ")") else paste0("'", as.character(condition_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_concept_id')
  }

  if (!missing(condition_start_date)) {
    fields <- c(fields, "condition_start_date")
    values <- c(values, if (is.null(condition_start_date)) "NULL" else if (is(condition_start_date, "subQuery")) paste0("(", as.character(condition_start_date), ")") else paste0("'", as.character(condition_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_start_date')
  }

  if (!missing(condition_start_datetime)) {
    fields <- c(fields, "condition_start_datetime")
    values <- c(values, if (is.null(condition_start_datetime)) "NULL" else if (is(condition_start_datetime, "subQuery")) paste0("(", as.character(condition_start_datetime), ")") else paste0("'", as.character(condition_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_start_datetime')
  }

  if (!missing(condition_end_date)) {
    fields <- c(fields, "condition_end_date")
    values <- c(values, if (is.null(condition_end_date)) "NULL" else if (is(condition_end_date, "subQuery")) paste0("(", as.character(condition_end_date), ")") else paste0("'", as.character(condition_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_end_date')
  }

  if (!missing(condition_end_datetime)) {
    fields <- c(fields, "condition_end_datetime")
    values <- c(values, if (is.null(condition_end_datetime)) "NULL" else if (is(condition_end_datetime, "subQuery")) paste0("(", as.character(condition_end_datetime), ")") else paste0("'", as.character(condition_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_end_datetime')
  }

  if (!missing(condition_type_concept_id)) {
    fields <- c(fields, "condition_type_concept_id")
    values <- c(values, if (is.null(condition_type_concept_id)) "NULL" else if (is(condition_type_concept_id, "subQuery")) paste0("(", as.character(condition_type_concept_id), ")") else paste0("'", as.character(condition_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_type_concept_id')
  }

  if (!missing(stop_reason)) {
    fields <- c(fields, "stop_reason")
    values <- c(values, if (is.null(stop_reason)) "NULL" else if (is(stop_reason, "subQuery")) paste0("(", as.character(stop_reason), ")") else paste0("'", as.character(stop_reason), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.stop_reason')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.visit_detail_id')
  }

  if (!missing(condition_source_value)) {
    fields <- c(fields, "condition_source_value")
    values <- c(values, if (is.null(condition_source_value)) "NULL" else if (is(condition_source_value, "subQuery")) paste0("(", as.character(condition_source_value), ")") else paste0("'", as.character(condition_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_source_value')
  }

  if (!missing(condition_source_concept_id)) {
    fields <- c(fields, "condition_source_concept_id")
    values <- c(values, if (is.null(condition_source_concept_id)) "NULL" else if (is(condition_source_concept_id, "subQuery")) paste0("(", as.character(condition_source_concept_id), ")") else paste0("'", as.character(condition_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_source_concept_id')
  }

  if (!missing(condition_status_source_value)) {
    fields <- c(fields, "condition_status_source_value")
    values <- c(values, if (is.null(condition_status_source_value)) "NULL" else if (is(condition_status_source_value, "subQuery")) paste0("(", as.character(condition_status_source_value), ")") else paste0("'", as.character(condition_status_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_status_source_value')
  }

  if (!missing(condition_status_concept_id)) {
    fields <- c(fields, "condition_status_concept_id")
    values <- c(values, if (is.null(condition_status_concept_id)) "NULL" else if (is(condition_status_concept_id, "subQuery")) paste0("(", as.character(condition_status_concept_id), ")") else paste0("'", as.character(condition_status_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_occurrence.condition_status_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "condition_occurrence", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_device_exposure <- function(rowCount, device_exposure_id, person_id, device_concept_id, device_exposure_start_date, device_exposure_start_datetime, device_exposure_end_date, device_exposure_end_datetime, device_type_concept_id, unique_device_id, quantity, provider_id, visit_occurrence_id, visit_detail_id, device_source_value, device_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(device_exposure_id)) {
    fields <- c(fields, "device_exposure_id")
    values <- c(values, if (is.null(device_exposure_id)) "NULL" else if (is(device_exposure_id, "subQuery")) paste0("(", as.character(device_exposure_id), ")") else paste0("'", as.character(device_exposure_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.person_id')
  }

  if (!missing(device_concept_id)) {
    fields <- c(fields, "device_concept_id")
    values <- c(values, if (is.null(device_concept_id)) "NULL" else if (is(device_concept_id, "subQuery")) paste0("(", as.character(device_concept_id), ")") else paste0("'", as.character(device_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_concept_id')
  }

  if (!missing(device_exposure_start_date)) {
    fields <- c(fields, "device_exposure_start_date")
    values <- c(values, if (is.null(device_exposure_start_date)) "NULL" else if (is(device_exposure_start_date, "subQuery")) paste0("(", as.character(device_exposure_start_date), ")") else paste0("'", as.character(device_exposure_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_start_date')
  }

  if (!missing(device_exposure_start_datetime)) {
    fields <- c(fields, "device_exposure_start_datetime")
    values <- c(values, if (is.null(device_exposure_start_datetime)) "NULL" else if (is(device_exposure_start_datetime, "subQuery")) paste0("(", as.character(device_exposure_start_datetime), ")") else paste0("'", as.character(device_exposure_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_start_datetime')
  }

  if (!missing(device_exposure_end_date)) {
    fields <- c(fields, "device_exposure_end_date")
    values <- c(values, if (is.null(device_exposure_end_date)) "NULL" else if (is(device_exposure_end_date, "subQuery")) paste0("(", as.character(device_exposure_end_date), ")") else paste0("'", as.character(device_exposure_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_end_date')
  }

  if (!missing(device_exposure_end_datetime)) {
    fields <- c(fields, "device_exposure_end_datetime")
    values <- c(values, if (is.null(device_exposure_end_datetime)) "NULL" else if (is(device_exposure_end_datetime, "subQuery")) paste0("(", as.character(device_exposure_end_datetime), ")") else paste0("'", as.character(device_exposure_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_exposure_end_datetime')
  }

  if (!missing(device_type_concept_id)) {
    fields <- c(fields, "device_type_concept_id")
    values <- c(values, if (is.null(device_type_concept_id)) "NULL" else if (is(device_type_concept_id, "subQuery")) paste0("(", as.character(device_type_concept_id), ")") else paste0("'", as.character(device_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_type_concept_id')
  }

  if (!missing(unique_device_id)) {
    fields <- c(fields, "unique_device_id")
    values <- c(values, if (is.null(unique_device_id)) "NULL" else if (is(unique_device_id, "subQuery")) paste0("(", as.character(unique_device_id), ")") else paste0("'", as.character(unique_device_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.unique_device_id')
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) "NULL" else if (is(quantity, "subQuery")) paste0("(", as.character(quantity), ")") else paste0("'", as.character(quantity), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.quantity')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.visit_detail_id')
  }

  if (!missing(device_source_value)) {
    fields <- c(fields, "device_source_value")
    values <- c(values, if (is.null(device_source_value)) "NULL" else if (is(device_source_value, "subQuery")) paste0("(", as.character(device_source_value), ")") else paste0("'", as.character(device_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_source_value')
  }

  if (!missing(device_source_concept_id)) {
    fields <- c(fields, "device_source_concept_id")
    values <- c(values, if (is.null(device_source_concept_id)) "NULL" else if (is(device_source_concept_id, "subQuery")) paste0("(", as.character(device_source_concept_id), ")") else paste0("'", as.character(device_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'device_exposure.device_source_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "device_exposure", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_drug_exposure <- function(rowCount, drug_exposure_id, person_id, drug_concept_id, drug_exposure_start_date, drug_exposure_start_datetime, drug_exposure_end_date, drug_exposure_end_datetime, verbatim_end_date, drug_type_concept_id, stop_reason, refills, quantity, days_supply, sig, route_concept_id, lot_number, provider_id, visit_occurrence_id, visit_detail_id, drug_source_value, drug_source_concept_id, route_source_value, dose_unit_source_value) {
  fields <- c()
  values <- c()
  if (!missing(drug_exposure_id)) {
    fields <- c(fields, "drug_exposure_id")
    values <- c(values, if (is.null(drug_exposure_id)) "NULL" else if (is(drug_exposure_id, "subQuery")) paste0("(", as.character(drug_exposure_id), ")") else paste0("'", as.character(drug_exposure_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.person_id')
  }

  if (!missing(drug_concept_id)) {
    fields <- c(fields, "drug_concept_id")
    values <- c(values, if (is.null(drug_concept_id)) "NULL" else if (is(drug_concept_id, "subQuery")) paste0("(", as.character(drug_concept_id), ")") else paste0("'", as.character(drug_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_concept_id')
  }

  if (!missing(drug_exposure_start_date)) {
    fields <- c(fields, "drug_exposure_start_date")
    values <- c(values, if (is.null(drug_exposure_start_date)) "NULL" else if (is(drug_exposure_start_date, "subQuery")) paste0("(", as.character(drug_exposure_start_date), ")") else paste0("'", as.character(drug_exposure_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_start_date')
  }

  if (!missing(drug_exposure_start_datetime)) {
    fields <- c(fields, "drug_exposure_start_datetime")
    values <- c(values, if (is.null(drug_exposure_start_datetime)) "NULL" else if (is(drug_exposure_start_datetime, "subQuery")) paste0("(", as.character(drug_exposure_start_datetime), ")") else paste0("'", as.character(drug_exposure_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_start_datetime')
  }

  if (!missing(drug_exposure_end_date)) {
    fields <- c(fields, "drug_exposure_end_date")
    values <- c(values, if (is.null(drug_exposure_end_date)) "NULL" else if (is(drug_exposure_end_date, "subQuery")) paste0("(", as.character(drug_exposure_end_date), ")") else paste0("'", as.character(drug_exposure_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_end_date')
  }

  if (!missing(drug_exposure_end_datetime)) {
    fields <- c(fields, "drug_exposure_end_datetime")
    values <- c(values, if (is.null(drug_exposure_end_datetime)) "NULL" else if (is(drug_exposure_end_datetime, "subQuery")) paste0("(", as.character(drug_exposure_end_datetime), ")") else paste0("'", as.character(drug_exposure_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_exposure_end_datetime')
  }

  if (!missing(verbatim_end_date)) {
    fields <- c(fields, "verbatim_end_date")
    values <- c(values, if (is.null(verbatim_end_date)) "NULL" else if (is(verbatim_end_date, "subQuery")) paste0("(", as.character(verbatim_end_date), ")") else paste0("'", as.character(verbatim_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.verbatim_end_date')
  }

  if (!missing(drug_type_concept_id)) {
    fields <- c(fields, "drug_type_concept_id")
    values <- c(values, if (is.null(drug_type_concept_id)) "NULL" else if (is(drug_type_concept_id, "subQuery")) paste0("(", as.character(drug_type_concept_id), ")") else paste0("'", as.character(drug_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_type_concept_id')
  }

  if (!missing(stop_reason)) {
    fields <- c(fields, "stop_reason")
    values <- c(values, if (is.null(stop_reason)) "NULL" else if (is(stop_reason, "subQuery")) paste0("(", as.character(stop_reason), ")") else paste0("'", as.character(stop_reason), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.stop_reason')
  }

  if (!missing(refills)) {
    fields <- c(fields, "refills")
    values <- c(values, if (is.null(refills)) "NULL" else if (is(refills, "subQuery")) paste0("(", as.character(refills), ")") else paste0("'", as.character(refills), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.refills')
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) "NULL" else if (is(quantity, "subQuery")) paste0("(", as.character(quantity), ")") else paste0("'", as.character(quantity), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.quantity')
  }

  if (!missing(days_supply)) {
    fields <- c(fields, "days_supply")
    values <- c(values, if (is.null(days_supply)) "NULL" else if (is(days_supply, "subQuery")) paste0("(", as.character(days_supply), ")") else paste0("'", as.character(days_supply), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.days_supply')
  }

  if (!missing(sig)) {
    fields <- c(fields, "sig")
    values <- c(values, if (is.null(sig)) "NULL" else if (is(sig, "subQuery")) paste0("(", as.character(sig), ")") else paste0("'", as.character(sig), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.sig')
  }

  if (!missing(route_concept_id)) {
    fields <- c(fields, "route_concept_id")
    values <- c(values, if (is.null(route_concept_id)) "NULL" else if (is(route_concept_id, "subQuery")) paste0("(", as.character(route_concept_id), ")") else paste0("'", as.character(route_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.route_concept_id')
  }

  if (!missing(lot_number)) {
    fields <- c(fields, "lot_number")
    values <- c(values, if (is.null(lot_number)) "NULL" else if (is(lot_number, "subQuery")) paste0("(", as.character(lot_number), ")") else paste0("'", as.character(lot_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.lot_number')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.visit_detail_id')
  }

  if (!missing(drug_source_value)) {
    fields <- c(fields, "drug_source_value")
    values <- c(values, if (is.null(drug_source_value)) "NULL" else if (is(drug_source_value, "subQuery")) paste0("(", as.character(drug_source_value), ")") else paste0("'", as.character(drug_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_source_value')
  }

  if (!missing(drug_source_concept_id)) {
    fields <- c(fields, "drug_source_concept_id")
    values <- c(values, if (is.null(drug_source_concept_id)) "NULL" else if (is(drug_source_concept_id, "subQuery")) paste0("(", as.character(drug_source_concept_id), ")") else paste0("'", as.character(drug_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.drug_source_concept_id')
  }

  if (!missing(route_source_value)) {
    fields <- c(fields, "route_source_value")
    values <- c(values, if (is.null(route_source_value)) "NULL" else if (is(route_source_value, "subQuery")) paste0("(", as.character(route_source_value), ")") else paste0("'", as.character(route_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.route_source_value')
  }

  if (!missing(dose_unit_source_value)) {
    fields <- c(fields, "dose_unit_source_value")
    values <- c(values, if (is.null(dose_unit_source_value)) "NULL" else if (is(dose_unit_source_value, "subQuery")) paste0("(", as.character(dose_unit_source_value), ")") else paste0("'", as.character(dose_unit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_exposure.dose_unit_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "drug_exposure", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_fact_relationship <- function(rowCount, domain_concept_id_1, fact_id_1, domain_concept_id_2, fact_id_2, relationship_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(domain_concept_id_1)) {
    fields <- c(fields, "domain_concept_id_1")
    values <- c(values, if (is.null(domain_concept_id_1)) "NULL" else if (is(domain_concept_id_1, "subQuery")) paste0("(", as.character(domain_concept_id_1), ")") else paste0("'", as.character(domain_concept_id_1), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.domain_concept_id_1')
  }

  if (!missing(fact_id_1)) {
    fields <- c(fields, "fact_id_1")
    values <- c(values, if (is.null(fact_id_1)) "NULL" else if (is(fact_id_1, "subQuery")) paste0("(", as.character(fact_id_1), ")") else paste0("'", as.character(fact_id_1), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.fact_id_1')
  }

  if (!missing(domain_concept_id_2)) {
    fields <- c(fields, "domain_concept_id_2")
    values <- c(values, if (is.null(domain_concept_id_2)) "NULL" else if (is(domain_concept_id_2, "subQuery")) paste0("(", as.character(domain_concept_id_2), ")") else paste0("'", as.character(domain_concept_id_2), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.domain_concept_id_2')
  }

  if (!missing(fact_id_2)) {
    fields <- c(fields, "fact_id_2")
    values <- c(values, if (is.null(fact_id_2)) "NULL" else if (is(fact_id_2, "subQuery")) paste0("(", as.character(fact_id_2), ")") else paste0("'", as.character(fact_id_2), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.fact_id_2')
  }

  if (!missing(relationship_concept_id)) {
    fields <- c(fields, "relationship_concept_id")
    values <- c(values, if (is.null(relationship_concept_id)) "NULL" else if (is(relationship_concept_id, "subQuery")) paste0("(", as.character(relationship_concept_id), ")") else paste0("'", as.character(relationship_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'fact_relationship.relationship_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "fact_relationship", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_measurement <- function(rowCount, measurement_id, person_id, measurement_concept_id, measurement_date, measurement_datetime, measurement_time, measurement_type_concept_id, operator_concept_id, value_as_number, value_as_concept_id, unit_concept_id, range_low, range_high, provider_id, visit_occurrence_id, visit_detail_id, measurement_source_value, measurement_source_concept_id, unit_source_value, value_source_value) {
  fields <- c()
  values <- c()
  if (!missing(measurement_id)) {
    fields <- c(fields, "measurement_id")
    values <- c(values, if (is.null(measurement_id)) "NULL" else if (is(measurement_id, "subQuery")) paste0("(", as.character(measurement_id), ")") else paste0("'", as.character(measurement_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.person_id')
  }

  if (!missing(measurement_concept_id)) {
    fields <- c(fields, "measurement_concept_id")
    values <- c(values, if (is.null(measurement_concept_id)) "NULL" else if (is(measurement_concept_id, "subQuery")) paste0("(", as.character(measurement_concept_id), ")") else paste0("'", as.character(measurement_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_concept_id')
  }

  if (!missing(measurement_date)) {
    fields <- c(fields, "measurement_date")
    values <- c(values, if (is.null(measurement_date)) "NULL" else if (is(measurement_date, "subQuery")) paste0("(", as.character(measurement_date), ")") else paste0("'", as.character(measurement_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_date')
  }

  if (!missing(measurement_datetime)) {
    fields <- c(fields, "measurement_datetime")
    values <- c(values, if (is.null(measurement_datetime)) "NULL" else if (is(measurement_datetime, "subQuery")) paste0("(", as.character(measurement_datetime), ")") else paste0("'", as.character(measurement_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_datetime')
  }

  if (!missing(measurement_time)) {
    fields <- c(fields, "measurement_time")
    values <- c(values, if (is.null(measurement_time)) "NULL" else if (is(measurement_time, "subQuery")) paste0("(", as.character(measurement_time), ")") else paste0("'", as.character(measurement_time), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_time')
  }

  if (!missing(measurement_type_concept_id)) {
    fields <- c(fields, "measurement_type_concept_id")
    values <- c(values, if (is.null(measurement_type_concept_id)) "NULL" else if (is(measurement_type_concept_id, "subQuery")) paste0("(", as.character(measurement_type_concept_id), ")") else paste0("'", as.character(measurement_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_type_concept_id')
  }

  if (!missing(operator_concept_id)) {
    fields <- c(fields, "operator_concept_id")
    values <- c(values, if (is.null(operator_concept_id)) "NULL" else if (is(operator_concept_id, "subQuery")) paste0("(", as.character(operator_concept_id), ")") else paste0("'", as.character(operator_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.operator_concept_id')
  }

  if (!missing(value_as_number)) {
    fields <- c(fields, "value_as_number")
    values <- c(values, if (is.null(value_as_number)) "NULL" else if (is(value_as_number, "subQuery")) paste0("(", as.character(value_as_number), ")") else paste0("'", as.character(value_as_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.value_as_number')
  }

  if (!missing(value_as_concept_id)) {
    fields <- c(fields, "value_as_concept_id")
    values <- c(values, if (is.null(value_as_concept_id)) "NULL" else if (is(value_as_concept_id, "subQuery")) paste0("(", as.character(value_as_concept_id), ")") else paste0("'", as.character(value_as_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.value_as_concept_id')
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) "NULL" else if (is(unit_concept_id, "subQuery")) paste0("(", as.character(unit_concept_id), ")") else paste0("'", as.character(unit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.unit_concept_id')
  }

  if (!missing(range_low)) {
    fields <- c(fields, "range_low")
    values <- c(values, if (is.null(range_low)) "NULL" else if (is(range_low, "subQuery")) paste0("(", as.character(range_low), ")") else paste0("'", as.character(range_low), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.range_low')
  }

  if (!missing(range_high)) {
    fields <- c(fields, "range_high")
    values <- c(values, if (is.null(range_high)) "NULL" else if (is(range_high, "subQuery")) paste0("(", as.character(range_high), ")") else paste0("'", as.character(range_high), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.range_high')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.visit_detail_id')
  }

  if (!missing(measurement_source_value)) {
    fields <- c(fields, "measurement_source_value")
    values <- c(values, if (is.null(measurement_source_value)) "NULL" else if (is(measurement_source_value, "subQuery")) paste0("(", as.character(measurement_source_value), ")") else paste0("'", as.character(measurement_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_source_value')
  }

  if (!missing(measurement_source_concept_id)) {
    fields <- c(fields, "measurement_source_concept_id")
    values <- c(values, if (is.null(measurement_source_concept_id)) "NULL" else if (is(measurement_source_concept_id, "subQuery")) paste0("(", as.character(measurement_source_concept_id), ")") else paste0("'", as.character(measurement_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.measurement_source_concept_id')
  }

  if (!missing(unit_source_value)) {
    fields <- c(fields, "unit_source_value")
    values <- c(values, if (is.null(unit_source_value)) "NULL" else if (is(unit_source_value, "subQuery")) paste0("(", as.character(unit_source_value), ")") else paste0("'", as.character(unit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.unit_source_value')
  }

  if (!missing(value_source_value)) {
    fields <- c(fields, "value_source_value")
    values <- c(values, if (is.null(value_source_value)) "NULL" else if (is(value_source_value, "subQuery")) paste0("(", as.character(value_source_value), ")") else paste0("'", as.character(value_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'measurement.value_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "measurement", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_note <- function(rowCount, note_id, person_id, note_event_id, note_event_field_concept_id, note_date, note_datetime, note_type_concept_id, note_class_concept_id, note_title, note_text, encoding_concept_id, language_concept_id, provider_id, visit_occurrence_id, visit_detail_id, note_source_value) {
  fields <- c()
  values <- c()
  if (!missing(note_id)) {
    fields <- c(fields, "note_id")
    values <- c(values, if (is.null(note_id)) "NULL" else if (is(note_id, "subQuery")) paste0("(", as.character(note_id), ")") else paste0("'", as.character(note_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.person_id')
  }

  if (!missing(note_event_id)) {
    fields <- c(fields, "note_event_id")
    values <- c(values, if (is.null(note_event_id)) "NULL" else if (is(note_event_id, "subQuery")) paste0("(", as.character(note_event_id), ")") else paste0("'", as.character(note_event_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_event_id')
  }

  if (!missing(note_event_field_concept_id)) {
    fields <- c(fields, "note_event_field_concept_id")
    values <- c(values, if (is.null(note_event_field_concept_id)) "NULL" else if (is(note_event_field_concept_id, "subQuery")) paste0("(", as.character(note_event_field_concept_id), ")") else paste0("'", as.character(note_event_field_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_event_field_concept_id')
  }

  if (!missing(note_date)) {
    fields <- c(fields, "note_date")
    values <- c(values, if (is.null(note_date)) "NULL" else if (is(note_date, "subQuery")) paste0("(", as.character(note_date), ")") else paste0("'", as.character(note_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_date')
  }

  if (!missing(note_datetime)) {
    fields <- c(fields, "note_datetime")
    values <- c(values, if (is.null(note_datetime)) "NULL" else if (is(note_datetime, "subQuery")) paste0("(", as.character(note_datetime), ")") else paste0("'", as.character(note_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_datetime')
  }

  if (!missing(note_type_concept_id)) {
    fields <- c(fields, "note_type_concept_id")
    values <- c(values, if (is.null(note_type_concept_id)) "NULL" else if (is(note_type_concept_id, "subQuery")) paste0("(", as.character(note_type_concept_id), ")") else paste0("'", as.character(note_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_type_concept_id')
  }

  if (!missing(note_class_concept_id)) {
    fields <- c(fields, "note_class_concept_id")
    values <- c(values, if (is.null(note_class_concept_id)) "NULL" else if (is(note_class_concept_id, "subQuery")) paste0("(", as.character(note_class_concept_id), ")") else paste0("'", as.character(note_class_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_class_concept_id')
  }

  if (!missing(note_title)) {
    fields <- c(fields, "note_title")
    values <- c(values, if (is.null(note_title)) "NULL" else if (is(note_title, "subQuery")) paste0("(", as.character(note_title), ")") else paste0("'", as.character(note_title), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_title')
  }

  if (!missing(note_text)) {
    fields <- c(fields, "note_text")
    values <- c(values, if (is.null(note_text)) "NULL" else if (is(note_text, "subQuery")) paste0("(", as.character(note_text), ")") else paste0("'", as.character(note_text), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_text')
  }

  if (!missing(encoding_concept_id)) {
    fields <- c(fields, "encoding_concept_id")
    values <- c(values, if (is.null(encoding_concept_id)) "NULL" else if (is(encoding_concept_id, "subQuery")) paste0("(", as.character(encoding_concept_id), ")") else paste0("'", as.character(encoding_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.encoding_concept_id')
  }

  if (!missing(language_concept_id)) {
    fields <- c(fields, "language_concept_id")
    values <- c(values, if (is.null(language_concept_id)) "NULL" else if (is(language_concept_id, "subQuery")) paste0("(", as.character(language_concept_id), ")") else paste0("'", as.character(language_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.language_concept_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.visit_detail_id')
  }

  if (!missing(note_source_value)) {
    fields <- c(fields, "note_source_value")
    values <- c(values, if (is.null(note_source_value)) "NULL" else if (is(note_source_value, "subQuery")) paste0("(", as.character(note_source_value), ")") else paste0("'", as.character(note_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note.note_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "note", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_note_nlp <- function(rowCount, note_nlp_id, note_id, section_concept_id, snippet, offset, lexical_variant, note_nlp_concept_id, note_nlp_source_concept_id, nlp_system, nlp_date, nlp_datetime, term_exists, term_temporal, term_modifiers) {
  fields <- c()
  values <- c()
  if (!missing(note_nlp_id)) {
    fields <- c(fields, "note_nlp_id")
    values <- c(values, if (is.null(note_nlp_id)) "NULL" else if (is(note_nlp_id, "subQuery")) paste0("(", as.character(note_nlp_id), ")") else paste0("'", as.character(note_nlp_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.note_nlp_id')
  }

  if (!missing(note_id)) {
    fields <- c(fields, "note_id")
    values <- c(values, if (is.null(note_id)) "NULL" else if (is(note_id, "subQuery")) paste0("(", as.character(note_id), ")") else paste0("'", as.character(note_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.note_id')
  }

  if (!missing(section_concept_id)) {
    fields <- c(fields, "section_concept_id")
    values <- c(values, if (is.null(section_concept_id)) "NULL" else if (is(section_concept_id, "subQuery")) paste0("(", as.character(section_concept_id), ")") else paste0("'", as.character(section_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.section_concept_id')
  }

  if (!missing(snippet)) {
    fields <- c(fields, "snippet")
    values <- c(values, if (is.null(snippet)) "NULL" else if (is(snippet, "subQuery")) paste0("(", as.character(snippet), ")") else paste0("'", as.character(snippet), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.snippet')
  }

  if (!missing(offset)) {
    fields <- c(fields, "offset")
    values <- c(values, if (is.null(offset)) "NULL" else if (is(offset, "subQuery")) paste0("(", as.character(offset), ")") else paste0("'", as.character(offset), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.offset')
  }

  if (!missing(lexical_variant)) {
    fields <- c(fields, "lexical_variant")
    values <- c(values, if (is.null(lexical_variant)) "NULL" else if (is(lexical_variant, "subQuery")) paste0("(", as.character(lexical_variant), ")") else paste0("'", as.character(lexical_variant), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.lexical_variant')
  }

  if (!missing(note_nlp_concept_id)) {
    fields <- c(fields, "note_nlp_concept_id")
    values <- c(values, if (is.null(note_nlp_concept_id)) "NULL" else if (is(note_nlp_concept_id, "subQuery")) paste0("(", as.character(note_nlp_concept_id), ")") else paste0("'", as.character(note_nlp_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.note_nlp_concept_id')
  }

  if (!missing(note_nlp_source_concept_id)) {
    fields <- c(fields, "note_nlp_source_concept_id")
    values <- c(values, if (is.null(note_nlp_source_concept_id)) "NULL" else if (is(note_nlp_source_concept_id, "subQuery")) paste0("(", as.character(note_nlp_source_concept_id), ")") else paste0("'", as.character(note_nlp_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.note_nlp_source_concept_id')
  }

  if (!missing(nlp_system)) {
    fields <- c(fields, "nlp_system")
    values <- c(values, if (is.null(nlp_system)) "NULL" else if (is(nlp_system, "subQuery")) paste0("(", as.character(nlp_system), ")") else paste0("'", as.character(nlp_system), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.nlp_system')
  }

  if (!missing(nlp_date)) {
    fields <- c(fields, "nlp_date")
    values <- c(values, if (is.null(nlp_date)) "NULL" else if (is(nlp_date, "subQuery")) paste0("(", as.character(nlp_date), ")") else paste0("'", as.character(nlp_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.nlp_date')
  }

  if (!missing(nlp_datetime)) {
    fields <- c(fields, "nlp_datetime")
    values <- c(values, if (is.null(nlp_datetime)) "NULL" else if (is(nlp_datetime, "subQuery")) paste0("(", as.character(nlp_datetime), ")") else paste0("'", as.character(nlp_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.nlp_datetime')
  }

  if (!missing(term_exists)) {
    fields <- c(fields, "term_exists")
    values <- c(values, if (is.null(term_exists)) "NULL" else if (is(term_exists, "subQuery")) paste0("(", as.character(term_exists), ")") else paste0("'", as.character(term_exists), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.term_exists')
  }

  if (!missing(term_temporal)) {
    fields <- c(fields, "term_temporal")
    values <- c(values, if (is.null(term_temporal)) "NULL" else if (is(term_temporal, "subQuery")) paste0("(", as.character(term_temporal), ")") else paste0("'", as.character(term_temporal), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.term_temporal')
  }

  if (!missing(term_modifiers)) {
    fields <- c(fields, "term_modifiers")
    values <- c(values, if (is.null(term_modifiers)) "NULL" else if (is(term_modifiers, "subQuery")) paste0("(", as.character(term_modifiers), ")") else paste0("'", as.character(term_modifiers), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'note_nlp.term_modifiers')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "note_nlp", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_observation <- function(rowCount, observation_id, person_id, observation_concept_id, observation_date, observation_datetime, observation_type_concept_id, value_as_number, value_as_string, value_as_concept_id, qualifier_concept_id, unit_concept_id, provider_id, visit_occurrence_id, visit_detail_id, observation_source_value, observation_source_concept_id, unit_source_value, qualifier_source_value, observation_event_id, obs_event_field_concept_id, value_as_datetime) {
  fields <- c()
  values <- c()
  if (!missing(observation_id)) {
    fields <- c(fields, "observation_id")
    values <- c(values, if (is.null(observation_id)) "NULL" else if (is(observation_id, "subQuery")) paste0("(", as.character(observation_id), ")") else paste0("'", as.character(observation_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.person_id')
  }

  if (!missing(observation_concept_id)) {
    fields <- c(fields, "observation_concept_id")
    values <- c(values, if (is.null(observation_concept_id)) "NULL" else if (is(observation_concept_id, "subQuery")) paste0("(", as.character(observation_concept_id), ")") else paste0("'", as.character(observation_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_concept_id')
  }

  if (!missing(observation_date)) {
    fields <- c(fields, "observation_date")
    values <- c(values, if (is.null(observation_date)) "NULL" else if (is(observation_date, "subQuery")) paste0("(", as.character(observation_date), ")") else paste0("'", as.character(observation_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_date')
  }

  if (!missing(observation_datetime)) {
    fields <- c(fields, "observation_datetime")
    values <- c(values, if (is.null(observation_datetime)) "NULL" else if (is(observation_datetime, "subQuery")) paste0("(", as.character(observation_datetime), ")") else paste0("'", as.character(observation_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_datetime')
  }

  if (!missing(observation_type_concept_id)) {
    fields <- c(fields, "observation_type_concept_id")
    values <- c(values, if (is.null(observation_type_concept_id)) "NULL" else if (is(observation_type_concept_id, "subQuery")) paste0("(", as.character(observation_type_concept_id), ")") else paste0("'", as.character(observation_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_type_concept_id')
  }

  if (!missing(value_as_number)) {
    fields <- c(fields, "value_as_number")
    values <- c(values, if (is.null(value_as_number)) "NULL" else if (is(value_as_number, "subQuery")) paste0("(", as.character(value_as_number), ")") else paste0("'", as.character(value_as_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.value_as_number')
  }

  if (!missing(value_as_string)) {
    fields <- c(fields, "value_as_string")
    values <- c(values, if (is.null(value_as_string)) "NULL" else if (is(value_as_string, "subQuery")) paste0("(", as.character(value_as_string), ")") else paste0("'", as.character(value_as_string), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.value_as_string')
  }

  if (!missing(value_as_concept_id)) {
    fields <- c(fields, "value_as_concept_id")
    values <- c(values, if (is.null(value_as_concept_id)) "NULL" else if (is(value_as_concept_id, "subQuery")) paste0("(", as.character(value_as_concept_id), ")") else paste0("'", as.character(value_as_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.value_as_concept_id')
  }

  if (!missing(qualifier_concept_id)) {
    fields <- c(fields, "qualifier_concept_id")
    values <- c(values, if (is.null(qualifier_concept_id)) "NULL" else if (is(qualifier_concept_id, "subQuery")) paste0("(", as.character(qualifier_concept_id), ")") else paste0("'", as.character(qualifier_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.qualifier_concept_id')
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) "NULL" else if (is(unit_concept_id, "subQuery")) paste0("(", as.character(unit_concept_id), ")") else paste0("'", as.character(unit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.unit_concept_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.visit_detail_id')
  }

  if (!missing(observation_source_value)) {
    fields <- c(fields, "observation_source_value")
    values <- c(values, if (is.null(observation_source_value)) "NULL" else if (is(observation_source_value, "subQuery")) paste0("(", as.character(observation_source_value), ")") else paste0("'", as.character(observation_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_source_value')
  }

  if (!missing(observation_source_concept_id)) {
    fields <- c(fields, "observation_source_concept_id")
    values <- c(values, if (is.null(observation_source_concept_id)) "NULL" else if (is(observation_source_concept_id, "subQuery")) paste0("(", as.character(observation_source_concept_id), ")") else paste0("'", as.character(observation_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_source_concept_id')
  }

  if (!missing(unit_source_value)) {
    fields <- c(fields, "unit_source_value")
    values <- c(values, if (is.null(unit_source_value)) "NULL" else if (is(unit_source_value, "subQuery")) paste0("(", as.character(unit_source_value), ")") else paste0("'", as.character(unit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.unit_source_value')
  }

  if (!missing(qualifier_source_value)) {
    fields <- c(fields, "qualifier_source_value")
    values <- c(values, if (is.null(qualifier_source_value)) "NULL" else if (is(qualifier_source_value, "subQuery")) paste0("(", as.character(qualifier_source_value), ")") else paste0("'", as.character(qualifier_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.qualifier_source_value')
  }

  if (!missing(observation_event_id)) {
    fields <- c(fields, "observation_event_id")
    values <- c(values, if (is.null(observation_event_id)) "NULL" else if (is(observation_event_id, "subQuery")) paste0("(", as.character(observation_event_id), ")") else paste0("'", as.character(observation_event_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.observation_event_id')
  }

  if (!missing(obs_event_field_concept_id)) {
    fields <- c(fields, "obs_event_field_concept_id")
    values <- c(values, if (is.null(obs_event_field_concept_id)) "NULL" else if (is(obs_event_field_concept_id, "subQuery")) paste0("(", as.character(obs_event_field_concept_id), ")") else paste0("'", as.character(obs_event_field_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.obs_event_field_concept_id')
  }

  if (!missing(value_as_datetime)) {
    fields <- c(fields, "value_as_datetime")
    values <- c(values, if (is.null(value_as_datetime)) "NULL" else if (is(value_as_datetime, "subQuery")) paste0("(", as.character(value_as_datetime), ")") else paste0("'", as.character(value_as_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'observation.value_as_datetime')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "observation", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_procedure_occurrence <- function(rowCount, procedure_occurrence_id, person_id, procedure_concept_id, procedure_date, procedure_datetime, procedure_type_concept_id, modifier_concept_id, quantity, provider_id, visit_occurrence_id, visit_detail_id, procedure_source_value, procedure_source_concept_id, modifier_source_value) {
  fields <- c()
  values <- c()
  if (!missing(procedure_occurrence_id)) {
    fields <- c(fields, "procedure_occurrence_id")
    values <- c(values, if (is.null(procedure_occurrence_id)) "NULL" else if (is(procedure_occurrence_id, "subQuery")) paste0("(", as.character(procedure_occurrence_id), ")") else paste0("'", as.character(procedure_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_occurrence_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.person_id')
  }

  if (!missing(procedure_concept_id)) {
    fields <- c(fields, "procedure_concept_id")
    values <- c(values, if (is.null(procedure_concept_id)) "NULL" else if (is(procedure_concept_id, "subQuery")) paste0("(", as.character(procedure_concept_id), ")") else paste0("'", as.character(procedure_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_concept_id')
  }

  if (!missing(procedure_date)) {
    fields <- c(fields, "procedure_date")
    values <- c(values, if (is.null(procedure_date)) "NULL" else if (is(procedure_date, "subQuery")) paste0("(", as.character(procedure_date), ")") else paste0("'", as.character(procedure_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_date')
  }

  if (!missing(procedure_datetime)) {
    fields <- c(fields, "procedure_datetime")
    values <- c(values, if (is.null(procedure_datetime)) "NULL" else if (is(procedure_datetime, "subQuery")) paste0("(", as.character(procedure_datetime), ")") else paste0("'", as.character(procedure_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_datetime')
  }

  if (!missing(procedure_type_concept_id)) {
    fields <- c(fields, "procedure_type_concept_id")
    values <- c(values, if (is.null(procedure_type_concept_id)) "NULL" else if (is(procedure_type_concept_id, "subQuery")) paste0("(", as.character(procedure_type_concept_id), ")") else paste0("'", as.character(procedure_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_type_concept_id')
  }

  if (!missing(modifier_concept_id)) {
    fields <- c(fields, "modifier_concept_id")
    values <- c(values, if (is.null(modifier_concept_id)) "NULL" else if (is(modifier_concept_id, "subQuery")) paste0("(", as.character(modifier_concept_id), ")") else paste0("'", as.character(modifier_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.modifier_concept_id')
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) "NULL" else if (is(quantity, "subQuery")) paste0("(", as.character(quantity), ")") else paste0("'", as.character(quantity), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.quantity')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.provider_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.visit_occurrence_id')
  }

  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.visit_detail_id')
  }

  if (!missing(procedure_source_value)) {
    fields <- c(fields, "procedure_source_value")
    values <- c(values, if (is.null(procedure_source_value)) "NULL" else if (is(procedure_source_value, "subQuery")) paste0("(", as.character(procedure_source_value), ")") else paste0("'", as.character(procedure_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_source_value')
  }

  if (!missing(procedure_source_concept_id)) {
    fields <- c(fields, "procedure_source_concept_id")
    values <- c(values, if (is.null(procedure_source_concept_id)) "NULL" else if (is(procedure_source_concept_id, "subQuery")) paste0("(", as.character(procedure_source_concept_id), ")") else paste0("'", as.character(procedure_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.procedure_source_concept_id')
  }

  if (!missing(modifier_source_value)) {
    fields <- c(fields, "modifier_source_value")
    values <- c(values, if (is.null(modifier_source_value)) "NULL" else if (is(modifier_source_value, "subQuery")) paste0("(", as.character(modifier_source_value), ")") else paste0("'", as.character(modifier_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'procedure_occurrence.modifier_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "procedure_occurrence", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_specimen <- function(rowCount, specimen_id, person_id, specimen_concept_id, specimen_type_concept_id, specimen_date, specimen_datetime, quantity, unit_concept_id, anatomic_site_concept_id, disease_status_concept_id, specimen_source_id, specimen_source_value, unit_source_value, anatomic_site_source_value, disease_status_source_value) {
  fields <- c()
  values <- c()
  if (!missing(specimen_id)) {
    fields <- c(fields, "specimen_id")
    values <- c(values, if (is.null(specimen_id)) "NULL" else if (is(specimen_id, "subQuery")) paste0("(", as.character(specimen_id), ")") else paste0("'", as.character(specimen_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.person_id')
  }

  if (!missing(specimen_concept_id)) {
    fields <- c(fields, "specimen_concept_id")
    values <- c(values, if (is.null(specimen_concept_id)) "NULL" else if (is(specimen_concept_id, "subQuery")) paste0("(", as.character(specimen_concept_id), ")") else paste0("'", as.character(specimen_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_concept_id')
  }

  if (!missing(specimen_type_concept_id)) {
    fields <- c(fields, "specimen_type_concept_id")
    values <- c(values, if (is.null(specimen_type_concept_id)) "NULL" else if (is(specimen_type_concept_id, "subQuery")) paste0("(", as.character(specimen_type_concept_id), ")") else paste0("'", as.character(specimen_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_type_concept_id')
  }

  if (!missing(specimen_date)) {
    fields <- c(fields, "specimen_date")
    values <- c(values, if (is.null(specimen_date)) "NULL" else if (is(specimen_date, "subQuery")) paste0("(", as.character(specimen_date), ")") else paste0("'", as.character(specimen_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_date')
  }

  if (!missing(specimen_datetime)) {
    fields <- c(fields, "specimen_datetime")
    values <- c(values, if (is.null(specimen_datetime)) "NULL" else if (is(specimen_datetime, "subQuery")) paste0("(", as.character(specimen_datetime), ")") else paste0("'", as.character(specimen_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_datetime')
  }

  if (!missing(quantity)) {
    fields <- c(fields, "quantity")
    values <- c(values, if (is.null(quantity)) "NULL" else if (is(quantity, "subQuery")) paste0("(", as.character(quantity), ")") else paste0("'", as.character(quantity), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.quantity')
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) "NULL" else if (is(unit_concept_id, "subQuery")) paste0("(", as.character(unit_concept_id), ")") else paste0("'", as.character(unit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.unit_concept_id')
  }

  if (!missing(anatomic_site_concept_id)) {
    fields <- c(fields, "anatomic_site_concept_id")
    values <- c(values, if (is.null(anatomic_site_concept_id)) "NULL" else if (is(anatomic_site_concept_id, "subQuery")) paste0("(", as.character(anatomic_site_concept_id), ")") else paste0("'", as.character(anatomic_site_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.anatomic_site_concept_id')
  }

  if (!missing(disease_status_concept_id)) {
    fields <- c(fields, "disease_status_concept_id")
    values <- c(values, if (is.null(disease_status_concept_id)) "NULL" else if (is(disease_status_concept_id, "subQuery")) paste0("(", as.character(disease_status_concept_id), ")") else paste0("'", as.character(disease_status_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.disease_status_concept_id')
  }

  if (!missing(specimen_source_id)) {
    fields <- c(fields, "specimen_source_id")
    values <- c(values, if (is.null(specimen_source_id)) "NULL" else if (is(specimen_source_id, "subQuery")) paste0("(", as.character(specimen_source_id), ")") else paste0("'", as.character(specimen_source_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_source_id')
  }

  if (!missing(specimen_source_value)) {
    fields <- c(fields, "specimen_source_value")
    values <- c(values, if (is.null(specimen_source_value)) "NULL" else if (is(specimen_source_value, "subQuery")) paste0("(", as.character(specimen_source_value), ")") else paste0("'", as.character(specimen_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.specimen_source_value')
  }

  if (!missing(unit_source_value)) {
    fields <- c(fields, "unit_source_value")
    values <- c(values, if (is.null(unit_source_value)) "NULL" else if (is(unit_source_value, "subQuery")) paste0("(", as.character(unit_source_value), ")") else paste0("'", as.character(unit_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.unit_source_value')
  }

  if (!missing(anatomic_site_source_value)) {
    fields <- c(fields, "anatomic_site_source_value")
    values <- c(values, if (is.null(anatomic_site_source_value)) "NULL" else if (is(anatomic_site_source_value, "subQuery")) paste0("(", as.character(anatomic_site_source_value), ")") else paste0("'", as.character(anatomic_site_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.anatomic_site_source_value')
  }

  if (!missing(disease_status_source_value)) {
    fields <- c(fields, "disease_status_source_value")
    values <- c(values, if (is.null(disease_status_source_value)) "NULL" else if (is(disease_status_source_value, "subQuery")) paste0("(", as.character(disease_status_source_value), ")") else paste0("'", as.character(disease_status_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'specimen.disease_status_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "specimen", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_visit_detail <- function(rowCount, visit_detail_id, person_id, visit_detail_concept_id, visit_detail_start_date, visit_detail_start_datetime, visit_detail_end_date, visit_detail_end_datetime, visit_detail_type_concept_id, provider_id, care_site_id, visit_detail_source_value, visit_detail_source_concept_id, admitting_source_value, admitting_source_concept_id, admitted_from_source_value, admitted_from_concept_id, preceding_visit_detail_id, visit_detail_parent_id, visit_occurrence_id) {
  fields <- c()
  values <- c()
  if (!missing(visit_detail_id)) {
    fields <- c(fields, "visit_detail_id")
    values <- c(values, if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.person_id')
  }

  if (!missing(visit_detail_concept_id)) {
    fields <- c(fields, "visit_detail_concept_id")
    values <- c(values, if (is.null(visit_detail_concept_id)) "NULL" else if (is(visit_detail_concept_id, "subQuery")) paste0("(", as.character(visit_detail_concept_id), ")") else paste0("'", as.character(visit_detail_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_concept_id')
  }

  if (!missing(visit_detail_start_date)) {
    fields <- c(fields, "visit_detail_start_date")
    values <- c(values, if (is.null(visit_detail_start_date)) "NULL" else if (is(visit_detail_start_date, "subQuery")) paste0("(", as.character(visit_detail_start_date), ")") else paste0("'", as.character(visit_detail_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_start_date')
  }

  if (!missing(visit_detail_start_datetime)) {
    fields <- c(fields, "visit_detail_start_datetime")
    values <- c(values, if (is.null(visit_detail_start_datetime)) "NULL" else if (is(visit_detail_start_datetime, "subQuery")) paste0("(", as.character(visit_detail_start_datetime), ")") else paste0("'", as.character(visit_detail_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_start_datetime')
  }

  if (!missing(visit_detail_end_date)) {
    fields <- c(fields, "visit_detail_end_date")
    values <- c(values, if (is.null(visit_detail_end_date)) "NULL" else if (is(visit_detail_end_date, "subQuery")) paste0("(", as.character(visit_detail_end_date), ")") else paste0("'", as.character(visit_detail_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_end_date')
  }

  if (!missing(visit_detail_end_datetime)) {
    fields <- c(fields, "visit_detail_end_datetime")
    values <- c(values, if (is.null(visit_detail_end_datetime)) "NULL" else if (is(visit_detail_end_datetime, "subQuery")) paste0("(", as.character(visit_detail_end_datetime), ")") else paste0("'", as.character(visit_detail_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_end_datetime')
  }

  if (!missing(visit_detail_type_concept_id)) {
    fields <- c(fields, "visit_detail_type_concept_id")
    values <- c(values, if (is.null(visit_detail_type_concept_id)) "NULL" else if (is(visit_detail_type_concept_id, "subQuery")) paste0("(", as.character(visit_detail_type_concept_id), ")") else paste0("'", as.character(visit_detail_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_type_concept_id')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.provider_id')
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.care_site_id')
  }

  if (!missing(visit_detail_source_value)) {
    fields <- c(fields, "visit_detail_source_value")
    values <- c(values, if (is.null(visit_detail_source_value)) "NULL" else if (is(visit_detail_source_value, "subQuery")) paste0("(", as.character(visit_detail_source_value), ")") else paste0("'", as.character(visit_detail_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_source_value')
  }

  if (!missing(visit_detail_source_concept_id)) {
    fields <- c(fields, "visit_detail_source_concept_id")
    values <- c(values, if (is.null(visit_detail_source_concept_id)) "NULL" else if (is(visit_detail_source_concept_id, "subQuery")) paste0("(", as.character(visit_detail_source_concept_id), ")") else paste0("'", as.character(visit_detail_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_source_concept_id')
  }

  if (!missing(admitting_source_value)) {
    fields <- c(fields, "admitting_source_value")
    values <- c(values, if (is.null(admitting_source_value)) "NULL" else if (is(admitting_source_value, "subQuery")) paste0("(", as.character(admitting_source_value), ")") else paste0("'", as.character(admitting_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.admitting_source_value')
  }

  if (!missing(admitting_source_concept_id)) {
    fields <- c(fields, "admitting_source_concept_id")
    values <- c(values, if (is.null(admitting_source_concept_id)) "NULL" else if (is(admitting_source_concept_id, "subQuery")) paste0("(", as.character(admitting_source_concept_id), ")") else paste0("'", as.character(admitting_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.admitting_source_concept_id')
  }

  if (!missing(admitted_from_source_value)) {
    fields <- c(fields, "admitted_from_source_value")
    values <- c(values, if (is.null(admitted_from_source_value)) "NULL" else if (is(admitted_from_source_value, "subQuery")) paste0("(", as.character(admitted_from_source_value), ")") else paste0("'", as.character(admitted_from_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.admitted_from_source_value')
  }

  if (!missing(admitted_from_concept_id)) {
    fields <- c(fields, "admitted_from_concept_id")
    values <- c(values, if (is.null(admitted_from_concept_id)) "NULL" else if (is(admitted_from_concept_id, "subQuery")) paste0("(", as.character(admitted_from_concept_id), ")") else paste0("'", as.character(admitted_from_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.admitted_from_concept_id')
  }

  if (!missing(preceding_visit_detail_id)) {
    fields <- c(fields, "preceding_visit_detail_id")
    values <- c(values, if (is.null(preceding_visit_detail_id)) "NULL" else if (is(preceding_visit_detail_id, "subQuery")) paste0("(", as.character(preceding_visit_detail_id), ")") else paste0("'", as.character(preceding_visit_detail_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.preceding_visit_detail_id')
  }

  if (!missing(visit_detail_parent_id)) {
    fields <- c(fields, "visit_detail_parent_id")
    values <- c(values, if (is.null(visit_detail_parent_id)) "NULL" else if (is(visit_detail_parent_id, "subQuery")) paste0("(", as.character(visit_detail_parent_id), ")") else paste0("'", as.character(visit_detail_parent_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_detail_parent_id')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'visit_detail.visit_occurrence_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "visit_detail", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_cohort <- function(rowCount, cohort_definition_id, subject_id, cohort_start_date, cohort_end_date) {
  fields <- c()
  values <- c()
  if (!missing(cohort_definition_id)) {
    fields <- c(fields, "cohort_definition_id")
    values <- c(values, if (is.null(cohort_definition_id)) "NULL" else if (is(cohort_definition_id, "subQuery")) paste0("(", as.character(cohort_definition_id), ")") else paste0("'", as.character(cohort_definition_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort.cohort_definition_id')
  }

  if (!missing(subject_id)) {
    fields <- c(fields, "subject_id")
    values <- c(values, if (is.null(subject_id)) "NULL" else if (is(subject_id, "subQuery")) paste0("(", as.character(subject_id), ")") else paste0("'", as.character(subject_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort.subject_id')
  }

  if (!missing(cohort_start_date)) {
    fields <- c(fields, "cohort_start_date")
    values <- c(values, if (is.null(cohort_start_date)) "NULL" else if (is(cohort_start_date, "subQuery")) paste0("(", as.character(cohort_start_date), ")") else paste0("'", as.character(cohort_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort.cohort_start_date')
  }

  if (!missing(cohort_end_date)) {
    fields <- c(fields, "cohort_end_date")
    values <- c(values, if (is.null(cohort_end_date)) "NULL" else if (is(cohort_end_date, "subQuery")) paste0("(", as.character(cohort_end_date), ")") else paste0("'", as.character(cohort_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort.cohort_end_date')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "cohort", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_condition_era <- function(rowCount, condition_era_id, person_id, condition_concept_id, condition_era_start_datetime, condition_era_end_datetime, condition_occurrence_count) {
  fields <- c()
  values <- c()
  if (!missing(condition_era_id)) {
    fields <- c(fields, "condition_era_id")
    values <- c(values, if (is.null(condition_era_id)) "NULL" else if (is(condition_era_id, "subQuery")) paste0("(", as.character(condition_era_id), ")") else paste0("'", as.character(condition_era_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_era_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.person_id')
  }

  if (!missing(condition_concept_id)) {
    fields <- c(fields, "condition_concept_id")
    values <- c(values, if (is.null(condition_concept_id)) "NULL" else if (is(condition_concept_id, "subQuery")) paste0("(", as.character(condition_concept_id), ")") else paste0("'", as.character(condition_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_concept_id')
  }

  if (!missing(condition_era_start_datetime)) {
    fields <- c(fields, "condition_era_start_datetime")
    values <- c(values, if (is.null(condition_era_start_datetime)) "NULL" else if (is(condition_era_start_datetime, "subQuery")) paste0("(", as.character(condition_era_start_datetime), ")") else paste0("'", as.character(condition_era_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_era_start_datetime')
  }

  if (!missing(condition_era_end_datetime)) {
    fields <- c(fields, "condition_era_end_datetime")
    values <- c(values, if (is.null(condition_era_end_datetime)) "NULL" else if (is(condition_era_end_datetime, "subQuery")) paste0("(", as.character(condition_era_end_datetime), ")") else paste0("'", as.character(condition_era_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_era_end_datetime')
  }

  if (!missing(condition_occurrence_count)) {
    fields <- c(fields, "condition_occurrence_count")
    values <- c(values, if (is.null(condition_occurrence_count)) "NULL" else if (is(condition_occurrence_count, "subQuery")) paste0("(", as.character(condition_occurrence_count), ")") else paste0("'", as.character(condition_occurrence_count), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'condition_era.condition_occurrence_count')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "condition_era", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_dose_era <- function(rowCount, dose_era_id, person_id, drug_concept_id, unit_concept_id, dose_value, dose_era_start_datetime, dose_era_end_datetime) {
  fields <- c()
  values <- c()
  if (!missing(dose_era_id)) {
    fields <- c(fields, "dose_era_id")
    values <- c(values, if (is.null(dose_era_id)) "NULL" else if (is(dose_era_id, "subQuery")) paste0("(", as.character(dose_era_id), ")") else paste0("'", as.character(dose_era_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.dose_era_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.person_id')
  }

  if (!missing(drug_concept_id)) {
    fields <- c(fields, "drug_concept_id")
    values <- c(values, if (is.null(drug_concept_id)) "NULL" else if (is(drug_concept_id, "subQuery")) paste0("(", as.character(drug_concept_id), ")") else paste0("'", as.character(drug_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.drug_concept_id')
  }

  if (!missing(unit_concept_id)) {
    fields <- c(fields, "unit_concept_id")
    values <- c(values, if (is.null(unit_concept_id)) "NULL" else if (is(unit_concept_id, "subQuery")) paste0("(", as.character(unit_concept_id), ")") else paste0("'", as.character(unit_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.unit_concept_id')
  }

  if (!missing(dose_value)) {
    fields <- c(fields, "dose_value")
    values <- c(values, if (is.null(dose_value)) "NULL" else if (is(dose_value, "subQuery")) paste0("(", as.character(dose_value), ")") else paste0("'", as.character(dose_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.dose_value')
  }

  if (!missing(dose_era_start_datetime)) {
    fields <- c(fields, "dose_era_start_datetime")
    values <- c(values, if (is.null(dose_era_start_datetime)) "NULL" else if (is(dose_era_start_datetime, "subQuery")) paste0("(", as.character(dose_era_start_datetime), ")") else paste0("'", as.character(dose_era_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.dose_era_start_datetime')
  }

  if (!missing(dose_era_end_datetime)) {
    fields <- c(fields, "dose_era_end_datetime")
    values <- c(values, if (is.null(dose_era_end_datetime)) "NULL" else if (is(dose_era_end_datetime, "subQuery")) paste0("(", as.character(dose_era_end_datetime), ")") else paste0("'", as.character(dose_era_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'dose_era.dose_era_end_datetime')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "dose_era", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_drug_era <- function(rowCount, drug_era_id, person_id, drug_concept_id, drug_era_start_datetime, drug_era_end_datetime, drug_exposure_count, gap_days) {
  fields <- c()
  values <- c()
  if (!missing(drug_era_id)) {
    fields <- c(fields, "drug_era_id")
    values <- c(values, if (is.null(drug_era_id)) "NULL" else if (is(drug_era_id, "subQuery")) paste0("(", as.character(drug_era_id), ")") else paste0("'", as.character(drug_era_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_era_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.person_id')
  }

  if (!missing(drug_concept_id)) {
    fields <- c(fields, "drug_concept_id")
    values <- c(values, if (is.null(drug_concept_id)) "NULL" else if (is(drug_concept_id, "subQuery")) paste0("(", as.character(drug_concept_id), ")") else paste0("'", as.character(drug_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_concept_id')
  }

  if (!missing(drug_era_start_datetime)) {
    fields <- c(fields, "drug_era_start_datetime")
    values <- c(values, if (is.null(drug_era_start_datetime)) "NULL" else if (is(drug_era_start_datetime, "subQuery")) paste0("(", as.character(drug_era_start_datetime), ")") else paste0("'", as.character(drug_era_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_era_start_datetime')
  }

  if (!missing(drug_era_end_datetime)) {
    fields <- c(fields, "drug_era_end_datetime")
    values <- c(values, if (is.null(drug_era_end_datetime)) "NULL" else if (is(drug_era_end_datetime, "subQuery")) paste0("(", as.character(drug_era_end_datetime), ")") else paste0("'", as.character(drug_era_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_era_end_datetime')
  }

  if (!missing(drug_exposure_count)) {
    fields <- c(fields, "drug_exposure_count")
    values <- c(values, if (is.null(drug_exposure_count)) "NULL" else if (is(drug_exposure_count, "subQuery")) paste0("(", as.character(drug_exposure_count), ")") else paste0("'", as.character(drug_exposure_count), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.drug_exposure_count')
  }

  if (!missing(gap_days)) {
    fields <- c(fields, "gap_days")
    values <- c(values, if (is.null(gap_days)) "NULL" else if (is(gap_days, "subQuery")) paste0("(", as.character(gap_days), ")") else paste0("'", as.character(gap_days), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'drug_era.gap_days')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "drug_era", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_cost <- function(rowCount, cost_id, person_id, cost_event_id, cost_event_field_concept_id, cost_concept_id, cost_type_concept_id, cost_source_concept_id, cost_source_value, currency_concept_id, cost, incurred_date, billed_date, paid_date, revenue_code_concept_id, drg_concept_id, revenue_code_source_value, drg_source_value, payer_plan_period_id) {
  fields <- c()
  values <- c()
  if (!missing(cost_id)) {
    fields <- c(fields, "cost_id")
    values <- c(values, if (is.null(cost_id)) "NULL" else if (is(cost_id, "subQuery")) paste0("(", as.character(cost_id), ")") else paste0("'", as.character(cost_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.person_id')
  }

  if (!missing(cost_event_id)) {
    fields <- c(fields, "cost_event_id")
    values <- c(values, if (is.null(cost_event_id)) "NULL" else if (is(cost_event_id, "subQuery")) paste0("(", as.character(cost_event_id), ")") else paste0("'", as.character(cost_event_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_event_id')
  }

  if (!missing(cost_event_field_concept_id)) {
    fields <- c(fields, "cost_event_field_concept_id")
    values <- c(values, if (is.null(cost_event_field_concept_id)) "NULL" else if (is(cost_event_field_concept_id, "subQuery")) paste0("(", as.character(cost_event_field_concept_id), ")") else paste0("'", as.character(cost_event_field_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_event_field_concept_id')
  }

  if (!missing(cost_concept_id)) {
    fields <- c(fields, "cost_concept_id")
    values <- c(values, if (is.null(cost_concept_id)) "NULL" else if (is(cost_concept_id, "subQuery")) paste0("(", as.character(cost_concept_id), ")") else paste0("'", as.character(cost_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_concept_id')
  }

  if (!missing(cost_type_concept_id)) {
    fields <- c(fields, "cost_type_concept_id")
    values <- c(values, if (is.null(cost_type_concept_id)) "NULL" else if (is(cost_type_concept_id, "subQuery")) paste0("(", as.character(cost_type_concept_id), ")") else paste0("'", as.character(cost_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_type_concept_id')
  }

  if (!missing(cost_source_concept_id)) {
    fields <- c(fields, "cost_source_concept_id")
    values <- c(values, if (is.null(cost_source_concept_id)) "NULL" else if (is(cost_source_concept_id, "subQuery")) paste0("(", as.character(cost_source_concept_id), ")") else paste0("'", as.character(cost_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_source_concept_id')
  }

  if (!missing(cost_source_value)) {
    fields <- c(fields, "cost_source_value")
    values <- c(values, if (is.null(cost_source_value)) "NULL" else if (is(cost_source_value, "subQuery")) paste0("(", as.character(cost_source_value), ")") else paste0("'", as.character(cost_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost_source_value')
  }

  if (!missing(currency_concept_id)) {
    fields <- c(fields, "currency_concept_id")
    values <- c(values, if (is.null(currency_concept_id)) "NULL" else if (is(currency_concept_id, "subQuery")) paste0("(", as.character(currency_concept_id), ")") else paste0("'", as.character(currency_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.currency_concept_id')
  }

  if (!missing(cost)) {
    fields <- c(fields, "cost")
    values <- c(values, if (is.null(cost)) "NULL" else if (is(cost, "subQuery")) paste0("(", as.character(cost), ")") else paste0("'", as.character(cost), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.cost')
  }

  if (!missing(incurred_date)) {
    fields <- c(fields, "incurred_date")
    values <- c(values, if (is.null(incurred_date)) "NULL" else if (is(incurred_date, "subQuery")) paste0("(", as.character(incurred_date), ")") else paste0("'", as.character(incurred_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.incurred_date')
  }

  if (!missing(billed_date)) {
    fields <- c(fields, "billed_date")
    values <- c(values, if (is.null(billed_date)) "NULL" else if (is(billed_date, "subQuery")) paste0("(", as.character(billed_date), ")") else paste0("'", as.character(billed_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.billed_date')
  }

  if (!missing(paid_date)) {
    fields <- c(fields, "paid_date")
    values <- c(values, if (is.null(paid_date)) "NULL" else if (is(paid_date, "subQuery")) paste0("(", as.character(paid_date), ")") else paste0("'", as.character(paid_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.paid_date')
  }

  if (!missing(revenue_code_concept_id)) {
    fields <- c(fields, "revenue_code_concept_id")
    values <- c(values, if (is.null(revenue_code_concept_id)) "NULL" else if (is(revenue_code_concept_id, "subQuery")) paste0("(", as.character(revenue_code_concept_id), ")") else paste0("'", as.character(revenue_code_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.revenue_code_concept_id')
  }

  if (!missing(drg_concept_id)) {
    fields <- c(fields, "drg_concept_id")
    values <- c(values, if (is.null(drg_concept_id)) "NULL" else if (is(drg_concept_id, "subQuery")) paste0("(", as.character(drg_concept_id), ")") else paste0("'", as.character(drg_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.drg_concept_id')
  }

  if (!missing(revenue_code_source_value)) {
    fields <- c(fields, "revenue_code_source_value")
    values <- c(values, if (is.null(revenue_code_source_value)) "NULL" else if (is(revenue_code_source_value, "subQuery")) paste0("(", as.character(revenue_code_source_value), ")") else paste0("'", as.character(revenue_code_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.revenue_code_source_value')
  }

  if (!missing(drg_source_value)) {
    fields <- c(fields, "drg_source_value")
    values <- c(values, if (is.null(drg_source_value)) "NULL" else if (is(drg_source_value, "subQuery")) paste0("(", as.character(drg_source_value), ")") else paste0("'", as.character(drg_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.drg_source_value')
  }

  if (!missing(payer_plan_period_id)) {
    fields <- c(fields, "payer_plan_period_id")
    values <- c(values, if (is.null(payer_plan_period_id)) "NULL" else if (is(payer_plan_period_id, "subQuery")) paste0("(", as.character(payer_plan_period_id), ")") else paste0("'", as.character(payer_plan_period_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cost.payer_plan_period_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "cost", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_payer_plan_period <- function(rowCount, payer_plan_period_id, person_id, contract_person_id, payer_plan_period_start_date, payer_plan_period_end_date, payer_concept_id, payer_source_value, payer_source_concept_id, plan_concept_id, plan_source_value, plan_source_concept_id, contract_concept_id, contract_source_value, contract_source_concept_id, sponsor_concept_id, sponsor_source_value, sponsor_source_concept_id, family_source_value, stop_reason_concept_id, stop_reason_source_value, stop_reason_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(payer_plan_period_id)) {
    fields <- c(fields, "payer_plan_period_id")
    values <- c(values, if (is.null(payer_plan_period_id)) "NULL" else if (is(payer_plan_period_id, "subQuery")) paste0("(", as.character(payer_plan_period_id), ")") else paste0("'", as.character(payer_plan_period_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_plan_period_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.person_id')
  }

  if (!missing(contract_person_id)) {
    fields <- c(fields, "contract_person_id")
    values <- c(values, if (is.null(contract_person_id)) "NULL" else if (is(contract_person_id, "subQuery")) paste0("(", as.character(contract_person_id), ")") else paste0("'", as.character(contract_person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.contract_person_id')
  }

  if (!missing(payer_plan_period_start_date)) {
    fields <- c(fields, "payer_plan_period_start_date")
    values <- c(values, if (is.null(payer_plan_period_start_date)) "NULL" else if (is(payer_plan_period_start_date, "subQuery")) paste0("(", as.character(payer_plan_period_start_date), ")") else paste0("'", as.character(payer_plan_period_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_plan_period_start_date')
  }

  if (!missing(payer_plan_period_end_date)) {
    fields <- c(fields, "payer_plan_period_end_date")
    values <- c(values, if (is.null(payer_plan_period_end_date)) "NULL" else if (is(payer_plan_period_end_date, "subQuery")) paste0("(", as.character(payer_plan_period_end_date), ")") else paste0("'", as.character(payer_plan_period_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_plan_period_end_date')
  }

  if (!missing(payer_concept_id)) {
    fields <- c(fields, "payer_concept_id")
    values <- c(values, if (is.null(payer_concept_id)) "NULL" else if (is(payer_concept_id, "subQuery")) paste0("(", as.character(payer_concept_id), ")") else paste0("'", as.character(payer_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_concept_id')
  }

  if (!missing(payer_source_value)) {
    fields <- c(fields, "payer_source_value")
    values <- c(values, if (is.null(payer_source_value)) "NULL" else if (is(payer_source_value, "subQuery")) paste0("(", as.character(payer_source_value), ")") else paste0("'", as.character(payer_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_source_value')
  }

  if (!missing(payer_source_concept_id)) {
    fields <- c(fields, "payer_source_concept_id")
    values <- c(values, if (is.null(payer_source_concept_id)) "NULL" else if (is(payer_source_concept_id, "subQuery")) paste0("(", as.character(payer_source_concept_id), ")") else paste0("'", as.character(payer_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.payer_source_concept_id')
  }

  if (!missing(plan_concept_id)) {
    fields <- c(fields, "plan_concept_id")
    values <- c(values, if (is.null(plan_concept_id)) "NULL" else if (is(plan_concept_id, "subQuery")) paste0("(", as.character(plan_concept_id), ")") else paste0("'", as.character(plan_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.plan_concept_id')
  }

  if (!missing(plan_source_value)) {
    fields <- c(fields, "plan_source_value")
    values <- c(values, if (is.null(plan_source_value)) "NULL" else if (is(plan_source_value, "subQuery")) paste0("(", as.character(plan_source_value), ")") else paste0("'", as.character(plan_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.plan_source_value')
  }

  if (!missing(plan_source_concept_id)) {
    fields <- c(fields, "plan_source_concept_id")
    values <- c(values, if (is.null(plan_source_concept_id)) "NULL" else if (is(plan_source_concept_id, "subQuery")) paste0("(", as.character(plan_source_concept_id), ")") else paste0("'", as.character(plan_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.plan_source_concept_id')
  }

  if (!missing(contract_concept_id)) {
    fields <- c(fields, "contract_concept_id")
    values <- c(values, if (is.null(contract_concept_id)) "NULL" else if (is(contract_concept_id, "subQuery")) paste0("(", as.character(contract_concept_id), ")") else paste0("'", as.character(contract_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.contract_concept_id')
  }

  if (!missing(contract_source_value)) {
    fields <- c(fields, "contract_source_value")
    values <- c(values, if (is.null(contract_source_value)) "NULL" else if (is(contract_source_value, "subQuery")) paste0("(", as.character(contract_source_value), ")") else paste0("'", as.character(contract_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.contract_source_value')
  }

  if (!missing(contract_source_concept_id)) {
    fields <- c(fields, "contract_source_concept_id")
    values <- c(values, if (is.null(contract_source_concept_id)) "NULL" else if (is(contract_source_concept_id, "subQuery")) paste0("(", as.character(contract_source_concept_id), ")") else paste0("'", as.character(contract_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.contract_source_concept_id')
  }

  if (!missing(sponsor_concept_id)) {
    fields <- c(fields, "sponsor_concept_id")
    values <- c(values, if (is.null(sponsor_concept_id)) "NULL" else if (is(sponsor_concept_id, "subQuery")) paste0("(", as.character(sponsor_concept_id), ")") else paste0("'", as.character(sponsor_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.sponsor_concept_id')
  }

  if (!missing(sponsor_source_value)) {
    fields <- c(fields, "sponsor_source_value")
    values <- c(values, if (is.null(sponsor_source_value)) "NULL" else if (is(sponsor_source_value, "subQuery")) paste0("(", as.character(sponsor_source_value), ")") else paste0("'", as.character(sponsor_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.sponsor_source_value')
  }

  if (!missing(sponsor_source_concept_id)) {
    fields <- c(fields, "sponsor_source_concept_id")
    values <- c(values, if (is.null(sponsor_source_concept_id)) "NULL" else if (is(sponsor_source_concept_id, "subQuery")) paste0("(", as.character(sponsor_source_concept_id), ")") else paste0("'", as.character(sponsor_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.sponsor_source_concept_id')
  }

  if (!missing(family_source_value)) {
    fields <- c(fields, "family_source_value")
    values <- c(values, if (is.null(family_source_value)) "NULL" else if (is(family_source_value, "subQuery")) paste0("(", as.character(family_source_value), ")") else paste0("'", as.character(family_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.family_source_value')
  }

  if (!missing(stop_reason_concept_id)) {
    fields <- c(fields, "stop_reason_concept_id")
    values <- c(values, if (is.null(stop_reason_concept_id)) "NULL" else if (is(stop_reason_concept_id, "subQuery")) paste0("(", as.character(stop_reason_concept_id), ")") else paste0("'", as.character(stop_reason_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.stop_reason_concept_id')
  }

  if (!missing(stop_reason_source_value)) {
    fields <- c(fields, "stop_reason_source_value")
    values <- c(values, if (is.null(stop_reason_source_value)) "NULL" else if (is(stop_reason_source_value, "subQuery")) paste0("(", as.character(stop_reason_source_value), ")") else paste0("'", as.character(stop_reason_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.stop_reason_source_value')
  }

  if (!missing(stop_reason_source_concept_id)) {
    fields <- c(fields, "stop_reason_source_concept_id")
    values <- c(values, if (is.null(stop_reason_source_concept_id)) "NULL" else if (is(stop_reason_source_concept_id, "subQuery")) paste0("(", as.character(stop_reason_source_concept_id), ")") else paste0("'", as.character(stop_reason_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'payer_plan_period.stop_reason_source_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "payer_plan_period", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_care_site <- function(rowCount, care_site_id, care_site_name, place_of_service_concept_id, location_id, care_site_source_value, place_of_service_source_value) {
  fields <- c()
  values <- c()
  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.care_site_id')
  }

  if (!missing(care_site_name)) {
    fields <- c(fields, "care_site_name")
    values <- c(values, if (is.null(care_site_name)) "NULL" else if (is(care_site_name, "subQuery")) paste0("(", as.character(care_site_name), ")") else paste0("'", as.character(care_site_name), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.care_site_name')
  }

  if (!missing(place_of_service_concept_id)) {
    fields <- c(fields, "place_of_service_concept_id")
    values <- c(values, if (is.null(place_of_service_concept_id)) "NULL" else if (is(place_of_service_concept_id, "subQuery")) paste0("(", as.character(place_of_service_concept_id), ")") else paste0("'", as.character(place_of_service_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.place_of_service_concept_id')
  }

  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) "NULL" else if (is(location_id, "subQuery")) paste0("(", as.character(location_id), ")") else paste0("'", as.character(location_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.location_id')
  }

  if (!missing(care_site_source_value)) {
    fields <- c(fields, "care_site_source_value")
    values <- c(values, if (is.null(care_site_source_value)) "NULL" else if (is(care_site_source_value, "subQuery")) paste0("(", as.character(care_site_source_value), ")") else paste0("'", as.character(care_site_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.care_site_source_value')
  }

  if (!missing(place_of_service_source_value)) {
    fields <- c(fields, "place_of_service_source_value")
    values <- c(values, if (is.null(place_of_service_source_value)) "NULL" else if (is(place_of_service_source_value, "subQuery")) paste0("(", as.character(place_of_service_source_value), ")") else paste0("'", as.character(place_of_service_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'care_site.place_of_service_source_value')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "care_site", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_location <- function(rowCount, location_id, address_1, address_2, city, state, zip, county, country, location_source_value, latitude, longitude) {
  fields <- c()
  values <- c()
  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) "NULL" else if (is(location_id, "subQuery")) paste0("(", as.character(location_id), ")") else paste0("'", as.character(location_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.location_id')
  }

  if (!missing(address_1)) {
    fields <- c(fields, "address_1")
    values <- c(values, if (is.null(address_1)) "NULL" else if (is(address_1, "subQuery")) paste0("(", as.character(address_1), ")") else paste0("'", as.character(address_1), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.address_1')
  }

  if (!missing(address_2)) {
    fields <- c(fields, "address_2")
    values <- c(values, if (is.null(address_2)) "NULL" else if (is(address_2, "subQuery")) paste0("(", as.character(address_2), ")") else paste0("'", as.character(address_2), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.address_2')
  }

  if (!missing(city)) {
    fields <- c(fields, "city")
    values <- c(values, if (is.null(city)) "NULL" else if (is(city, "subQuery")) paste0("(", as.character(city), ")") else paste0("'", as.character(city), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.city')
  }

  if (!missing(state)) {
    fields <- c(fields, "state")
    values <- c(values, if (is.null(state)) "NULL" else if (is(state, "subQuery")) paste0("(", as.character(state), ")") else paste0("'", as.character(state), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.state')
  }

  if (!missing(zip)) {
    fields <- c(fields, "zip")
    values <- c(values, if (is.null(zip)) "NULL" else if (is(zip, "subQuery")) paste0("(", as.character(zip), ")") else paste0("'", as.character(zip), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.zip')
  }

  if (!missing(county)) {
    fields <- c(fields, "county")
    values <- c(values, if (is.null(county)) "NULL" else if (is(county, "subQuery")) paste0("(", as.character(county), ")") else paste0("'", as.character(county), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.county')
  }

  if (!missing(country)) {
    fields <- c(fields, "country")
    values <- c(values, if (is.null(country)) "NULL" else if (is(country, "subQuery")) paste0("(", as.character(country), ")") else paste0("'", as.character(country), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.country')
  }

  if (!missing(location_source_value)) {
    fields <- c(fields, "location_source_value")
    values <- c(values, if (is.null(location_source_value)) "NULL" else if (is(location_source_value, "subQuery")) paste0("(", as.character(location_source_value), ")") else paste0("'", as.character(location_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.location_source_value')
  }

  if (!missing(latitude)) {
    fields <- c(fields, "latitude")
    values <- c(values, if (is.null(latitude)) "NULL" else if (is(latitude, "subQuery")) paste0("(", as.character(latitude), ")") else paste0("'", as.character(latitude), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.latitude')
  }

  if (!missing(longitude)) {
    fields <- c(fields, "longitude")
    values <- c(values, if (is.null(longitude)) "NULL" else if (is(longitude, "subQuery")) paste0("(", as.character(longitude), ")") else paste0("'", as.character(longitude), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location.longitude')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "location", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_provider <- function(rowCount, provider_id, provider_name, npi, dea, specialty_concept_id, care_site_id, year_of_birth, gender_concept_id, provider_source_value, specialty_source_value, specialty_source_concept_id, gender_source_value, gender_source_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.provider_id')
  }

  if (!missing(provider_name)) {
    fields <- c(fields, "provider_name")
    values <- c(values, if (is.null(provider_name)) "NULL" else if (is(provider_name, "subQuery")) paste0("(", as.character(provider_name), ")") else paste0("'", as.character(provider_name), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.provider_name')
  }

  if (!missing(npi)) {
    fields <- c(fields, "npi")
    values <- c(values, if (is.null(npi)) "NULL" else if (is(npi, "subQuery")) paste0("(", as.character(npi), ")") else paste0("'", as.character(npi), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.npi')
  }

  if (!missing(dea)) {
    fields <- c(fields, "dea")
    values <- c(values, if (is.null(dea)) "NULL" else if (is(dea, "subQuery")) paste0("(", as.character(dea), ")") else paste0("'", as.character(dea), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.dea')
  }

  if (!missing(specialty_concept_id)) {
    fields <- c(fields, "specialty_concept_id")
    values <- c(values, if (is.null(specialty_concept_id)) "NULL" else if (is(specialty_concept_id, "subQuery")) paste0("(", as.character(specialty_concept_id), ")") else paste0("'", as.character(specialty_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.specialty_concept_id')
  }

  if (!missing(care_site_id)) {
    fields <- c(fields, "care_site_id")
    values <- c(values, if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.care_site_id')
  }

  if (!missing(year_of_birth)) {
    fields <- c(fields, "year_of_birth")
    values <- c(values, if (is.null(year_of_birth)) "NULL" else if (is(year_of_birth, "subQuery")) paste0("(", as.character(year_of_birth), ")") else paste0("'", as.character(year_of_birth), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.year_of_birth')
  }

  if (!missing(gender_concept_id)) {
    fields <- c(fields, "gender_concept_id")
    values <- c(values, if (is.null(gender_concept_id)) "NULL" else if (is(gender_concept_id, "subQuery")) paste0("(", as.character(gender_concept_id), ")") else paste0("'", as.character(gender_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.gender_concept_id')
  }

  if (!missing(provider_source_value)) {
    fields <- c(fields, "provider_source_value")
    values <- c(values, if (is.null(provider_source_value)) "NULL" else if (is(provider_source_value, "subQuery")) paste0("(", as.character(provider_source_value), ")") else paste0("'", as.character(provider_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.provider_source_value')
  }

  if (!missing(specialty_source_value)) {
    fields <- c(fields, "specialty_source_value")
    values <- c(values, if (is.null(specialty_source_value)) "NULL" else if (is(specialty_source_value, "subQuery")) paste0("(", as.character(specialty_source_value), ")") else paste0("'", as.character(specialty_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.specialty_source_value')
  }

  if (!missing(specialty_source_concept_id)) {
    fields <- c(fields, "specialty_source_concept_id")
    values <- c(values, if (is.null(specialty_source_concept_id)) "NULL" else if (is(specialty_source_concept_id, "subQuery")) paste0("(", as.character(specialty_source_concept_id), ")") else paste0("'", as.character(specialty_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.specialty_source_concept_id')
  }

  if (!missing(gender_source_value)) {
    fields <- c(fields, "gender_source_value")
    values <- c(values, if (is.null(gender_source_value)) "NULL" else if (is(gender_source_value, "subQuery")) paste0("(", as.character(gender_source_value), ")") else paste0("'", as.character(gender_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.gender_source_value')
  }

  if (!missing(gender_source_concept_id)) {
    fields <- c(fields, "gender_source_concept_id")
    values <- c(values, if (is.null(gender_source_concept_id)) "NULL" else if (is(gender_source_concept_id, "subQuery")) paste0("(", as.character(gender_source_concept_id), ")") else paste0("'", as.character(gender_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'provider.gender_source_concept_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "provider", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_cdm_source <- function(rowCount, cdm_source_name, cdm_source_abbreviation, cdm_holder, source_description, source_documentation_reference, cdm_etl_reference, source_release_date, cdm_release_date, cdm_version, vocabulary_version) {
  fields <- c()
  values <- c()
  if (!missing(cdm_source_name)) {
    fields <- c(fields, "cdm_source_name")
    values <- c(values, if (is.null(cdm_source_name)) "NULL" else if (is(cdm_source_name, "subQuery")) paste0("(", as.character(cdm_source_name), ")") else paste0("'", as.character(cdm_source_name), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_source_name')
  }

  if (!missing(cdm_source_abbreviation)) {
    fields <- c(fields, "cdm_source_abbreviation")
    values <- c(values, if (is.null(cdm_source_abbreviation)) "NULL" else if (is(cdm_source_abbreviation, "subQuery")) paste0("(", as.character(cdm_source_abbreviation), ")") else paste0("'", as.character(cdm_source_abbreviation), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_source_abbreviation')
  }

  if (!missing(cdm_holder)) {
    fields <- c(fields, "cdm_holder")
    values <- c(values, if (is.null(cdm_holder)) "NULL" else if (is(cdm_holder, "subQuery")) paste0("(", as.character(cdm_holder), ")") else paste0("'", as.character(cdm_holder), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_holder')
  }

  if (!missing(source_description)) {
    fields <- c(fields, "source_description")
    values <- c(values, if (is.null(source_description)) "NULL" else if (is(source_description, "subQuery")) paste0("(", as.character(source_description), ")") else paste0("'", as.character(source_description), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.source_description')
  }

  if (!missing(source_documentation_reference)) {
    fields <- c(fields, "source_documentation_reference")
    values <- c(values, if (is.null(source_documentation_reference)) "NULL" else if (is(source_documentation_reference, "subQuery")) paste0("(", as.character(source_documentation_reference), ")") else paste0("'", as.character(source_documentation_reference), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.source_documentation_reference')
  }

  if (!missing(cdm_etl_reference)) {
    fields <- c(fields, "cdm_etl_reference")
    values <- c(values, if (is.null(cdm_etl_reference)) "NULL" else if (is(cdm_etl_reference, "subQuery")) paste0("(", as.character(cdm_etl_reference), ")") else paste0("'", as.character(cdm_etl_reference), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_etl_reference')
  }

  if (!missing(source_release_date)) {
    fields <- c(fields, "source_release_date")
    values <- c(values, if (is.null(source_release_date)) "NULL" else if (is(source_release_date, "subQuery")) paste0("(", as.character(source_release_date), ")") else paste0("'", as.character(source_release_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.source_release_date')
  }

  if (!missing(cdm_release_date)) {
    fields <- c(fields, "cdm_release_date")
    values <- c(values, if (is.null(cdm_release_date)) "NULL" else if (is(cdm_release_date, "subQuery")) paste0("(", as.character(cdm_release_date), ")") else paste0("'", as.character(cdm_release_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_release_date')
  }

  if (!missing(cdm_version)) {
    fields <- c(fields, "cdm_version")
    values <- c(values, if (is.null(cdm_version)) "NULL" else if (is(cdm_version, "subQuery")) paste0("(", as.character(cdm_version), ")") else paste0("'", as.character(cdm_version), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.cdm_version')
  }

  if (!missing(vocabulary_version)) {
    fields <- c(fields, "vocabulary_version")
    values <- c(values, if (is.null(vocabulary_version)) "NULL" else if (is(vocabulary_version, "subQuery")) paste0("(", as.character(vocabulary_version), ")") else paste0("'", as.character(vocabulary_version), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cdm_source.vocabulary_version')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "cdm_source", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_metadata <- function(rowCount, metadata_concept_id, metadata_type_concept_id, name, value_as_string, value_as_concept_id, metadata_date, metadata_datetime) {
  fields <- c()
  values <- c()
  if (!missing(metadata_concept_id)) {
    fields <- c(fields, "metadata_concept_id")
    values <- c(values, if (is.null(metadata_concept_id)) "NULL" else if (is(metadata_concept_id, "subQuery")) paste0("(", as.character(metadata_concept_id), ")") else paste0("'", as.character(metadata_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.metadata_concept_id')
  }

  if (!missing(metadata_type_concept_id)) {
    fields <- c(fields, "metadata_type_concept_id")
    values <- c(values, if (is.null(metadata_type_concept_id)) "NULL" else if (is(metadata_type_concept_id, "subQuery")) paste0("(", as.character(metadata_type_concept_id), ")") else paste0("'", as.character(metadata_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.metadata_type_concept_id')
  }

  if (!missing(name)) {
    fields <- c(fields, "name")
    values <- c(values, if (is.null(name)) "NULL" else if (is(name, "subQuery")) paste0("(", as.character(name), ")") else paste0("'", as.character(name), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.name')
  }

  if (!missing(value_as_string)) {
    fields <- c(fields, "value_as_string")
    values <- c(values, if (is.null(value_as_string)) "NULL" else if (is(value_as_string, "subQuery")) paste0("(", as.character(value_as_string), ")") else paste0("'", as.character(value_as_string), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.value_as_string')
  }

  if (!missing(value_as_concept_id)) {
    fields <- c(fields, "value_as_concept_id")
    values <- c(values, if (is.null(value_as_concept_id)) "NULL" else if (is(value_as_concept_id, "subQuery")) paste0("(", as.character(value_as_concept_id), ")") else paste0("'", as.character(value_as_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.value_as_concept_id')
  }

  if (!missing(metadata_date)) {
    fields <- c(fields, "[metadata date]")
    values <- c(values, if (is.null(metadata_date)) "NULL" else if (is(metadata_date, "subQuery")) paste0("(", as.character(metadata_date), ")") else paste0("'", as.character(metadata_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.metadata_date')
  }

  if (!missing(metadata_datetime)) {
    fields <- c(fields, "metadata_datetime")
    values <- c(values, if (is.null(metadata_datetime)) "NULL" else if (is(metadata_datetime, "subQuery")) paste0("(", as.character(metadata_datetime), ")") else paste0("'", as.character(metadata_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'metadata.metadata_datetime')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "metadata", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_cohort_definition <- function(rowCount, cohort_definition_id, cohort_definition_name, cohort_definition_description, definition_type_concept_id, cohort_definition_syntax, subject_concept_id, cohort_initiation_date) {
  fields <- c()
  values <- c()
  if (!missing(cohort_definition_id)) {
    fields <- c(fields, "cohort_definition_id")
    values <- c(values, if (is.null(cohort_definition_id)) "NULL" else if (is(cohort_definition_id, "subQuery")) paste0("(", as.character(cohort_definition_id), ")") else paste0("'", as.character(cohort_definition_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort_definition.cohort_definition_id')
  }

  if (!missing(cohort_definition_name)) {
    fields <- c(fields, "cohort_definition_name")
    values <- c(values, if (is.null(cohort_definition_name)) "NULL" else if (is(cohort_definition_name, "subQuery")) paste0("(", as.character(cohort_definition_name), ")") else paste0("'", as.character(cohort_definition_name), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort_definition.cohort_definition_name')
  }

  if (!missing(cohort_definition_description)) {
    fields <- c(fields, "cohort_definition_description")
    values <- c(values, if (is.null(cohort_definition_description)) "NULL" else if (is(cohort_definition_description, "subQuery")) paste0("(", as.character(cohort_definition_description), ")") else paste0("'", as.character(cohort_definition_description), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort_definition.cohort_definition_description')
  }

  if (!missing(definition_type_concept_id)) {
    fields <- c(fields, "definition_type_concept_id")
    values <- c(values, if (is.null(definition_type_concept_id)) "NULL" else if (is(definition_type_concept_id, "subQuery")) paste0("(", as.character(definition_type_concept_id), ")") else paste0("'", as.character(definition_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort_definition.definition_type_concept_id')
  }

  if (!missing(cohort_definition_syntax)) {
    fields <- c(fields, "cohort_definition_syntax")
    values <- c(values, if (is.null(cohort_definition_syntax)) "NULL" else if (is(cohort_definition_syntax, "subQuery")) paste0("(", as.character(cohort_definition_syntax), ")") else paste0("'", as.character(cohort_definition_syntax), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort_definition.cohort_definition_syntax')
  }

  if (!missing(subject_concept_id)) {
    fields <- c(fields, "subject_concept_id")
    values <- c(values, if (is.null(subject_concept_id)) "NULL" else if (is(subject_concept_id, "subQuery")) paste0("(", as.character(subject_concept_id), ")") else paste0("'", as.character(subject_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort_definition.subject_concept_id')
  }

  if (!missing(cohort_initiation_date)) {
    fields <- c(fields, "cohort_initiation_date")
    values <- c(values, if (is.null(cohort_initiation_date)) "NULL" else if (is(cohort_initiation_date, "subQuery")) paste0("(", as.character(cohort_initiation_date), ")") else paste0("'", as.character(cohort_initiation_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'cohort_definition.cohort_initiation_date')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "cohort_definition", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_survey_conduct <- function(rowCount, survey_conduct_id, person_id, survey_concept_id, survey_start_date, survey_start_datetime, survey_end_date, survey_end_datetime, provider_id, assisted_concept_id, respondent_type_concept_id, timing_concept_id, collection_method_concept_id, assisted_source_value, respondent_type_source_value, timing_source_value, collection_method_source_value, survey_source_value, survey_source_concept_id, survey_source_identifier, validated_survey_concept_id, validated_survey_source_value, survey_version_number, visit_occurrence_id, response_visit_occurrence_id) {
  fields <- c()
  values <- c()
  if (!missing(survey_conduct_id)) {
    fields <- c(fields, "survey_conduct_id")
    values <- c(values, if (is.null(survey_conduct_id)) "NULL" else if (is(survey_conduct_id, "subQuery")) paste0("(", as.character(survey_conduct_id), ")") else paste0("'", as.character(survey_conduct_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_conduct_id')
  }

  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.person_id')
  }

  if (!missing(survey_concept_id)) {
    fields <- c(fields, "survey_concept_id")
    values <- c(values, if (is.null(survey_concept_id)) "NULL" else if (is(survey_concept_id, "subQuery")) paste0("(", as.character(survey_concept_id), ")") else paste0("'", as.character(survey_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_concept_id')
  }

  if (!missing(survey_start_date)) {
    fields <- c(fields, "survey_start_date")
    values <- c(values, if (is.null(survey_start_date)) "NULL" else if (is(survey_start_date, "subQuery")) paste0("(", as.character(survey_start_date), ")") else paste0("'", as.character(survey_start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_start_date')
  }

  if (!missing(survey_start_datetime)) {
    fields <- c(fields, "survey_start_datetime")
    values <- c(values, if (is.null(survey_start_datetime)) "NULL" else if (is(survey_start_datetime, "subQuery")) paste0("(", as.character(survey_start_datetime), ")") else paste0("'", as.character(survey_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_start_datetime')
  }

  if (!missing(survey_end_date)) {
    fields <- c(fields, "survey_end_date")
    values <- c(values, if (is.null(survey_end_date)) "NULL" else if (is(survey_end_date, "subQuery")) paste0("(", as.character(survey_end_date), ")") else paste0("'", as.character(survey_end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_end_date')
  }

  if (!missing(survey_end_datetime)) {
    fields <- c(fields, "survey_end_datetime")
    values <- c(values, if (is.null(survey_end_datetime)) "NULL" else if (is(survey_end_datetime, "subQuery")) paste0("(", as.character(survey_end_datetime), ")") else paste0("'", as.character(survey_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_end_datetime')
  }

  if (!missing(provider_id)) {
    fields <- c(fields, "provider_id")
    values <- c(values, if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.provider_id')
  }

  if (!missing(assisted_concept_id)) {
    fields <- c(fields, "assisted_concept_id")
    values <- c(values, if (is.null(assisted_concept_id)) "NULL" else if (is(assisted_concept_id, "subQuery")) paste0("(", as.character(assisted_concept_id), ")") else paste0("'", as.character(assisted_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.assisted_concept_id')
  }

  if (!missing(respondent_type_concept_id)) {
    fields <- c(fields, "respondent_type_concept_id")
    values <- c(values, if (is.null(respondent_type_concept_id)) "NULL" else if (is(respondent_type_concept_id, "subQuery")) paste0("(", as.character(respondent_type_concept_id), ")") else paste0("'", as.character(respondent_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.respondent_type_concept_id')
  }

  if (!missing(timing_concept_id)) {
    fields <- c(fields, "timing_concept_id")
    values <- c(values, if (is.null(timing_concept_id)) "NULL" else if (is(timing_concept_id, "subQuery")) paste0("(", as.character(timing_concept_id), ")") else paste0("'", as.character(timing_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.timing_concept_id')
  }

  if (!missing(collection_method_concept_id)) {
    fields <- c(fields, "collection_method_concept_id")
    values <- c(values, if (is.null(collection_method_concept_id)) "NULL" else if (is(collection_method_concept_id, "subQuery")) paste0("(", as.character(collection_method_concept_id), ")") else paste0("'", as.character(collection_method_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.collection_method_concept_id')
  }

  if (!missing(assisted_source_value)) {
    fields <- c(fields, "assisted_source_value")
    values <- c(values, if (is.null(assisted_source_value)) "NULL" else if (is(assisted_source_value, "subQuery")) paste0("(", as.character(assisted_source_value), ")") else paste0("'", as.character(assisted_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.assisted_source_value')
  }

  if (!missing(respondent_type_source_value)) {
    fields <- c(fields, "respondent_type_source_value")
    values <- c(values, if (is.null(respondent_type_source_value)) "NULL" else if (is(respondent_type_source_value, "subQuery")) paste0("(", as.character(respondent_type_source_value), ")") else paste0("'", as.character(respondent_type_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.respondent_type_source_value')
  }

  if (!missing(timing_source_value)) {
    fields <- c(fields, "timing_source_value")
    values <- c(values, if (is.null(timing_source_value)) "NULL" else if (is(timing_source_value, "subQuery")) paste0("(", as.character(timing_source_value), ")") else paste0("'", as.character(timing_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.timing_source_value')
  }

  if (!missing(collection_method_source_value)) {
    fields <- c(fields, "collection_method_source_value")
    values <- c(values, if (is.null(collection_method_source_value)) "NULL" else if (is(collection_method_source_value, "subQuery")) paste0("(", as.character(collection_method_source_value), ")") else paste0("'", as.character(collection_method_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.collection_method_source_value')
  }

  if (!missing(survey_source_value)) {
    fields <- c(fields, "survey_source_value")
    values <- c(values, if (is.null(survey_source_value)) "NULL" else if (is(survey_source_value, "subQuery")) paste0("(", as.character(survey_source_value), ")") else paste0("'", as.character(survey_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_source_value')
  }

  if (!missing(survey_source_concept_id)) {
    fields <- c(fields, "survey_source_concept_id")
    values <- c(values, if (is.null(survey_source_concept_id)) "NULL" else if (is(survey_source_concept_id, "subQuery")) paste0("(", as.character(survey_source_concept_id), ")") else paste0("'", as.character(survey_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_source_concept_id')
  }

  if (!missing(survey_source_identifier)) {
    fields <- c(fields, "survey_source_identifier")
    values <- c(values, if (is.null(survey_source_identifier)) "NULL" else if (is(survey_source_identifier, "subQuery")) paste0("(", as.character(survey_source_identifier), ")") else paste0("'", as.character(survey_source_identifier), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_source_identifier')
  }

  if (!missing(validated_survey_concept_id)) {
    fields <- c(fields, "validated_survey_concept_id")
    values <- c(values, if (is.null(validated_survey_concept_id)) "NULL" else if (is(validated_survey_concept_id, "subQuery")) paste0("(", as.character(validated_survey_concept_id), ")") else paste0("'", as.character(validated_survey_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.validated_survey_concept_id')
  }

  if (!missing(validated_survey_source_value)) {
    fields <- c(fields, "validated_survey_source_value")
    values <- c(values, if (is.null(validated_survey_source_value)) "NULL" else if (is(validated_survey_source_value, "subQuery")) paste0("(", as.character(validated_survey_source_value), ")") else paste0("'", as.character(validated_survey_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.validated_survey_source_value')
  }

  if (!missing(survey_version_number)) {
    fields <- c(fields, "survey_version_number")
    values <- c(values, if (is.null(survey_version_number)) "NULL" else if (is(survey_version_number, "subQuery")) paste0("(", as.character(survey_version_number), ")") else paste0("'", as.character(survey_version_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.survey_version_number')
  }

  if (!missing(visit_occurrence_id)) {
    fields <- c(fields, "visit_occurrence_id")
    values <- c(values, if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.visit_occurrence_id')
  }

  if (!missing(response_visit_occurrence_id)) {
    fields <- c(fields, "response_visit_occurrence_id")
    values <- c(values, if (is.null(response_visit_occurrence_id)) "NULL" else if (is(response_visit_occurrence_id, "subQuery")) paste0("(", as.character(response_visit_occurrence_id), ")") else paste0("'", as.character(response_visit_occurrence_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'survey_conduct.response_visit_occurrence_id')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "survey_conduct", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_location_history <- function(rowCount, location_id, relationship_type_concept_id, domain_id, entity_id, start_date, end_date) {
  fields <- c()
  values <- c()
  if (!missing(location_id)) {
    fields <- c(fields, "location_id")
    values <- c(values, if (is.null(location_id)) "NULL" else if (is(location_id, "subQuery")) paste0("(", as.character(location_id), ")") else paste0("'", as.character(location_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.location_id')
  }

  if (!missing(relationship_type_concept_id)) {
    fields <- c(fields, "relationship_type_concept_id")
    values <- c(values, if (is.null(relationship_type_concept_id)) "NULL" else if (is(relationship_type_concept_id, "subQuery")) paste0("(", as.character(relationship_type_concept_id), ")") else paste0("'", as.character(relationship_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.relationship_type_concept_id')
  }

  if (!missing(domain_id)) {
    fields <- c(fields, "domain_id")
    values <- c(values, if (is.null(domain_id)) "NULL" else if (is(domain_id, "subQuery")) paste0("(", as.character(domain_id), ")") else paste0("'", as.character(domain_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.domain_id')
  }

  if (!missing(entity_id)) {
    fields <- c(fields, "entity_id")
    values <- c(values, if (is.null(entity_id)) "NULL" else if (is(entity_id, "subQuery")) paste0("(", as.character(entity_id), ")") else paste0("'", as.character(entity_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.entity_id')
  }

  if (!missing(start_date)) {
    fields <- c(fields, "start_date")
    values <- c(values, if (is.null(start_date)) "NULL" else if (is(start_date, "subQuery")) paste0("(", as.character(start_date), ")") else paste0("'", as.character(start_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.start_date')
  }

  if (!missing(end_date)) {
    fields <- c(fields, "end_date")
    values <- c(values, if (is.null(end_date)) "NULL" else if (is(end_date, "subQuery")) paste0("(", as.character(end_date), ")") else paste0("'", as.character(end_date), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'location_history.end_date')
  }

  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "location_history", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_episode <- function(episode_id, person_id, episode_start_datetime, episode_end_datetime, episode_concept_id, episode_parent_id, episode_number, episode_object_concept_id, episode_type_concept_id, episode_source_value, episode_source_concept_id, record_source_value) {
  fields <- c()
  values <- c()
  if (!missing(episode_id)) {
    fields <- c(fields, "episode_id")
    values <- c(values, if (is.null(episode_id)) "NULL" else if (is(episode_id, "subQuery")) paste0("(", as.character(episode_id), ")") else paste0("'", as.character(episode_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_id')
  }
  
  if (!missing(person_id)) {
    fields <- c(fields, "person_id")
    values <- c(values, if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.person_id')
  }
  
  if (!missing(episode_start_datetime)) {
    fields <- c(fields, "episode_start_datetime")
    values <- c(values, if (is.null(episode_start_datetime)) "NULL" else if (is(episode_start_datetime, "subQuery")) paste0("(", as.character(episode_start_datetime), ")") else paste0("'", as.character(episode_start_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_start_datetime')
  }
  
  if (!missing(episode_end_datetime)) {
    fields <- c(fields, "episode_end_datetime")
    values <- c(values, if (is.null(episode_end_datetime)) "NULL" else if (is(episode_end_datetime, "subQuery")) paste0("(", as.character(episode_end_datetime), ")") else paste0("'", as.character(episode_end_datetime), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_end_datetime')
  }
  
  if (!missing(episode_concept_id)) {
    fields <- c(fields, "episode_concept_id")
    values <- c(values, if (is.null(episode_concept_id)) "NULL" else if (is(episode_concept_id, "subQuery")) paste0("(", as.character(episode_concept_id), ")") else paste0("'", as.character(episode_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_concept_id')
  }
  
  if (!missing(episode_parent_id)) {
    fields <- c(fields, "episode_parent_id")
    values <- c(values, if (is.null(episode_parent_id)) "NULL" else if (is(episode_parent_id, "subQuery")) paste0("(", as.character(episode_parent_id), ")") else paste0("'", as.character(episode_parent_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_parent_id')
  }
  
  if (!missing(episode_number)) {
    fields <- c(fields, "episode_number")
    values <- c(values, if (is.null(episode_number)) "NULL" else if (is(episode_number, "subQuery")) paste0("(", as.character(episode_number), ")") else paste0("'", as.character(episode_number), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_number')
  }
  
  if (!missing(episode_object_concept_id)) {
    fields <- c(fields, "episode_object_concept_id")
    values <- c(values, if (is.null(episode_object_concept_id)) "NULL" else if (is(episode_object_concept_id, "subQuery")) paste0("(", as.character(episode_object_concept_id), ")") else paste0("'", as.character(episode_object_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_object_concept_id')
  }
  
  if (!missing(episode_type_concept_id)) {
    fields <- c(fields, "episode_type_concept_id")
    values <- c(values, if (is.null(episode_type_concept_id)) "NULL" else if (is(episode_type_concept_id, "subQuery")) paste0("(", as.character(episode_type_concept_id), ")") else paste0("'", as.character(episode_type_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_type_concept_id')
  }
  
  if (!missing(episode_source_value)) {
    fields <- c(fields, "episode_source_value")
    values <- c(values, if (is.null(episode_source_value)) "NULL" else if (is(episode_source_value, "subQuery")) paste0("(", as.character(episode_source_value), ")") else paste0("'", as.character(episode_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_source_value')
  }
  
  if (!missing(episode_source_concept_id)) {
    fields <- c(fields, "episode_source_concept_id")
    values <- c(values, if (is.null(episode_source_concept_id)) "NULL" else if (is(episode_source_concept_id, "subQuery")) paste0("(", as.character(episode_source_concept_id), ")") else paste0("'", as.character(episode_source_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_source_concept_id')
  }
  
  if (!missing(record_source_value)) {
    fields <- c(fields, "record_source_value")
    values <- c(values, if (is.null(record_source_value)) "NULL" else if (is(record_source_value, "subQuery")) paste0("(", as.character(record_source_value), ")") else paste0("'", as.character(record_source_value), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.record_source_value')
  }
  
  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "episode", fields = fields, values = values)
  expects$rowCount = rowCount
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

expect_count_episode_event <- function(episode_id, event_id, event_field_concept_id) {
  fields <- c()
  values <- c()
  if (!missing(episode_id)) {
    fields <- c(fields, "episode_id")
    values <- c(values, if (is.null(episode_id)) "NULL" else if (is(episode_id, "subQuery")) paste0("(", as.character(episode_id), ")") else paste0("'", as.character(episode_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.episode_id')
  }
  
  if (!missing(event_id)) {
    fields <- c(fields, "event_id")
    values <- c(values, if (is.null(event_id)) "NULL" else if (is(event_id, "subQuery")) paste0("(", as.character(event_id), ")") else paste0("'", as.character(event_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.event_id')
  }
  
  if (!missing(event_field_concept_id)) {
    fields <- c(fields, "event_field_concept_id")
    values <- c(values, if (is.null(event_field_concept_id)) "NULL" else if (is(event_field_concept_id, "subQuery")) paste0("(", as.character(event_field_concept_id), ")") else paste0("'", as.character(event_field_concept_id), "'"))
    frameworkContext$targetFieldsTested <- c(frameworkContext$targetFieldsTested, 'episode.event_field_concept_id')
  }
  
  expects <- list(testId = frameworkContext$testId, testDescription = frameworkContext$testDescription, type = 2, table = "episode_event", fields = fields, values = values)
  frameworkContext$expects[[length(frameworkContext$expects) + 1]] <- expects
  invisible(NULL)
}

lookup_person <- function(fetchField, person_id, gender_concept_id, year_of_birth, month_of_birth, day_of_birth, birth_datetime, death_datetime, race_concept_id, ethnicity_concept_id, location_id, provider_id, care_site_id, person_source_value, gender_source_value, gender_source_concept_id, race_source_value, race_source_concept_id, ethnicity_source_value, ethnicity_source_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.person WHERE')
  first <- TRUE
  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(gender_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " gender_concept_id = ", if (is.null(gender_concept_id)) "NULL" else if (is(gender_concept_id, "subQuery")) paste0("(", as.character(gender_concept_id), ")") else paste0("'", as.character(gender_concept_id), "'"))
  }

  if (!missing(year_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " year_of_birth = ", if (is.null(year_of_birth)) "NULL" else if (is(year_of_birth, "subQuery")) paste0("(", as.character(year_of_birth), ")") else paste0("'", as.character(year_of_birth), "'"))
  }

  if (!missing(month_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " month_of_birth = ", if (is.null(month_of_birth)) "NULL" else if (is(month_of_birth, "subQuery")) paste0("(", as.character(month_of_birth), ")") else paste0("'", as.character(month_of_birth), "'"))
  }

  if (!missing(day_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " day_of_birth = ", if (is.null(day_of_birth)) "NULL" else if (is(day_of_birth, "subQuery")) paste0("(", as.character(day_of_birth), ")") else paste0("'", as.character(day_of_birth), "'"))
  }

  if (!missing(birth_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " birth_datetime = ", if (is.null(birth_datetime)) "NULL" else if (is(birth_datetime, "subQuery")) paste0("(", as.character(birth_datetime), ")") else paste0("'", as.character(birth_datetime), "'"))
  }

  if (!missing(death_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " death_datetime = ", if (is.null(death_datetime)) "NULL" else if (is(death_datetime, "subQuery")) paste0("(", as.character(death_datetime), ")") else paste0("'", as.character(death_datetime), "'"))
  }

  if (!missing(race_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " race_concept_id = ", if (is.null(race_concept_id)) "NULL" else if (is(race_concept_id, "subQuery")) paste0("(", as.character(race_concept_id), ")") else paste0("'", as.character(race_concept_id), "'"))
  }

  if (!missing(ethnicity_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " ethnicity_concept_id = ", if (is.null(ethnicity_concept_id)) "NULL" else if (is(ethnicity_concept_id, "subQuery")) paste0("(", as.character(ethnicity_concept_id), ")") else paste0("'", as.character(ethnicity_concept_id), "'"))
  }

  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " location_id = ", if (is.null(location_id)) "NULL" else if (is(location_id, "subQuery")) paste0("(", as.character(location_id), ")") else paste0("'", as.character(location_id), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id = ", if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " care_site_id = ", if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
  }

  if (!missing(person_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_source_value = ", if (is.null(person_source_value)) "NULL" else if (is(person_source_value, "subQuery")) paste0("(", as.character(person_source_value), ")") else paste0("'", as.character(person_source_value), "'"))
  }

  if (!missing(gender_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " gender_source_value = ", if (is.null(gender_source_value)) "NULL" else if (is(gender_source_value, "subQuery")) paste0("(", as.character(gender_source_value), ")") else paste0("'", as.character(gender_source_value), "'"))
  }

  if (!missing(gender_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " gender_source_concept_id = ", if (is.null(gender_source_concept_id)) "NULL" else if (is(gender_source_concept_id, "subQuery")) paste0("(", as.character(gender_source_concept_id), ")") else paste0("'", as.character(gender_source_concept_id), "'"))
  }

  if (!missing(race_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " race_source_value = ", if (is.null(race_source_value)) "NULL" else if (is(race_source_value, "subQuery")) paste0("(", as.character(race_source_value), ")") else paste0("'", as.character(race_source_value), "'"))
  }

  if (!missing(race_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " race_source_concept_id = ", if (is.null(race_source_concept_id)) "NULL" else if (is(race_source_concept_id, "subQuery")) paste0("(", as.character(race_source_concept_id), ")") else paste0("'", as.character(race_source_concept_id), "'"))
  }

  if (!missing(ethnicity_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " ethnicity_source_value = ", if (is.null(ethnicity_source_value)) "NULL" else if (is(ethnicity_source_value, "subQuery")) paste0("(", as.character(ethnicity_source_value), ")") else paste0("'", as.character(ethnicity_source_value), "'"))
  }

  if (!missing(ethnicity_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " ethnicity_source_concept_id = ", if (is.null(ethnicity_source_concept_id)) "NULL" else if (is(ethnicity_source_concept_id, "subQuery")) paste0("(", as.character(ethnicity_source_concept_id), ")") else paste0("'", as.character(ethnicity_source_concept_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_observation_period <- function(fetchField, observation_period_id, person_id, observation_period_start_date, observation_period_end_date, period_type_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.observation_period WHERE')
  first <- TRUE
  if (!missing(observation_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_period_id = ", if (is.null(observation_period_id)) "NULL" else if (is(observation_period_id, "subQuery")) paste0("(", as.character(observation_period_id), ")") else paste0("'", as.character(observation_period_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(observation_period_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_period_start_date = ", if (is.null(observation_period_start_date)) "NULL" else if (is(observation_period_start_date, "subQuery")) paste0("(", as.character(observation_period_start_date), ")") else paste0("'", as.character(observation_period_start_date), "'"))
  }

  if (!missing(observation_period_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_period_end_date = ", if (is.null(observation_period_end_date)) "NULL" else if (is(observation_period_end_date, "subQuery")) paste0("(", as.character(observation_period_end_date), ")") else paste0("'", as.character(observation_period_end_date), "'"))
  }

  if (!missing(period_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " period_type_concept_id = ", if (is.null(period_type_concept_id)) "NULL" else if (is(period_type_concept_id, "subQuery")) paste0("(", as.character(period_type_concept_id), ")") else paste0("'", as.character(period_type_concept_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_visit_occurrence <- function(fetchField, visit_occurrence_id, person_id, visit_concept_id, visit_start_date, visit_start_datetime, visit_end_date, visit_end_datetime, visit_type_concept_id, provider_id, care_site_id, visit_source_value, visit_source_concept_id, admitted_from_concept_id, admitted_from_source_value, discharge_to_concept_id, discharge_to_source_value, preceding_visit_occurrence_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.visit_occurrence WHERE')
  first <- TRUE
  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id = ", if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(visit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_concept_id = ", if (is.null(visit_concept_id)) "NULL" else if (is(visit_concept_id, "subQuery")) paste0("(", as.character(visit_concept_id), ")") else paste0("'", as.character(visit_concept_id), "'"))
  }

  if (!missing(visit_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_start_date = ", if (is.null(visit_start_date)) "NULL" else if (is(visit_start_date, "subQuery")) paste0("(", as.character(visit_start_date), ")") else paste0("'", as.character(visit_start_date), "'"))
  }

  if (!missing(visit_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_start_datetime = ", if (is.null(visit_start_datetime)) "NULL" else if (is(visit_start_datetime, "subQuery")) paste0("(", as.character(visit_start_datetime), ")") else paste0("'", as.character(visit_start_datetime), "'"))
  }

  if (!missing(visit_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_end_date = ", if (is.null(visit_end_date)) "NULL" else if (is(visit_end_date, "subQuery")) paste0("(", as.character(visit_end_date), ")") else paste0("'", as.character(visit_end_date), "'"))
  }

  if (!missing(visit_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_end_datetime = ", if (is.null(visit_end_datetime)) "NULL" else if (is(visit_end_datetime, "subQuery")) paste0("(", as.character(visit_end_datetime), ")") else paste0("'", as.character(visit_end_datetime), "'"))
  }

  if (!missing(visit_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_type_concept_id = ", if (is.null(visit_type_concept_id)) "NULL" else if (is(visit_type_concept_id, "subQuery")) paste0("(", as.character(visit_type_concept_id), ")") else paste0("'", as.character(visit_type_concept_id), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id = ", if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " care_site_id = ", if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
  }

  if (!missing(visit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_source_value = ", if (is.null(visit_source_value)) "NULL" else if (is(visit_source_value, "subQuery")) paste0("(", as.character(visit_source_value), ")") else paste0("'", as.character(visit_source_value), "'"))
  }

  if (!missing(visit_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_source_concept_id = ", if (is.null(visit_source_concept_id)) "NULL" else if (is(visit_source_concept_id, "subQuery")) paste0("(", as.character(visit_source_concept_id), ")") else paste0("'", as.character(visit_source_concept_id), "'"))
  }

  if (!missing(admitted_from_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " admitted_from_concept_id = ", if (is.null(admitted_from_concept_id)) "NULL" else if (is(admitted_from_concept_id, "subQuery")) paste0("(", as.character(admitted_from_concept_id), ")") else paste0("'", as.character(admitted_from_concept_id), "'"))
  }

  if (!missing(admitted_from_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " admitted_from_source_value = ", if (is.null(admitted_from_source_value)) "NULL" else if (is(admitted_from_source_value, "subQuery")) paste0("(", as.character(admitted_from_source_value), ")") else paste0("'", as.character(admitted_from_source_value), "'"))
  }

  if (!missing(discharge_to_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " discharge_to_concept_id = ", if (is.null(discharge_to_concept_id)) "NULL" else if (is(discharge_to_concept_id, "subQuery")) paste0("(", as.character(discharge_to_concept_id), ")") else paste0("'", as.character(discharge_to_concept_id), "'"))
  }

  if (!missing(discharge_to_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " discharge_to_source_value = ", if (is.null(discharge_to_source_value)) "NULL" else if (is(discharge_to_source_value, "subQuery")) paste0("(", as.character(discharge_to_source_value), ")") else paste0("'", as.character(discharge_to_source_value), "'"))
  }

  if (!missing(preceding_visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " preceding_visit_occurrence_id = ", if (is.null(preceding_visit_occurrence_id)) "NULL" else if (is(preceding_visit_occurrence_id, "subQuery")) paste0("(", as.character(preceding_visit_occurrence_id), ")") else paste0("'", as.character(preceding_visit_occurrence_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_condition_occurrence <- function(fetchField, condition_occurrence_id, person_id, condition_concept_id, condition_start_date, condition_start_datetime, condition_end_date, condition_end_datetime, condition_type_concept_id, stop_reason, provider_id, visit_occurrence_id, visit_detail_id, condition_source_value, condition_source_concept_id, condition_status_source_value, condition_status_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.condition_occurrence WHERE')
  first <- TRUE
  if (!missing(condition_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_occurrence_id = ", if (is.null(condition_occurrence_id)) "NULL" else if (is(condition_occurrence_id, "subQuery")) paste0("(", as.character(condition_occurrence_id), ")") else paste0("'", as.character(condition_occurrence_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(condition_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_concept_id = ", if (is.null(condition_concept_id)) "NULL" else if (is(condition_concept_id, "subQuery")) paste0("(", as.character(condition_concept_id), ")") else paste0("'", as.character(condition_concept_id), "'"))
  }

  if (!missing(condition_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_start_date = ", if (is.null(condition_start_date)) "NULL" else if (is(condition_start_date, "subQuery")) paste0("(", as.character(condition_start_date), ")") else paste0("'", as.character(condition_start_date), "'"))
  }

  if (!missing(condition_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_start_datetime = ", if (is.null(condition_start_datetime)) "NULL" else if (is(condition_start_datetime, "subQuery")) paste0("(", as.character(condition_start_datetime), ")") else paste0("'", as.character(condition_start_datetime), "'"))
  }

  if (!missing(condition_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_end_date = ", if (is.null(condition_end_date)) "NULL" else if (is(condition_end_date, "subQuery")) paste0("(", as.character(condition_end_date), ")") else paste0("'", as.character(condition_end_date), "'"))
  }

  if (!missing(condition_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_end_datetime = ", if (is.null(condition_end_datetime)) "NULL" else if (is(condition_end_datetime, "subQuery")) paste0("(", as.character(condition_end_datetime), ")") else paste0("'", as.character(condition_end_datetime), "'"))
  }

  if (!missing(condition_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_type_concept_id = ", if (is.null(condition_type_concept_id)) "NULL" else if (is(condition_type_concept_id, "subQuery")) paste0("(", as.character(condition_type_concept_id), ")") else paste0("'", as.character(condition_type_concept_id), "'"))
  }

  if (!missing(stop_reason)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " stop_reason = ", if (is.null(stop_reason)) "NULL" else if (is(stop_reason, "subQuery")) paste0("(", as.character(stop_reason), ")") else paste0("'", as.character(stop_reason), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id = ", if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id = ", if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_id = ", if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
  }

  if (!missing(condition_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_source_value = ", if (is.null(condition_source_value)) "NULL" else if (is(condition_source_value, "subQuery")) paste0("(", as.character(condition_source_value), ")") else paste0("'", as.character(condition_source_value), "'"))
  }

  if (!missing(condition_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_source_concept_id = ", if (is.null(condition_source_concept_id)) "NULL" else if (is(condition_source_concept_id, "subQuery")) paste0("(", as.character(condition_source_concept_id), ")") else paste0("'", as.character(condition_source_concept_id), "'"))
  }

  if (!missing(condition_status_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_status_source_value = ", if (is.null(condition_status_source_value)) "NULL" else if (is(condition_status_source_value, "subQuery")) paste0("(", as.character(condition_status_source_value), ")") else paste0("'", as.character(condition_status_source_value), "'"))
  }

  if (!missing(condition_status_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_status_concept_id = ", if (is.null(condition_status_concept_id)) "NULL" else if (is(condition_status_concept_id, "subQuery")) paste0("(", as.character(condition_status_concept_id), ")") else paste0("'", as.character(condition_status_concept_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_device_exposure <- function(fetchField, device_exposure_id, person_id, device_concept_id, device_exposure_start_date, device_exposure_start_datetime, device_exposure_end_date, device_exposure_end_datetime, device_type_concept_id, unique_device_id, quantity, provider_id, visit_occurrence_id, visit_detail_id, device_source_value, device_source_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.device_exposure WHERE')
  first <- TRUE
  if (!missing(device_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " device_exposure_id = ", if (is.null(device_exposure_id)) "NULL" else if (is(device_exposure_id, "subQuery")) paste0("(", as.character(device_exposure_id), ")") else paste0("'", as.character(device_exposure_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(device_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " device_concept_id = ", if (is.null(device_concept_id)) "NULL" else if (is(device_concept_id, "subQuery")) paste0("(", as.character(device_concept_id), ")") else paste0("'", as.character(device_concept_id), "'"))
  }

  if (!missing(device_exposure_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " device_exposure_start_date = ", if (is.null(device_exposure_start_date)) "NULL" else if (is(device_exposure_start_date, "subQuery")) paste0("(", as.character(device_exposure_start_date), ")") else paste0("'", as.character(device_exposure_start_date), "'"))
  }

  if (!missing(device_exposure_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " device_exposure_start_datetime = ", if (is.null(device_exposure_start_datetime)) "NULL" else if (is(device_exposure_start_datetime, "subQuery")) paste0("(", as.character(device_exposure_start_datetime), ")") else paste0("'", as.character(device_exposure_start_datetime), "'"))
  }

  if (!missing(device_exposure_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " device_exposure_end_date = ", if (is.null(device_exposure_end_date)) "NULL" else if (is(device_exposure_end_date, "subQuery")) paste0("(", as.character(device_exposure_end_date), ")") else paste0("'", as.character(device_exposure_end_date), "'"))
  }

  if (!missing(device_exposure_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " device_exposure_end_datetime = ", if (is.null(device_exposure_end_datetime)) "NULL" else if (is(device_exposure_end_datetime, "subQuery")) paste0("(", as.character(device_exposure_end_datetime), ")") else paste0("'", as.character(device_exposure_end_datetime), "'"))
  }

  if (!missing(device_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " device_type_concept_id = ", if (is.null(device_type_concept_id)) "NULL" else if (is(device_type_concept_id, "subQuery")) paste0("(", as.character(device_type_concept_id), ")") else paste0("'", as.character(device_type_concept_id), "'"))
  }

  if (!missing(unique_device_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " unique_device_id = ", if (is.null(unique_device_id)) "NULL" else if (is(unique_device_id, "subQuery")) paste0("(", as.character(unique_device_id), ")") else paste0("'", as.character(unique_device_id), "'"))
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " quantity = ", if (is.null(quantity)) "NULL" else if (is(quantity, "subQuery")) paste0("(", as.character(quantity), ")") else paste0("'", as.character(quantity), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id = ", if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id = ", if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_id = ", if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
  }

  if (!missing(device_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " device_source_value = ", if (is.null(device_source_value)) "NULL" else if (is(device_source_value, "subQuery")) paste0("(", as.character(device_source_value), ")") else paste0("'", as.character(device_source_value), "'"))
  }

  if (!missing(device_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " device_source_concept_id = ", if (is.null(device_source_concept_id)) "NULL" else if (is(device_source_concept_id, "subQuery")) paste0("(", as.character(device_source_concept_id), ")") else paste0("'", as.character(device_source_concept_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_drug_exposure <- function(fetchField, drug_exposure_id, person_id, drug_concept_id, drug_exposure_start_date, drug_exposure_start_datetime, drug_exposure_end_date, drug_exposure_end_datetime, verbatim_end_date, drug_type_concept_id, stop_reason, refills, quantity, days_supply, sig, route_concept_id, lot_number, provider_id, visit_occurrence_id, visit_detail_id, drug_source_value, drug_source_concept_id, route_source_value, dose_unit_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.drug_exposure WHERE')
  first <- TRUE
  if (!missing(drug_exposure_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_exposure_id = ", if (is.null(drug_exposure_id)) "NULL" else if (is(drug_exposure_id, "subQuery")) paste0("(", as.character(drug_exposure_id), ")") else paste0("'", as.character(drug_exposure_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(drug_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_concept_id = ", if (is.null(drug_concept_id)) "NULL" else if (is(drug_concept_id, "subQuery")) paste0("(", as.character(drug_concept_id), ")") else paste0("'", as.character(drug_concept_id), "'"))
  }

  if (!missing(drug_exposure_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_exposure_start_date = ", if (is.null(drug_exposure_start_date)) "NULL" else if (is(drug_exposure_start_date, "subQuery")) paste0("(", as.character(drug_exposure_start_date), ")") else paste0("'", as.character(drug_exposure_start_date), "'"))
  }

  if (!missing(drug_exposure_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_exposure_start_datetime = ", if (is.null(drug_exposure_start_datetime)) "NULL" else if (is(drug_exposure_start_datetime, "subQuery")) paste0("(", as.character(drug_exposure_start_datetime), ")") else paste0("'", as.character(drug_exposure_start_datetime), "'"))
  }

  if (!missing(drug_exposure_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_exposure_end_date = ", if (is.null(drug_exposure_end_date)) "NULL" else if (is(drug_exposure_end_date, "subQuery")) paste0("(", as.character(drug_exposure_end_date), ")") else paste0("'", as.character(drug_exposure_end_date), "'"))
  }

  if (!missing(drug_exposure_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_exposure_end_datetime = ", if (is.null(drug_exposure_end_datetime)) "NULL" else if (is(drug_exposure_end_datetime, "subQuery")) paste0("(", as.character(drug_exposure_end_datetime), ")") else paste0("'", as.character(drug_exposure_end_datetime), "'"))
  }

  if (!missing(verbatim_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " verbatim_end_date = ", if (is.null(verbatim_end_date)) "NULL" else if (is(verbatim_end_date, "subQuery")) paste0("(", as.character(verbatim_end_date), ")") else paste0("'", as.character(verbatim_end_date), "'"))
  }

  if (!missing(drug_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_type_concept_id = ", if (is.null(drug_type_concept_id)) "NULL" else if (is(drug_type_concept_id, "subQuery")) paste0("(", as.character(drug_type_concept_id), ")") else paste0("'", as.character(drug_type_concept_id), "'"))
  }

  if (!missing(stop_reason)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " stop_reason = ", if (is.null(stop_reason)) "NULL" else if (is(stop_reason, "subQuery")) paste0("(", as.character(stop_reason), ")") else paste0("'", as.character(stop_reason), "'"))
  }

  if (!missing(refills)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " refills = ", if (is.null(refills)) "NULL" else if (is(refills, "subQuery")) paste0("(", as.character(refills), ")") else paste0("'", as.character(refills), "'"))
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " quantity = ", if (is.null(quantity)) "NULL" else if (is(quantity, "subQuery")) paste0("(", as.character(quantity), ")") else paste0("'", as.character(quantity), "'"))
  }

  if (!missing(days_supply)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " days_supply = ", if (is.null(days_supply)) "NULL" else if (is(days_supply, "subQuery")) paste0("(", as.character(days_supply), ")") else paste0("'", as.character(days_supply), "'"))
  }

  if (!missing(sig)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " sig = ", if (is.null(sig)) "NULL" else if (is(sig, "subQuery")) paste0("(", as.character(sig), ")") else paste0("'", as.character(sig), "'"))
  }

  if (!missing(route_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " route_concept_id = ", if (is.null(route_concept_id)) "NULL" else if (is(route_concept_id, "subQuery")) paste0("(", as.character(route_concept_id), ")") else paste0("'", as.character(route_concept_id), "'"))
  }

  if (!missing(lot_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " lot_number = ", if (is.null(lot_number)) "NULL" else if (is(lot_number, "subQuery")) paste0("(", as.character(lot_number), ")") else paste0("'", as.character(lot_number), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id = ", if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id = ", if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_id = ", if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
  }

  if (!missing(drug_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_source_value = ", if (is.null(drug_source_value)) "NULL" else if (is(drug_source_value, "subQuery")) paste0("(", as.character(drug_source_value), ")") else paste0("'", as.character(drug_source_value), "'"))
  }

  if (!missing(drug_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_source_concept_id = ", if (is.null(drug_source_concept_id)) "NULL" else if (is(drug_source_concept_id, "subQuery")) paste0("(", as.character(drug_source_concept_id), ")") else paste0("'", as.character(drug_source_concept_id), "'"))
  }

  if (!missing(route_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " route_source_value = ", if (is.null(route_source_value)) "NULL" else if (is(route_source_value, "subQuery")) paste0("(", as.character(route_source_value), ")") else paste0("'", as.character(route_source_value), "'"))
  }

  if (!missing(dose_unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " dose_unit_source_value = ", if (is.null(dose_unit_source_value)) "NULL" else if (is(dose_unit_source_value, "subQuery")) paste0("(", as.character(dose_unit_source_value), ")") else paste0("'", as.character(dose_unit_source_value), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_fact_relationship <- function(fetchField, domain_concept_id_1, fact_id_1, domain_concept_id_2, fact_id_2, relationship_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.fact_relationship WHERE')
  first <- TRUE
  if (!missing(domain_concept_id_1)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " domain_concept_id_1 = ", if (is.null(domain_concept_id_1)) "NULL" else if (is(domain_concept_id_1, "subQuery")) paste0("(", as.character(domain_concept_id_1), ")") else paste0("'", as.character(domain_concept_id_1), "'"))
  }

  if (!missing(fact_id_1)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " fact_id_1 = ", if (is.null(fact_id_1)) "NULL" else if (is(fact_id_1, "subQuery")) paste0("(", as.character(fact_id_1), ")") else paste0("'", as.character(fact_id_1), "'"))
  }

  if (!missing(domain_concept_id_2)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " domain_concept_id_2 = ", if (is.null(domain_concept_id_2)) "NULL" else if (is(domain_concept_id_2, "subQuery")) paste0("(", as.character(domain_concept_id_2), ")") else paste0("'", as.character(domain_concept_id_2), "'"))
  }

  if (!missing(fact_id_2)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " fact_id_2 = ", if (is.null(fact_id_2)) "NULL" else if (is(fact_id_2, "subQuery")) paste0("(", as.character(fact_id_2), ")") else paste0("'", as.character(fact_id_2), "'"))
  }

  if (!missing(relationship_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " relationship_concept_id = ", if (is.null(relationship_concept_id)) "NULL" else if (is(relationship_concept_id, "subQuery")) paste0("(", as.character(relationship_concept_id), ")") else paste0("'", as.character(relationship_concept_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_measurement <- function(fetchField, measurement_id, person_id, measurement_concept_id, measurement_date, measurement_datetime, measurement_time, measurement_type_concept_id, operator_concept_id, value_as_number, value_as_concept_id, unit_concept_id, range_low, range_high, provider_id, visit_occurrence_id, visit_detail_id, measurement_source_value, measurement_source_concept_id, unit_source_value, value_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.measurement WHERE')
  first <- TRUE
  if (!missing(measurement_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " measurement_id = ", if (is.null(measurement_id)) "NULL" else if (is(measurement_id, "subQuery")) paste0("(", as.character(measurement_id), ")") else paste0("'", as.character(measurement_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(measurement_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " measurement_concept_id = ", if (is.null(measurement_concept_id)) "NULL" else if (is(measurement_concept_id, "subQuery")) paste0("(", as.character(measurement_concept_id), ")") else paste0("'", as.character(measurement_concept_id), "'"))
  }

  if (!missing(measurement_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " measurement_date = ", if (is.null(measurement_date)) "NULL" else if (is(measurement_date, "subQuery")) paste0("(", as.character(measurement_date), ")") else paste0("'", as.character(measurement_date), "'"))
  }

  if (!missing(measurement_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " measurement_datetime = ", if (is.null(measurement_datetime)) "NULL" else if (is(measurement_datetime, "subQuery")) paste0("(", as.character(measurement_datetime), ")") else paste0("'", as.character(measurement_datetime), "'"))
  }

  if (!missing(measurement_time)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " measurement_time = ", if (is.null(measurement_time)) "NULL" else if (is(measurement_time, "subQuery")) paste0("(", as.character(measurement_time), ")") else paste0("'", as.character(measurement_time), "'"))
  }

  if (!missing(measurement_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " measurement_type_concept_id = ", if (is.null(measurement_type_concept_id)) "NULL" else if (is(measurement_type_concept_id, "subQuery")) paste0("(", as.character(measurement_type_concept_id), ")") else paste0("'", as.character(measurement_type_concept_id), "'"))
  }

  if (!missing(operator_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " operator_concept_id = ", if (is.null(operator_concept_id)) "NULL" else if (is(operator_concept_id, "subQuery")) paste0("(", as.character(operator_concept_id), ")") else paste0("'", as.character(operator_concept_id), "'"))
  }

  if (!missing(value_as_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " value_as_number = ", if (is.null(value_as_number)) "NULL" else if (is(value_as_number, "subQuery")) paste0("(", as.character(value_as_number), ")") else paste0("'", as.character(value_as_number), "'"))
  }

  if (!missing(value_as_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " value_as_concept_id = ", if (is.null(value_as_concept_id)) "NULL" else if (is(value_as_concept_id, "subQuery")) paste0("(", as.character(value_as_concept_id), ")") else paste0("'", as.character(value_as_concept_id), "'"))
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " unit_concept_id = ", if (is.null(unit_concept_id)) "NULL" else if (is(unit_concept_id, "subQuery")) paste0("(", as.character(unit_concept_id), ")") else paste0("'", as.character(unit_concept_id), "'"))
  }

  if (!missing(range_low)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " range_low = ", if (is.null(range_low)) "NULL" else if (is(range_low, "subQuery")) paste0("(", as.character(range_low), ")") else paste0("'", as.character(range_low), "'"))
  }

  if (!missing(range_high)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " range_high = ", if (is.null(range_high)) "NULL" else if (is(range_high, "subQuery")) paste0("(", as.character(range_high), ")") else paste0("'", as.character(range_high), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id = ", if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id = ", if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_id = ", if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
  }

  if (!missing(measurement_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " measurement_source_value = ", if (is.null(measurement_source_value)) "NULL" else if (is(measurement_source_value, "subQuery")) paste0("(", as.character(measurement_source_value), ")") else paste0("'", as.character(measurement_source_value), "'"))
  }

  if (!missing(measurement_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " measurement_source_concept_id = ", if (is.null(measurement_source_concept_id)) "NULL" else if (is(measurement_source_concept_id, "subQuery")) paste0("(", as.character(measurement_source_concept_id), ")") else paste0("'", as.character(measurement_source_concept_id), "'"))
  }

  if (!missing(unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " unit_source_value = ", if (is.null(unit_source_value)) "NULL" else if (is(unit_source_value, "subQuery")) paste0("(", as.character(unit_source_value), ")") else paste0("'", as.character(unit_source_value), "'"))
  }

  if (!missing(value_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " value_source_value = ", if (is.null(value_source_value)) "NULL" else if (is(value_source_value, "subQuery")) paste0("(", as.character(value_source_value), ")") else paste0("'", as.character(value_source_value), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_note <- function(fetchField, note_id, person_id, note_event_id, note_event_field_concept_id, note_date, note_datetime, note_type_concept_id, note_class_concept_id, note_title, note_text, encoding_concept_id, language_concept_id, provider_id, visit_occurrence_id, visit_detail_id, note_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.note WHERE')
  first <- TRUE
  if (!missing(note_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_id = ", if (is.null(note_id)) "NULL" else if (is(note_id, "subQuery")) paste0("(", as.character(note_id), ")") else paste0("'", as.character(note_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(note_event_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_event_id = ", if (is.null(note_event_id)) "NULL" else if (is(note_event_id, "subQuery")) paste0("(", as.character(note_event_id), ")") else paste0("'", as.character(note_event_id), "'"))
  }

  if (!missing(note_event_field_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_event_field_concept_id = ", if (is.null(note_event_field_concept_id)) "NULL" else if (is(note_event_field_concept_id, "subQuery")) paste0("(", as.character(note_event_field_concept_id), ")") else paste0("'", as.character(note_event_field_concept_id), "'"))
  }

  if (!missing(note_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_date = ", if (is.null(note_date)) "NULL" else if (is(note_date, "subQuery")) paste0("(", as.character(note_date), ")") else paste0("'", as.character(note_date), "'"))
  }

  if (!missing(note_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_datetime = ", if (is.null(note_datetime)) "NULL" else if (is(note_datetime, "subQuery")) paste0("(", as.character(note_datetime), ")") else paste0("'", as.character(note_datetime), "'"))
  }

  if (!missing(note_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_type_concept_id = ", if (is.null(note_type_concept_id)) "NULL" else if (is(note_type_concept_id, "subQuery")) paste0("(", as.character(note_type_concept_id), ")") else paste0("'", as.character(note_type_concept_id), "'"))
  }

  if (!missing(note_class_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_class_concept_id = ", if (is.null(note_class_concept_id)) "NULL" else if (is(note_class_concept_id, "subQuery")) paste0("(", as.character(note_class_concept_id), ")") else paste0("'", as.character(note_class_concept_id), "'"))
  }

  if (!missing(note_title)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_title = ", if (is.null(note_title)) "NULL" else if (is(note_title, "subQuery")) paste0("(", as.character(note_title), ")") else paste0("'", as.character(note_title), "'"))
  }

  if (!missing(note_text)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_text = ", if (is.null(note_text)) "NULL" else if (is(note_text, "subQuery")) paste0("(", as.character(note_text), ")") else paste0("'", as.character(note_text), "'"))
  }

  if (!missing(encoding_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " encoding_concept_id = ", if (is.null(encoding_concept_id)) "NULL" else if (is(encoding_concept_id, "subQuery")) paste0("(", as.character(encoding_concept_id), ")") else paste0("'", as.character(encoding_concept_id), "'"))
  }

  if (!missing(language_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " language_concept_id = ", if (is.null(language_concept_id)) "NULL" else if (is(language_concept_id, "subQuery")) paste0("(", as.character(language_concept_id), ")") else paste0("'", as.character(language_concept_id), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id = ", if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id = ", if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_id = ", if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
  }

  if (!missing(note_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_source_value = ", if (is.null(note_source_value)) "NULL" else if (is(note_source_value, "subQuery")) paste0("(", as.character(note_source_value), ")") else paste0("'", as.character(note_source_value), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_note_nlp <- function(fetchField, note_nlp_id, note_id, section_concept_id, snippet, offset, lexical_variant, note_nlp_concept_id, note_nlp_source_concept_id, nlp_system, nlp_date, nlp_datetime, term_exists, term_temporal, term_modifiers) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.note_nlp WHERE')
  first <- TRUE
  if (!missing(note_nlp_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_nlp_id = ", if (is.null(note_nlp_id)) "NULL" else if (is(note_nlp_id, "subQuery")) paste0("(", as.character(note_nlp_id), ")") else paste0("'", as.character(note_nlp_id), "'"))
  }

  if (!missing(note_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_id = ", if (is.null(note_id)) "NULL" else if (is(note_id, "subQuery")) paste0("(", as.character(note_id), ")") else paste0("'", as.character(note_id), "'"))
  }

  if (!missing(section_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " section_concept_id = ", if (is.null(section_concept_id)) "NULL" else if (is(section_concept_id, "subQuery")) paste0("(", as.character(section_concept_id), ")") else paste0("'", as.character(section_concept_id), "'"))
  }

  if (!missing(snippet)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " snippet = ", if (is.null(snippet)) "NULL" else if (is(snippet, "subQuery")) paste0("(", as.character(snippet), ")") else paste0("'", as.character(snippet), "'"))
  }

  if (!missing(offset)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " offset = ", if (is.null(offset)) "NULL" else if (is(offset, "subQuery")) paste0("(", as.character(offset), ")") else paste0("'", as.character(offset), "'"))
  }

  if (!missing(lexical_variant)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " lexical_variant = ", if (is.null(lexical_variant)) "NULL" else if (is(lexical_variant, "subQuery")) paste0("(", as.character(lexical_variant), ")") else paste0("'", as.character(lexical_variant), "'"))
  }

  if (!missing(note_nlp_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_nlp_concept_id = ", if (is.null(note_nlp_concept_id)) "NULL" else if (is(note_nlp_concept_id, "subQuery")) paste0("(", as.character(note_nlp_concept_id), ")") else paste0("'", as.character(note_nlp_concept_id), "'"))
  }

  if (!missing(note_nlp_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " note_nlp_source_concept_id = ", if (is.null(note_nlp_source_concept_id)) "NULL" else if (is(note_nlp_source_concept_id, "subQuery")) paste0("(", as.character(note_nlp_source_concept_id), ")") else paste0("'", as.character(note_nlp_source_concept_id), "'"))
  }

  if (!missing(nlp_system)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " nlp_system = ", if (is.null(nlp_system)) "NULL" else if (is(nlp_system, "subQuery")) paste0("(", as.character(nlp_system), ")") else paste0("'", as.character(nlp_system), "'"))
  }

  if (!missing(nlp_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " nlp_date = ", if (is.null(nlp_date)) "NULL" else if (is(nlp_date, "subQuery")) paste0("(", as.character(nlp_date), ")") else paste0("'", as.character(nlp_date), "'"))
  }

  if (!missing(nlp_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " nlp_datetime = ", if (is.null(nlp_datetime)) "NULL" else if (is(nlp_datetime, "subQuery")) paste0("(", as.character(nlp_datetime), ")") else paste0("'", as.character(nlp_datetime), "'"))
  }

  if (!missing(term_exists)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " term_exists = ", if (is.null(term_exists)) "NULL" else if (is(term_exists, "subQuery")) paste0("(", as.character(term_exists), ")") else paste0("'", as.character(term_exists), "'"))
  }

  if (!missing(term_temporal)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " term_temporal = ", if (is.null(term_temporal)) "NULL" else if (is(term_temporal, "subQuery")) paste0("(", as.character(term_temporal), ")") else paste0("'", as.character(term_temporal), "'"))
  }

  if (!missing(term_modifiers)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " term_modifiers = ", if (is.null(term_modifiers)) "NULL" else if (is(term_modifiers, "subQuery")) paste0("(", as.character(term_modifiers), ")") else paste0("'", as.character(term_modifiers), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_observation <- function(fetchField, observation_id, person_id, observation_concept_id, observation_date, observation_datetime, observation_type_concept_id, value_as_number, value_as_string, value_as_concept_id, qualifier_concept_id, unit_concept_id, provider_id, visit_occurrence_id, visit_detail_id, observation_source_value, observation_source_concept_id, unit_source_value, qualifier_source_value, observation_event_id, obs_event_field_concept_id, value_as_datetime) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.observation WHERE')
  first <- TRUE
  if (!missing(observation_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_id = ", if (is.null(observation_id)) "NULL" else if (is(observation_id, "subQuery")) paste0("(", as.character(observation_id), ")") else paste0("'", as.character(observation_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(observation_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_concept_id = ", if (is.null(observation_concept_id)) "NULL" else if (is(observation_concept_id, "subQuery")) paste0("(", as.character(observation_concept_id), ")") else paste0("'", as.character(observation_concept_id), "'"))
  }

  if (!missing(observation_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_date = ", if (is.null(observation_date)) "NULL" else if (is(observation_date, "subQuery")) paste0("(", as.character(observation_date), ")") else paste0("'", as.character(observation_date), "'"))
  }

  if (!missing(observation_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_datetime = ", if (is.null(observation_datetime)) "NULL" else if (is(observation_datetime, "subQuery")) paste0("(", as.character(observation_datetime), ")") else paste0("'", as.character(observation_datetime), "'"))
  }

  if (!missing(observation_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_type_concept_id = ", if (is.null(observation_type_concept_id)) "NULL" else if (is(observation_type_concept_id, "subQuery")) paste0("(", as.character(observation_type_concept_id), ")") else paste0("'", as.character(observation_type_concept_id), "'"))
  }

  if (!missing(value_as_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " value_as_number = ", if (is.null(value_as_number)) "NULL" else if (is(value_as_number, "subQuery")) paste0("(", as.character(value_as_number), ")") else paste0("'", as.character(value_as_number), "'"))
  }

  if (!missing(value_as_string)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " value_as_string = ", if (is.null(value_as_string)) "NULL" else if (is(value_as_string, "subQuery")) paste0("(", as.character(value_as_string), ")") else paste0("'", as.character(value_as_string), "'"))
  }

  if (!missing(value_as_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " value_as_concept_id = ", if (is.null(value_as_concept_id)) "NULL" else if (is(value_as_concept_id, "subQuery")) paste0("(", as.character(value_as_concept_id), ")") else paste0("'", as.character(value_as_concept_id), "'"))
  }

  if (!missing(qualifier_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " qualifier_concept_id = ", if (is.null(qualifier_concept_id)) "NULL" else if (is(qualifier_concept_id, "subQuery")) paste0("(", as.character(qualifier_concept_id), ")") else paste0("'", as.character(qualifier_concept_id), "'"))
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " unit_concept_id = ", if (is.null(unit_concept_id)) "NULL" else if (is(unit_concept_id, "subQuery")) paste0("(", as.character(unit_concept_id), ")") else paste0("'", as.character(unit_concept_id), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id = ", if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id = ", if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_id = ", if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
  }

  if (!missing(observation_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_source_value = ", if (is.null(observation_source_value)) "NULL" else if (is(observation_source_value, "subQuery")) paste0("(", as.character(observation_source_value), ")") else paste0("'", as.character(observation_source_value), "'"))
  }

  if (!missing(observation_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_source_concept_id = ", if (is.null(observation_source_concept_id)) "NULL" else if (is(observation_source_concept_id, "subQuery")) paste0("(", as.character(observation_source_concept_id), ")") else paste0("'", as.character(observation_source_concept_id), "'"))
  }

  if (!missing(unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " unit_source_value = ", if (is.null(unit_source_value)) "NULL" else if (is(unit_source_value, "subQuery")) paste0("(", as.character(unit_source_value), ")") else paste0("'", as.character(unit_source_value), "'"))
  }

  if (!missing(qualifier_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " qualifier_source_value = ", if (is.null(qualifier_source_value)) "NULL" else if (is(qualifier_source_value, "subQuery")) paste0("(", as.character(qualifier_source_value), ")") else paste0("'", as.character(qualifier_source_value), "'"))
  }

  if (!missing(observation_event_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " observation_event_id = ", if (is.null(observation_event_id)) "NULL" else if (is(observation_event_id, "subQuery")) paste0("(", as.character(observation_event_id), ")") else paste0("'", as.character(observation_event_id), "'"))
  }

  if (!missing(obs_event_field_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " obs_event_field_concept_id = ", if (is.null(obs_event_field_concept_id)) "NULL" else if (is(obs_event_field_concept_id, "subQuery")) paste0("(", as.character(obs_event_field_concept_id), ")") else paste0("'", as.character(obs_event_field_concept_id), "'"))
  }

  if (!missing(value_as_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " value_as_datetime = ", if (is.null(value_as_datetime)) "NULL" else if (is(value_as_datetime, "subQuery")) paste0("(", as.character(value_as_datetime), ")") else paste0("'", as.character(value_as_datetime), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_procedure_occurrence <- function(fetchField, procedure_occurrence_id, person_id, procedure_concept_id, procedure_date, procedure_datetime, procedure_type_concept_id, modifier_concept_id, quantity, provider_id, visit_occurrence_id, visit_detail_id, procedure_source_value, procedure_source_concept_id, modifier_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.procedure_occurrence WHERE')
  first <- TRUE
  if (!missing(procedure_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " procedure_occurrence_id = ", if (is.null(procedure_occurrence_id)) "NULL" else if (is(procedure_occurrence_id, "subQuery")) paste0("(", as.character(procedure_occurrence_id), ")") else paste0("'", as.character(procedure_occurrence_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(procedure_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " procedure_concept_id = ", if (is.null(procedure_concept_id)) "NULL" else if (is(procedure_concept_id, "subQuery")) paste0("(", as.character(procedure_concept_id), ")") else paste0("'", as.character(procedure_concept_id), "'"))
  }

  if (!missing(procedure_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " procedure_date = ", if (is.null(procedure_date)) "NULL" else if (is(procedure_date, "subQuery")) paste0("(", as.character(procedure_date), ")") else paste0("'", as.character(procedure_date), "'"))
  }

  if (!missing(procedure_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " procedure_datetime = ", if (is.null(procedure_datetime)) "NULL" else if (is(procedure_datetime, "subQuery")) paste0("(", as.character(procedure_datetime), ")") else paste0("'", as.character(procedure_datetime), "'"))
  }

  if (!missing(procedure_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " procedure_type_concept_id = ", if (is.null(procedure_type_concept_id)) "NULL" else if (is(procedure_type_concept_id, "subQuery")) paste0("(", as.character(procedure_type_concept_id), ")") else paste0("'", as.character(procedure_type_concept_id), "'"))
  }

  if (!missing(modifier_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " modifier_concept_id = ", if (is.null(modifier_concept_id)) "NULL" else if (is(modifier_concept_id, "subQuery")) paste0("(", as.character(modifier_concept_id), ")") else paste0("'", as.character(modifier_concept_id), "'"))
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " quantity = ", if (is.null(quantity)) "NULL" else if (is(quantity, "subQuery")) paste0("(", as.character(quantity), ")") else paste0("'", as.character(quantity), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id = ", if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id = ", if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(visit_detail_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_id = ", if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
  }

  if (!missing(procedure_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " procedure_source_value = ", if (is.null(procedure_source_value)) "NULL" else if (is(procedure_source_value, "subQuery")) paste0("(", as.character(procedure_source_value), ")") else paste0("'", as.character(procedure_source_value), "'"))
  }

  if (!missing(procedure_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " procedure_source_concept_id = ", if (is.null(procedure_source_concept_id)) "NULL" else if (is(procedure_source_concept_id, "subQuery")) paste0("(", as.character(procedure_source_concept_id), ")") else paste0("'", as.character(procedure_source_concept_id), "'"))
  }

  if (!missing(modifier_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " modifier_source_value = ", if (is.null(modifier_source_value)) "NULL" else if (is(modifier_source_value, "subQuery")) paste0("(", as.character(modifier_source_value), ")") else paste0("'", as.character(modifier_source_value), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_specimen <- function(fetchField, specimen_id, person_id, specimen_concept_id, specimen_type_concept_id, specimen_date, specimen_datetime, quantity, unit_concept_id, anatomic_site_concept_id, disease_status_concept_id, specimen_source_id, specimen_source_value, unit_source_value, anatomic_site_source_value, disease_status_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.specimen WHERE')
  first <- TRUE
  if (!missing(specimen_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specimen_id = ", if (is.null(specimen_id)) "NULL" else if (is(specimen_id, "subQuery")) paste0("(", as.character(specimen_id), ")") else paste0("'", as.character(specimen_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(specimen_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specimen_concept_id = ", if (is.null(specimen_concept_id)) "NULL" else if (is(specimen_concept_id, "subQuery")) paste0("(", as.character(specimen_concept_id), ")") else paste0("'", as.character(specimen_concept_id), "'"))
  }

  if (!missing(specimen_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specimen_type_concept_id = ", if (is.null(specimen_type_concept_id)) "NULL" else if (is(specimen_type_concept_id, "subQuery")) paste0("(", as.character(specimen_type_concept_id), ")") else paste0("'", as.character(specimen_type_concept_id), "'"))
  }

  if (!missing(specimen_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specimen_date = ", if (is.null(specimen_date)) "NULL" else if (is(specimen_date, "subQuery")) paste0("(", as.character(specimen_date), ")") else paste0("'", as.character(specimen_date), "'"))
  }

  if (!missing(specimen_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specimen_datetime = ", if (is.null(specimen_datetime)) "NULL" else if (is(specimen_datetime, "subQuery")) paste0("(", as.character(specimen_datetime), ")") else paste0("'", as.character(specimen_datetime), "'"))
  }

  if (!missing(quantity)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " quantity = ", if (is.null(quantity)) "NULL" else if (is(quantity, "subQuery")) paste0("(", as.character(quantity), ")") else paste0("'", as.character(quantity), "'"))
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " unit_concept_id = ", if (is.null(unit_concept_id)) "NULL" else if (is(unit_concept_id, "subQuery")) paste0("(", as.character(unit_concept_id), ")") else paste0("'", as.character(unit_concept_id), "'"))
  }

  if (!missing(anatomic_site_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " anatomic_site_concept_id = ", if (is.null(anatomic_site_concept_id)) "NULL" else if (is(anatomic_site_concept_id, "subQuery")) paste0("(", as.character(anatomic_site_concept_id), ")") else paste0("'", as.character(anatomic_site_concept_id), "'"))
  }

  if (!missing(disease_status_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " disease_status_concept_id = ", if (is.null(disease_status_concept_id)) "NULL" else if (is(disease_status_concept_id, "subQuery")) paste0("(", as.character(disease_status_concept_id), ")") else paste0("'", as.character(disease_status_concept_id), "'"))
  }

  if (!missing(specimen_source_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specimen_source_id = ", if (is.null(specimen_source_id)) "NULL" else if (is(specimen_source_id, "subQuery")) paste0("(", as.character(specimen_source_id), ")") else paste0("'", as.character(specimen_source_id), "'"))
  }

  if (!missing(specimen_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specimen_source_value = ", if (is.null(specimen_source_value)) "NULL" else if (is(specimen_source_value, "subQuery")) paste0("(", as.character(specimen_source_value), ")") else paste0("'", as.character(specimen_source_value), "'"))
  }

  if (!missing(unit_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " unit_source_value = ", if (is.null(unit_source_value)) "NULL" else if (is(unit_source_value, "subQuery")) paste0("(", as.character(unit_source_value), ")") else paste0("'", as.character(unit_source_value), "'"))
  }

  if (!missing(anatomic_site_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " anatomic_site_source_value = ", if (is.null(anatomic_site_source_value)) "NULL" else if (is(anatomic_site_source_value, "subQuery")) paste0("(", as.character(anatomic_site_source_value), ")") else paste0("'", as.character(anatomic_site_source_value), "'"))
  }

  if (!missing(disease_status_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " disease_status_source_value = ", if (is.null(disease_status_source_value)) "NULL" else if (is(disease_status_source_value, "subQuery")) paste0("(", as.character(disease_status_source_value), ")") else paste0("'", as.character(disease_status_source_value), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_visit_detail <- function(fetchField, visit_detail_id, person_id, visit_detail_concept_id, visit_detail_start_date, visit_detail_start_datetime, visit_detail_end_date, visit_detail_end_datetime, visit_detail_type_concept_id, provider_id, care_site_id, visit_detail_source_value, visit_detail_source_concept_id, admitting_source_value, admitting_source_concept_id, admitted_from_source_value, admitted_from_concept_id, preceding_visit_detail_id, visit_detail_parent_id, visit_occurrence_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.visit_detail WHERE')
  first <- TRUE
  if (!missing(visit_detail_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_id = ", if (is.null(visit_detail_id)) "NULL" else if (is(visit_detail_id, "subQuery")) paste0("(", as.character(visit_detail_id), ")") else paste0("'", as.character(visit_detail_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(visit_detail_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_concept_id = ", if (is.null(visit_detail_concept_id)) "NULL" else if (is(visit_detail_concept_id, "subQuery")) paste0("(", as.character(visit_detail_concept_id), ")") else paste0("'", as.character(visit_detail_concept_id), "'"))
  }

  if (!missing(visit_detail_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_start_date = ", if (is.null(visit_detail_start_date)) "NULL" else if (is(visit_detail_start_date, "subQuery")) paste0("(", as.character(visit_detail_start_date), ")") else paste0("'", as.character(visit_detail_start_date), "'"))
  }

  if (!missing(visit_detail_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_start_datetime = ", if (is.null(visit_detail_start_datetime)) "NULL" else if (is(visit_detail_start_datetime, "subQuery")) paste0("(", as.character(visit_detail_start_datetime), ")") else paste0("'", as.character(visit_detail_start_datetime), "'"))
  }

  if (!missing(visit_detail_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_end_date = ", if (is.null(visit_detail_end_date)) "NULL" else if (is(visit_detail_end_date, "subQuery")) paste0("(", as.character(visit_detail_end_date), ")") else paste0("'", as.character(visit_detail_end_date), "'"))
  }

  if (!missing(visit_detail_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_end_datetime = ", if (is.null(visit_detail_end_datetime)) "NULL" else if (is(visit_detail_end_datetime, "subQuery")) paste0("(", as.character(visit_detail_end_datetime), ")") else paste0("'", as.character(visit_detail_end_datetime), "'"))
  }

  if (!missing(visit_detail_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_type_concept_id = ", if (is.null(visit_detail_type_concept_id)) "NULL" else if (is(visit_detail_type_concept_id, "subQuery")) paste0("(", as.character(visit_detail_type_concept_id), ")") else paste0("'", as.character(visit_detail_type_concept_id), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id = ", if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " care_site_id = ", if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
  }

  if (!missing(visit_detail_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_source_value = ", if (is.null(visit_detail_source_value)) "NULL" else if (is(visit_detail_source_value, "subQuery")) paste0("(", as.character(visit_detail_source_value), ")") else paste0("'", as.character(visit_detail_source_value), "'"))
  }

  if (!missing(visit_detail_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_source_concept_id = ", if (is.null(visit_detail_source_concept_id)) "NULL" else if (is(visit_detail_source_concept_id, "subQuery")) paste0("(", as.character(visit_detail_source_concept_id), ")") else paste0("'", as.character(visit_detail_source_concept_id), "'"))
  }

  if (!missing(admitting_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " admitting_source_value = ", if (is.null(admitting_source_value)) "NULL" else if (is(admitting_source_value, "subQuery")) paste0("(", as.character(admitting_source_value), ")") else paste0("'", as.character(admitting_source_value), "'"))
  }

  if (!missing(admitting_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " admitting_source_concept_id = ", if (is.null(admitting_source_concept_id)) "NULL" else if (is(admitting_source_concept_id, "subQuery")) paste0("(", as.character(admitting_source_concept_id), ")") else paste0("'", as.character(admitting_source_concept_id), "'"))
  }

  if (!missing(admitted_from_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " admitted_from_source_value = ", if (is.null(admitted_from_source_value)) "NULL" else if (is(admitted_from_source_value, "subQuery")) paste0("(", as.character(admitted_from_source_value), ")") else paste0("'", as.character(admitted_from_source_value), "'"))
  }

  if (!missing(admitted_from_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " admitted_from_concept_id = ", if (is.null(admitted_from_concept_id)) "NULL" else if (is(admitted_from_concept_id, "subQuery")) paste0("(", as.character(admitted_from_concept_id), ")") else paste0("'", as.character(admitted_from_concept_id), "'"))
  }

  if (!missing(preceding_visit_detail_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " preceding_visit_detail_id = ", if (is.null(preceding_visit_detail_id)) "NULL" else if (is(preceding_visit_detail_id, "subQuery")) paste0("(", as.character(preceding_visit_detail_id), ")") else paste0("'", as.character(preceding_visit_detail_id), "'"))
  }

  if (!missing(visit_detail_parent_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_detail_parent_id = ", if (is.null(visit_detail_parent_id)) "NULL" else if (is(visit_detail_parent_id, "subQuery")) paste0("(", as.character(visit_detail_parent_id), ")") else paste0("'", as.character(visit_detail_parent_id), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id = ", if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_cohort <- function(fetchField, cohort_definition_id, subject_id, cohort_start_date, cohort_end_date) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.cohort WHERE')
  first <- TRUE
  if (!missing(cohort_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cohort_definition_id = ", if (is.null(cohort_definition_id)) "NULL" else if (is(cohort_definition_id, "subQuery")) paste0("(", as.character(cohort_definition_id), ")") else paste0("'", as.character(cohort_definition_id), "'"))
  }

  if (!missing(subject_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " subject_id = ", if (is.null(subject_id)) "NULL" else if (is(subject_id, "subQuery")) paste0("(", as.character(subject_id), ")") else paste0("'", as.character(subject_id), "'"))
  }

  if (!missing(cohort_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cohort_start_date = ", if (is.null(cohort_start_date)) "NULL" else if (is(cohort_start_date, "subQuery")) paste0("(", as.character(cohort_start_date), ")") else paste0("'", as.character(cohort_start_date), "'"))
  }

  if (!missing(cohort_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cohort_end_date = ", if (is.null(cohort_end_date)) "NULL" else if (is(cohort_end_date, "subQuery")) paste0("(", as.character(cohort_end_date), ")") else paste0("'", as.character(cohort_end_date), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_condition_era <- function(fetchField, condition_era_id, person_id, condition_concept_id, condition_era_start_datetime, condition_era_end_datetime, condition_occurrence_count) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.condition_era WHERE')
  first <- TRUE
  if (!missing(condition_era_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_era_id = ", if (is.null(condition_era_id)) "NULL" else if (is(condition_era_id, "subQuery")) paste0("(", as.character(condition_era_id), ")") else paste0("'", as.character(condition_era_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(condition_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_concept_id = ", if (is.null(condition_concept_id)) "NULL" else if (is(condition_concept_id, "subQuery")) paste0("(", as.character(condition_concept_id), ")") else paste0("'", as.character(condition_concept_id), "'"))
  }

  if (!missing(condition_era_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_era_start_datetime = ", if (is.null(condition_era_start_datetime)) "NULL" else if (is(condition_era_start_datetime, "subQuery")) paste0("(", as.character(condition_era_start_datetime), ")") else paste0("'", as.character(condition_era_start_datetime), "'"))
  }

  if (!missing(condition_era_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_era_end_datetime = ", if (is.null(condition_era_end_datetime)) "NULL" else if (is(condition_era_end_datetime, "subQuery")) paste0("(", as.character(condition_era_end_datetime), ")") else paste0("'", as.character(condition_era_end_datetime), "'"))
  }

  if (!missing(condition_occurrence_count)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " condition_occurrence_count = ", if (is.null(condition_occurrence_count)) "NULL" else if (is(condition_occurrence_count, "subQuery")) paste0("(", as.character(condition_occurrence_count), ")") else paste0("'", as.character(condition_occurrence_count), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_dose_era <- function(fetchField, dose_era_id, person_id, drug_concept_id, unit_concept_id, dose_value, dose_era_start_datetime, dose_era_end_datetime) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.dose_era WHERE')
  first <- TRUE
  if (!missing(dose_era_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " dose_era_id = ", if (is.null(dose_era_id)) "NULL" else if (is(dose_era_id, "subQuery")) paste0("(", as.character(dose_era_id), ")") else paste0("'", as.character(dose_era_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(drug_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_concept_id = ", if (is.null(drug_concept_id)) "NULL" else if (is(drug_concept_id, "subQuery")) paste0("(", as.character(drug_concept_id), ")") else paste0("'", as.character(drug_concept_id), "'"))
  }

  if (!missing(unit_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " unit_concept_id = ", if (is.null(unit_concept_id)) "NULL" else if (is(unit_concept_id, "subQuery")) paste0("(", as.character(unit_concept_id), ")") else paste0("'", as.character(unit_concept_id), "'"))
  }

  if (!missing(dose_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " dose_value = ", if (is.null(dose_value)) "NULL" else if (is(dose_value, "subQuery")) paste0("(", as.character(dose_value), ")") else paste0("'", as.character(dose_value), "'"))
  }

  if (!missing(dose_era_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " dose_era_start_datetime = ", if (is.null(dose_era_start_datetime)) "NULL" else if (is(dose_era_start_datetime, "subQuery")) paste0("(", as.character(dose_era_start_datetime), ")") else paste0("'", as.character(dose_era_start_datetime), "'"))
  }

  if (!missing(dose_era_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " dose_era_end_datetime = ", if (is.null(dose_era_end_datetime)) "NULL" else if (is(dose_era_end_datetime, "subQuery")) paste0("(", as.character(dose_era_end_datetime), ")") else paste0("'", as.character(dose_era_end_datetime), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_drug_era <- function(fetchField, drug_era_id, person_id, drug_concept_id, drug_era_start_datetime, drug_era_end_datetime, drug_exposure_count, gap_days) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.drug_era WHERE')
  first <- TRUE
  if (!missing(drug_era_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_era_id = ", if (is.null(drug_era_id)) "NULL" else if (is(drug_era_id, "subQuery")) paste0("(", as.character(drug_era_id), ")") else paste0("'", as.character(drug_era_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(drug_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_concept_id = ", if (is.null(drug_concept_id)) "NULL" else if (is(drug_concept_id, "subQuery")) paste0("(", as.character(drug_concept_id), ")") else paste0("'", as.character(drug_concept_id), "'"))
  }

  if (!missing(drug_era_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_era_start_datetime = ", if (is.null(drug_era_start_datetime)) "NULL" else if (is(drug_era_start_datetime, "subQuery")) paste0("(", as.character(drug_era_start_datetime), ")") else paste0("'", as.character(drug_era_start_datetime), "'"))
  }

  if (!missing(drug_era_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_era_end_datetime = ", if (is.null(drug_era_end_datetime)) "NULL" else if (is(drug_era_end_datetime, "subQuery")) paste0("(", as.character(drug_era_end_datetime), ")") else paste0("'", as.character(drug_era_end_datetime), "'"))
  }

  if (!missing(drug_exposure_count)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drug_exposure_count = ", if (is.null(drug_exposure_count)) "NULL" else if (is(drug_exposure_count, "subQuery")) paste0("(", as.character(drug_exposure_count), ")") else paste0("'", as.character(drug_exposure_count), "'"))
  }

  if (!missing(gap_days)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " gap_days = ", if (is.null(gap_days)) "NULL" else if (is(gap_days, "subQuery")) paste0("(", as.character(gap_days), ")") else paste0("'", as.character(gap_days), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_cost <- function(fetchField, cost_id, person_id, cost_event_id, cost_event_field_concept_id, cost_concept_id, cost_type_concept_id, cost_source_concept_id, cost_source_value, currency_concept_id, cost, incurred_date, billed_date, paid_date, revenue_code_concept_id, drg_concept_id, revenue_code_source_value, drg_source_value, payer_plan_period_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.cost WHERE')
  first <- TRUE
  if (!missing(cost_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cost_id = ", if (is.null(cost_id)) "NULL" else if (is(cost_id, "subQuery")) paste0("(", as.character(cost_id), ")") else paste0("'", as.character(cost_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(cost_event_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cost_event_id = ", if (is.null(cost_event_id)) "NULL" else if (is(cost_event_id, "subQuery")) paste0("(", as.character(cost_event_id), ")") else paste0("'", as.character(cost_event_id), "'"))
  }

  if (!missing(cost_event_field_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cost_event_field_concept_id = ", if (is.null(cost_event_field_concept_id)) "NULL" else if (is(cost_event_field_concept_id, "subQuery")) paste0("(", as.character(cost_event_field_concept_id), ")") else paste0("'", as.character(cost_event_field_concept_id), "'"))
  }

  if (!missing(cost_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cost_concept_id = ", if (is.null(cost_concept_id)) "NULL" else if (is(cost_concept_id, "subQuery")) paste0("(", as.character(cost_concept_id), ")") else paste0("'", as.character(cost_concept_id), "'"))
  }

  if (!missing(cost_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cost_type_concept_id = ", if (is.null(cost_type_concept_id)) "NULL" else if (is(cost_type_concept_id, "subQuery")) paste0("(", as.character(cost_type_concept_id), ")") else paste0("'", as.character(cost_type_concept_id), "'"))
  }

  if (!missing(cost_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cost_source_concept_id = ", if (is.null(cost_source_concept_id)) "NULL" else if (is(cost_source_concept_id, "subQuery")) paste0("(", as.character(cost_source_concept_id), ")") else paste0("'", as.character(cost_source_concept_id), "'"))
  }

  if (!missing(cost_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cost_source_value = ", if (is.null(cost_source_value)) "NULL" else if (is(cost_source_value, "subQuery")) paste0("(", as.character(cost_source_value), ")") else paste0("'", as.character(cost_source_value), "'"))
  }

  if (!missing(currency_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " currency_concept_id = ", if (is.null(currency_concept_id)) "NULL" else if (is(currency_concept_id, "subQuery")) paste0("(", as.character(currency_concept_id), ")") else paste0("'", as.character(currency_concept_id), "'"))
  }

  if (!missing(cost)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cost = ", if (is.null(cost)) "NULL" else if (is(cost, "subQuery")) paste0("(", as.character(cost), ")") else paste0("'", as.character(cost), "'"))
  }

  if (!missing(incurred_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " incurred_date = ", if (is.null(incurred_date)) "NULL" else if (is(incurred_date, "subQuery")) paste0("(", as.character(incurred_date), ")") else paste0("'", as.character(incurred_date), "'"))
  }

  if (!missing(billed_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " billed_date = ", if (is.null(billed_date)) "NULL" else if (is(billed_date, "subQuery")) paste0("(", as.character(billed_date), ")") else paste0("'", as.character(billed_date), "'"))
  }

  if (!missing(paid_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " paid_date = ", if (is.null(paid_date)) "NULL" else if (is(paid_date, "subQuery")) paste0("(", as.character(paid_date), ")") else paste0("'", as.character(paid_date), "'"))
  }

  if (!missing(revenue_code_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " revenue_code_concept_id = ", if (is.null(revenue_code_concept_id)) "NULL" else if (is(revenue_code_concept_id, "subQuery")) paste0("(", as.character(revenue_code_concept_id), ")") else paste0("'", as.character(revenue_code_concept_id), "'"))
  }

  if (!missing(drg_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drg_concept_id = ", if (is.null(drg_concept_id)) "NULL" else if (is(drg_concept_id, "subQuery")) paste0("(", as.character(drg_concept_id), ")") else paste0("'", as.character(drg_concept_id), "'"))
  }

  if (!missing(revenue_code_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " revenue_code_source_value = ", if (is.null(revenue_code_source_value)) "NULL" else if (is(revenue_code_source_value, "subQuery")) paste0("(", as.character(revenue_code_source_value), ")") else paste0("'", as.character(revenue_code_source_value), "'"))
  }

  if (!missing(drg_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " drg_source_value = ", if (is.null(drg_source_value)) "NULL" else if (is(drg_source_value, "subQuery")) paste0("(", as.character(drg_source_value), ")") else paste0("'", as.character(drg_source_value), "'"))
  }

  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " payer_plan_period_id = ", if (is.null(payer_plan_period_id)) "NULL" else if (is(payer_plan_period_id, "subQuery")) paste0("(", as.character(payer_plan_period_id), ")") else paste0("'", as.character(payer_plan_period_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_payer_plan_period <- function(fetchField, payer_plan_period_id, person_id, contract_person_id, payer_plan_period_start_date, payer_plan_period_end_date, payer_concept_id, payer_source_value, payer_source_concept_id, plan_concept_id, plan_source_value, plan_source_concept_id, contract_concept_id, contract_source_value, contract_source_concept_id, sponsor_concept_id, sponsor_source_value, sponsor_source_concept_id, family_source_value, stop_reason_concept_id, stop_reason_source_value, stop_reason_source_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.payer_plan_period WHERE')
  first <- TRUE
  if (!missing(payer_plan_period_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " payer_plan_period_id = ", if (is.null(payer_plan_period_id)) "NULL" else if (is(payer_plan_period_id, "subQuery")) paste0("(", as.character(payer_plan_period_id), ")") else paste0("'", as.character(payer_plan_period_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(contract_person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " contract_person_id = ", if (is.null(contract_person_id)) "NULL" else if (is(contract_person_id, "subQuery")) paste0("(", as.character(contract_person_id), ")") else paste0("'", as.character(contract_person_id), "'"))
  }

  if (!missing(payer_plan_period_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " payer_plan_period_start_date = ", if (is.null(payer_plan_period_start_date)) "NULL" else if (is(payer_plan_period_start_date, "subQuery")) paste0("(", as.character(payer_plan_period_start_date), ")") else paste0("'", as.character(payer_plan_period_start_date), "'"))
  }

  if (!missing(payer_plan_period_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " payer_plan_period_end_date = ", if (is.null(payer_plan_period_end_date)) "NULL" else if (is(payer_plan_period_end_date, "subQuery")) paste0("(", as.character(payer_plan_period_end_date), ")") else paste0("'", as.character(payer_plan_period_end_date), "'"))
  }

  if (!missing(payer_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " payer_concept_id = ", if (is.null(payer_concept_id)) "NULL" else if (is(payer_concept_id, "subQuery")) paste0("(", as.character(payer_concept_id), ")") else paste0("'", as.character(payer_concept_id), "'"))
  }

  if (!missing(payer_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " payer_source_value = ", if (is.null(payer_source_value)) "NULL" else if (is(payer_source_value, "subQuery")) paste0("(", as.character(payer_source_value), ")") else paste0("'", as.character(payer_source_value), "'"))
  }

  if (!missing(payer_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " payer_source_concept_id = ", if (is.null(payer_source_concept_id)) "NULL" else if (is(payer_source_concept_id, "subQuery")) paste0("(", as.character(payer_source_concept_id), ")") else paste0("'", as.character(payer_source_concept_id), "'"))
  }

  if (!missing(plan_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " plan_concept_id = ", if (is.null(plan_concept_id)) "NULL" else if (is(plan_concept_id, "subQuery")) paste0("(", as.character(plan_concept_id), ")") else paste0("'", as.character(plan_concept_id), "'"))
  }

  if (!missing(plan_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " plan_source_value = ", if (is.null(plan_source_value)) "NULL" else if (is(plan_source_value, "subQuery")) paste0("(", as.character(plan_source_value), ")") else paste0("'", as.character(plan_source_value), "'"))
  }

  if (!missing(plan_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " plan_source_concept_id = ", if (is.null(plan_source_concept_id)) "NULL" else if (is(plan_source_concept_id, "subQuery")) paste0("(", as.character(plan_source_concept_id), ")") else paste0("'", as.character(plan_source_concept_id), "'"))
  }

  if (!missing(contract_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " contract_concept_id = ", if (is.null(contract_concept_id)) "NULL" else if (is(contract_concept_id, "subQuery")) paste0("(", as.character(contract_concept_id), ")") else paste0("'", as.character(contract_concept_id), "'"))
  }

  if (!missing(contract_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " contract_source_value = ", if (is.null(contract_source_value)) "NULL" else if (is(contract_source_value, "subQuery")) paste0("(", as.character(contract_source_value), ")") else paste0("'", as.character(contract_source_value), "'"))
  }

  if (!missing(contract_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " contract_source_concept_id = ", if (is.null(contract_source_concept_id)) "NULL" else if (is(contract_source_concept_id, "subQuery")) paste0("(", as.character(contract_source_concept_id), ")") else paste0("'", as.character(contract_source_concept_id), "'"))
  }

  if (!missing(sponsor_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " sponsor_concept_id = ", if (is.null(sponsor_concept_id)) "NULL" else if (is(sponsor_concept_id, "subQuery")) paste0("(", as.character(sponsor_concept_id), ")") else paste0("'", as.character(sponsor_concept_id), "'"))
  }

  if (!missing(sponsor_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " sponsor_source_value = ", if (is.null(sponsor_source_value)) "NULL" else if (is(sponsor_source_value, "subQuery")) paste0("(", as.character(sponsor_source_value), ")") else paste0("'", as.character(sponsor_source_value), "'"))
  }

  if (!missing(sponsor_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " sponsor_source_concept_id = ", if (is.null(sponsor_source_concept_id)) "NULL" else if (is(sponsor_source_concept_id, "subQuery")) paste0("(", as.character(sponsor_source_concept_id), ")") else paste0("'", as.character(sponsor_source_concept_id), "'"))
  }

  if (!missing(family_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " family_source_value = ", if (is.null(family_source_value)) "NULL" else if (is(family_source_value, "subQuery")) paste0("(", as.character(family_source_value), ")") else paste0("'", as.character(family_source_value), "'"))
  }

  if (!missing(stop_reason_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " stop_reason_concept_id = ", if (is.null(stop_reason_concept_id)) "NULL" else if (is(stop_reason_concept_id, "subQuery")) paste0("(", as.character(stop_reason_concept_id), ")") else paste0("'", as.character(stop_reason_concept_id), "'"))
  }

  if (!missing(stop_reason_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " stop_reason_source_value = ", if (is.null(stop_reason_source_value)) "NULL" else if (is(stop_reason_source_value, "subQuery")) paste0("(", as.character(stop_reason_source_value), ")") else paste0("'", as.character(stop_reason_source_value), "'"))
  }

  if (!missing(stop_reason_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " stop_reason_source_concept_id = ", if (is.null(stop_reason_source_concept_id)) "NULL" else if (is(stop_reason_source_concept_id, "subQuery")) paste0("(", as.character(stop_reason_source_concept_id), ")") else paste0("'", as.character(stop_reason_source_concept_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_care_site <- function(fetchField, care_site_id, care_site_name, place_of_service_concept_id, location_id, care_site_source_value, place_of_service_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.care_site WHERE')
  first <- TRUE
  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " care_site_id = ", if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
  }

  if (!missing(care_site_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " care_site_name = ", if (is.null(care_site_name)) "NULL" else if (is(care_site_name, "subQuery")) paste0("(", as.character(care_site_name), ")") else paste0("'", as.character(care_site_name), "'"))
  }

  if (!missing(place_of_service_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " place_of_service_concept_id = ", if (is.null(place_of_service_concept_id)) "NULL" else if (is(place_of_service_concept_id, "subQuery")) paste0("(", as.character(place_of_service_concept_id), ")") else paste0("'", as.character(place_of_service_concept_id), "'"))
  }

  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " location_id = ", if (is.null(location_id)) "NULL" else if (is(location_id, "subQuery")) paste0("(", as.character(location_id), ")") else paste0("'", as.character(location_id), "'"))
  }

  if (!missing(care_site_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " care_site_source_value = ", if (is.null(care_site_source_value)) "NULL" else if (is(care_site_source_value, "subQuery")) paste0("(", as.character(care_site_source_value), ")") else paste0("'", as.character(care_site_source_value), "'"))
  }

  if (!missing(place_of_service_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " place_of_service_source_value = ", if (is.null(place_of_service_source_value)) "NULL" else if (is(place_of_service_source_value, "subQuery")) paste0("(", as.character(place_of_service_source_value), ")") else paste0("'", as.character(place_of_service_source_value), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_location <- function(fetchField, location_id, address_1, address_2, city, state, zip, county, country, location_source_value, latitude, longitude) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.location WHERE')
  first <- TRUE
  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " location_id = ", if (is.null(location_id)) "NULL" else if (is(location_id, "subQuery")) paste0("(", as.character(location_id), ")") else paste0("'", as.character(location_id), "'"))
  }

  if (!missing(address_1)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " address_1 = ", if (is.null(address_1)) "NULL" else if (is(address_1, "subQuery")) paste0("(", as.character(address_1), ")") else paste0("'", as.character(address_1), "'"))
  }

  if (!missing(address_2)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " address_2 = ", if (is.null(address_2)) "NULL" else if (is(address_2, "subQuery")) paste0("(", as.character(address_2), ")") else paste0("'", as.character(address_2), "'"))
  }

  if (!missing(city)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " city = ", if (is.null(city)) "NULL" else if (is(city, "subQuery")) paste0("(", as.character(city), ")") else paste0("'", as.character(city), "'"))
  }

  if (!missing(state)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " state = ", if (is.null(state)) "NULL" else if (is(state, "subQuery")) paste0("(", as.character(state), ")") else paste0("'", as.character(state), "'"))
  }

  if (!missing(zip)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " zip = ", if (is.null(zip)) "NULL" else if (is(zip, "subQuery")) paste0("(", as.character(zip), ")") else paste0("'", as.character(zip), "'"))
  }

  if (!missing(county)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " county = ", if (is.null(county)) "NULL" else if (is(county, "subQuery")) paste0("(", as.character(county), ")") else paste0("'", as.character(county), "'"))
  }

  if (!missing(country)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " country = ", if (is.null(country)) "NULL" else if (is(country, "subQuery")) paste0("(", as.character(country), ")") else paste0("'", as.character(country), "'"))
  }

  if (!missing(location_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " location_source_value = ", if (is.null(location_source_value)) "NULL" else if (is(location_source_value, "subQuery")) paste0("(", as.character(location_source_value), ")") else paste0("'", as.character(location_source_value), "'"))
  }

  if (!missing(latitude)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " latitude = ", if (is.null(latitude)) "NULL" else if (is(latitude, "subQuery")) paste0("(", as.character(latitude), ")") else paste0("'", as.character(latitude), "'"))
  }

  if (!missing(longitude)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " longitude = ", if (is.null(longitude)) "NULL" else if (is(longitude, "subQuery")) paste0("(", as.character(longitude), ")") else paste0("'", as.character(longitude), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_provider <- function(fetchField, provider_id, provider_name, npi, dea, specialty_concept_id, care_site_id, year_of_birth, gender_concept_id, provider_source_value, specialty_source_value, specialty_source_concept_id, gender_source_value, gender_source_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.provider WHERE')
  first <- TRUE
  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id = ", if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(provider_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_name = ", if (is.null(provider_name)) "NULL" else if (is(provider_name, "subQuery")) paste0("(", as.character(provider_name), ")") else paste0("'", as.character(provider_name), "'"))
  }

  if (!missing(npi)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " npi = ", if (is.null(npi)) "NULL" else if (is(npi, "subQuery")) paste0("(", as.character(npi), ")") else paste0("'", as.character(npi), "'"))
  }

  if (!missing(dea)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " dea = ", if (is.null(dea)) "NULL" else if (is(dea, "subQuery")) paste0("(", as.character(dea), ")") else paste0("'", as.character(dea), "'"))
  }

  if (!missing(specialty_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specialty_concept_id = ", if (is.null(specialty_concept_id)) "NULL" else if (is(specialty_concept_id, "subQuery")) paste0("(", as.character(specialty_concept_id), ")") else paste0("'", as.character(specialty_concept_id), "'"))
  }

  if (!missing(care_site_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " care_site_id = ", if (is.null(care_site_id)) "NULL" else if (is(care_site_id, "subQuery")) paste0("(", as.character(care_site_id), ")") else paste0("'", as.character(care_site_id), "'"))
  }

  if (!missing(year_of_birth)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " year_of_birth = ", if (is.null(year_of_birth)) "NULL" else if (is(year_of_birth, "subQuery")) paste0("(", as.character(year_of_birth), ")") else paste0("'", as.character(year_of_birth), "'"))
  }

  if (!missing(gender_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " gender_concept_id = ", if (is.null(gender_concept_id)) "NULL" else if (is(gender_concept_id, "subQuery")) paste0("(", as.character(gender_concept_id), ")") else paste0("'", as.character(gender_concept_id), "'"))
  }

  if (!missing(provider_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_source_value = ", if (is.null(provider_source_value)) "NULL" else if (is(provider_source_value, "subQuery")) paste0("(", as.character(provider_source_value), ")") else paste0("'", as.character(provider_source_value), "'"))
  }

  if (!missing(specialty_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specialty_source_value = ", if (is.null(specialty_source_value)) "NULL" else if (is(specialty_source_value, "subQuery")) paste0("(", as.character(specialty_source_value), ")") else paste0("'", as.character(specialty_source_value), "'"))
  }

  if (!missing(specialty_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " specialty_source_concept_id = ", if (is.null(specialty_source_concept_id)) "NULL" else if (is(specialty_source_concept_id, "subQuery")) paste0("(", as.character(specialty_source_concept_id), ")") else paste0("'", as.character(specialty_source_concept_id), "'"))
  }

  if (!missing(gender_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " gender_source_value = ", if (is.null(gender_source_value)) "NULL" else if (is(gender_source_value, "subQuery")) paste0("(", as.character(gender_source_value), ")") else paste0("'", as.character(gender_source_value), "'"))
  }

  if (!missing(gender_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " gender_source_concept_id = ", if (is.null(gender_source_concept_id)) "NULL" else if (is(gender_source_concept_id, "subQuery")) paste0("(", as.character(gender_source_concept_id), ")") else paste0("'", as.character(gender_source_concept_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_cdm_source <- function(fetchField, cdm_source_name, cdm_source_abbreviation, cdm_holder, source_description, source_documentation_reference, cdm_etl_reference, source_release_date, cdm_release_date, cdm_version, vocabulary_version) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.cdm_source WHERE')
  first <- TRUE
  if (!missing(cdm_source_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cdm_source_name = ", if (is.null(cdm_source_name)) "NULL" else if (is(cdm_source_name, "subQuery")) paste0("(", as.character(cdm_source_name), ")") else paste0("'", as.character(cdm_source_name), "'"))
  }

  if (!missing(cdm_source_abbreviation)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cdm_source_abbreviation = ", if (is.null(cdm_source_abbreviation)) "NULL" else if (is(cdm_source_abbreviation, "subQuery")) paste0("(", as.character(cdm_source_abbreviation), ")") else paste0("'", as.character(cdm_source_abbreviation), "'"))
  }

  if (!missing(cdm_holder)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cdm_holder = ", if (is.null(cdm_holder)) "NULL" else if (is(cdm_holder, "subQuery")) paste0("(", as.character(cdm_holder), ")") else paste0("'", as.character(cdm_holder), "'"))
  }

  if (!missing(source_description)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " source_description = ", if (is.null(source_description)) "NULL" else if (is(source_description, "subQuery")) paste0("(", as.character(source_description), ")") else paste0("'", as.character(source_description), "'"))
  }

  if (!missing(source_documentation_reference)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " source_documentation_reference = ", if (is.null(source_documentation_reference)) "NULL" else if (is(source_documentation_reference, "subQuery")) paste0("(", as.character(source_documentation_reference), ")") else paste0("'", as.character(source_documentation_reference), "'"))
  }

  if (!missing(cdm_etl_reference)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cdm_etl_reference = ", if (is.null(cdm_etl_reference)) "NULL" else if (is(cdm_etl_reference, "subQuery")) paste0("(", as.character(cdm_etl_reference), ")") else paste0("'", as.character(cdm_etl_reference), "'"))
  }

  if (!missing(source_release_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " source_release_date = ", if (is.null(source_release_date)) "NULL" else if (is(source_release_date, "subQuery")) paste0("(", as.character(source_release_date), ")") else paste0("'", as.character(source_release_date), "'"))
  }

  if (!missing(cdm_release_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cdm_release_date = ", if (is.null(cdm_release_date)) "NULL" else if (is(cdm_release_date, "subQuery")) paste0("(", as.character(cdm_release_date), ")") else paste0("'", as.character(cdm_release_date), "'"))
  }

  if (!missing(cdm_version)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cdm_version = ", if (is.null(cdm_version)) "NULL" else if (is(cdm_version, "subQuery")) paste0("(", as.character(cdm_version), ")") else paste0("'", as.character(cdm_version), "'"))
  }

  if (!missing(vocabulary_version)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " vocabulary_version = ", if (is.null(vocabulary_version)) "NULL" else if (is(vocabulary_version, "subQuery")) paste0("(", as.character(vocabulary_version), ")") else paste0("'", as.character(vocabulary_version), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_metadata <- function(fetchField, metadata_concept_id, metadata_type_concept_id, name, value_as_string, value_as_concept_id, metadata_date, metadata_datetime) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.metadata WHERE')
  first <- TRUE
  if (!missing(metadata_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " metadata_concept_id = ", if (is.null(metadata_concept_id)) "NULL" else if (is(metadata_concept_id, "subQuery")) paste0("(", as.character(metadata_concept_id), ")") else paste0("'", as.character(metadata_concept_id), "'"))
  }

  if (!missing(metadata_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " metadata_type_concept_id = ", if (is.null(metadata_type_concept_id)) "NULL" else if (is(metadata_type_concept_id, "subQuery")) paste0("(", as.character(metadata_type_concept_id), ")") else paste0("'", as.character(metadata_type_concept_id), "'"))
  }

  if (!missing(name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " name = ", if (is.null(name)) "NULL" else if (is(name, "subQuery")) paste0("(", as.character(name), ")") else paste0("'", as.character(name), "'"))
  }

  if (!missing(value_as_string)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " value_as_string = ", if (is.null(value_as_string)) "NULL" else if (is(value_as_string, "subQuery")) paste0("(", as.character(value_as_string), ")") else paste0("'", as.character(value_as_string), "'"))
  }

  if (!missing(value_as_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " value_as_concept_id = ", if (is.null(value_as_concept_id)) "NULL" else if (is(value_as_concept_id, "subQuery")) paste0("(", as.character(value_as_concept_id), ")") else paste0("'", as.character(value_as_concept_id), "'"))
  }

  if (!missing(metadata_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " [metadata date] = ", if (is.null(metadata_date)) "NULL" else if (is(metadata_date, "subQuery")) paste0("(", as.character(metadata_date), ")") else paste0("'", as.character(metadata_date), "'"))
  }

  if (!missing(metadata_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " metadata_datetime = ", if (is.null(metadata_datetime)) "NULL" else if (is(metadata_datetime, "subQuery")) paste0("(", as.character(metadata_datetime), ")") else paste0("'", as.character(metadata_datetime), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_cohort_definition <- function(fetchField, cohort_definition_id, cohort_definition_name, cohort_definition_description, definition_type_concept_id, cohort_definition_syntax, subject_concept_id, cohort_initiation_date) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.cohort_definition WHERE')
  first <- TRUE
  if (!missing(cohort_definition_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cohort_definition_id = ", if (is.null(cohort_definition_id)) "NULL" else if (is(cohort_definition_id, "subQuery")) paste0("(", as.character(cohort_definition_id), ")") else paste0("'", as.character(cohort_definition_id), "'"))
  }

  if (!missing(cohort_definition_name)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cohort_definition_name = ", if (is.null(cohort_definition_name)) "NULL" else if (is(cohort_definition_name, "subQuery")) paste0("(", as.character(cohort_definition_name), ")") else paste0("'", as.character(cohort_definition_name), "'"))
  }

  if (!missing(cohort_definition_description)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cohort_definition_description = ", if (is.null(cohort_definition_description)) "NULL" else if (is(cohort_definition_description, "subQuery")) paste0("(", as.character(cohort_definition_description), ")") else paste0("'", as.character(cohort_definition_description), "'"))
  }

  if (!missing(definition_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " definition_type_concept_id = ", if (is.null(definition_type_concept_id)) "NULL" else if (is(definition_type_concept_id, "subQuery")) paste0("(", as.character(definition_type_concept_id), ")") else paste0("'", as.character(definition_type_concept_id), "'"))
  }

  if (!missing(cohort_definition_syntax)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cohort_definition_syntax = ", if (is.null(cohort_definition_syntax)) "NULL" else if (is(cohort_definition_syntax, "subQuery")) paste0("(", as.character(cohort_definition_syntax), ")") else paste0("'", as.character(cohort_definition_syntax), "'"))
  }

  if (!missing(subject_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " subject_concept_id = ", if (is.null(subject_concept_id)) "NULL" else if (is(subject_concept_id, "subQuery")) paste0("(", as.character(subject_concept_id), ")") else paste0("'", as.character(subject_concept_id), "'"))
  }

  if (!missing(cohort_initiation_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " cohort_initiation_date = ", if (is.null(cohort_initiation_date)) "NULL" else if (is(cohort_initiation_date, "subQuery")) paste0("(", as.character(cohort_initiation_date), ")") else paste0("'", as.character(cohort_initiation_date), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_survey_conduct <- function(fetchField, survey_conduct_id, person_id, survey_concept_id, survey_start_date, survey_start_datetime, survey_end_date, survey_end_datetime, provider_id, assisted_concept_id, respondent_type_concept_id, timing_concept_id, collection_method_concept_id, assisted_source_value, respondent_type_source_value, timing_source_value, collection_method_source_value, survey_source_value, survey_source_concept_id, survey_source_identifier, validated_survey_concept_id, validated_survey_source_value, survey_version_number, visit_occurrence_id, response_visit_occurrence_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.survey_conduct WHERE')
  first <- TRUE
  if (!missing(survey_conduct_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_conduct_id = ", if (is.null(survey_conduct_id)) "NULL" else if (is(survey_conduct_id, "subQuery")) paste0("(", as.character(survey_conduct_id), ")") else paste0("'", as.character(survey_conduct_id), "'"))
  }

  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }

  if (!missing(survey_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_concept_id = ", if (is.null(survey_concept_id)) "NULL" else if (is(survey_concept_id, "subQuery")) paste0("(", as.character(survey_concept_id), ")") else paste0("'", as.character(survey_concept_id), "'"))
  }

  if (!missing(survey_start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_start_date = ", if (is.null(survey_start_date)) "NULL" else if (is(survey_start_date, "subQuery")) paste0("(", as.character(survey_start_date), ")") else paste0("'", as.character(survey_start_date), "'"))
  }

  if (!missing(survey_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_start_datetime = ", if (is.null(survey_start_datetime)) "NULL" else if (is(survey_start_datetime, "subQuery")) paste0("(", as.character(survey_start_datetime), ")") else paste0("'", as.character(survey_start_datetime), "'"))
  }

  if (!missing(survey_end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_end_date = ", if (is.null(survey_end_date)) "NULL" else if (is(survey_end_date, "subQuery")) paste0("(", as.character(survey_end_date), ")") else paste0("'", as.character(survey_end_date), "'"))
  }

  if (!missing(survey_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_end_datetime = ", if (is.null(survey_end_datetime)) "NULL" else if (is(survey_end_datetime, "subQuery")) paste0("(", as.character(survey_end_datetime), ")") else paste0("'", as.character(survey_end_datetime), "'"))
  }

  if (!missing(provider_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " provider_id = ", if (is.null(provider_id)) "NULL" else if (is(provider_id, "subQuery")) paste0("(", as.character(provider_id), ")") else paste0("'", as.character(provider_id), "'"))
  }

  if (!missing(assisted_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " assisted_concept_id = ", if (is.null(assisted_concept_id)) "NULL" else if (is(assisted_concept_id, "subQuery")) paste0("(", as.character(assisted_concept_id), ")") else paste0("'", as.character(assisted_concept_id), "'"))
  }

  if (!missing(respondent_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " respondent_type_concept_id = ", if (is.null(respondent_type_concept_id)) "NULL" else if (is(respondent_type_concept_id, "subQuery")) paste0("(", as.character(respondent_type_concept_id), ")") else paste0("'", as.character(respondent_type_concept_id), "'"))
  }

  if (!missing(timing_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " timing_concept_id = ", if (is.null(timing_concept_id)) "NULL" else if (is(timing_concept_id, "subQuery")) paste0("(", as.character(timing_concept_id), ")") else paste0("'", as.character(timing_concept_id), "'"))
  }

  if (!missing(collection_method_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " collection_method_concept_id = ", if (is.null(collection_method_concept_id)) "NULL" else if (is(collection_method_concept_id, "subQuery")) paste0("(", as.character(collection_method_concept_id), ")") else paste0("'", as.character(collection_method_concept_id), "'"))
  }

  if (!missing(assisted_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " assisted_source_value = ", if (is.null(assisted_source_value)) "NULL" else if (is(assisted_source_value, "subQuery")) paste0("(", as.character(assisted_source_value), ")") else paste0("'", as.character(assisted_source_value), "'"))
  }

  if (!missing(respondent_type_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " respondent_type_source_value = ", if (is.null(respondent_type_source_value)) "NULL" else if (is(respondent_type_source_value, "subQuery")) paste0("(", as.character(respondent_type_source_value), ")") else paste0("'", as.character(respondent_type_source_value), "'"))
  }

  if (!missing(timing_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " timing_source_value = ", if (is.null(timing_source_value)) "NULL" else if (is(timing_source_value, "subQuery")) paste0("(", as.character(timing_source_value), ")") else paste0("'", as.character(timing_source_value), "'"))
  }

  if (!missing(collection_method_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " collection_method_source_value = ", if (is.null(collection_method_source_value)) "NULL" else if (is(collection_method_source_value, "subQuery")) paste0("(", as.character(collection_method_source_value), ")") else paste0("'", as.character(collection_method_source_value), "'"))
  }

  if (!missing(survey_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_source_value = ", if (is.null(survey_source_value)) "NULL" else if (is(survey_source_value, "subQuery")) paste0("(", as.character(survey_source_value), ")") else paste0("'", as.character(survey_source_value), "'"))
  }

  if (!missing(survey_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_source_concept_id = ", if (is.null(survey_source_concept_id)) "NULL" else if (is(survey_source_concept_id, "subQuery")) paste0("(", as.character(survey_source_concept_id), ")") else paste0("'", as.character(survey_source_concept_id), "'"))
  }

  if (!missing(survey_source_identifier)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_source_identifier = ", if (is.null(survey_source_identifier)) "NULL" else if (is(survey_source_identifier, "subQuery")) paste0("(", as.character(survey_source_identifier), ")") else paste0("'", as.character(survey_source_identifier), "'"))
  }

  if (!missing(validated_survey_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " validated_survey_concept_id = ", if (is.null(validated_survey_concept_id)) "NULL" else if (is(validated_survey_concept_id, "subQuery")) paste0("(", as.character(validated_survey_concept_id), ")") else paste0("'", as.character(validated_survey_concept_id), "'"))
  }

  if (!missing(validated_survey_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " validated_survey_source_value = ", if (is.null(validated_survey_source_value)) "NULL" else if (is(validated_survey_source_value, "subQuery")) paste0("(", as.character(validated_survey_source_value), ")") else paste0("'", as.character(validated_survey_source_value), "'"))
  }

  if (!missing(survey_version_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " survey_version_number = ", if (is.null(survey_version_number)) "NULL" else if (is(survey_version_number, "subQuery")) paste0("(", as.character(survey_version_number), ")") else paste0("'", as.character(survey_version_number), "'"))
  }

  if (!missing(visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " visit_occurrence_id = ", if (is.null(visit_occurrence_id)) "NULL" else if (is(visit_occurrence_id, "subQuery")) paste0("(", as.character(visit_occurrence_id), ")") else paste0("'", as.character(visit_occurrence_id), "'"))
  }

  if (!missing(response_visit_occurrence_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " response_visit_occurrence_id = ", if (is.null(response_visit_occurrence_id)) "NULL" else if (is(response_visit_occurrence_id, "subQuery")) paste0("(", as.character(response_visit_occurrence_id), ")") else paste0("'", as.character(response_visit_occurrence_id), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_location_history <- function(fetchField, location_id, relationship_type_concept_id, domain_id, entity_id, start_date, end_date) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.location_history WHERE')
  first <- TRUE
  if (!missing(location_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " location_id = ", if (is.null(location_id)) "NULL" else if (is(location_id, "subQuery")) paste0("(", as.character(location_id), ")") else paste0("'", as.character(location_id), "'"))
  }

  if (!missing(relationship_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " relationship_type_concept_id = ", if (is.null(relationship_type_concept_id)) "NULL" else if (is(relationship_type_concept_id, "subQuery")) paste0("(", as.character(relationship_type_concept_id), ")") else paste0("'", as.character(relationship_type_concept_id), "'"))
  }

  if (!missing(domain_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " domain_id = ", if (is.null(domain_id)) "NULL" else if (is(domain_id, "subQuery")) paste0("(", as.character(domain_id), ")") else paste0("'", as.character(domain_id), "'"))
  }

  if (!missing(entity_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " entity_id = ", if (is.null(entity_id)) "NULL" else if (is(entity_id, "subQuery")) paste0("(", as.character(entity_id), ")") else paste0("'", as.character(entity_id), "'"))
  }

  if (!missing(start_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " start_date = ", if (is.null(start_date)) "NULL" else if (is(start_date, "subQuery")) paste0("(", as.character(start_date), ")") else paste0("'", as.character(start_date), "'"))
  }

  if (!missing(end_date)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " end_date = ", if (is.null(end_date)) "NULL" else if (is(end_date, "subQuery")) paste0("(", as.character(end_date), ")") else paste0("'", as.character(end_date), "'"))
  }

  class(statement) <- 'subQuery'
  return(statement)
}

lookup_episode <- function(fetchField, episode_id, person_id, episode_start_datetime, episode_end_datetime, episode_concept_id, episode_parent_id, episode_number, episode_object_concept_id, episode_type_concept_id, episode_source_value, episode_source_concept_id, record_source_value) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.episode WHERE')
  first <- TRUE
  if (!missing(episode_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " episode_id = ", if (is.null(episode_id)) "NULL" else if (is(episode_id, "subQuery")) paste0("(", as.character(episode_id), ")") else paste0("'", as.character(episode_id), "'"))
  }
  
  if (!missing(person_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " person_id = ", if (is.null(person_id)) "NULL" else if (is(person_id, "subQuery")) paste0("(", as.character(person_id), ")") else paste0("'", as.character(person_id), "'"))
  }
  
  if (!missing(episode_start_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " episode_start_datetime = ", if (is.null(episode_start_datetime)) "NULL" else if (is(episode_start_datetime, "subQuery")) paste0("(", as.character(episode_start_datetime), ")") else paste0("'", as.character(episode_start_datetime), "'"))
  }
  
  if (!missing(episode_end_datetime)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " episode_end_datetime = ", if (is.null(episode_end_datetime)) "NULL" else if (is(episode_end_datetime, "subQuery")) paste0("(", as.character(episode_end_datetime), ")") else paste0("'", as.character(episode_end_datetime), "'"))
  }
  
  if (!missing(episode_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " episode_concept_id = ", if (is.null(episode_concept_id)) "NULL" else if (is(episode_concept_id, "subQuery")) paste0("(", as.character(episode_concept_id), ")") else paste0("'", as.character(episode_concept_id), "'"))
  }
  
  if (!missing(episode_parent_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " episode_parent_id = ", if (is.null(episode_parent_id)) "NULL" else if (is(episode_parent_id, "subQuery")) paste0("(", as.character(episode_parent_id), ")") else paste0("'", as.character(episode_parent_id), "'"))
  }
  
  if (!missing(episode_number)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " episode_number = ", if (is.null(episode_number)) "NULL" else if (is(episode_number, "subQuery")) paste0("(", as.character(episode_number), ")") else paste0("'", as.character(episode_number), "'"))
  }
  
  if (!missing(episode_object_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " episode_object_concept_id = ", if (is.null(episode_object_concept_id)) "NULL" else if (is(episode_object_concept_id, "subQuery")) paste0("(", as.character(episode_object_concept_id), ")") else paste0("'", as.character(episode_object_concept_id), "'"))
  }
  
  if (!missing(episode_type_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " episode_type_concept_id = ", if (is.null(episode_type_concept_id)) "NULL" else if (is(episode_type_concept_id, "subQuery")) paste0("(", as.character(episode_type_concept_id), ")") else paste0("'", as.character(episode_type_concept_id), "'"))
  }
  
  if (!missing(episode_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " episode_source_value = ", if (is.null(episode_source_value)) "NULL" else if (is(episode_source_value, "subQuery")) paste0("(", as.character(episode_source_value), ")") else paste0("'", as.character(episode_source_value), "'"))
  }
  
  if (!missing(episode_source_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " episode_source_concept_id = ", if (is.null(episode_source_concept_id)) "NULL" else if (is(episode_source_concept_id, "subQuery")) paste0("(", as.character(episode_source_concept_id), ")") else paste0("'", as.character(episode_source_concept_id), "'"))
  }
  
  if (!missing(record_source_value)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " record_source_value = ", if (is.null(record_source_value)) "NULL" else if (is(record_source_value, "subQuery")) paste0("(", as.character(record_source_value), ")") else paste0("'", as.character(record_source_value), "'"))
  }
  
  class(statement) <- 'subQuery'
  return(statement)
}

lookup_episode_event <- function(fetchField, episode_id, event_id, event_field_concept_id) {
  statement <- paste0('SELECT ', fetchField , ' FROM @cdm_database_schema.episode_event WHERE')
  first <- TRUE
  if (!missing(episode_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " episode_id = ", if (is.null(episode_id)) "NULL" else if (is(episode_id, "subQuery")) paste0("(", as.character(episode_id), ")") else paste0("'", as.character(episode_id), "'"))
  }
  
  if (!missing(event_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " event_id = ", if (is.null(person_id)) "NULL" else if (is(event_id, "subQuery")) paste0("(", as.character(event_id), ")") else paste0("'", as.character(event_id), "'"))
  }
  
  if (!missing(event_field_concept_id)) {
    if (first) {
      first <- FALSE
    } else {
      statement <- paste0(statement, " AND")
    }
    statement <- paste0(statement, " event_field_concept_id = ", if (is.null(event_field_concept_id)) "NULL" else if (is(event_field_concept_id, "subQuery")) paste0("(", as.character(event_field_concept_id), ")") else paste0("'", as.character(event_field_concept_id), "'"))
  }
  
  class(statement) <- 'subQuery'
  return(statement)
}

generateInsertSql <- function(databaseSchema = NULL) {
  insertSql <- c()
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.basedata;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.fulong;")
  insertSql <- c(insertSql, "TRUNCATE TABLE @cdm_database_schema.enddata;")
  createInsertStatement <- function(insert, env) {
    s <- c()
    if (env$testId != insert$testId) {
      s <- c(s, paste0('-- ', insert$testId, ': ', insert$testDescription))
      env$testId <- insert$testId
    }
    s <- c(s, paste0("INSERT INTO @cdm_database_schema.",
                     insert$table,
                     "(",
                     paste(insert$fields, collapse = ", "),
                     ") VALUES (",
                     paste(insert$values, collapse = ", "), 
                     ");"))
    return(s)
  }
  env <- new.env()
  env$testId <- -1
  insertSql <- c(insertSql, do.call(c, lapply(frameworkContext$inserts, createInsertStatement, env)))
  if (is.null(databaseSchema)) {
  	insertSql <- gsub('@cdm_database_schema.', '', insertSql)
  } else {
  	insertSql <- gsub('@cdm_database_schema', databaseSchema, insertSql)
  }
  return(insertSql)
}

generateSourceCsv <- function(directory = NULL) {
  clean_value <- function(x) {
    # Remove quotes
    value <- substring(x, 2, nchar(x)-1)
    # Escape quotes
    value <- gsub('"', '""', value)
    # Introduce quotes if comma in value
    if (grepl(",", value)) {
      return(paste0('"', value, '"'))
    }
    return(value)
  }
  clean_column <- function(x) {
    # Remove leading and trailing [], if present
    if (grepl("^\\[.+?\\]$", x)) {
      return(substring(x, 2, nchar(x)-1))
    }
    return(x)
  }
  dir.create(directory, showWarnings = F)
  
  # Write values
  seen_tables <- c()
  for (insert in frameworkContext$inserts) {
    if (!(insert$table %in% seen_tables)) {
      # Initialize all new source files with header. Overwrites existing source files from previous runs in the directory.
      filename <- file.path(directory, paste0(insert$table, ".csv"))
      write(paste(sapply(insert$fields, clean_column), collapse = ","), filename, append=F)
      seen_tables <- c(seen_tables, insert$table)
    }
    filename <- file.path(directory, paste0(insert$table, ".csv"))
    # TODO: if a value is set to NULL, the value is skipped. This leads to a wrong number of columns in the output.
    # Temporary fix; do not assign a value to NULL, but use empty string instead
    write(paste(sapply(insert$values, clean_value), collapse = ","), filename, append=T)
  }
  
  # Create source files for which there are no inserts
  for (table_name in names(frameworkContext$defaultValues)) {
    if (!(table_name %in% seen_tables)) {
      filename <- file.path(directory, paste0(table_name, ".csv"))
      write(paste(names(frameworkContext$defaultValues[[table_name]]), collapse = ","), filename, append=F)
    }
  }
}

writeSourceCsv <- function(directory = NULL, separator = ',') {
  clean_value <- function(x) {
    if (x == 'NULL') {
      return('')
    }
    value <- substring(x, 2, nchar(x)-1)
    value <- gsub('"', '""', value)
    if (grepl(separator, value)) {
      return(paste0('"', value, '"'))
    }
    return(value)
  }

  clean_fields <- function(x) {
    if (grepl("^\\[.+?\\]$", x)) {
      return(substring(x, 2, nchar(x)-1))
    }
    return(x)
  }
  dir.create(directory, showWarnings = F)
  
  seen_tables <- c()
  for (insert in frameworkContext$inserts) {
    filename <- file.path(directory, paste0(insert$table, '.csv'))
    if (!(insert$table %in% seen_tables)) {
      write(paste(sapply(insert$fields, clean_fields), collapse = separator), filename, append=F)
      seen_tables <- c(seen_tables, insert$table)
    }
    write(paste(sapply(insert$values, clean_value), collapse = separator), filename, append=T)
  }
  
  for (table_name in names(frameworkContext$defaultValues)) {
    if (!(table_name %in% seen_tables)) {
      filename <- file.path(directory, paste0(table_name, '.csv'))
      write(paste(names(frameworkContext$defaultValues[[table_name]]), collapse = separator), filename, append=F)
    }
  }
}

extractTestTypeString <- function(x) {
  if (x$type == 0) {
    return('Expect')
  } else if (x$type==1) {
    return('Expect No')
  } else if (x$type==2) {
    return(paste('Expect', x$rowCount))
  }
}

generateTestSql <- function(databaseSchema = NULL) {
  testSql <- c()
  testSql <- c(testSql, "IF OBJECT_ID('@cdm_database_schema.test_results', 'U') IS NOT NULL DROP TABLE @cdm_database_schema.test_results;")
  testSql <- c(testSql, "CREATE TABLE @cdm_database_schema.test_results (id INT, description VARCHAR(512), test VARCHAR(256), status VARCHAR(5));")
  createExpectStatement <- function(expect, env) {
    s <- c()
    if (env$testId != expect$testId) {
      s <- c(s, paste0('-- ', expect$testId, ': ', expect$testDescription))
      env$testId <- expect$testId
    }
    operators <- rep("=", length(expect$fields))
    operators[expect$values == "NULL"] <- rep("IS", sum(expect$values == "NULL"))
    s <- c(s, paste0("INSERT INTO @cdm_database_schema.test_results SELECT ",
                     expect$testId,
                     " AS id, '",
                     expect$testDescription,
                     "' AS description, '",
                     extractTestTypeString(expect), " ", expect$table,
                     "' AS test, CASE WHEN (SELECT COUNT(*) FROM @cdm_database_schema.",
                     expect$table,
                     " WHERE ",
                     paste(paste(expect$fields, operators, expect$values), collapse = " AND "),
                     ") ",
                     if (expect$type == 0) "= 0" else if (expect$type == 1) "!= 0" else paste("!=", expect$rowCount),
                     " THEN 'FAIL' ELSE 'PASS' END AS status;"))
    return(s)
  }
  env <- new.env()
  env$testId <- -1
  testSql <- c(testSql, do.call(c, lapply(frameworkContext$expects, createExpectStatement, env)))
  if (is.null(databaseSchema)) {
  	testSql <- gsub('@cdm_database_schema.', '', testSql)
  } else {
  	testSql <- gsub('@cdm_database_schema', databaseSchema, testSql)
  }
  return(testSql)
}

getTestsOverview <- function() {
  df <- data.frame(
    testId = sapply(frameworkContext$expects, function(x) x$testId),
    testDescription = sapply(frameworkContext$expects, function(x) x$testDescription),
    testType = sapply(frameworkContext$expects, extractTestTypeString),
    testTable = sapply(frameworkContext$expects, function(x) x$table)
  )
  return(df)
}

exportTestsOverviewToFile <- function(filename) {
  df <- getTestsOverview()
  write.csv(unique(df), filename, row.names=F)
}

summary.frameworkContext <- function(object, ...) {
  nSourceFieldsTested <- length(intersect(object$sourceFieldsMapped, object$sourceFieldsTested))
  nTargetFieldsTested <- length(intersect(object$targetFieldsMapped, object$targetFieldsTested))
  nTotalSourceFields <- length(object$sourceFieldsMapped)
  nTotalTargetFields <- length(object$targetFieldsMapped)
  summary <- c(
    length(object$expects),
    length(unique(sapply(object$expects, function(x) x$testId))),
    nSourceFieldsTested,
    nTotalSourceFields,
    round(100*nSourceFieldsTested/nTotalSourceFields, 2),
    nTargetFieldsTested,
    nTotalTargetFields,
    round(100*nTargetFieldsTested/nTotalTargetFields, 2)
  )
  names(summary) <- c('n_tests', 'n_cases', 'n_source_fields_tested', 'n_source_fields_mapped_from', 'source_coverage (%)', 'n_target_fields_tested', 'n_target_fields_mapped_to', 'target_coverage (%)')
  return(as.data.frame(summary))
}

summaryTestFramework <- function() {
  return(summary(frameworkContext));
}

getUntestedSourceFields <- function() {
  sort(setdiff(frameworkContext$sourceFieldsMapped, frameworkContext$sourceFieldsTested))
}

getUntestedTargetFields <- function() {
  sort(setdiff(frameworkContext$targetFieldsMapped, frameworkContext$targetFieldsTested))
}

outputTestResultsSummary <- function(connection, databaseSchema = NULL) {
  suppressWarnings(require(DatabaseConnector, quietly = TRUE))
  query = 'SELECT * FROM @cdm_database_schema.test_results;'
  if (is.null(databaseSchema)) {
    query <- gsub('@cdm_database_schema.', '', query)
  } else {
    query <- gsub('@cdm_database_schema', databaseSchema, query)
  }
  df_results <- DatabaseConnector::querySql(connection, query)
  n_tests <- nrow(df_results)
  n_failed_tests <- sum(df_results$'STATUS' == 'FAIL')
  if (n_failed_tests > 0) {
    write(sprintf('FAILED unit tests: %d/%d (%.1f%%)', n_failed_tests, n_tests, n_failed_tests/n_tests * 100), file='')
    print(df_results[df_results$'STATUS' == 'FAIL',])
  } else {
    write(sprintf('All %d tests PASSED', n_tests), file='')
  }
}