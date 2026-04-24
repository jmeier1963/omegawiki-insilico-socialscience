---
title: "Meso-Level Group Persona Synthesis"
aliases: ["unigraph persona", "collective narrative abstraction", "privacy-preserving persona merging", "group persona construction", "synonymity-based persona merging"]
tags: [persona, group-simulation, privacy-preserving, knowledge-graph, meso-level]
maturity: emerging
key_papers: [synonymix-unified-group-personas-generative-simulations]
first_introduced: "2026"
date_updated: 2026-04-14
related_concepts: [persona-conditioning, silicon-sampling]
---

## Definition

Meso-level group persona synthesis is a method for constructing collective persona representations by merging individual life-story narratives through semantic equivalence detection (synonymity-based graph merging). The result is a **unigraph** — a semantically unified knowledge graph representing the collective narrative structure of a group — which can be used for simulation while providing privacy guarantees.

## Intuition

Individual personas (used in silicon sampling) are highly realistic but raise re-identification risks. Population-level aggregate personas are privacy-safe but lose behavioral fidelity. Meso-level synthesis finds a middle ground: merge similar narrative elements across personas to create a collective representation that captures group-level behavioral patterns without exposing individual stories.

## Variants

- **Synonymix unigraph**: graph-based synonymity detection merges persona nodes when semantically equivalent; max source contribution ≤ 13%
- **Topic model-based aggregation**: cluster personas by topic; sample from cluster distributions
- **Differential privacy personas**: add noise to persona attributes to satisfy ε-DP guarantees

## When to use

- When individual persona data is available but privacy constraints prevent direct use
- When group-level behavioral patterns are more important than individual-level accuracy
- When persona data needs to be shareable across organizations or publications

## Known limitations

- Requires rich narrative persona data as input (not just demographic attributes)
- Privacy guarantee depends on graph construction parameters
- Fidelity validated only on social survey items; other behavioral domains untested

## Open problems

- Optimal granularity for synonymity threshold (coarser → more privacy, less fidelity)
- Scalability to large persona collections
- Validation beyond social survey items

## Key papers

- [[synonymix-unified-group-personas-generative-simulations]] (2603.28066) — introduces unigraph framework

## My understanding

Complements `persona-conditioning` at the group level. Where persona conditioning works with individual-level demographic profiles, meso-level synthesis works with narrative-level group structures. The privacy guarantee aspect distinguishes it from other persona approaches.
