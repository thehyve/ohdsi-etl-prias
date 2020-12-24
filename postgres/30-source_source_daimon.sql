-- remove any previously added database connection configuration data
TRUNCATE ohdsi.source CASCADE;
TRUNCATE ohdsi.source_daimon CASCADE;

-- OHDSI CDM source
INSERT INTO ohdsi.source( source_id, source_name, source_key, source_connection, source_dialect)
VALUES (1, 'PRIAS', 'PRIAS',
  'jdbc:postgresql://postgresql:5432/ohdsi?user=admin&password=secret', 'postgresql');

-- CDM daimon
INSERT INTO ohdsi.source_daimon (source_daimon_id, source_id, daimon_type, table_qualifier, priority) VALUES (1, 1, 0, 'public', 2);

-- VOCABULARY daimon
INSERT INTO ohdsi.source_daimon (source_daimon_id, source_id, daimon_type, table_qualifier, priority) VALUES (2, 1, 1, 'vocab', 2);

-- RESULTS daimon
INSERT INTO ohdsi.source_daimon (source_daimon_id, source_id, daimon_type, table_qualifier, priority) VALUES (3, 1, 2, 'prias_results', 2);

-- EVIDENCE daimon
INSERT INTO ohdsi.source_daimon (source_daimon_id, source_id, daimon_type, table_qualifier, priority) VALUES (4, 1, 3, 'ohdsi', 2);

