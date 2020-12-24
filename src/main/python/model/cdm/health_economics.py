# coding: utf-8
from sqlalchemy import BigInteger, Column, Date, ForeignKey, Integer, Numeric, String
from sqlalchemy.orm import relationship

from src.main.python.database.database import base

metadata = base.metadata

class Cost(base):
    __tablename__ = 'cost'
    __table_args__ = {'schema': 'public'}

    cost_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    cost_event_id = Column(BigInteger, nullable=False)
    cost_event_field_concept_id = Column(BigInteger, nullable=False)
    cost_concept_id = Column(BigInteger, nullable=False)
    cost_type_concept_id = Column(BigInteger, nullable=False)
    currency_concept_id = Column(BigInteger, nullable=False)
    cost = Column(Numeric)
    incurred_date = Column(Date, nullable=False)
    billed_date = Column(Date)
    paid_date = Column(Date)
    revenue_code_concept_id = Column(BigInteger, nullable=False)
    drg_concept_id = Column(BigInteger, nullable=False)
    cost_source_value = Column(String(50))
    cost_source_concept_id = Column(BigInteger, nullable=False)
    revenue_code_source_value = Column(String(50))
    drg_source_value = Column(String(3))
    payer_plan_period_id = Column(ForeignKey('public.payer_plan_period.payer_plan_period_id'))






    payer_plan_period = relationship('PayerPlanPeriod')
    person = relationship('Person')



class PayerPlanPeriod(base):
    __tablename__ = 'payer_plan_period'
    __table_args__ = {'schema': 'public'}

    payer_plan_period_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    contract_person_id = Column(ForeignKey('public.person.person_id'))
    payer_plan_period_start_date = Column(Date, nullable=False)
    payer_plan_period_end_date = Column(Date, nullable=False)
    payer_concept_id = Column(BigInteger, nullable=False)
    plan_concept_id = Column(BigInteger, nullable=False)
    contract_concept_id = Column(BigInteger, nullable=False)
    sponsor_concept_id = Column(BigInteger, nullable=False)
    stop_reason_concept_id = Column(BigInteger, nullable=False)
    payer_source_value = Column(String(50))
    payer_source_concept_id = Column(BigInteger, nullable=False)
    plan_source_value = Column(String(50))
    plan_source_concept_id = Column(BigInteger, nullable=False)
    contract_source_value = Column(String(50))
    contract_source_concept_id = Column(BigInteger, nullable=False)
    sponsor_source_value = Column(String(50))
    sponsor_source_concept_id = Column(BigInteger, nullable=False)
    family_source_value = Column(String(50))
    stop_reason_source_value = Column(String(50))
    stop_reason_source_concept_id = Column(BigInteger, nullable=False)


    contract_person = relationship('Person', primaryjoin='PayerPlanPeriod.contract_person_id == Person.person_id')



    person = relationship('Person', primaryjoin='PayerPlanPeriod.person_id == Person.person_id')


