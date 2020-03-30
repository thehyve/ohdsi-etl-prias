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
`docker-compose logs -f`
Postgres database is setting up and vocabularies are downloaded
Wait with running the ETL until the Postgres database is ready to accept connections.

## Target
The resulting OMOP CDM is written to the `public` schema.

## Running the ETL
Requirements to run the ETL:
- click >= 7.0, < 8.0
- pandas >= 0.25.1, < 0.26.0
- psycopg2-binary >= 2.8, < 2.9
- SQLAlchemy >= 1.3, < 1.4
- SQLAlchemy-Utils >= 0.34, < 0.35
- PyYAML >= 5.1, < 5.2

Running command:
`python main.py -p 5432 -d ohdsi -u admin -w secret -s path_to_source_file`