---
title: "Meso-level group personas constructed via narrative merging preserve behavioral fidelity while providing privacy guarantees"
slug: meso-level-group-personas-preserve-behavioral
status: proposed
confidence: 0.55
tags: [persona, group-simulation, privacy, behavioral-fidelity, unigraph]
domain: NLP
source_papers: [synonymix-unified-group-personas-generative-simulations]
evidence:
  - source: synonymix-unified-group-personas-generative-simulations
    type: supports
    strength: moderate
    detail: "Synonymix unigraph achieves r = 0.59 (p < 0.001) behavioral fidelity on social survey items while limiting max source contribution to 13%, enabling both sensemaking and synthetic sampling without exposing individual narratives."
conditions: "Fidelity evaluated on social survey items only; privacy guarantee assumes the 13% threshold is sufficient for the use case."
date_proposed: 2026-04-14
date_updated: 2026-04-14
---

## Statement

Merging individual life-story personas into a unified knowledge graph (unigraph) via semantic synonymity detection preserves behavioral fidelity (r ≈ 0.59 on social survey items) while providing strong privacy guarantees (no single source contributes more than 13% to any merged representation).

## Evidence summary

Synonymix (2603.28066): graph-based synonymity merging of individual personas into unigraph; fidelity measured as correlation with original persona responses on social survey items; privacy measured as maximum source contribution per node.

## Conditions and scope

- Fidelity evaluated on social survey items only
- Privacy guarantee is a structural property of the unigraph construction (not differential privacy)
- Requires rich narrative persona data as input

## Counter-evidence

- Fidelity correlation (0.59) is moderate — individual-level personas would achieve higher fidelity at the cost of privacy
- No comparison to simpler aggregation approaches (demographic clustering, topic models)

## Linked ideas

## Open questions

- Does the fidelity-privacy tradeoff hold across different survey domains?
- How does unigraph fidelity scale with the size and diversity of the source persona pool?
