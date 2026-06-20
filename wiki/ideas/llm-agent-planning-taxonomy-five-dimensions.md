---
title: 'LLM agent planning methods can be organized into five categories: task decomposition, plan selection, external module, reflection, and memory'
slug: llm-agent-planning-taxonomy-five-dimensions
status: proposed
origin: 'Migrated from research claim (original status: weakly_supported, confidence: 0.65); proposed in: understanding-planning-llm-agents-survey'
origin_gaps: []
tags:
- llm-agents
- planning
- taxonomy
- survey
- agent-design
domain: NLP
priority: 3
pilot_result: ''
failure_reason: ''
linked_experiments: []
date_proposed: 2026-05-05
date_resolved: ''
---

> **Migrated from a research claim** (`wiki/claims/llm-agent-planning-taxonomy-five-dimensions.md`) on 2026-06-20. Original claim status `weakly_supported` (confidence 0.65) mapped to idea status `proposed`. The claim's structured `evidence`/`confidence`/`conditions` are preserved verbatim in the body sections and in the provenance block at the end of this file.
## Statement

The planning mechanisms of LLM-based agents can be comprehensively categorized along five dimensions — task decomposition, plan selection, external module integration, reflective self-correction, and memory augmentation — covering the main strategies researchers use to improve agents' multi-step planning ability.

## Evidence summary

Huang et al. (2024) systematically survey ~40 papers, showing all reviewed approaches fit within the 5-category taxonomy. Reflection and memory categories capture the main failure-correction strategies; task decomposition captures the structural approaches.

## Conditions and scope

Survey-based claim; coverage limited to text-based agents. Does not include embodied agents or multi-agent coordination mechanisms as a separate category.

## Counter-evidence

Alternative taxonomies (e.g., CoALA's memory/action/decision framing) cover overlapping ground with different granularity; the "best" taxonomy is context-dependent.

## Linked ideas

## Open questions

- Can the five dimensions be operationalized into orthogonal benchmarks?
- Is there a sixth dimension for tool discovery/creation?


<!-- PROVENANCE: original claim frontmatter (preserved for recovery / re-derivation)
title: "LLM agent planning methods can be organized into five categories: task decomposition, plan selection, external module, reflection, and memory"
slug: llm-agent-planning-taxonomy-five-dimensions
status: weakly_supported
confidence: 0.65
tags: [llm-agents, planning, taxonomy, survey, agent-design]
domain: NLP
source_papers: [understanding-planning-llm-agents-survey]
evidence:
  - source: understanding-planning-llm-agents-survey
    type: supports
    strength: moderate
    detail: "Systematic survey of 40+ papers organized into 5-category taxonomy; 415 citations suggests adoption as a reference framework"
conditions: "Based on survey of 2022-2024 literature; new paradigms (tool discovery, multi-agent) may require extension"
date_proposed: 2026-05-05
date_updated: 2026-05-05
-->
