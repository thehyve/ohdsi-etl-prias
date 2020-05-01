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
#
# OMOP CDM v6, with oncology extension, defined by https://github.com/OHDSI/CommonDataModel/tree/Dev/PostgreSQL #30d851a

# !/usr/bin/env python3
# coding: utf-8
from sqlalchemy import BigInteger, Column, Date, DateTime, ForeignKey, Integer, Numeric, String, Text
from sqlalchemy.orm import relationship

from src.main.python.database.database import base

metadata = base.metadata


class ConditionOccurrence(base):
    __tablename__ = 'condition_occurrence'
    __table_args__ = {'schema': 'public'}

    condition_occurrence_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    condition_concept_id = Column(BigInteger, nullable=False, index=True)
    condition_start_date = Column(Date)
    condition_start_datetime = Column(DateTime)
    condition_end_date = Column(Date)
    condition_end_datetime = Column(DateTime)
    condition_type_concept_id = Column(BigInteger, nullable=False)
    stop_reason = Column(String(20))
    provider_id = Column(ForeignKey('public.provider.provider_id'))
    visit_occurrence_id = Column(ForeignKey('public.visit_occurrence.visit_occurrence_id'), index=True)
    visit_detail_id = Column(ForeignKey('public.visit_detail.visit_detail_id'))
    condition_source_value = Column(String(50))
    condition_status_concept_id = Column(BigInteger, nullable=False)
    condition_source_concept_id = Column(BigInteger, nullable=False)
    condition_status_source_value = Column(String(50))





    person = relationship('Person')
    provider = relationship('Provider')
    visit_detail = relationship('VisitDetail')
    visit_occurrence = relationship('VisitOccurrence')


class DeviceExposure(base):
    __tablename__ = 'device_exposure'
    __table_args__ = {'schema': 'public'}

    device_exposure_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    device_concept_id = Column(BigInteger, nullable=False, index=True)
    device_exposure_start_date = Column(Date)
    device_exposure_start_datetime = Column(DateTime, nullable=False)
    device_exposure_end_date = Column(Date)
    device_exposure_end_datetime = Column(DateTime)
    device_type_concept_id = Column(BigInteger, nullable=False)
    unique_device_id = Column(String(50))
    quantity = Column(BigInteger)
    provider_id = Column(ForeignKey('public.provider.provider_id'))
    visit_occurrence_id = Column(ForeignKey('public.visit_occurrence.visit_occurrence_id'), index=True)
    visit_detail_id = Column(ForeignKey('public.visit_detail.visit_detail_id'))
    device_source_value = Column(String(100))
    device_source_concept_id = Column(BigInteger, nullable=False)




    person = relationship('Person')
    provider = relationship('Provider')
    visit_detail = relationship('VisitDetail')
    visit_occurrence = relationship('VisitOccurrence')


class DrugExposure(base):
    __tablename__ = 'drug_exposure'
    __table_args__ = {'schema': 'public'}

    drug_exposure_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    drug_concept_id = Column(BigInteger, nullable=False, index=True)
    drug_exposure_start_date = Column(Date)
    drug_exposure_start_datetime = Column(DateTime, nullable=False)
    drug_exposure_end_date = Column(Date)
    drug_exposure_end_datetime = Column(DateTime, nullable=False)
    verbatim_end_date = Column(Date)
    drug_type_concept_id = Column(BigInteger, nullable=False)
    stop_reason = Column(String(20))
    refills = Column(BigInteger)
    quantity = Column(Numeric)
    days_supply = Column(BigInteger)
    sig = Column(Text)
    route_concept_id = Column(BigInteger, nullable=False)
    lot_number = Column(String(50))
    provider_id = Column(ForeignKey('public.provider.provider_id'))
    visit_occurrence_id = Column(ForeignKey('public.visit_occurrence.visit_occurrence_id'), index=True)
    visit_detail_id = Column(ForeignKey('public.visit_detail.visit_detail_id'))
    drug_source_value = Column(String(50))
    drug_source_concept_id = Column(BigInteger, nullable=False)
    route_source_value = Column(String(50))
    dose_unit_source_value = Column(String(50))




    person = relationship('Person')
    provider = relationship('Provider')

    visit_detail = relationship('VisitDetail')
    visit_occurrence = relationship('VisitOccurrence')


class FactRelationship(base):
    __tablename__ = 'fact_relationship'
    __table_args__ = {'schema': 'public'}

    fact_relationship_id = Column(BigInteger, primary_key=True)
    domain_concept_id = Column(BigInteger, nullable=False, index=True)
    fact_id_1 = Column(BigInteger, nullable=False)
    domain_concept_id_2 = Column(BigInteger, nullable=False, index=True)
    fact_id_2 = Column(BigInteger, nullable=False)
    relationship_concept_id = Column(BigInteger, nullable=False, index=True)


