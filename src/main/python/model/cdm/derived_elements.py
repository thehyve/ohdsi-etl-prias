# coding: utf-8
from sqlalchemy import Column, Date, ForeignKey, Integer, Numeric, String, Table, Text
from sqlalchemy.orm import relationship

from src.main.python.database.database import base

metadata = base.metadata


class Cohort(base):
    __tablename__ = 'cohort'
    __table_args__ = {'schema': 'public'}

    cohort_definition_id = Column(ForeignKey('public.cohort_definition.cohort_definition_id'), primary_key=True, nullable=False, index=True)
    subject_id = Column(Integer, primary_key=True, nullable=False, index=True)
    cohort_start_date = Column(Date, primary_key=True, nullable=False)
    cohort_end_date = Column(Date, primary_key=True, nullable=False)

    cohort_definition = relationship('CohortDefinition')


class CohortAttribute(base):
    __tablename__ = 'cohort_attribute'
    __table_args__ = {'schema': 'public'}

    cohort_definition_id = Column(ForeignKey('public.cohort_definition.cohort_definition_id'), primary_key=True, nullable=False, index=True)
    cohort_start_date = Column(Date, primary_key=True, nullable=False)
    cohort_end_date = Column(Date, primary_key=True, nullable=False)
    subject_id = Column(Integer, primary_key=True, nullable=False, index=True)
    attribute_definition_id = Column(ForeignKey('public.attribute_definition.attribute_definition_id'), primary_key=True, nullable=False)
    value_as_number = Column(Numeric)
    value_as_concept_id = Column(ForeignKey('public.concept.concept_id'))

    attribute_definition = relationship('AttributeDefinition')
    cohort_definition = relationship('CohortDefinition')
    value_as_concept = relationship('Concept')


class ConditionEra(base):
    __tablename__ = 'condition_era'
    __table_args__ = {'schema': 'public'}

    condition_era_id = Column(Integer, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    condition_concept_id = Column(ForeignKey('public.concept.concept_id'), nullable=False, index=True)
    condition_era_start_date = Column(Date, nullable=False)
    condition_era_end_date = Column(Date, nullable=False)
    condition_occurrence_count = Column(Integer)

    condition_concept = relationship('Concept')
    person = relationship('Person')


class DoseEra(base):
    __tablename__ = 'dose_era'
    __table_args__ = {'schema': 'public'}

    dose_era_id = Column(Integer, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    drug_concept_id = Column(ForeignKey('public.concept.concept_id'), nullable=False, index=True)
    unit_concept_id = Column(ForeignKey('public.concept.concept_id'), nullable=False)
    dose_value = Column(Numeric, nullable=False)
    dose_era_start_date = Column(Date, nullable=False)
    dose_era_end_date = Column(Date, nullable=False)

    drug_concept = relationship('Concept', primaryjoin='DoseEra.drug_concept_id == Concept.concept_id')
    person = relationship('Person')
    unit_concept = relationship('Concept', primaryjoin='DoseEra.unit_concept_id == Concept.concept_id')


class DrugEra(base):
    __tablename__ = 'drug_era'
    __table_args__ = {'schema': 'public'}

    drug_era_id = Column(Integer, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    drug_concept_id = Column(ForeignKey('public.concept.concept_id'), nullable=False, index=True)
    drug_era_start_date = Column(Date, nullable=False)
    drug_era_end_date = Column(Date, nullable=False)
    drug_exposure_count = Column(Integer)
    gap_days = Column(Integer)

    drug_concept = relationship('Concept')
    person = relationship('Person')


t_cdm_source = Table(
    'cdm_source', metadata,
    Column('cdm_source_name', String(255), nullable=False),
    Column('cdm_source_abbreviation', String(25)),
    Column('cdm_holder', String(255)),
    Column('source_description', Text),
    Column('source_documentation_reference', String(255)),
    Column('cdm_etl_reference', String(255)),
    Column('source_release_date', Date),
    Column('cdm_release_date', Date),
    Column('cdm_version', String(10)),
    Column('vocabulary_version', String(20)),
    schema='public'
)
