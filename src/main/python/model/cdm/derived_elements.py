# coding: utf-8
from sqlalchemy import BigInteger, Column, Date, DateTime, ForeignKey, Integer, Numeric, String, Table, Text
from sqlalchemy.orm import relationship

from src.main.python.database.database import base

metadata = base.metadata


class ConditionEra(base):
    __tablename__ = 'condition_era'
    __table_args__ = {'schema': 'public'}

    condition_era_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    condition_concept_id = Column(ForeignKey('public.concept.concept_id'), nullable=False, index=True)
    condition_era_start_datetime = Column(DateTime, nullable=False)
    condition_era_end_datetime = Column(DateTime, nullable=False)
    condition_occurrence_count = Column(Integer)

    condition_concept = relationship('Concept')
    person = relationship('Person')


class DoseEra(base):
    __tablename__ = 'dose_era'
    __table_args__ = {'schema': 'public'}

    dose_era_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    drug_concept_id = Column(ForeignKey('public.concept.concept_id'), nullable=False, index=True)
    unit_concept_id = Column(ForeignKey('public.concept.concept_id'), nullable=False)
    dose_value = Column(Numeric, nullable=False)
    dose_era_start_datetime = Column(DateTime, nullable=False)
    dose_era_end_datetime = Column(DateTime, nullable=False)

    drug_concept = relationship('Concept', primaryjoin='DoseEra.drug_concept_id == Concept.concept_id')
    person = relationship('Person')
    unit_concept = relationship('Concept', primaryjoin='DoseEra.unit_concept_id == Concept.concept_id')


class DrugEra(base):
    __tablename__ = 'drug_era'
    __table_args__ = {'schema': 'public'}

    drug_era_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    drug_concept_id = Column(ForeignKey('public.concept.concept_id'), nullable=False, index=True)
    drug_era_start_datetime = Column(DateTime, nullable=False)
    drug_era_end_datetime = Column(DateTime, nullable=False)
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


t_metadata = Table(
    'metadata', metadata,
    Column('metadata_concept_id', Integer, nullable=False, index=True),
    Column('metadata_type_concept_id', Integer, nullable=False),
    Column('name', String(250), nullable=False),
    Column('value_as_string', Text),
    Column('value_as_concept_id', Integer),
    Column('metadata_date', Date),
    Column('metadata_datetime', DateTime),
    schema='public'
)
