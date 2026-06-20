---
title: General coding agents with formal tool integration match specialized theorem provers on competition mathematics
slug: general-coding-agents-formal-tool-integration
status: proposed
origin: 'Migrated from research claim (original status: weakly_supported, confidence: 0.6); proposed in: numina-lean-agent-open-general-agentic'
origin_gaps: []
tags:
- formal-math
- theorem-proving
- coding-agent
- lean
- competition-math
domain: NLP
priority: 3
pilot_result: ''
failure_reason: ''
linked_experiments: []
date_proposed: 2026-04-23
date_resolved: ''
---

> **Migrated from a research claim** (`wiki/claims/general-coding-agents-formal-tool-integration.md`) on 2026-06-20. Original claim status `weakly_supported` (confidence 0.6) mapped to idea status `proposed`. The claim's structured `evidence`/`confidence`/`conditions` are preserved verbatim in the body sections and in the provenance block at the end of this file.
## Statement

General-purpose coding agents, when equipped with appropriate formal tool integration (MCP-connected Lean), can match or exceed best-in-class specialized formal mathematics systems on competition-level theorem proving, without domain-specific training.

## Evidence summary

Numina-Lean-Agent (2026): 12/12 Putnam 2025 problems solved using Claude Opus 4.5 as base agent + Lean theorem prover via MCP. Performance scales with base model capability without additional fine-tuning.

## Conditions and scope

- Competition mathematics (Putnam-level structured problems)
- Requires Lean-formalized problem encoding
- Unknown whether approach scales to frontier research-level open problems

## Counter-evidence

- Putnam problems represent structured, well-defined problems; frontier mathematical research may require capabilities that current general agents lack

## Linked ideas

## Open questions

- Does this approach generalize to problems requiring novel mathematical concepts not in training data?


<!-- PROVENANCE: original claim frontmatter (preserved for recovery / re-derivation)
title: "General coding agents with formal tool integration match specialized theorem provers on competition mathematics"
slug: general-coding-agents-formal-tool-integration
status: weakly_supported
confidence: 0.6
tags: [formal-math, theorem-proving, coding-agent, lean, competition-math]
domain: "NLP"
source_papers: [numina-lean-agent-open-general-agentic]
evidence:
  - source: numina-lean-agent-open-general-agentic
    type: supports
    strength: moderate
    detail: "Numina-Lean-Agent using Claude Opus 4.5 + Lean MCP solves all 12 Putnam 2025 problems, matching best closed-source specialized systems without task-specific training"
conditions: "Holds for well-structured competition mathematics where problems can be encoded in Lean; unclear for frontier research-level math requiring novel concepts"
date_proposed: 2026-04-23
date_updated: 2026-04-23
-->
