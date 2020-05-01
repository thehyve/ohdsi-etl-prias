if (!require(Achilles)) {
  if (!require("devtools")) install.packages("devtools")
  devtools::install_github("OHDSI/Achilles")
}

library(Achilles)

connectionDetails <- createConnectionDetails(dbms="postgresql",
                                             server="localhost/ohdsi",
                                             user="admin",
                                             password="secret",
                                             port=5432)
c <- connect(connectionDetails)
executeSql(connection = c, "CREATE SCHEMA IF NOT EXISTS temp;")

# Run select analyses, excluding some that are not essential and can cause issues.
analysisDetails <-  Achilles::getAnalysisDetails()
analysisIds <- analysisDetails[   !(analysisDetails$ANALYSIS_ID >= 900 & analysisDetails$ANALYSIS_ID < 1000) # drug_era
  & !(analysisDetails$ANALYSIS_ID >= 1400 & analysisDetails$ANALYSIS_ID < 1800), # cost, payer-plan
  "ANALYSIS_ID"] # cost

achillesResults <- achilles(connectionDetails,
                            cdmDatabaseSchema = "public",
                            resultsDatabaseSchema = "ohdsi",
                            vocabDatabaseSchema = "vocab",
                            scratchDatabaseSchema = "temp",
                            sourceName = "PRIAS",
                            cdmVersion = "5",
                            smallCellCount = 1,
                            analysisIds = analysisIds,
                            runHeel = TRUE,
                            validateSchema = FALSE)

exportToJson(connectionDetails, "public", "ohdsi", vocabDatabaseSchema = "vocab")
