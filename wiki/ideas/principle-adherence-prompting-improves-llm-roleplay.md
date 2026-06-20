---
title: Expert-elicited principle-adherence prompting significantly improves LLM roleplay simulation fidelity in domain-specific applications
slug: principle-adherence-prompting-improves-llm-roleplay
status: proposed
origin: 'Migrated from research claim (original status: weakly_supported, confidence: 0.6); proposed in: roleplay-doh-enabling-domain-experts-create'
origin_gaps: []
tags:
- llm-simulation
- roleplay
- domain-expert
- principle-adherence
- mental-health
domain: NLP
priority: 3
pilot_result: ''
failure_reason: ''
linked_experiments: []
date_proposed: 2026-05-05
date_resolved: ''
---

> **Migrated from a research claim** (`wiki/claims/principle-adherence-prompting-improves-llm-roleplay.md`) on 2026-06-20. Original claim status `weakly_supported` (confidence 0.6) mapped to idea status `proposed`. The claim's structured `evidence`/`confidence`/`conditions` are preserved verbatim in the body sections and in the provenance block at the end of this file.
## Statement

When domain experts elicit qualitative feedback that is converted into natural language principles governing LLM roleplay, combined with a principle-adherence inference pipeline, the resulting LLM simulation is substantially more faithful to real domain-specific behavior than off-the-shelf GPT-4 prompting.

## Evidence summary

Louie et al. (2024) show 30% improvement in response quality and principle-following for AI patient simulations in mental health counseling; 25 counseling expert evaluators confirm higher realism with Roleplay-doh pipeline.

## Conditions and scope

Tested only in mental health counseling domain. "Fidelity" measured via expert judgment, not objective behavioral metrics. May not generalize to domains with less codifiable expert knowledge.

## Counter-evidence

No head-to-head comparison with fine-tuning on real patient data (infeasible due to privacy). No longitudinal counselor outcome study.

## Linked ideas

## Open questions

- Does principle elicitation help in technical/scientific roleplay (e.g., expert interviewee simulations)?
- Can principle adherence be maintained across long multi-turn conversations?


<!-- PROVENANCE: original claim frontmatter (preserved for recovery / re-derivation)
title: "Expert-elicited principle-adherence prompting significantly improves LLM roleplay simulation fidelity in domain-specific applications"
slug: principle-adherence-prompting-improves-llm-roleplay
status: weakly_supported
confidence: 0.6
tags: [llm-simulation, roleplay, domain-expert, principle-adherence, mental-health]
domain: NLP
source_papers: [roleplay-doh-enabling-domain-experts-create]
evidence:
  - source: roleplay-doh-enabling-domain-experts-create
    type: supports
    strength: moderate
    detail: "30% improvement in response quality and principle-following for mental health patient simulation; user study with 25 counseling experts confirms AI patients more realistically resemble real patients"
conditions: "Evaluated for mental health counseling roleplay; improvements measured via expert judgment and automatic principle-checking; single domain test"
date_proposed: 2026-05-05
date_updated: 2026-05-05
-->