class Measurement(base):
    __tablename__ = 'measurement'
    __table_args__ = {'schema': 'public'}

    measurement_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    measurement_concept_id = Column(BigInteger, nullable=False, index=True)
    measurement_date = Column(Date)
    measurement_datetime = Column(DateTime, nullable=False)
    measurement_time = Column(String(10))
    measurement_type_concept_id = Column(BigInteger, nullable=False)
    operator_concept_id = Column(BigInteger)
    value_as_number = Column(Numeric)
    value_as_concept_id = Column(BigInteger)
    unit_concept_id = Column(BigInteger)
    range_low = Column(Numeric)
    range_high = Column(Numeric)
    provider_id = Column(ForeignKey('public.provider.provider_id'))
    visit_occurrence_id = Column(ForeignKey('public.visit_occurrence.visit_occurrence_id'), index=True)
    visit_detail_id = Column(ForeignKey('public.visit_detail.visit_detail_id'))
    measurement_source_value = Column(String(50))
    measurement_source_concept_id = Column(BigInteger, nullable=False)
    unit_source_value = Column(String(50))
    value_source_value = Column(String(50))
    modifier_of_event_id = Column(BigInteger)
    modifier_of_field_concept_id = Column(BigInteger)






    person = relationship('Person')
    provider = relationship('Provider')


    visit_detail = relationship('VisitDetail')
    visit_occurrence = relationship('VisitOccurrence')


class Note(base):
    __tablename__ = 'note'
    __table_args__ = {'schema': 'public'}

    note_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    note_event_id = Column(BigInteger)
    note_event_field_concept_id = Column(BigInteger, nullable=False)
    note_date = Column(Date)
    note_datetime = Column(DateTime, nullable=False)
    note_type_concept_id = Column(BigInteger, nullable=False, index=True)
    note_class_concept_id = Column(BigInteger, nullable=False)
    note_title = Column(String(250))
    note_text = Column(Text)
    encoding_concept_id = Column(BigInteger, nullable=False)
    language_concept_id = Column(BigInteger, nullable=False)
    provider_id = Column(ForeignKey('public.provider.provider_id'))
    visit_occurrence_id = Column(ForeignKey('public.visit_occurrence.visit_occurrence_id'), index=True)
    visit_detail_id = Column(ForeignKey('public.visit_detail.visit_detail_id'))
    note_source_value = Column(String(50))





    person = relationship('Person')
    provider = relationship('Provider')
    visit_detail = relationship('VisitDetail')
    visit_occurrence = relationship('VisitOccurrence')


class NoteNlp(base):
    __tablename__ = 'note_nlp'
    __table_args__ = {'schema': 'public'}

    note_nlp_id = Column(BigInteger, primary_key=True)
    note_id = Column(ForeignKey('public.note.note_id'), nullable=False, index=True)
    section_concept_id = Column(BigInteger, nullable=False)
    snippet = Column(String(250))
    offset = Column(String(250))
    lexical_variant = Column(String(250), nullable=False)
    note_nlp_concept_id = Column(BigInteger, nullable=False, index=True)
    note_nlp_source_concept_id = Column(BigInteger, nullable=False)
    nlp_system = Column(String(250))
    nlp_date = Column(Date, nullable=False)
    nlp_datetime = Column(DateTime)
    term_exists = Column(String(1))
    term_temporal = Column(String(50))
    term_modifiers = Column(String(2000))

    note = relationship('Note')





class Observation(base):
    __tablename__ = 'observation'
    __table_args__ = {'schema': 'public'}

    observation_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    observation_concept_id = Column(BigInteger, nullable=False, index=True)
    observation_date = Column(Date)
    observation_datetime = Column(DateTime, nullable=False)
    observation_type_concept_id = Column(BigInteger, nullable=False)
    value_as_number = Column(Numeric)
    value_as_string = Column(String(60))
    value_as_concept_id = Column(BigInteger)
    qualifier_concept_id = Column(BigInteger)
    unit_concept_id = Column(BigInteger)
    provider_id = Column(ForeignKey('public.provider.provider_id'))
    visit_occurrence_id = Column(ForeignKey('public.visit_occurrence.visit_occurrence_id'), index=True)
    # Make one possible visit
    visit_occurrence_source_value = Column(String(50))
    visit_detail_id = Column(ForeignKey('public.visit_detail.visit_detail_id'))
    observation_source_value = Column(String(50))
    observation_source_concept_id = Column(BigInteger, nullable=False)
    unit_source_value = Column(String(50))
    qualifier_source_value = Column(String(50))
    observation_event_id = Column(BigInteger)
    obs_event_field_concept_id = Column(BigInteger, nullable=False)
    value_as_datetime = Column(DateTime)




    person = relationship('Person')
    provider = relationship('Provider')



    visit_occurrence = relationship('VisitOccurrence')
    visit_detail = relationship('VisitDetail')
    # visit_source_value = relationship('VisitOccurrence', primaryjoin='Observation.visit_occurrence_source_value == VisitOccurrence.visit_occurrence_source_value')


