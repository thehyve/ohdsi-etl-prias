# Contributing

## Setup database
1. Download the vocabulary files from Athena
2. Create a new postgres database
3. Run the init at https://github.com/thehyve/OHDSI-CommonDataModel/tree/cdm-auto-create-v6/PostgreSQL

## Adding a new transformation
1. Copy [_skeleton.py](src/main/python/transformation/_skeleton.py) and rename using the following convention: `<source_table>_to_<target_omop_table>.py` 
2. In the new file, rename function and replace calls to source and target tables.
3. Implement the transformation logic.
   1) In parallel, also update [the markdown documentation](resources/docs) for this transformation.
   2) Also in parallel, create [unit tests](#adding-a-new-r-unit-test).
4. Add import of the created function in the [`__init__.py`](src/main/python/transformation/__init__.py) 
5. Add the call to the function in main pipeline of [wrapper.py](src/main/python/wrapper.py). 

Example:
1. `basedata_to_observation.py`
2. ```python
   def basedata_to_observation(wrapper):
   ...
       source_data = wrapper.get_source_basedata()
   ...
       record = Observation(
   ```
3. |
4. `__init__.py`: 
   ```python
   from src.main.python.transformation.basedata_to_observation import basedata_to_observation
   ```
5. `wrapper.py run()`: 
   ```python
   self.execute_transformation(basedata_to_observation)
   ```

Note: quick testing can be done by running the transformation script, this will execute the block under `if __name__ == '__main__':`.
Another option is to add this call as the first line of the `self.run()`, followed by a `return`. 


## Adding a new R unit test
1. Copy [_test_skeleton.R](src/test/R/test_cases/_test_skeleton.py) and rename
2. Implement the testing logic by adding source data and expects. Tip: source the 'TestFramework.R' for method auto-complete, works best in RStudio.
3. Add import of the created test cases in [main1_create_tests.R](src/test/R/main1_create_tests.R) 
4. Test regularly!


## Adding a new mapping
There are four lookup tables:
  - [variable_mapping](resources/mapping_tables/variable_mapping.csv)
    
    Maps a column name (variable) to a concept. This concept will be used to populate the main `concept_id` field (e.g. a `measurement_concept_id`).
  - [value_mapping](resources/mapping_tables/value_mapping.csv)
    
    Maps the value of a column to a concept. This concept will be used to populate the `value_as_concept_id` column.
  - [variable_value_mapping](resources/mapping_tables/variable_value_mapping.csv)
    
    Maps the combination of column and value to a concept. This concept will be used to populate the main `concept_id` field (e.g. a `measurement_concept_id`).
  - [unit_mapping](resources/mapping_tables/unit_mapping.csv)
    
    Maps the column name to the unit concept. This concept will be used to populate the main `unit_concept_id` field of a measurement.

For given a variable/value pair, the lookups are used to get the target concept_id, value_as_concept_id, value_as_number and unit_concept_id.
The mapping can be one of three types:
        1. Only concept. Variable and value together map to one concept_id. Uses the `variable_value_mapping`. If combination of variable and value not found in that lookup, default to variable_mapping.
        2. Categorical. Variable maps to a concept_id, value maps to a value_as_concept_id. Uses both the `variable_mapping` for the main concept_id and the `value_mapping` for the `value_as_concept_id`.
        3. Numeric. If no mapping for value found, the value is assumed to be numeric. Variable maps to concept_id and unit_concept_id. Value is converted to float. Uses the `variable_mapping` and `unit_mapping`.
        
   
## Adding custom concepts
1. Add new row to `./resources/custom_vocabulary/2b_concepts.csv`
2. Add concept details and assign new concept_id, one higher than the previous (and always bigger than 2_000_000_000) 
    1. Defaults: vocabulary_id = None, domain_id = Metadata, concept_class_id = Undefined, standard_concept and concept_code empty
