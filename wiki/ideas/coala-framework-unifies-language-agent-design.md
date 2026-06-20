---
title: The CoALA cognitive architecture framework (modular memory, action space, decision loop) provides a comprehensive taxonomy for LLM language agents
slug: coala-framework-unifies-language-agent-design
status: proposed
origin: 'Migrated from research claim (original status: weakly_supported, confidence: 0.7); proposed in: cognitive-architectures-language-agents'
origin_gaps: []
tags:
- llm-agents
- cognitive-architecture
- agent-design
- taxonomy
- framework
domain: NLP
priority: 3
pilot_result: ''
failure_reason: ''
linked_experiments: []
date_proposed: 2026-05-05
date_resolved: ''
---

> **Migrated from a research claim** (`wiki/claims/coala-framework-unifies-language-agent-design.md`) on 2026-06-20. Original claim status `weakly_supported` (confidence 0.7) mapped to idea status `proposed`. The claim's structured `evidence`/`confidence`/`conditions` are preserved verbatim in the body sections and in the provenance block at the end of this file.
## Statement

The CoALA framework, which characterizes language agents by modular memory components (in-context, external, in-weights, in-cache), a structured action space (memory, environment, and learning actions), and a generalized decision-making loop, can systematically organize the design space of existing LLM agents and identify tractable directions for future work.

## Evidence summary

Sumers et al. (2023/2024) demonstrate via retrospective survey of 50+ agent papers that CoALA categorizes all reviewed systems, and prospectively identify 6 research directions. The paper's 344 citations in the agent literature suggests the taxonomy has been adopted as a reference framework.

## Conditions and scope

Strongest for single-agent, text-based language agents. Extension to multi-agent settings and multimodal environments requires additional dimensions not covered by the current framework.

## Counter-evidence

No systematic comparison showing CoALA is superior to alternative taxonomies (e.g., tool-use vs. reasoning vs. memory axes). The framework is largely qualitative.

## Linked ideas

## Open questions

- Can CoALA axes be operationalized into measurable capability benchmarks?
- Does the memory taxonomy translate directly to engineering trade-offs?


<!-- PROVENANCE: original claim frontmatter (preserved for recovery / re-derivation)
title: "The CoALA cognitive architecture framework (modular memory, action space, decision loop) provides a comprehensive taxonomy for LLM language agents"
slug: coala-framework-unifies-language-agent-design
status: weakly_supported
confidence: 0.7
tags: [llm-agents, cognitive-architecture, agent-design, taxonomy, framework]
domain: NLP
source_papers: [cognitive-architectures-language-agents]
evidence:
  - source: cognitive-architectures-language-agents
    type: supports
    strength: moderate
    detail: "Retrospective survey shows CoALA successfully organizes 50+ existing agent papers; prospectively identifies 6 research directions; 344 citations suggests community adoption"
conditions: "Applies to text-based language agents; may require extension for multimodal or embodied settings; framework is descriptive, not prescriptive"
date_proposed: 2026-05-05
date_updated: 2026-05-05
-->
