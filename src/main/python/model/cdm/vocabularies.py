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
from sqlalchemy import Column, Date, ForeignKey, Integer, Numeric, String
from sqlalchemy.orm import relationship

from src.main.python.database.database import base

metadata = base.metadata


class Concept(base):
    __tablename__ = 'concept'
    __table_args__ = {'schema': 'vocab'}

    concept_id = Column(Integer, primary_key=True, unique=True)
    concept_name = Column(String(255), nullable=False)
    domain_id = Column(String(20), nullable=False, index=True)
    vocabulary_id = Column(String(20), nullable=False, index=True)
    concept_class_id = Column(String(20), nullable=False, index=True)
    standard_concept = Column(String(1))
    concept_code = Column(String(50), nullable=False, index=True)
    valid_start_date = Column(Date, nullable=False)
    valid_end_date = Column(Date, nullable=False)
    invalid_reason = Column(String(1))






class ConceptAncestor(base):
    __tablename__ = 'concept_ancestor'
    __table_args__ = {'schema': 'vocab'}

    ancestor_concept_id = Column(Integer, primary_key=True, nullable=False, index=True)
    descendant_concept_id = Column(Integer, primary_key=True, nullable=False, index=True)
    min_levels_of_separation = Column(Integer, nullable=False)
    max_levels_of_separation = Column(Integer, nullable=False)





class ConceptClass(base):
    __tablename__ = 'concept_class'
    __table_args__ = {'schema': 'vocab'}

    concept_class_id = Column(String(20), primary_key=True, unique=True)
    concept_class_name = Column(String(255), nullable=False)
    concept_class_concept_id = Column(Integer, nullable=False)




class ConceptRelationship(base):
    __tablename__ = 'concept_relationship'
    __table_args__ = {'schema': 'vocab'}

    concept_id_1 = Column(Integer, primary_key=True, nullable=False, index=True)
    concept_id_2 = Column(Integer, primary_key=True, nullable=False, index=True)
    relationship_id = Column(String(20), primary_key=True, nullable=False, index=True)
    valid_start_date = Column(Date, nullable=False)
    valid_end_date = Column(Date, nullable=False)
    invalid_reason = Column(String(1))






class ConceptSynonym(base):
    __tablename__ = 'concept_synonym'
    __table_args__ = {'schema': 'vocab'}

    concept_id = Column(Integer, primary_key=True, nullable=False, index=True)
    concept_synonym_name = Column(String(1000), primary_key=True)
    language_concept_id = Column(Integer, nullable=False)





class Domain(base):
    __tablename__ = 'domain'
    __table_args__ = {'schema': 'vocab'}

    domain_id = Column(String(20), primary_key=True, unique=True)
    domain_name = Column(String(255), nullable=False)
    domain_concept_id = Column(Integer, nullable=False)




class DrugStrength(base):
    __tablename__ = 'drug_strength'
    __table_args__ = {'schema': 'vocab'}

    drug_concept_id = Column(Integer, primary_key=True, nullable=False, index=True)
    ingredient_concept_id = Column(Integer, primary_key=True, nullable=False, index=True)
    amount_value = Column(Numeric)
    amount_unit_concept_id = Column(Integer)
    numerator_value = Column(Numeric)
    numerator_unit_concept_id = Column(Integer)
    denominator_value = Column(Numeric)
    denominator_unit_concept_id = Column(Integer)
    box_size = Column(Integer)
    valid_start_date = Column(Date, nullable=False)
    valid_end_date = Column(Date, nullable=False)
    invalid_reason = Column(String(1))








class Relationship(base):
    __tablename__ = 'relationship'
    __table_args__ = {'schema': 'vocab'}

    relationship_id = Column(String(20), primary_key=True, unique=True)
    relationship_name = Column(String(255), nullable=False)
    is_hierarchical = Column(String(1), nullable=False)
    defines_ancestry = Column(String(1), nullable=False)
    reverse_relationship_id = Column(Integer, nullable=False)
    relationship_concept_id = Column(Integer, nullable=False)





class SourceToConceptMap(base):
    __tablename__ = 'source_to_concept_map'
    __table_args__ = {'schema': 'vocab'}

    source_code = Column(String(50), primary_key=True, nullable=False, index=True)
    source_concept_id = Column(Integer, nullable=False)
    source_vocabulary_id = Column(String(20), primary_key=True, nullable=False, index=True)
    source_code_description = Column(String(255))
    target_concept_id = Column(Integer, primary_key=True, nullable=False, index=True)
    target_vocabulary_id = Column(String(20), nullable=False, index=True)
    valid_start_date = Column(Date, nullable=False)
    valid_end_date = Column(Date, primary_key=True, nullable=False)
    invalid_reason = Column(String(1))






class Vocabulary(base):
    __tablename__ = 'vocabulary'
    __table_args__ = {'schema': 'vocab'}

    vocabulary_id = Column(String(20), primary_key=True, unique=True)
    vocabulary_name = Column(String(255), nullable=False)
    vocabulary_reference = Column(String(255), nullable=False)
    vocabulary_version = Column(String(255))
    vocabulary_concept_id = Column(Integer, nullable=False)



