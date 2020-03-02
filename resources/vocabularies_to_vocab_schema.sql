create schema vocab;

alter table public.concept SET SCHEMA vocab;
alter table public.concept_class SET SCHEMA vocab;
alter table public.domain SET SCHEMA vocab;
alter table public.vocabulary SET SCHEMA vocab;
alter table public.concept_ancestor SET SCHEMA vocab;
alter table public.concept_relationship SET SCHEMA vocab;
alter table public.relationship SET SCHEMA vocab;
alter table public.drug_strength SET SCHEMA vocab;
alter table public.source_to_concept_map SET SCHEMA vocab;
alter table public.concept_synonym SET SCHEMA vocab;