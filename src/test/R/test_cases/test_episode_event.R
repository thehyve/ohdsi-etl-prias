#Basedata to episode_event --------------------------------------------
declareTest(360, 'Episode_event - lesion_episode_groups; measurement')
add_basedata(p_id='10360', mri_taken.0='1', mri_pirads_1.0='3')
expect_episode_event(episode_id=lookup_episode('episode_id', person_id='10360', episode_concept_id='4115735', episode_number='1'), 
                     event_id=lookup_measurement('measurement_id', person_id='10360', measurement_source_value='mri_pirads_1.0'), 
                     event_field_concept_id=1147140)

#Basedata to episode_event --------------------------------------------
declareTest(361, 'Episode_event - lesion_episode_groups; observation')
add_basedata(p_id='10361', mri_taken.0='1',  mri_largest_dia_3.0='5') #, mri_location_3.0='1')
expect_episode_event(episode_id=lookup_episode('episode_id', person_id='10361', episode_concept_id='4115735', episode_number='3'), 
                     event_id=lookup_observation('observation_id', person_id='10361', observation_concept_id='4084390', observation_source_value='mri_largest_dia_3.0'), 
                     event_field_concept_id=1147167)

#Basedata to episode_event --------------------------------------------
declareTest(362, 'Episode_event - lesion_episode_groups; measurement')
add_basedata(p_id='10362', mri_pirads_2.0='0')
expect_no_episode_event(episode_id=lookup_episode('episode_id', person_id='10362', episode_concept_id='4115735', episode_number='2'), 
                        event_field_concept_id=1147140)

#Basedata to episode_event --------------------------------------------
declareTest(363, 'Episode_event - biopsy_groups; measurement')
add_basedata(p_id='10363', num_cores2='13')
expect_episode_event(episode_id=lookup_episode('episode_id', person_id='10363', episode_concept_id='4221802', episode_number='2'), 
                     event_id=lookup_measurement('measurement_id', person_id='10363', measurement_concept_id='35917476', measurement_source_value='num_cores2'),
                     event_field_concept_id=1147140)

#Basedata to episode_event --------------------------------------------
declareTest(364, 'Episode_event - biopsy_groups; measurement')
add_basedata(p_id='10364', num_cores_pc2='3')
expect_episode_event(episode_id=lookup_episode('episode_id', person_id='10364', episode_concept_id='4221802', episode_number='2'), 
                     event_id=lookup_measurement('measurement_id', person_id='10364', measurement_concept_id='35918000', measurement_source_value='num_cores_pc2'),
                     event_field_concept_id=1147140)

#Basedata to episode_event --------------------------------------------
declareTest(365, 'Episode_event - biopsy_groups; observation')
add_basedata(p_id='10365', gleason1='5')
expect_episode_event(episode_id=lookup_episode('episode_id', person_id='10365', episode_concept_id='4221802', episode_number='1'), 
                     event_id=lookup_observation('observation_id', person_id='10365', observation_source_value='gleason1_gleason2'), 
                     event_field_concept_id=1147167)

#Basedata to episode_event --------------------------------------------
declareTest(366, 'Episode_event - biopsy_episode_groups')
add_basedata(p_id='10366', mri_taken.0='0')
expect_no_episode_event(episode_id=lookup_episode('episode_id', person_id='10366', episode_concept_id='4115735', episode_number='1'))

#Fulong to episode_event ----------------------------------------------
declareTest(367, 'Episode_event - lesion_episode_groups; measurement')
add_basedata(p_id='10367')
add_fulong(p_id='10367', mri_taken='1', mri_pirads_1='3')
expect_episode_event(episode_id=lookup_episode('episode_id', person_id='10367', episode_concept_id='4115735', episode_number='1'), 
                     event_id=lookup_measurement('measurement_id', person_id='10367', measurement_concept_id='2000000007'), 
                     event_field_concept_id=1147140)

#Fulong to episode_event - fail ---------------------------------------
declareTest(368, 'Episode_event - lesion_episode_groups; observation')
add_basedata(p_id='10368')
add_fulong(p_id='10368', mri_taken='1', mri_largest_dia_2='4',mri_location_free_2='midd')
expect_episode_event(episode_id=lookup_episode('episode_id', person_id='10368', episode_concept_id='4115735', episode_number='2'), 
                     event_id=lookup_observation('observation_id', person_id='10368', observation_concept_id='4084390', observation_source_value='mri_largest_dia_2'), 
                     event_field_concept_id=1147167)

#Fulong to episode_event ----------------------------------------------
declareTest(369, 'Episode_event - lesion_episode_groups; measurement')
add_basedata(p_id='10369')
add_fulong(p_id='10369', mri_pirads_3='0')
expect_no_episode_event(episode_id=lookup_episode('episode_id', person_id='10369', episode_concept_id='4115735', episode_number='3'), 
                        event_field_concept_id=1147140)

#Fulong to episode_event -----------------------------------------------
declareTest(370, 'Episode_event - biopsy_groups; measurement')
add_basedata(p_id='10370')
add_fulong(p_id='10370', num_cores_biop_fu='13', num_cores_pc_fu='3')
expect_episode_event(episode_id=lookup_episode('episode_id', person_id='10370', episode_concept_id='4221802', record_source_value='10370-fulong-1-core_biopsy'), 
                     event_id=lookup_measurement('measurement_id', person_id='10370', measurement_concept_id='35917476', measurement_source_value='num_cores_biop_fu'),
                     event_field_concept_id=1147140)

#Fulong to episode_event ----------------------------------------------
declareTest(371, 'Episode_event - biopsy_groups; observation')
add_basedata(p_id='10371')
add_fulong(p_id='10371', gleason1_fu='2')
expect_episode_event(episode_id=lookup_episode('episode_id', person_id='10371', episode_concept_id='4221802', record_source_value='10371-fulong-1-core_biopsy'), 
                     event_id=lookup_observation('observation_id', person_id='10371', observation_concept_id='4297949', observation_source_value='gleason1_fu_gleason2_fu'), 
                     event_field_concept_id=1147167)

#Fulong to episode_event ----------------------------------------------
declareTest(372, 'Episode_event - biopsy_episode_groups')
add_basedata(p_id='10372')
add_fulong(p_id='10372', mri_taken='0')
expect_no_episode_event(episode_id=lookup_episode('episode_id', person_id='10372', episode_concept_id='4115735'))

