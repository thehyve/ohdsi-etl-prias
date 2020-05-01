# PRIAS to OMOP v6
ETL scripts to concert the Prostate cancer Research International: Active Surveillance (PRIAS) datasets to [OMOP CDM V6](https://github.com/OHDSI/CommonDataModel/tree/v6.0.0).

## Docker
`cd ohdsi-etl-prias`

`docker-compose up -d` will start the following containers:
* postgresql
* broadsea-webtools
* broadsea-methods-library
* jupyter
* etl

Run logs:
* To check the postgres database:
`docker-compose logs -f postgresql`
* To check the ETL:
`docker-compose logs -f etl`

To run ETL again: `docker-compose up --build etl`


## Target
The resulting OMOP CDM is written to the `public` schema.

## Updating Docker image
To download the newest image run the following commands:
`docker-compose down -v` followed by `docker-compose up -d`

Note that this will remove and recreate all the OMOP vocabularies and will take a while to complete. Check the postgres with `docker-compose logs -f postgresql`.


Another command option to download the newest image when `down -v` is not working properly:
`docker pull thehyve/ohdsi_postgresql`