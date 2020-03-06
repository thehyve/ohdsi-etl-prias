#Basedata to episode --------------------------------------------
declareTest(351, 'Episode - lesion_episode_groups')
add_basedata(p_id='10351', mri_taken.0='1', mri_pirads_1.0='3', mri_largest_dia_1.0='9', mri_location_1.0='rigt')
expect_episode(person_id=10351, episode_number=1, episode_concept_id=4115735)

#Basedata to episode --------------------------------------------
declareTest(352, 'Episode - lesion_episode_groups')
add_basedata(p_id='10352', mri_taken.0='1', year_diagnosis='2013', 
             mri_pirads_2.0='2', mri_largest_dia_2.0='5',mri_location_free_2.0='left')
expect_episode(person_id=10352, episode_start_datetime='2013-07-01 00:00:00.000000', episode_number=2, episode_concept_id=4115735)

#Basedata to episode --------------------------------------------
declareTest(353, 'Episode - biopsy_episode_groups')
add_basedata(p_id='10353', num_cores='17', num_cores_pc='5', gleason1='3')
expect_episode(person_id=10353, episode_concept_id=4221802, episode_number=1)

#Basedata to episode --------------------------------------------
declareTest(354, 'Episode - biopsy_episode_groups')
add_basedata(p_id='10354', year_diagnosis='2003', num_cores2='12', num_cores_pc2='2', gleason1_2='3')
expect_episode(person_id=10354, episode_end_datetime='2003-07-01 00:00:00.000000', 
                   episode_concept_id=4221802)

#Basedata to episode --------------------------------------------
declareTest(358, 'Episode - lesion_episode_groups')
add_basedata(p_id='10358', mri_taken.0='0')
expect_no_episode(person_id=10358, episode_concept_id=4115735)

#Basedata to episode --------------------------------------------
declareTest(359, 'Episode - lesion_episode_groups')
add_basedata(p_id='10359', mri_pirads_1.0='0', mri_largest_dia_1.0='0', mri_location_1.0=' ')
expect_no_episode(person_id=10359, episode_concept_id=4115735)

#Fulong to episode --------------------------------------------
declareTest(355, 'Episode - lesion_episode_groups')
add_basedata(p_id='10355')
add_fulong(p_id='10355', mri_taken='1', 
           mri_pirads_1='4', mri_largest_dia_1='9', mri_location_free_1='left')
expect_episode(person_id=10355, episode_concept_id=4115735)

#Fulong to episode --------------------------------------------
declareTest(356, 'Episode - lesion_episode_groups')
add_basedata(p_id='10356', year_diagnosis='2009')
add_fulong(p_id='10356', mri_taken='1', days_psa_diag='4',
           mri_pirads_3='2', mri_largest_dia_3='6', mri_location_free_3='apex')
expect_episode(person_id=10356, episode_concept_id=4115735, episode_start_datetime='2009-07-05 00:00:00.000000')

#Fulong to episode --------------------------------------------
declareTest(357, 'Episode - biopsy_episode_groups')
add_basedata(p_id='10357', year_diagnosis='1999')
add_fulong(p_id='10357', days_psa_diag='1', 
           num_cores_biop_fu='22', num_cores_pc_fu='12', gleason1_fu='4')
expect_episode(person_id=10357, episode_concept_id=4221802, episode_end_datetime='1999-07-02 00:00:00.000000')