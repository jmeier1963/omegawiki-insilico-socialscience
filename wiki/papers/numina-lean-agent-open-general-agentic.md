---
title: "Numina-Lean-Agent: An Open and General Agentic Reasoning System for Formal Mathematics"
slug: numina-lean-agent-open-general-agentic
arxiv: "2601.14027"
venue: "arXiv"
year: 2026
tags: [formal-math, lean, theorem-proving, agentic-reasoning, mcp, claude-code]
importance: 3
date_added: 2026-04-23
source_type: pdf
s2_id: ""
keywords: [Numina, Lean, formal mathematics, agentic, MCP, theorem proving, Putnam 2025]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

Formal mathematics reasoning (theorem proving in Lean/Coq) has been dominated by task-specific trained systems. Can a general coding agent — without domain-specific training — match or exceed these specialized systems?

## Key idea

Numina-Lean-Agent uses Claude Code (a general coding agent) directly as a formal math reasoner, interacting with Lean via the Model Context Protocol (MCP). Solved all 12 Putnam 2025 competition problems and formalized the Brascamp-Lieb theorem in collaboration with mathematicians. Performance improves simply by upgrading the underlying base model — no task-specific training needed.

## Method

- Claude Opus 4.5 as the base agent (general-purpose code reasoning)
- Numina-Lean-MCP: tool layer enabling autonomous Lean theorem prover interaction
- MCP architecture for extensible, flexible tool orchestration
- Task: Putnam 2025 competition (12 problems) + Brascamp-Lieb theorem formalization

## Results

- 12/12 Putnam 2025 problems solved (matches best closed-source systems)
- Brascamp-Lieb theorem formalized via human-mathematician collaboration
- Performance scales with base model capability without task-specific training
- MCP enables generalization to new mathematical tools without retraining

## Limitations

- Putnam competition represents well-structured problems; unclear if approach scales to frontier research-level mathematics
- Relies on Lean's proof checker as ground truth — requires formal problem encoding
- Human collaboration still needed for frontier theorem formalization

## Open questions

- Does this approach generalize beyond competition-style mathematics?
- How does it perform on novel mathematical conjectures without known proof structures?

## My take

The key contribution is architectural: showing that general coding agents + the right tools (MCP-connected Lean) can match specialized systems without task-specific training. This suggests that scale and tool integration, not domain-specific fine-tuning, may be the path to formal mathematical reasoning at the frontier.

## Related

- [[ai-mathematical-discovery]]
- [[llm-powered-agent-architecture]]
- [[semi-autonomous-mathematics-discovery-gemini-case]]
- [[ai-driven-scientific-discovery]]
