# PRIAS to OMOP v6.x
ETL scripts to convert the Prostate cancer Research International: Active Surveillance (PRIAS) datasets to a PIONEER modification of [OMOP CDM V6](https://github.com/thehyve/ohdsi-omop-pioneer/tree/master/pioneer_omop_cdm). 
+ [Oncology WG extensions](https://github.com/OHDSI/OncologyWG/wiki).

## Mapping Document
The mapping document can be found [here](https://thehyve.github.io/ohdsi-etl-prias/).

## Dependencies
- Postgres (9.5+)
    - public schema
- Python 3
    - Package [requirements](https://github.com/thehyve/ohdsi-etl-prias/blob/master/requirements.txt)
- [OMOP vocabularies](http://athena.ohdsi.org/vocabulary/list):
    - OMOP generated (Gender, Race, Type Concepts)
    - SNOMED
    - LIONC
    - NAACCR (note: NAACCR is not included in the Athena download by default, and should be selected manually)
    - UCUM
    - [PIONEER custom vocabulary](https://github.com/thehyve/ohdsi-omop-pioneer/blob/master/pioneer_custom_vocabulary/pioneer_concepts.csv)

## Run
```bash
main.py -s <path_to_source_data> -h <host> -p <port> -d <target_db> -u <user_name> -w <password>
```
A log of the run will be written to logs/<timestamp><version>.log    

