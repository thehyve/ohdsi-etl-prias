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

# First phase to testing

library(yaml)
config <- yaml.load_file('config.yml')


# Initialize the framework once -------------------------------------------
source('TestFramework.R')  # Note: removed initFramework() line from original framework, otherwise framework resets every load
initFramework()

# Import test cases ------------------------------------------------------------
source('test_cases/test_person.R')

# Generate source csv files -----------------------------------------------------
dir.create(config$sourceDataDir, recursive=T, showWarnings = F)
generateSourceCsv(config$sourceDataDir)
print(paste0('Test source tables written to ', config$sourceDataDir))

# Create test query -------------------------------------------------------
testSql <- generateTestSql('omopcdm')
dir.create(dirname(config$testQueryFileName), recursive=T, showWarnings = F)
write(testSql, config$testQueryFileName)
print(paste0('Test queries written to ', config$testQueryFileName))
