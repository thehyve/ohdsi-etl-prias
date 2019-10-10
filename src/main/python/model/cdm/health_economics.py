# coding: utf-8
from sqlalchemy import CHAR, Column, Date, ForeignKey, Integer, Numeric, String
from sqlalchemy.orm import relationship

from src.main.python.database.database import base

metadata = base.metadata


class Cost(base):
    __tablename__ = 'cost'
    __table_args__ = {'schema': 'public'}

    cost_id = Column(Integer, primary_key=True)
    cost_event_id = Column(Integer, nullable=False)
    cost_domain_id = Column(String(20), nullable=False)
    cost_type_concept_id = Column(Integer, nullable=False)
    currency_concept_id = Column(ForeignKey('public.concept.concept_id'))
    total_charge = Column(Numeric)
    total_cost = Column(Numeric)
    total_paid = Column(Numeric)
    paid_by_payer = Column(Numeric)
    paid_by_patient = Column(Numeric)
    paid_patient_copay = Column(Numeric)
    paid_patient_coinsurance = Column(Numeric)
    paid_patient_deductible = Column(Numeric)
    paid_by_primary = Column(Numeric)
    paid_ingredient_cost = Column(Numeric)
    paid_dispensing_fee = Column(Numeric)
    payer_plan_period_id = Column(ForeignKey('public.payer_plan_period.payer_plan_period_id'))
    amount_allowed = Column(Numeric)
    revenue_code_concept_id = Column(Integer)
    reveue_code_source_value = Column(String(50))
    drg_concept_id = Column(ForeignKey('public.concept.concept_id'))
    drg_source_value = Column(CHAR(3))

    currency_concept = relationship('Concept', primaryjoin='Cost.currency_concept_id == Concept.concept_id')
    drg_concept = relationship('Concept', primaryjoin='Cost.drg_concept_id == Concept.concept_id')
    payer_plan_period = relationship('PayerPlanPeriod')


class PayerPlanPeriod(base):
    __tablename__ = 'payer_plan_period'
    __table_args__ = {'schema': 'public'}

    payer_plan_period_id = Column(Integer, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    payer_plan_period_start_date = Column(Date, nullable=False)
    payer_plan_period_end_date = Column(Date, nullable=False)
    payer_source_value = Column(String(50))
    plan_source_value = Column(String(50))
    family_source_value = Column(String(50))

    person = relationship('Person')
