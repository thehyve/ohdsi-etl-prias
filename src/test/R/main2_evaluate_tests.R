# Copyright 2019 The Hyve
#
# Licensed under the GNU General Public License, version 3,
# or (at your option) any later version (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# https://www.gnu.org/licenses/
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# After the ETL has run, this last phase will create the test results.
library(DatabaseConnector)
library(yaml)
config <- yaml.load_file('config.yml')
options(width=150)  # Preventing wrapping when printing dataframe

# Run and output test queries ---------------------------------------------
connectionConfig <- config$connectionDetails
connectionDetails <- createConnectionDetails(dbms = connectionConfig$dbms,
user = connectionConfig$user,
password = connectionConfig$password,
server = connectionConfig$server,
port = connectionConfig$port)
connection <- connect(connectionDetails)

testSql <- readLines(config$testQueryFileName)
testSql[1] <- sprintf('DROP TABLE IF EXISTS %s.test_results;', config$cdmSchema) # Replace existing SQL server specific table drop
executeSql(connection, paste(testSql, collapse='\n'))

# Display test results ----------------------------------------------------
df_results <- querySql(connection, sprintf('SELECT * FROM %s.test_results;', config$cdmSchema))
n_tests <- nrow(df_results)
n_failed_tests <- sum(df_results$'STATUS' == 'FAIL')
if (n_failed_tests > 0) {
    write("\nPrinting FAILED unit tests:", file="")
    print(df_results[df_results$'STATUS' == 'FAIL',])
    success_message <- sprintf("Number of FAILED unit tests: %d/%d (%.1f%%)", n_failed_tests, n_tests, n_failed_tests/n_tests * 100)
} else {
    success_message <- sprintf("All %d tests PASSED", n_tests)
}
write('\n', file="")
write(success_message, file="")

# Write test results, with metadata ---------------------------------------
git_commit_hash <- system("git rev-parse --short HEAD", intern = TRUE)
df_results <- df_results[,-1]  # remove test_ids
df_results <- rbind(c(paste(Sys.Date(), '- HEAD on:', git_commit_hash), '', success_message), df_results)
write.csv(df_results, "unittest_results.csv", row.names = FALSE, quote = c(1))

# Export test cases https://github.com/OHDSI/WhiteRabbit/issues/124 -----------------------
source('TestFrameWork.R')
exportCases('all_test_cases.csv');

# Coverage of Fields tested ------------------------
summary(frameworkContext)
print(getUntestedSourceFields())
print(getUntestedTargetFields())