class ObservationPeriod(base):
    __tablename__ = 'observation_period'
    __table_args__ = {'schema': 'public'}

    observation_period_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    observation_period_start_date = Column(Date, nullable=False)
    observation_period_end_date = Column(Date, nullable=False)
    period_type_concept_id = Column(BigInteger, nullable=False)


    person = relationship('Person')


class Person(base):
    __tablename__ = 'person'
    __table_args__ = {'schema': 'public'}

    person_id = Column(BigInteger, primary_key=True, unique=True)
    gender_concept_id = Column(BigInteger, nullable=False)
    year_of_birth = Column(BigInteger, nullable=False)
    month_of_birth = Column(BigInteger)
    day_of_birth = Column(BigInteger)
    birth_datetime = Column(DateTime)
    death_datetime = Column(DateTime)
    race_concept_id = Column(BigInteger, nullable=False)
    ethnicity_concept_id = Column(BigInteger, nullable=False)
    location_id = Column(ForeignKey('public.location.location_id'))
    provider_id = Column(ForeignKey('public.provider.provider_id'))
    care_site_id = Column(ForeignKey('public.care_site.care_site_id'))
    person_source_value = Column(String(50))
    gender_source_value = Column(String(50))
    gender_source_concept_id = Column(BigInteger)
    race_source_value = Column(String(50))
    race_source_concept_id = Column(BigInteger, nullable=False)
    ethnicity_source_value = Column(String(50))
    ethnicity_source_concept_id = Column(BigInteger, nullable=False)

    care_site = relationship('CareSite')




    location = relationship('Location')
    provider = relationship('Provider')




class Death(base):
    """Not a cdm6 table, but kept for backwards compatibility"""
    __tablename__ = 'death'
    __table_args__ = {'schema': 'public'}

    person_id = Column(ForeignKey('public.person.person_id'), primary_key=True, index=True)
    death_date = Column(Date, nullable=False)
    death_datetime = Column(DateTime)
    death_type_concept_id = Column(BigInteger, nullable=False)
    cause_concept_id = Column(BigInteger)
    cause_source_value = Column(String(50))
    cause_source_concept_id = Column(BigInteger)






class ProcedureOccurrence(base):
    __tablename__ = 'procedure_occurrence'
    __table_args__ = {'schema': 'public'}

    procedure_occurrence_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    procedure_concept_id = Column(BigInteger, nullable=False, index=True)
    procedure_date = Column(Date)
    procedure_datetime = Column(DateTime, nullable=False)
    procedure_type_concept_id = Column(BigInteger, nullable=False)
    modifier_concept_id = Column(BigInteger, nullable=False)
    quantity = Column(BigInteger)
    provider_id = Column(ForeignKey('public.provider.provider_id'))
    visit_occurrence_id = Column(ForeignKey('public.visit_occurrence.visit_occurrence_id'), index=True)
    visit_detail_id = Column(ForeignKey('public.visit_detail.visit_detail_id'))
    procedure_source_value = Column(String(50))
    procedure_source_concept_id = Column(BigInteger, nullable=False)
    modifier_source_value = Column(String(50))


    person = relationship('Person')



    provider = relationship('Provider')
    visit_detail = relationship('VisitDetail')
    visit_occurrence = relationship('VisitOccurrence')


class Specimen(base):
    __tablename__ = 'specimen'
    __table_args__ = {'schema': 'public'}

    specimen_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    specimen_concept_id = Column(BigInteger, nullable=False, index=True)
    specimen_type_concept_id = Column(BigInteger, nullable=False)
    specimen_date = Column(Date)
    specimen_datetime = Column(DateTime, nullable=False)
    quantity = Column(Numeric)
    unit_concept_id = Column(BigInteger)
    anatomic_site_concept_id = Column(BigInteger, nullable=False)
    disease_status_concept_id = Column(BigInteger, nullable=False)
    specimen_source_id = Column(String(50))
    specimen_source_value = Column(String(50))
    unit_source_value = Column(String(50))
    anatomic_site_source_value = Column(String(50))
    disease_status_source_value = Column(String(50))



    person = relationship('Person')


