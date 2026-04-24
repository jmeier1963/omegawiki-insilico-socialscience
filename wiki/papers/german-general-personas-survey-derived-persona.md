---
title: "German General Personas: A Survey-Derived Persona Prompt Collection for Population-Aligned LLM Studies"
slug: german-general-personas-survey-derived-persona
arxiv: "2511.21722"
venue: "arXiv preprint"
year: 2025
tags: [persona-conditioning, silicon-sampling, survey-derived-personas, population-alignment, demographic-conditioning]
importance: 2
date_added: 2026-04-14
source_type: pdf
s2_id: ""
keywords: [survey-derived persona prompting, population-aligned LLM simulation, socio-demographic attribute modeling, representativeness, ALLBUS]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Generic demographic attribute lists used for persona conditioning may not align LLMs with actual population distributions. This paper introduces a large-scale empirically grounded persona prompt collection (GGP) derived from the German General Social Survey (ALLBUS) that directly encodes real population distributions.

## Key idea

Derive 5,246 persona prompts directly from ALLBUS microdata using a TOP-k attribute selection strategy based on variable importance. By anchoring personas in actual survey data (not researcher-crafted demographics), LLM responses can better approximate real population-level opinion distributions.

## Method

1. Source socio-demographic attributes from ALLBUS (German General Social Survey)
2. Use variable importance scoring to select most predictive attributes (TOP-k selection)
3. Generate 5,246 persona prompts representing the actual ALLBUS population distribution
4. Evaluate LLM alignment with real population survey responses vs. baseline approaches and state-of-the-art classifiers

## Results

- GGP persona prompts outperform state-of-the-art classifiers in predicting population-level attitudes across diverse topics
- TOP-k attribute selection improves alignment particularly under data scarcity conditions
- Survey-derived personas provide better representativeness than researcher-crafted demographic attributes
- Addresses bias and underrepresentation by grounding personas in actual population distributions

## Limitations

- Specific to German-speaking population (ALLBUS); replication needed for other countries/surveys
- Personas represent population-level distributions, not individual-level accuracy
- Effectiveness depends on LLM training data coverage of German social/political discourse

## Open questions

- Does the TOP-k variable importance approach transfer to other survey instruments and countries?
- How do GGP personas compare to interview-grounded conditioning (Park et al. 2024)?
- Can this approach address the persona conditioning failure modes found by Madden and 2602.18462?

## My take

A useful methodological contribution: grounding persona prompts in actual survey microdata is a sensible design principle. The outperformance over classifiers is noteworthy. But the paper doesn't address whether survey-derived personas solve the fundamental problems (overregularization, introspective hallucination) identified by the methodological critique papers.

## Related

- supports: [[survey-derived-personas-improve-population-alignment]]
- [[persona-conditioning]]
- [[algorithmic-fidelity]]
- [[silicon-sampling]]
