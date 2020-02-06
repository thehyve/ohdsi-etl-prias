
INSERT INTO procedure_occurrence
(
	procedure_occurrence_id,
	person_id,
	procedure_concept_id,
	procedure_date,
	procedure_datetime,
	procedure_type_concept_id,
	modifier_concept_id,
	quantity,
	provider_id,
	visit_occurrence_id,
	visit_detail_id,
	procedure_source_value,
	procedure_source_concept_id,
	modifier_source_value
)
SELECT
	stem_table.id	AS	procedure_occurrence_id,

	stem_table.person_id	AS	person_id,

	coalesce(stem_table.concept_id, 0)	AS	procedure_concept_id,

	stem_table.start_date	AS	procedure_date,

	stem_table.start_datetime	AS	procedure_datetime,

	stem_table.type_concept_id	AS	procedure_type_concept_id,

	coalesce(stem_table.modifier_concept_id, 0)	AS	modifier_concept_id,

	stem_table.quantity	AS	quantity,

	stem_table.provider_id	AS	provider_id,

	stem_table.visit_occurrence_id	AS	visit_occurrence_id,

	stem_table.visit_detail_id	AS	visit_detail_id,

	581412	AS	procedure_source_value, /* Procedure Recorded from a Survey*/

	coalesce(stem_table.source_concept_id, 0)	AS	procedure_source_concept_id,

	stem_table.modifier_source_value	AS	modifier_source_value

FROM public.stem_table
    LEFT JOIN public.concept USING (concept_id)
WHERE concept.domain_id = 'Procedure'
;