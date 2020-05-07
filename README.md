# PRIAS to OMOP v6
ETL scripts to convert the Prostate cancer Research International: Active Surveillance (PRIAS) datasets to [OMOP CDM V6](https://github.com/OHDSI/CommonDataModel/tree/v6.0.0) 
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
    - NAACCR
    - UCUM
    - [PIONEER custom vocabulary](https://github.com/thehyve/ohdsi-omop-pioneer/blob/master/pioneer_custom_vocabulary/pioneer_concepts.csv)

## Run
```bash
main.py -s <path_to_source_data> -h <host> -p <port> -d <target_db> -u <user_name> -w <password>
```
A log of the run will be written to logs/<timestamp><version>.log    

## Docker
`cd ohdsi-etl-prias`

`docker-compose up -d` will start the following containers:
* postgresql
* broadsea-webtools
* broadsea-methods-library
* jupyter
* etl

To view the progress of the database setup and etl, view the logs:
* To check the postgres database:
`docker-compose logs -f postgresql`
* To check the ETL:
`docker-compose logs -f etl`

To run ETL again: `docker-compose up -d --build etl` and check the etl logs.

## Target
The resulting OMOP CDM is written to the `public` schema.

## Updating Docker image
To download the newest image run the following commands:
`docker-compose down -v` followed by `docker-compose up -d`

Note that this will remove and recreate all the OMOP vocabularies and will take a while to complete. Check the postgres with `docker-compose logs -f postgresql`.

Another command option to download the newest image when `down -v` is not working properly:
`docker pull thehyve/ohdsi_postgresql`