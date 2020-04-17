---
layout: default
title: Episode
nav_order: 14
---

# episode
{: .no_toc }

## Reading From
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Reading from basedata.csv

### Lesion episodes

All measurements and observations belonging to a single MRI lesion will be grouped into an episode. The following three episodes are present:
- lesion1: consists of the variables `mri_pirads_1.0`, `mri_largest_dia_1.0`, `mri_location_1.0` and `mri_location_free_1.0`
- lesion2: consists of the variables `mri_pirads_2.0`, `mri_largest_dia_2.0`, `mri_location_2.0` and `mri_location_free_2.0`
- lesion3 consists of the variables `mri_pirads_3.0`, `mri_largest_dia_3.0`, `mri_location_3.0` and `mri_location_free_3.0`

Capture an episode for each person and lesion group, except:
- When all values within the episode are 0, None or empty strings --> Do not capture episode
- When `mri_taken.0` != 1 --> Do not capture episode

The record_source_value is used to link the episode to the events (i.e. observation and measurement records) occurring in the episode.
This variable is not included in OMOP CDM v6 + oncology extensions and should be removed from the episode table after all mappings are finished.

| Destination Field         | Source field   | Comment field                                                           |
|:--------------------------|:---------------|:------------------------------------------------------------------------|
| episode_id                |                | Auto-increment                                                          |
| person_id                 | p_id           |                                                                         |
| episode_start_datetime    | year_diagnosis | year-07-01 00:00:00                                                     |
| episode_end_datetime      | year_diagnosis | year-07-01 00:00:00                                                     |
| episode_concept_id        |                | 4115735 - Lesion of prostate (condition occurrence concept_id)          |
| episode_parent_id         |                |                                                                         |
| episode_number            |                | Take number of episode group name (e.g lesion1 --> episode number is 1) |
| episode_object_concept_id |                | 0                                                                       |
| episode_type_concept_id   |                | 44786630 - Primary procedure (procedure occurrence type_concept_id      |
| episode_source_value      |                |                                                                         |
| episode_source_concept_id |                | 0                                                                       |
| record_source_value       | p_id           | p_id-'basedata'-episode_group, e.g. 1-basedata-lesion1                  |

### Core biopsy episodes

All measurements and observations belonging to core biopsies taken will be grouped into an episode. The following two episodes are present:
- core_biopsy1: consists of the variables `num_cores`, `num_cores_pc`, `gleason1` and `gleason2`
- core_biopsy2: consists of the variables `num_cores2`, `num_cores_pc2`, `gleason1_2` and `gleason2_2`

Capture an episode for each person and lesion group, except:
- When all `num_cores` is empty ('') --> Do not capture episode
- When all `num_cores2` is empty ('') --> Do not capture episode

The record_source_value is used to link the episode to the events (i.e. observation and measurement records) occurring in the episode.
This variable is not included in OMOP CDM v6 + oncology extensions and should be removed from the episode table after all mappings are finished.

**Inclusion/Exclusion criteria**

No filters applied

| Destination Field         | Source field   | Comment field                                                                |
|:--------------------------|:---------------|:-----------------------------------------------------------------------------|
| episode_id                |                | Auto-increment                                                               |
| person_id                 | p_id           |                                                                              |
| episode_start_datetime    | year_diagnosis | year-07-01 00:00:00                                                          |
| episode_end_datetime      | year_diagnosis | year-07-01 00:00:00                                                          |
| episode_concept_id        |                | 4221802 - Core needle biopsy of prostate (procedure occurrence concept_id)   |
| episode_parent_id         |                |                                                                              |
| episode_number            |                | Take number of episode group name (e.g core_biopsy1 --> episode number is 1) |
| episode_object_concept_id |                | 0                                                                            |
| episode_type_concept_id   |                | 5086 - Condition tested by diagnosis procedure (condition occurrence type_concept_id|
| episode_source_value      |                |                                                                              |
| episode_source_concept_id |                | 0                                                                            |
| record_source_value       | p_id           | p_id-'basedata'-episode_group, e.g. 1-basedata-core_biopsy1                  |


## Reading from fulong.csv

### Lesion episodes

All measurements and observations belonging to a single MRI lesion will be grouped into an episode. The following three episodes are present:
- lesion1: consists of the variables `mri_pirads_1`, `mri_largest_dia_1`, `mri_location_1` and `mri_location_free_1`
- lesion2: consists of the variables `mri_pirads_2`, `mri_largest_dia_2`, `mri_location_2` and `mri_location_free_2`
- lesion3: consists of the variables `mri_pirads_3`, `mri_largest_dia_3`, `mri_location_3` and `mri_location_free_3`

Capture an episode for each person and lesion group, except:
- When all values within the episode are 0, None or empty strings --> Do not capture episode
- When `mri_taken != 1` --> Do not capture episode

The record_source_value is used to link the episode to the events (i.e. observation and measurement records) occurring in the episode.
This variable is not included in OMOP CDM v6 + oncology extensions and should be removed from the episode table after all mappings are finished.

**Inclusion/Exclusion criteria**

No filters applied

| Destination Field         | Source field  | Comment field                                                           |
|:--------------------------|:--------------|:------------------------------------------------------------------------|
| episode_id                |               | Auto-increment                                                          |
| person_id                 | p_id          |                                                                         |
| episode_start_datetime    | days_psa_diag | year_diag (from basedata) + days_psa_diag + 00:00:00                    |
| episode_end_datetime      | days_psa_diag | year_diag (from basedata) + days_psa_diag + 00:00:00                    |
| episode_concept_id        |               | 4115735 - Lesion of prostate (condition occurrence concept_id)          |
| episode_parent_id         |               |                                                                         |
| episode_number            |               | Take number of episode group name (e.g lesion1 --> episode number is 1) |
| episode_object_concept_id |               | 0                                                                       |
| episode_type_concept_id   |               |                                                                         |
| episode_source_value      |               |                                                                         |
| episode_source_concept_id |               | 0                                                                       |
| record_source_value       | p_id<br>time  | p_id-'fulong'-time-episode_group, e.g. 1-fulong-37-lesion1              |

### Core biopsy episodes

All measurements and observations belonging to core biopsies taken will be grouped into an episode. The following episode is present:
- core_biopsy1: consists of the variables `num_cores_biop_fu`, `num_cores_pc_fu`, `gleason1_fu` and `gleason2_fu`

Capture an episode for each person and lesion group, except:
- When all `num_cores_biop_fu` is empty ('') --> Do not capture episode

The record_source_value is used to link the episode to the events (i.e. observation and measurement records) occurring in the episode.
This variable is not included in OMOP CDM v6 + oncology extensions and should be removed from the episode table after all mappings are finished.

**Inclusion/Exclusion criteria**

No filters applied

| Destination Field         | Source field  | Comment field                                                                |
|:--------------------------|:--------------|:-----------------------------------------------------------------------------|
| episode_id                |               | Auto-increment                                                               |
| person_id                 | p_id          |                                                                              |
| episode_start_datetime    | days_psa_diag | year_diag (from basedata) + days_psa_diag + 00:00:00                         |
| episode_end_datetime      | days_psa_diag | year_diag (from basedata) + days_psa_diag + 00:00:00                         |
| episode_concept_id        |               | 4221802 - Core needle biopsy of prostate (procedure occurrence concept_id)   |
| episode_parent_id         |               |                                                                              |
| episode_number            |               | Take number of episode group name (e.g core_biopsy1 --> episode number is 1) |
| episode_object_concept_id |               | 0                                                                            |
| episode_type_concept_id   |               |                                                                              |
| episode_source_value      |               |                                                                              |
| episode_source_concept_id |               | 0                                                                            |
| record_source_value       | p_id<br>time  | p_id-'fulong'-time-episode_group, e.g. 1-fulong-37-core_biopsy1              |
