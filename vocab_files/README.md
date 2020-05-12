# Vocabulary setup
  1. Get the following vocabulary files (either from Athena or elsewhere): VOCABULARY.csv, CONCEPT.csv, CONCEPT_CPT4.csv, CONCEPT_ANCESTOR.csv, CONCEPT_CLASS.csv, DOMAIN.csv.
  2. Add the csv's to this folder
  3. In `docker-compose.yml`, set ETL_SKIPVOCAB=False (around line 87)
  4. Start the docker if not yet running already: `docker-compose up -d`
  5. Build the etl `docker-compose up -d --build etl` 
    - This will take a while as millions of concept records will be inserted. To track the progress, use `docker-compose logs -f etl`.
