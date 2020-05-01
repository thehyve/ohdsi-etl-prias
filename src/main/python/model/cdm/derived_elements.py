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
from sqlalchemy import BigInteger, Column, Date, DateTime, ForeignKey, Integer, Numeric, String, Table, Text
from sqlalchemy.orm import relationship

from src.main.python.database.database import base

metadata = base.metadata


class ConditionEra(base):
    __tablename__ = 'condition_era'
    __table_args__ = {'schema': 'public'}

    condition_era_id = Column(BigInteger, primary_key=True)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    condition_concept_id = Column(BigInteger, nullable=False, index=True)
    condition_era_start_date = Column(Date, nullable=False)
    condition_era_end_date = Column(Date, nullable=False)
    condition_occurrence_count = Column(BigInteger)


    person = relationship('Person')


class DoseEra(base):
    __tablename__ = 'dose_era'
    __table_args__ = {'schema': 'public'}

    dose_era_id = Column(BigInteger, primary_key=True, nullable=False)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    drug_concept_id = Column(BigInteger, nullable=False, index=True)
    unit_concept_id = Column(BigInteger, nullable=False)
    dose_value = Column(Numeric, nullable=False)
    dose_era_start_datetime = Column(DateTime, nullable=False)
    dose_era_end_datetime = Column(DateTime, nullable=False)


    person = relationship('Person')



class DrugEra(base):
    __tablename__ = 'drug_era'
    __table_args__ = {'schema': 'public'}

    drug_era_id = Column(BigInteger, primary_key=True, nullable=False)
    person_id = Column(ForeignKey('public.person.person_id'), nullable=False, index=True)
    drug_concept_id = Column(BigInteger, nullable=False, index=True)
    drug_era_start_date = Column(Date, nullable=False)
    drug_era_start_datetime = Column(DateTime, nullable=False)
    drug_era_end_date = Column(Date, nullable=False)
    drug_era_end_datetime = Column(DateTime, nullable=False)
    drug_exposure_count = Column(BigInteger)
    gap_days = Column(BigInteger)


    person = relationship('Person')