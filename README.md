# PRIAS to OMOP v6
ETL scripts to concert the Prostate cancer Research International: Active Surveillance (PRIAS) datasets to [OMOP CDM V6](https://github.com/OHDSI/CommonDataModel/tree/v6.0.0) 
+ [Oncology WG extensions](https://github.com/OHDSI/OncologyWG/wiki).

## Dependencies
- Postgres (9.5+)
    - public schema
- Python 3
    - Package [requirements](https://github.com/thehyve/ohdsi-etl-prias/blob/master/requirements.txt)
- [OMOP vocabularies](http://athena.ohdsi.org/vocabulary/list):
    - OMOP generated (Gender, Race, Type Concepts)
    - SNOMED
    - LIONC
    - NAACCR
    - UCUM

## Run
```bash
main.py -s <path_to_source_data> -h <host> -p <port> -d <target_db> -u <user_name> -w <password>
```
A log of the run will be written to logs/<timestamp><version>.log    

