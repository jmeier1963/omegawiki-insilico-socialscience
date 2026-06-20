---
title: LLMs can generate structurally realistic social networks (density, clustering, community) but systematically overestimate political homophily
slug: llm-social-network-generation-structurally-realistic
status: proposed
origin: 'Migrated from research claim (original status: weakly_supported, confidence: 0.65); proposed in: llms-generate-structurally-realistic-social-networks'
origin_gaps: []
tags:
- social-network
- llm
- homophily
- network-generation
- bias
- political-polarization
domain: NLP
priority: 3
pilot_result: ''
failure_reason: ''
linked_experiments: []
date_proposed: 2026-05-05
date_resolved: ''
---

> **Migrated from a research claim** (`wiki/claims/llm-social-network-generation-structurally-realistic.md`) on 2026-06-20. Original claim status `weakly_supported` (confidence 0.65) mapped to idea status `proposed`. The claim's structured `evidence`/`confidence`/`conditions` are preserved verbatim in the body sections and in the provenance block at the end of this file.
## Statement

LLMs prompted to generate social networks produce networks that match real social networks on structural properties (density, clustering coefficient, community structure, degree distribution), but systematically overestimate political homophily while underweighting other demographic homophily types, reflecting political content dominance in LLM training data.

## Evidence summary

Chang et al. (2024) compare LLM-generated networks to real social networks on multiple structural and demographic metrics; local generation (one persona at a time) produces more realistic structures. Key bias: political clustering is substantially higher than in real networks.

## Conditions and scope

US-centric; English-language personas. "Realism" measured against available US social network datasets. Political homophily bias may be amplified in politically charged training periods.

## Counter-evidence

No replication on non-US networks or non-English settings. Only tested with a limited number of LLMs.

## Linked ideas

## Open questions

- Can politically balanced prompting reduce homophily overestimation?
- Do LLM-generated biased networks produce biased downstream simulation results?


<!-- PROVENANCE: original claim frontmatter (preserved for recovery / re-derivation)
title: "LLMs can generate structurally realistic social networks (density, clustering, community) but systematically overestimate political homophily"
slug: llm-social-network-generation-structurally-realistic
status: weakly_supported
confidence: 0.65
tags: [social-network, llm, homophily, network-generation, bias, political-polarization]
domain: NLP
source_papers: [llms-generate-structurally-realistic-social-networks]
evidence:
  - source: llms-generate-structurally-realistic-social-networks
    type: supports
    strength: moderate
    detail: "Local LLM prompting generates networks matching real networks on density, clustering, community structure, degree; but LLMs overestimate political homophily and underweight other homophily types"
conditions: "Evaluated with US-style personas; findings may vary across LLMs and cultural contexts; political homophily overestimation tied to politicized LLM training data"
date_proposed: 2026-05-05
date_updated: 2026-05-05
-->
