---
layout: default
title: Visit Occurrence
nav_order: 4
---

# visit_occurrence
{: .no_toc }

## Reading from
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Reading from basedata.csv

![](index_files/image5.png)

The record_source_value is used to link stem_table visits to the visit_occurrence table.
This variable is not included in OMOP CDM v6 + oncology extensions and should be removed from the episode table after all mappings are finished.


| Destination Field             | Source field   | Logic | Comment field                                                                                                                                  |
|:------------------------------|:---------------|:------|:-----------------------------------------------------------------------------------------------------------------------------------------------|
| visit_occurrence_id           |                |       | Auto-increment                                                                                                                                 |
| person_id                     | p_id           |       |                                                                                                                                                |
| visit_concept_id              |                |       | Create "standard" visit and MRI visit custom concepts.<br> For standard visits, map to custom concept 'Baseline Visit' - 2000000048.<br> For MRI visits, if variable 'mri_taken.0' has value 1, map to 'Baseline Visit - MRI' - 2000000087     |
| visit_start_date              | year_diagnosis |       | year-07-01                                                                                                                                     |
| visit_start_datetime          | year_diagnosis |       | year-07-01 00:00:00                                                                                                                            |
| visit_end_date                | year_diagnosis |       | year-07-01                                                                                                                                     |
| visit_end_datetime            | year_diagnosis |       | year-07-01 00:00:00                                                                                                                            |
| visit_type_concept_id         |                |       | Clinical Study visit - 44818519                                                                                                                |
| provider_id                   |                |       |                                                                                                                                                |
| care_site_id                  |                |       |                                                                                                                                                |
| visit_source_value            |                |       |                                                                                                                                                |
| visit_source_concept_id       |                |       | 0                                                                                                                                              |
| admitted_from_concept_id      |                |       | 0                                                                                                                                              |
| admitted_from_source_value    |                |       |                                                                                                                                                |
| discharge_to_concept_id       |                |       | 0                                                                                                                                              |
| discharge_to_source_value     |                |       |                                                                                                                                                |
| preceding_visit_occurrence_id |                |       |                                                                                                                                                |
| record_source_value		    | p_id           |       | Concatenate p_id-"basedata"-visit_type. Visit type is either "standard" or "mri"  (e.g. 1-basedata-mri)                                                                                                                                               |

## Reading from fulong.csv

![](index_files/image6.png)

The record_source_value is used to link stem_table visits to the visit_occurrence table.
This variable is not included in OMOP CDM v6 + oncology extensions and should be removed from the episode table after all mappings are finished.

| Destination Field             | Source field  | Logic | Comment field                                                                                                                                  |
|:------------------------------|:--------------|:------|:-----------------------------------------------------------------------------------------------------------------------------------------------|
| visit_occurrence_id           |               |       | Auto-increment                                                                                                                                 |
| person_id                     | p_id          |       |                                                                                                                                                |
| visit_concept_id              | time          |       | Create "standard" visit and MRI visit custom concepts, and map as variable_value_mapping.<br> Custom concepts follow the following convention for standard visits: "Follow-up Visit" + "time" value.<br> If variable 'mri_taken' has value 1, map to custom concept "Follow-up Visit" + "time" + "- MRI". Custom concepts can be found in 2b_concepts.csv|
| visit_start_datetime          | days_psa_diag |       | year_diag (from basedata) + days_psa_diag + 00:00:00                                                                                           |
| visit_end_date                | days_psa_diag |       | year_diag (from basedata) + days_psa_diag                                                                                                      |
| visit_end_datetime            | days_psa_diag |       | year_diag (from basedata) + days_psa_diag + 00:00:00                                                                                           |
| visit_type_concept_id         |               |       | Clinical Study visit - 44818519                                                                                                                |
| provider_id                   |               |       |                                                                                                                                                |
| care_site_id                  |               |       |                                                                                                                                                |
| visit_source_value            | time          |       |                                                                                                                                                |
| visit_source_concept_id       |               |       | 0                                                                                                                                              |
| admitted_from_concept_id      |               |       | 0                                                                                                                                              |
| admitted_from_source_value    |               |       |                                                                                                                                                |
| discharge_to_concept_id       |               |       | 0                                                                                                                                              |
| discharge_to_source_value     |               |       |                                                                                                                                                |
| preceding_visit_occurrence_id |               |       |                           fulong                                                                                                                     |
| record_source_value           | p_id<br>time  |       | Concatenate p_id-"basedata"-time-visit_type. Visit type is either "standard" or "mri" (e.g. 1-fulong-35-mri)                                                                                                                                               |

