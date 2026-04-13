---
title: "Demographic conditioning in LLM prompts enables intersectional attitude replication"
slug: demographic-conditioning-enables-intersectional-attitude-replication
status: weakly_supported
confidence: 0.60
tags: [demographic-conditioning, intersectionality, persona-conditioning, llm, survey-simulation]
domain: NLP
source_papers: [out-one-many-using-language-models]
evidence:
  - source: out-one-many-using-language-models
    type: supports
    strength: moderate
    detail: "Intersectional demographic conditioning (multiple overlapping demographic attributes) outperforms single-attribute conditioning in replicating nuanced subpopulation attitudes in GPT-3."
conditions: "Requires sufficiently detailed backstory prompts; benefit of intersectional prompting over single-attribute depends on how much intersectional variation exists in the target survey domain."
date_proposed: 2026-04-12
date_updated: 2026-04-12
---

## Statement

Prompting LLMs with intersectional demographic descriptions (combining multiple identity attributes such as race, gender, age, region, and political affiliation simultaneously) produces more accurate simulations of subpopulation attitudes than conditioning on any single demographic attribute alone.

## Evidence summary

Argyle et al. (2023) show that multi-attribute demographic backstories in GPT-3 prompts capture intersectional variation in political attitudes — e.g., the combination of race × gender × region × party captures patterns not visible when conditioning on race or party alone. This aligns with sociological theories of intersectionality (Crenshaw 1989) and empirical survey research showing demographic effects are multiplicative.

## Conditions and scope

- Validated for US political surveys (ANES); may generalize to other survey contexts
- Effect size depends on the degree of intersectional variation in the survey domain
- Requires the LLM to have been trained on data that captures intersectional demographic correlates

## Counter-evidence

- Intersectional cells can be small in training data, potentially reducing reliability
- More complex prompts may introduce instruction-following noise

## Linked ideas

## Open questions

- What is the minimum number of demographic attributes needed for adequate fidelity?
- Does intersectional conditioning exhibit diminishing returns beyond a certain prompt complexity?
- Can intersectional conditioning be used to study attitude formation at rare demographic intersections?