class SurveyConduct(base):
    __tablename__ = 'survey_conduct'
    __table_args__ = {'schema': 'public'}

    survey_conduct_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    survey_concept_id = Column(BigInteger, nullable=False)
    survey_start_date = Column(Date)
    survey_start_datetime = Column(DateTime)
    survey_end_date = Column(Date)
    survey_end_datetime = Column(DateTime, nullable=False)
    provider_id = Column(ForeignKey('public.provider.provider_id'))
    assisted_concept_id = Column(BigInteger, nullable=False)
    respondent_type_concept_id = Column(BigInteger, nullable=False)
    timing_concept_id = Column(BigInteger, nullable=False)
    collection_method_concept_id = Column(BigInteger, nullable=False)
    assisted_source_value = Column(String(50))
    respondent_type_source_value = Column(String(100))
    timing_source_value = Column(String(100))
    collection_method_source_value = Column(String(100))
    survey_source_value = Column(String(100))
    survey_source_concept_id = Column(BigInteger, nullable=False)
    survey_source_identifier = Column(String(100))
    validated_survey_concept_id = Column(BigInteger, nullable=False)
    validated_survey_source_value = Column(String(100))
    survey_version_number = Column(String(20))
    visit_occurrence_id = Column(ForeignKey('public.visit_occurrence.visit_occurrence_id'))
    visit_detail_id = Column(ForeignKey('public.visit_detail.visit_detail_id'))
    response_visit_occurrence_id = Column(ForeignKey('public.visit_occurrence.visit_occurrence_id'))



    person = relationship('Person')
    provider = relationship('Provider')

    response_visit_occurrence = relationship('VisitOccurrence',
                                             primaryjoin='SurveyConduct.response_visit_occurrence_id == VisitOccurrence.visit_occurrence_id')




    visit_detail = relationship('VisitDetail')
    visit_occurrence = relationship('VisitOccurrence', primaryjoin='SurveyConduct.visit_occurrence_id == VisitOccurrence.visit_occurrence_id')


class VisitDetail(base):
    __tablename__ = 'visit_detail'
    __table_args__ = {'schema': 'public'}
    visit_detail_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    visit_detail_concept_id = Column(BigInteger, nullable=False, index=True)
    visit_detail_start_date = Column(Date)
    visit_detail_start_datetime = Column(DateTime, nullable=False)
    visit_detail_end_date = Column(Date)
    visit_detail_end_datetime = Column(DateTime, nullable=False)
    visit_detail_type_concept_id = Column(BigInteger, nullable=False)
    provider_id = Column(ForeignKey('public.provider.provider_id'))
    care_site_id = Column(ForeignKey('public.care_site.care_site_id'))
    discharge_to_concept_id = Column(BigInteger, nullable=False)
    admitted_from_concept_id = Column(BigInteger, nullable=False)
    admitted_from_source_value = Column(String(50))
    visit_detail_source_value = Column(String(50))
    visit_detail_source_concept_id = Column(BigInteger, nullable=False)
    discharge_to_source_value = Column(String(50))
    preceding_visit_detail_id = Column(ForeignKey('public.visit_detail.visit_detail_id'))
    visit_detail_parent_id = Column(ForeignKey('public.visit_detail.visit_detail_id'))
    visit_occurrence_id = Column(ForeignKey('public.visit_occurrence.visit_occurrence_id'), nullable=False)

    care_site = relationship('CareSite')

    person = relationship('Person')
    preceding_visit_detail = relationship('VisitDetail', remote_side=[visit_detail_id],
                                          primaryjoin='VisitDetail.preceding_visit_detail_id == VisitDetail.visit_detail_id')
    provider = relationship('Provider')

    visit_detail_parent = relationship('VisitDetail', remote_side=[visit_detail_id],
                                       primaryjoin='VisitDetail.visit_detail_parent_id == VisitDetail.visit_detail_id')


    visit_occurrence = relationship('VisitOccurrence')


