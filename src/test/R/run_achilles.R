if (!require(Achilles)) {
  if (!require("devtools")) install.packages("devtools")
  devtools::install_github("OHDSI/Achilles")
}

library(Achilles)

connectionDetails <- createConnectionDetails(dbms="postgresql",
                                             server="localhost/ohdsi",
                                             user="postgres",
                                             password="secret",
                                             port=5432)
c <- connect(connectionDetails)

# Run select analyses, excluding some that are not essential and can cause issues.
analysisDetails <-  Achilles::getAnalysisDetails()
# analysisIds <- analysisDetails[   !(analysisDetails$ANALYSIS_ID >= 900 & analysisDetails$ANALYSIS_ID < 1000) # drug_era
#   & !(analysisDetails$ANALYSIS_ID >= 1400 & analysisDetails$ANALYSIS_ID < 1800), # cost, payer-plan
#   "ANALYSIS_ID"] # cost

achillesResults <- achilles(connectionDetails,
                            cdmDatabaseSchema = "public",
                            resultsDatabaseSchema = "prias_results",
                            vocabDatabaseSchema = "vocab",
                            scratchDatabaseSchema = "public",
                            sourceName = "PRIAS",
                            cdmVersion = "5",
                            smallCellCount = 0,
                            analysisIds = analysisIds,
                            runHeel = TRUE,
                            validateSchema = FALSE)

# exportToJson(connectionDetails, "public", "ohdsi", vocabDatabaseSchema = "vocab")
