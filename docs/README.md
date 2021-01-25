---
layout: default
title: Home
nav_order: 1
permalink: /
---

# PRIAS to OMOP CDM v6

![](index_files/image1.png)

## Introduction
Active surveillance of early prostate cancer.

PRIAS is an observational study, following 8000 men with prostate cancer at about 70 sites worldwide.
The data is collected by clinicians or data managers via an online portal. This data collection is still ongoing.
More information can be found at [https://www.prias-project.org/](https://www.prias-project.org/).

People included in the PRIAS study have a histologically proven adenocarcinoma of the prostate, and are not being
treated at the moment as the tumor is not aggressive. The full inclusiona and exclusion criteria can be found here:
[https://www.prias-project.org/modules/articles/article.php?id=1](https://www.prias-project.org/modules/articles/article.php?id=1).

All the study data is recorded in three tables:
- **Basedata**. One record per person with all clinical attributes (~60) at study start
- **Fulong**. One record per follow up visit. Mostly the same clinical attributes as base data.
- **Enddata**. One record for each person that discontinued the study.

The fields for each table are listed in the [Source Appendix](source_appendix.md).

## Abbreviations

| Abbreviation | Description                                |
| ------------ | ------------------------------------------ |
| ETL          | Extract, Transform, Load                   |
| OMOP         | Observational Medical Outcomes Partnership |
| CDM          | Common Data Model                          |
| OHDSI        | Observational Health Data Sciences and Informatics |

## Versions

| Resource     | Version                                    |
| ------------ | ------------------------------------------ |
| OMOP CDM     | V6.0.0 + oncology extensions               |
| Standardized Vocabularies | V5                            |


## Conventions Used in the Document

The following conventions are used within this document:

| Convention     | Description                                |
| -------------- | ------------------------------------------ |
| *Italicalized* | Refers to a CDM table                      |
| **Bold**       | Refers to a source table                   |
| ``mono``       | Source fieldnames in text                         |
| `Code Block`   | Pseudo-code, not to be executed directly   |

A CDM table field is always documented together with the CDM table name,
e.g. the ``person_id`` field in the *Person* table is noted as ``person.person_id``.

## General conventions

* If only a year is given (e.g. ``year_diagnosis`` in **basedata**), 
then we use July 1st as a proxy. This will be, on average, the closest 
to the actual date.

* If no date is given, the following conventions will be followed:
    * Derive year from context
    * If no context derivation is possible, take 1970-01-01 as both start_date and end_date. 
    There is an exception for the ``observation_period.observation_period_end_date``. When this date is missing,
    it is set to the date of the last ETL run.

* Where appropriate, we made use of the [oncology extensions](https://github.com/OHDSI/OncologyWG/wiki), as proposed by the [OHDSI Oncology Workgroup](https://github.com/OHDSI/OncologyWG).
 We incorporated the *Episode* and *Episode Event* tables, as well as the ``measurement.modifier_of_event_id`` and ``measurement.modifier_of_field_concept_id``.
 
* For the mapping of source tables to the OMOP CDM, we make use of a stem table. This table is not part of the
OMOP CDM, but is used as an intermediate table. By using this table, mappings of source terms to the correct OMOP CDM
is done automatically, based on the semantic mappings of the source terms.
Meaning that the semantic mappings are used to inform the syntactic mappings.
For example, the variable ``psa`` is mapped to the concept Total PSA level (concept_id: 44793131). 
This concept belongs to the *Measurement* domain, hence this concept end up in this *Measurement* table of the OMOP CDM.

* For the mapping of source terms to OMOP CDM concepts, we make use of 
the following mapping tables: [variable_mapping.csv](https://github.com/thehyve/ohdsi-etl-prias/blob/master/resources/mapping_tables/variable_mapping.csv), 
[value_mapping.csv](https://github.com/thehyve/ohdsi-etl-prias/blob/master/resources/mapping_tables/value_mapping.csv),
[variable_value_mapping.csv](https://github.com/thehyve/ohdsi-etl-prias/blob/master/resources/mapping_tables/variable_value_mapping.csv) 
and [unit_mapping.csv](https://github.com/thehyve/ohdsi-etl-prias/blob/master/resources/mapping_tables/unit_mapping.csv).
    * variable_mapping and value_mappings form a 
    variable-value pair. The general convention is that variable_mapping
    contains the mappings of the source field names, and that value_mapping
    contains the corresponding values. The concepts in these tables commonly 
    map to the *Observation* and *Measurement* table, with the fieldnames 
    mapped as either ``observation.observation_concept_id`` or ``measurement.meausurement_concept_id``,
    and the values mapped to the corresponding ``observation.value_as_concept_id`` and ``measurement.measurement_concept_id`` field.
    * The variable_value_mapping table contains mappings of values in the source tables, where the field names
    don't have to be mapped and the values are mapped as target_concept_id, e.g. ``observation.observation_concept_id`` or 
    ``condition_occurrence.condition_concept_id``.
    * The unit_mapping table contains the units of values in the value_mapping table,
    if a unit present or appropriate.

* All semantic mappings that are part of mappings to the stem table are documented in the source_appendix section.   
 
 * Whenever appropriate concepts are missing in the Standardized Vocabularies, custom concepts are used (stored in 2b_concepts.csv).
 These custom concepts are aligned within PIONEER. The PIONEER custom vocabulary can be found in the [ohdsi-omop-pioneer Git repository](https://github.com/thehyve/ohdsi-omop-pioneer/tree/master/pioneer_custom_vocabulary).  
