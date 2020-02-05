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

| Destination Field             | Source field   | Logic | Comment field                                                                                                                                  |
|:------------------------------|:---------------|:------|:-----------------------------------------------------------------------------------------------------------------------------------------------|
| visit_occurrence_id           |                |       | Auto-increment                                                                                                                                 |
| person_id                     | p_id           |       |                                                                                                                                                |
| visit_concept_id              |                |       | Map to custom concept 'Baseline Visit' - 2000000027                                                                                            |
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

## Reading from fulong.csv

![](index_files/image6.png)

| Destination Field             | Source field  | Logic | Comment field                                                                                                                                  |
|:------------------------------|:--------------|:------|:-----------------------------------------------------------------------------------------------------------------------------------------------|
| visit_occurrence_id           |               |       | Auto-increment                                                                                                                                 |
| person_id                     | p_id          |       |                                                                                                                                                |
| visit_concept_id              | time          |       | Map to custom concepts (as variable_value_mapping)                                                                                             |
| visit_start_date              | days_psa_diag |       | year_diag (from basedata) + days_psa_diag                                                                                                      |
| visit_start_datetime          | days_psa_diag |       | year_diag (from basedata) + days_psa_diag + 00:00:00                                                                                           |
| visit_end_date                | days_psa_diag |       | year_diag (from basedata) + days_psa_diag                                                                                                      |
| visit_end_datetime            | days_psa_diag |       | year_diag (from basedata) + days_psa_diag + 00:00:00                                                                                           |
| visit_type_concept_id         |               |       | Clinical Study visit - 44818519                                                                                                                |
| provider_id                   |               |       |                                                                                                                                                |
| care_site_id                  |               |       |                                                                                                                                                |
| visit_source_value            |               |       |                                                                                                                                                |
| visit_source_concept_id       |               |       | 0                                                                                                                                              |
| admitted_from_concept_id      |               |       | 0                                                                                                                                              |
| admitted_from_source_value    |               |       |                                                                                                                                                |
| discharge_to_concept_id       |               |       | 0                                                                                                                                              |
| discharge_to_source_value     |               |       |                                                                                                                                                |
| preceding_visit_occurrence_id |               |       |                                                                                                                                                |

