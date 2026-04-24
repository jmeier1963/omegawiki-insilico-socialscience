---
title: "Assessing the Reliability of Persona-Conditioned LLMs as Synthetic Survey Respondents"
slug: assessing-reliability-persona-conditioned-llms-synthetic
arxiv: "2602.18462"
venue: "arXiv preprint"
year: 2026
tags: [persona-conditioning, silicon-sampling, survey-alignment, demographic-bias, subgroup-fidelity, llm-evaluation]
importance: 2
date_added: 2026-04-14
source_type: pdf
s2_id: ""
keywords: [persona prompting, subgroup fidelity, survey alignment, LLM miscalibration, demographic bias]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Multi-attribute persona prompting is widely used to improve the alignment between LLM survey responses and real human data. But does it actually work? This paper conducts a large-scale empirical evaluation using World Values Survey data to test whether persona conditioning improves LLM survey alignment.

## Key idea

Counter to common assumptions, persona conditioning does **not** reliably improve overall survey alignment. It often degrades performance, particularly for underrepresented subgroups and specific survey items. The errors from persona conditioning are not random — they redistribute disproportionately, undermining subgroup fidelity and risking misleading downstream social science inferences.

## Method

- Dataset: U.S. microdata from World Values Survey (large-scale, nationally representative)
- Condition: Multi-attribute persona prompting vs. unprompted LLM responses
- Evaluation: survey alignment (aggregate accuracy), subgroup fidelity (performance per demographic cell), heterogeneous effects across demographic attributes and question types
- Metrics include accuracy, F1, and distributional alignment measures

## Results

- Persona conditioning does not improve overall survey alignment; often degrades it
- Degradation is strongest for underrepresented subgroups (rare demographic intersections)
- Effects are heterogeneous across demographic attributes and question types — no universally effective persona configuration
- Disproportionate error redistribution: conditioning introduces systematic biases that are not evident in aggregate accuracy metrics

## Limitations

- Limited to World Values Survey items and U.S. microdata; generalizability to other surveys/countries unclear
- Does not test interview-based or richer conditioning formats (vs. multi-attribute attribute lists)
- Uses existing LLMs without fine-tuning; fine-tuned models (like Polypersona) may show different results

## Open questions

- Does the failure generalize to richer persona conditioning approaches (interview-based, narrative)?
- What is the minimum persona complexity needed for any improvement in subgroup fidelity?
- Can subgroup-aware prompt optimization recover the fidelity benefits for underrepresented groups?

## My take

Important counter-evidence to the persona conditioning narrative. The finding that conditioning redistributes errors disproportionately toward underrepresented subgroups is particularly worrying — aggregate metrics would mask this failure. This paper substantially weakens the claim that persona conditioning improves silicon sampling fidelity.

## Related

- supports: [[persona-conditioning-degrades-subgroup-fidelity-llm]]
- [[persona-conditioning]]
- [[algorithmic-fidelity]]
- [[silicon-sampling]]
