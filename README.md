# PRIAS to OMOP v6
ETL scripts to concert the Prostate cancer Research International: Active Surveillance (PRIAS) datasets to [OMOP CDM V6](https://github.com/OHDSI/CommonDataModel/tree/v6.0.0).

## Docker
`cd ohdsi-etl-prias`
`docker-compose up -d`
* postgres
* webapi
* atlas
* etl

Run logs:
To check the postgres database:
`docker-compose logs -f postgres`

To check the ETL:
`docker-compose logs -f etl`

## Target
The resulting OMOP CDM is written to the `public` schema.

