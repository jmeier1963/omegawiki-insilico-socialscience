---
title: Default LLM brainstorming produces less diverse ideas than human groups, but Chain-of-Thought prompting substantially closes the diversity gap
slug: llm-default-brainstorming-less-diverse-cot-closes-gap
status: proposed
origin: 'Migrated from research claim (original status: weakly_supported, confidence: 0.65); proposed in: prompting-diverse-ideas-increasing-ai-idea'
origin_gaps: []
tags:
- creativity
- idea-generation
- llm
- diversity
- chain-of-thought
- prompt-engineering
- brainstorming
domain: NLP
priority: 3
pilot_result: ''
failure_reason: ''
linked_experiments: []
date_proposed: 2026-05-06
date_resolved: ''
---

> **Migrated from a research claim** (`wiki/claims/llm-default-brainstorming-less-diverse-cot-closes-gap.md`) on 2026-06-20. Original claim status `weakly_supported` (confidence 0.65) mapped to idea status `proposed`. The claim's structured `evidence`/`confidence`/`conditions` are preserved verbatim in the body sections and in the provenance block at the end of this file.
## Statement

GPT-4 with default prompting generates idea pools that are significantly less semantically diverse than groups of human brainstormers (measured by cosine similarity of idea embeddings). Chain-of-Thought prompting — which decomposes the brainstorming task into a sequence of micro-tasks — achieves near-human diversity levels and generates the most unique ideas of any tested prompt.

## Evidence summary

Meincke, Mollick & Terwiesch (2024) compared 35 prompting strategies on GPT-4 for product idea diversity. Baseline GPT-4 ideas were less diverse than human MBA groups. Among 35 prompts tested, CoT prompting achieved the closest diversity to human groups (cosine similarity ~0.255 vs. human ~0.243). Unique ideas increased from ~3,700 (base) to ~4,700 (CoT).

## Conditions and scope

Single domain; student product ideas under $50; MBA student comparison group; GPT-4 snapshot; SSRN working paper (not peer-reviewed). Generalizability across domains, models, and human comparison groups remains untested.

## Counter-evidence

- AI creativity paper (Koivisto & Grassini 2023) found average AI outputs match or exceed human quality — suggests a quality vs. diversity tension
- Human brainstorming groups have their own diversity limitations (groupthink, anchoring effects)

## Linked ideas

## Open questions

- Does the diversity advantage of CoT hold for other LLM models (Claude, Gemini)?
- Is there a diversity-quality trade-off at the individual idea level?


<!-- PROVENANCE: original claim frontmatter (preserved for recovery / re-derivation)
title: "Default LLM brainstorming produces less diverse ideas than human groups, but Chain-of-Thought prompting substantially closes the diversity gap"
slug: llm-default-brainstorming-less-diverse-cot-closes-gap
status: weakly_supported
confidence: 0.65
tags: [creativity, idea-generation, llm, diversity, chain-of-thought, prompt-engineering, brainstorming]
domain: NLP
source_papers: [prompting-diverse-ideas-increasing-ai-idea]
evidence:
  - source: prompting-diverse-ideas-increasing-ai-idea
    type: supports
    strength: moderate
    detail: "GPT-4 default cosine similarity 0.255–0.432 vs. 0.243 for human groups; CoT prompting achieves near-human diversity and increases unique ideas from ~3,700 to ~4,700"
conditions: "Single domain (college student product ideas ≤$50); Wharton MBA comparison group; GPT-4 only; cosine similarity as diversity proxy"
date_proposed: 2026-05-06
date_updated: 2026-05-06
-->
