# Run Achilles and export result
library(devtools)
devtools::install_github("OHDSI/Achilles@v1.6.1",)
library(Achilles)

outputPath <- "out/path/here"  # "/Users/Maxim/Develop/OHDSI/AchillesWeb/data"

connectionDetails <- createConnectionDetails(
  dbms="postgresql",
  server="localhost/ohdsi",
  user="ohdsi",
  password='ohdsi',
  port="4443"
)

# connectionDetails <- createConnectionDetails(
#   dbms="postgresql",
#   server="localhost/erspc",
#   user="Maxim",
#   password='',
#   port="5432"
# )

DatabaseConnector::executeSql(connect(connectionDetails), "create schema results;")

achilles(connectionDetails, 
         cdmDatabaseSchema = "public", 
         resultsDatabaseSchema="results",
         vocabDatabaseSchema = "public",
         numThreads = 1,
         sourceName = "ERSPC", 
         cdmVersion = "5.3.0",
         smallCellCount = NULL,
         runHeel = TRUE,
         conceptHierarchy=FALSE,
         runCostAnalysis = FALSE)

exportToJson(connectionDetails, 
             cdmDatabaseSchema = "public", 
             resultsDatabaseSchema = "results", 
             outputPath = outputPath,
             compressIntoOneFile = TRUE)
             
