---
layout: default
title: Person
nav_order: 2
---

# person

## Reading from basedata.csv
For each record in the basedata table, insert a record in the person table. 
All persons are male and the only demographic information given is the year of birth. 
The care site (site that has entered the data for the person) is also known in the original dataset, but not given in the data extract used for the ETL.

| Destination Field           | Source field  | Logic | Comment field     |
|:----------------------------|:--------------|:------|:------------------|
| person_id                   | p_id          |       | Use p_id directly |
| person_source_value         | p_id          |       |                   |
| gender_concept_id           |               |       | Always male 8507  |
| year_of_birth               | year_of_birth |       |                   |
| race_concept_id             |               |       | 0                 |
| ethnicity_concept_id        |               |       | 0                 |
| month_of_birth              |               |       |                   |
| day_of_birth                |               |       |                   |
| birth_datetime              |               |       |                   |
| death_datetime              |               |       |                   |
| care_site_id                |               |       |                   |
| location_id                 |               |       |                   |
| provider_id                 |               |       |                   |
| gender_source_value         |               |       |                   |
| gender_source_concept_id    |               |       |                   |
| race_source_value           |               |       |                   |
| race_source_concept_id      |               |       |                   |
| ethnicity_source_value      |               |       |                   |
| ethnicity_source_concept_id |               |       |                   |
