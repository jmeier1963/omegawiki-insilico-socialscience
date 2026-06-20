---
title: Frontier agentic LLMs fail at research tasks that are easy for human researchers
slug: frontier-ai-agents-fail-research-tasks
status: proposed
origin: 'Migrated from research claim (original status: weakly_supported, confidence: 0.6); proposed in: act-real-researcher-benchmark-llm-research'
origin_gaps: []
tags:
- ai-research-automation
- agent-evaluation
- research-agents
- llm-agents
domain: ML Systems
priority: 3
pilot_result: ''
failure_reason: ''
linked_experiments: []
date_proposed: 2026-06-20
date_resolved: ''
---

> **Migrated from a research claim** (`wiki/claims/frontier-ai-agents-fail-research-tasks.md`) on 2026-06-20. Original claim status `weakly_supported` (confidence 0.6) mapped to idea status `proposed`. The claim's structured `evidence`/`confidence`/`conditions` are preserved verbatim in the body sections and in the provenance block at the end of this file.
## Statement

Despite strong execution capabilities, frontier agentic LLM systems still fail on research tasks that human researchers find easy, because they lack field sensitivity, research ethics, and nuanced scientific judgment. The gap is one of *research behavior*, not raw scaffolding sophistication.

## Evidence summary

AARRI-Bench shows the best-performing configuration achieving only 68.3% success, with characteristic failures on subtle-but-critical details. Authors argue closing the gap requires modelling research behavior rather than adding scaffolding complexity.

## Conditions and scope

Research-lifecycle tasks emphasizing researcher qualities; current-generation (2026) frontier models and agentic harnesses.

## Counter-evidence

Execution-oriented benchmarks (research code, experiment reproduction) report much higher agent performance — the disagreement is largely about *what is measured* (outcomes vs. behavior).

## Linked ideas

## Open questions

Can researcher-like judgment be trained directly? Do these failure modes persist as base models scale?


<!-- PROVENANCE: original claim frontmatter (preserved for recovery / re-derivation)
title: "Frontier agentic LLMs fail at research tasks that are easy for human researchers"
slug: frontier-ai-agents-fail-research-tasks
status: weakly_supported
confidence: 0.6
tags: [ai-research-automation, agent-evaluation, research-agents, llm-agents]
domain: ML Systems
source_papers: [act-real-researcher-benchmark-llm-research]
evidence:
  - source: act-real-researcher-benchmark-llm-research
    type: supports
    strength: moderate
    detail: "On AARRI-Bench, the best agent configuration (Mini-SWE-Agent + Claude Opus 4.7) reaches only 68.3% success, frequently missing subtle, critical details obvious to human researchers."
conditions: "Holds for current frontier models/harnesses on research-intern-level tasks designed around researcher qualities (integrity, verification, uncertainty awareness). Single-benchmark evidence; numbers will move as models improve."
date_proposed: 2026-06-20
date_updated: 2026-06-20
-->
