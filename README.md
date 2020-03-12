# PRIAS to OMOP v6
ETL scripts to concert the Prostate cancer Research International: Active Surveillance (PRIAS) datasets to [OMOP CDM V6](https://github.com/OHDSI/CommonDataModel/tree/v6.0.0).

## Docker
`cd ohdsi-etl-prias`
`docker-compose up -d`
* postgres
* webapi
* atlas
* etl

Inspect logs:
`docker-compose logs -f postgresql`
`docker-compose logs -f etl`

### Vocabulary loading
**TODO**

Vocabularies loaded into the `vocab` schema.

Python script: input is the location of vocabulary csv files (to be downloaded separately)
1. create vocabulary tables
2. load vocabulary records


## Target
The resulting OMOP CDM is written to the `public` schema.
