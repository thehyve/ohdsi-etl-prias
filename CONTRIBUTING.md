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


## Adding a new source to concept map
1. Create new file in `./resources/mapping_tables`. Naming convention: `stcm_<source_vocabulary_id>.csv`
2. Copy header from other stcm file
3. Add mappings from `source_code` to `target_concept_id` (target can be a custom concept)
   1. `source_description` can be same as `source_code` if no description available
   2. `source_concept_id` = 0
   3. `valid_start/end_date` default to `2019-01-01,2099-12-31`
4. Load the mapping script in wrapper before the transformations
   1. e.g. `self.load_source_to_concept_map_from_csv('./resources/mapping_tables/stcm_erspc_death.csv')`

   
## Adding custom concepts
1. Add new row to `./resources/custom_vocabulary/2b_concepts.csv`
2. Add concept details and assign new concept_id, one higher than the previous (and always bigger than 2_000_000_000) 
    1. Defaults: vocabulary_id = None, domain_id = Metadata, concept_class_id = Undefined, standard_concept and concept_code empty
