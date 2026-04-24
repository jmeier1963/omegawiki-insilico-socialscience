---
title: "Synonymix: Unified Group Personas for Generative Simulations"
slug: synonymix-unified-group-personas-generative-simulations
arxiv: "2603.28066"
venue: "arXiv preprint"
year: 2026
tags: [persona, group-simulation, privacy-preserving, meso-level-simulation, knowledge-graph]
importance: 2
date_added: 2026-04-14
source_type: pdf
s2_id: ""
keywords: [meso-level simulation, unigraph, graph-based merging, narrative psychology, privacy-preserving abstraction]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Individual personas (used in silicon sampling) raise privacy concerns — reidentification from detailed life stories. Population-level aggregate personas lose behavioral fidelity. Is there a middle ground? Synonymix proposes meso-level group personas constructed by merging individual narratives through a knowledge graph.

## Key idea

Build a **unigraph** — a semantically unified knowledge graph merging individual life story personas via graph-based synonymity detection. This collective abstraction preserves behavioral fidelity while providing privacy guarantees (max 13% source contribution per node). Enables both interactive sensemaking and synthetic persona sampling.

## Method

1. Collect individual life story personas
2. Detect semantic equivalences across personas using graph-based synonymity (NLP-driven node merging)
3. Construct a unified knowledge graph (unigraph) representing collective narrative structure
4. Evaluate behavioral fidelity: simulate from unigraph and compare to original personas on social survey items
5. Measure privacy guarantees: max source contribution per merged node ≤ 13%

## Results

- Behavioral fidelity preserved: p < 0.001, r = 0.59 on social survey items
- Privacy guaranteed: no single source contributes more than 13% to any merged node
- Enables interactive sensemaking across merged narratives
- Reframes simulation not as individual synthesis but as collective narrative abstraction

## Limitations

- Fidelity evaluation limited to social survey items; other behavioral domains untested
- Privacy guarantee (13%) may be insufficient for sensitive populations (healthcare, political dissidents)
- Unigraph construction requires rich narrative persona data, which may not always be available

## Open questions

- How does unigraph fidelity compare to individual persona fidelity for rare demographic groups?
- Can the synonymity detection scale to millions of personas?
- Does collective narrative abstraction preserve within-group diversity?

## My take

A creative privacy-preserving approach to persona simulation. The unigraph framework is technically interesting and the 0.59 correlation is reasonable. Addresses a genuine tension in silicon sampling: individual personas are more realistic but raise privacy concerns. The meso-level abstraction is a sensible design choice.

## Related

- supports: [[meso-level-group-personas-preserve-fidelity-privacy]]
- [[meso-level-group-persona-synthesis]]
- [[persona-conditioning]]
- [[silicon-sampling]]
