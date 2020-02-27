---
layout: default
title: Episode Event
nav_order: 15
---

# episode_event

## Reading from basedata.csv

**Lesion episodes**

All measurements and observations belonging to a single MRI lesion is into an episode. The following three episodes are present:
- lesion1: consists of the variables mri_pirads_1.0, mri_largest_dia_1.0, mri_location_1.0 and mri_location_free_1.0
- lesion2: consists of the variables mri_pirads_2.0, mri_largest_dia_2.0, mri_location_2.0 and mri_location_free_2.0
- lesion3 consists of the variables mri_pirads_3.0, mri_largest_dia_3.0, mri_location_3.0 and mri_location_free_3.0

An episode is captured for each person and lesion group, except:
- When all values within the episode are 0, None or empty strings --> Episode not captured
- When mri_taken.0 != 1 --> Episode not captured

Do not capture episode event when value is 0, None or empty string.

Using the record_source_value in the stem_table and the record_source_value in the episode table, episodes are linked to events. 

| Destination Field           | Source field  | Logic | Comment field     |
|:----------------------------|:--------------|:------|:------------------|
| episode_id                  | p_id          |       | Concatenate p_id-"basedata"-episode_group (e.g. 1-basedata-lesion1), equal to record_source_value in episode table, and obtain episode_id through episode lookup |
| event_id                    | p_id          |       | Concatenate p_id-"basedata"-variable (e.g. 1-basedata-mri_pirads_1.0), equal to record_source_value in stem_table, and obtain event_id through stem_table lookup |
| event_field_concept_id      |  	          |       | When event variable is mri_pirads\*, map to 1147140 - measurement.measurement_concept <br> Else map to 1147167 - observation.observation_concept_id|


**Core biopsy episodes**

All measurements and observations belonging to core biopsies taken is grouped into an episode. The following two episodes are present:
- core_biopsy1: consists of the variables num_cores, num_cores_pc, gleason1 and gleason2
- core_biopsy2: consists of the variables num_cores2, num_cores_pc2, gleason1_2 and gleason2_2

An episode is captured for each person and lesion group, except:
- When all num_cores is empty ('') --> Do not capture episode
- When all num_cores2 is empty ('') --> Do not capture episode

Using the record_source_value in the stem_table and the record_source_value in the episode table, episodes are linked to events.

| Destination Field           | Source field  | Logic | Comment field     |
|:----------------------------|:--------------|:------|:------------------|
| episode_id                  | p_id          |       | Concatenate p_id-"basedata"-episode_group (e.g. 1-basedata-core_biopsy1), equal to record_source_value in episode table, and obtain episode_id through episode lookup |
| event_id                    | p_id          |       | Concatenate p_id-"basedata"-variable (e.g. 1-basedata-num_cores), equal to record_source_value in stem_table, and obtain event_id through stem_table lookup |
| event_field_concept_id      |  	          |       | When event variable is num_cores\*, map to 1147140 - measurement.measurement_concept <br> Else map to 1147167 - observation.observation_concept_id|


## Reading from fulong.csv

**Lesion episodes**

All measurements and observations belonging to a single MRI lesion is grouped into an episode. The following three episodes are present:
- lesion1: consists of the variables mri_pirads_1, mri_largest_dia_1, mri_location_1 and mri_location_free_1
- lesion2: consists of the variables mri_pirads_2, mri_largest_dia_2, mri_location_2 and mri_location_free_2
- lesion3: consists of the variables mri_pirads_3, mri_largest_dia_3, mri_location_3 and mri_location_free_3

An episode is captured for each person and lesion group, except:
- When all values within the episode are 0, None or empty strings --> Do not capture episode
- When mri_taken != 1 --> Do not capture episode

The record_source_value is used to link the episode to the events (i.e. observation and measurement records) occurring in the episode.

| Destination Field           | Source field  | Logic | Comment field     |
|:----------------------------|:--------------|:------|:------------------|
| episode_id                  | p_id          |       | Concatenate p_id-"fulong"-episode_group (e.g. 1-fulong-lesion1), equal to record_source_value in episode table, and obtain episode_id through episode lookup |
| event_id                    | p_id          |       | Concatenate p_id-"fulong"-variable (e.g. 1-fulong-mri_pirads_1), equal to record_source_value in stem_table, and obtain event_id through stem_table lookup |
| event_field_concept_id      |  	          |       | When event variable is mri_pirads\*, map to 1147140 - measurement.measurement_concept <br> Else map to 1147167 - observation.observation_concept_id|


**Core biopsy episodes**

All measurements and observations belonging to core biopsies taken are grouped into an episode. The following episode is present:
- core_biopsy1: consists of the variables num_cores_biop_fu, num_cores_pc_fu, gleason1_fu and gleason2_fu

An episode for each person and lesion group, except:
- When all num_cores_biop_fu is empty ('') --> Do not capture episode

The record_source_value is used to link the episode to the events (i.e. observation and measurement records) occurring in the episode.

| Destination Field           | Source field  | Logic | Comment field     |
|:----------------------------|:--------------|:------|:------------------|
| episode_id                  | p_id          |       | Concatenate p_id-"fulong"-episode_group (e.g. 1-fulong-core_biopsy1), equal to record_source_value in episode table, and obtain episode_id through episode lookup |
| event_id                    | p_id          |       | Concatenate p_id-"fulong"-variable (e.g. 1-fulong-num_cores_biop_fu), equal to record_source_value in stem_table, and obtain event_id through stem_table lookup |
| event_field_concept_id      |  	          |       | When event variable is num_cores\*, map to 1147140 - measurement.measurement_concept <br> Else map to 1147167 - observation.observation_concept_id|