class VisitOccurrence(base):
    __tablename__ = 'visit_occurrence'
    __table_args__ = {'schema': 'public'}

    visit_occurrence_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    visit_concept_id = Column(BigInteger, nullable=False, index=True)
    visit_start_date = Column(Date)
    visit_start_datetime = Column(DateTime, nullable=False)
    visit_end_date = Column(Date)
    visit_end_datetime = Column(DateTime, nullable=False)
    visit_type_concept_id = Column(BigInteger, nullable=False)
    provider_id = Column(ForeignKey('public.provider.provider_id'))
    care_site_id = Column(ForeignKey('public.care_site.care_site_id'))
    visit_source_value = Column(String(50))
    visit_source_concept_id = Column(BigInteger)
    admitted_from_concept_id = Column(BigInteger, nullable=False)
    admitted_from_source_value = Column(String(50))
    discharge_to_concept_id = Column(BigInteger, nullable=False)
    discharge_to_source_value = Column(String(50))
    preceding_visit_occurrence_id = Column(ForeignKey('public.visit_occurrence.visit_occurrence_id'))
    record_source_value = Column(String(50))

    care_site = relationship('CareSite')

    person = relationship('Person')
    provider = relationship('Provider')



    preceding_visit_occurrence = relationship('VisitOccurrence', remote_side=[visit_occurrence_id])


class StemTable(base):
    __tablename__ = 'stem_table'
    __table_args__ = {'schema': 'public'}

    id = Column(Integer, primary_key=True)
    domain_id = Column(String(20),
                       comment='A foreign key identifying the domain this event belongs to. The domain drives the target CDM table this event will be '
                               'recorded in.  If one is not set specify a default domain.')
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    concept_id = Column(Integer, nullable=False, index=True)
    start_date = Column(Date)
    start_datetime = Column(DateTime, nullable=False)
    end_date = Column(Date)
    end_datetime = Column(DateTime)
    verbatim_end_date = Column(Date)
    type_concept_id = Column(Integer, nullable=False)
    operator_concept_id = Column(Integer)
    value_as_number = Column(Numeric)
    value_as_concept_id = Column(Integer)
    value_as_string = Column(String(60))
    value_as_datetime = Column(DateTime)
    unit_concept_id = Column(Integer)
    range_low = Column(Numeric)
    range_high = Column(Numeric)
    provider_id = Column(ForeignKey('public.provider.provider_id'))
    visit_occurrence_id = Column(ForeignKey('public.visit_occurrence.visit_occurrence_id'), index=True)
    visit_detail_id = Column(ForeignKey('public.visit_detail.visit_detail_id'))
    source_value = Column(String(50))
    source_concept_id = Column(Integer)
    unit_source_value = Column(String(50))
    value_source_value = Column(String(50))
    stop_reason = Column(String(20))
    refills = Column(Integer)
    quantity = Column(Numeric)
    days_supply = Column(Integer)
    sig = Column(Text)
    route_concept_id = Column(Integer)
    lot_number = Column(String(50))
    route_source_value = Column(String(50))
    dose_unit_source_value = Column(String(50))
    condition_status_source_value = Column(String(50))
    condition_status_concept_id = Column(Integer)
    qualifier_concept_id = Column(Integer)
    qualifier_source_value = Column(String(50))
    modifier_concept_id = Column(Integer)
    unique_device_id = Column(String(50))
    anatomic_site_concept_id = Column(Integer)
    disease_status_concept_id = Column(Integer)
    specimen_source_id = Column(String(50))
    anatomic_site_source_value = Column(String(50))
    disease_status_source_value = Column(String(50))
    event_id = Column(BigInteger)
    event_field_concept_id = Column(Integer)
    modifier_source_value = Column(String(50))
    record_source_value = Column(String(100))

    person = relationship('Person')
    provider = relationship('Provider')
    visit_occurrence = relationship('VisitOccurrence')

    visit_detail = relationship('VisitDetail')


class Episode(base):
    __tablename__ = 'episode'
    __table_args__ = {'schema': 'public'}

    episode_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    episode_start_datetime = Column(DateTime, nullable=False)
    episode_end_datetime = Column(DateTime, nullable=False)
    episode_concept_id = Column(BigInteger, nullable=False, index=True)
    episode_parent_id = Column(ForeignKey('public.episode.episode_id'))
    episode_number = Column(BigInteger)
    episode_object_concept_id = Column(BigInteger, nullable=False)
    episode_type_concept_id = Column(BigInteger, nullable=False)
    episode_source_value = Column(String(50))
    episode_source_concept_id = Column(BigInteger)
    record_source_value = Column(String(50))


    episode_parent = relationship('Episode', remote_side=[episode_id])


    person = relationship('Person')


class EpisodeEvent(base):
    __tablename__ = 'episode_event'
    __table_args__ = {'schema': 'public'}

    episode_id = Column(BigInteger, primary_key=True, nullable=False, index=True)
    event_id = Column(BigInteger, primary_key=True, nullable=False)
    event_field_concept_id = Column(BigInteger, primary_key=True, nullable=False, index=True)