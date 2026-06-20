---
title: Principled alignment training that teaches reasoning behind aligned behavior generalizes better OOD than training on behavioral demonstrations
slug: principled-alignment-training-teaches-reasoning-behind
status: proposed
origin: 'Migrated from research claim (original status: weakly_supported, confidence: 0.7); proposed in: teaching-claude-why'
origin_gaps: []
tags:
- alignment-training
- safety-generalization
- constitutional-ai
- ood-generalization
domain: AI Safety
priority: 3
pilot_result: ''
failure_reason: ''
linked_experiments: []
date_proposed: 2026-05-22
date_resolved: ''
---

> **Migrated from a research claim** (`wiki/claims/principled-alignment-training-teaches-reasoning-behind.md`) on 2026-06-20. Original claim status `weakly_supported` (confidence 0.7) mapped to idea status `proposed`. The claim's structured `evidence`/`confidence`/`conditions` are preserved verbatim in the body sections and in the provenance block at the end of this file.
## Statement

Training AI models on data that includes the reasoning and values behind aligned behavior (the "why") generalizes better out-of-distribution than training on behavioral demonstrations of aligned actions alone (the "what"). Specifically, OOD datasets that teach ethical reasoning achieve comparable or better alignment eval results with orders of magnitude less data than distribution-matched synthetic demonstrations.

## Evidence summary

Strong empirical support from one Anthropic research paper: agentic misalignment (blackmail rate) reduced from 22% → 0% on held-out OOD eval using principled training; 3M token OOD dataset outperforms 85M token in-distribution dataset; constitutional document training and fictional stories about admirable AI further improve alignment despite extreme OOD. Every Claude model from Haiku 4.5 achieves 0% blackmail rate.

## Conditions and scope

- Tested on Haiku-class and Sonnet-class Claude models
- Primary domain: agentic tool-use safety (blackmail, sabotage, framing)
- The principled-data approach requires curation; it is not trivially reproducible without knowing what makes training "principled"

## Counter-evidence

None documented yet. External validation from other labs would strengthen the claim.

## Linked ideas

## Open questions

- Does this generalize to alignment failures beyond the three evaluated (blackmail, sabotage, framing)?
- What is the mechanism? Does the model develop a more robust internal representation of values, or does it learn to reason differently under uncertainty?
- Does the benefit hold as models scale further?


<!-- PROVENANCE: original claim frontmatter (preserved for recovery / re-derivation)
title: "Principled alignment training that teaches reasoning behind aligned behavior generalizes better OOD than training on behavioral demonstrations"
slug: principled-alignment-training-teaches-reasoning-behind
status: weakly_supported
confidence: 0.70
tags: [alignment-training, safety-generalization, constitutional-ai, ood-generalization]
domain: "AI Safety"
source_papers: [teaching-claude-why]
evidence:
  - source: teaching-claude-why
    type: supports
    strength: strong
    detail: "3M token 'difficult advice' dataset (teaches ethical reasoning via user-facing dilemmas) achieves same blackmail-rate reduction as 85M tokens of synthetic honeypot data (28× efficiency) and generalizes better on held-out OOD alignment assessment; constitutional document training further improves OOD generalization despite extreme distribution mismatch"
conditions: "Demonstrated for agentic misalignment (blackmail, sabotage) in Claude 4.5+ training pipeline. Generalization to other alignment failure modes (not yet tested). Requires high-quality curated training data with explicit reasoning traces."
date_proposed: 2026-05-22
date_updated: 2026-05-22
-->
