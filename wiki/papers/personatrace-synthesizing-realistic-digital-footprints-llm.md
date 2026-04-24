---
title: "PersonaTrace: Synthesizing Realistic Digital Footprints with LLM Agents"
slug: personatrace-synthesizing-realistic-digital-footprints-llm
arxiv: "2603.11955"
venue: "arXiv preprint"
year: 2026
tags: [persona, digital-footprint, synthetic-data, llm-agents, event-driven-generation]
importance: 2
date_added: 2026-04-14
source_type: pdf
s2_id: ""
keywords: [persona-driven synthesis, digital footprint generation, LLM agent workflows, multi-bundle event simulation, realism in synthetic data]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Realistic synthetic digital datasets (emails, calendar entries, messages) are needed for AI system development and benchmarking but require either real user data (privacy risk) or seed datasets (not always available). Can LLM agents generate diverse, realistic digital footprints from demographic profiles alone?

## Key idea

PersonaTrace: an LLM-agent-driven framework that:
1. Generates coherent user personas from demographic profiles
2. Simulates plausible daily events for each persona (event-driven generation)
3. Produces corresponding digital artifacts: emails, calendar entries, messages (multi-bundle)

No seed dataset required. Achieves superior intrinsic diversity and realism through event-driven generation.

## Method

1. Input: demographic profile → LLM generates coherent user persona (personality, role, lifestyle)
2. Event simulation: LLM generates plausible daily/weekly events consistent with persona
3. Artifact generation: for each event, generate corresponding digital footprints (emails, calendar, messages) across multiple bundles
4. Evaluation: intrinsic diversity metrics; downstream tasks (email categorization, drafting, QA) on out-of-distribution benchmarks

## Results

- PersonaTrace outperforms existing synthetic datasets on downstream tasks (email categorization, drafting, QA) on out-of-distribution benchmarks
- Superior intrinsic diversity vs. seed-dataset-based methods
- Event-driven generation produces temporally coherent digital footprints
- No seed dataset required — purely generative

## Limitations

- Evaluation on downstream NLP tasks, not direct human realism assessment
- Event plausibility depends on LLM's world knowledge; rare or non-Western lifestyles may be poorly represented
- Privacy implications of realistic synthetic user data (could be used for phishing/social engineering training)

## Open questions

- How realistic are the digital footprints to actual users (not just consistent with personas)?
- Does event-driven generation capture temporal dependencies in real digital behavior?
- Can PersonaTrace generate footprints for professional/specialized roles (medical, legal)?

## My take

A practical contribution for NLP dataset generation. The event-driven architecture is a sensible design choice for temporal coherence. The downstream task improvement over existing datasets is a useful validation. Privacy implications of realistic fake digital footprints warrant discussion.

## Related

- [[llm-powered-agent-architecture]]
- [[persona-conditioning]]
