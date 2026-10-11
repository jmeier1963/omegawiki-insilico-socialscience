---
name: "Scenario Auto-Construction Subsystem"
slug: scenario-auto-construction-subsystem
type: system
tags: [llm-agents, social-simulation, code-generation, agent-based-modeling, natural-language-to-code]
source_papers: [[yulan-onesim-towards-next-generation-social]]
parent_methods: []
child_methods: [ai-social-researcher]
realizes_concepts: [[generative-agent-based-modeling]]
code_repo: "https://github.com/RUC-GSAI/YuLan-OneSim"
date_updated: "2026-10-11"
---

## Problem setting

Social-science researchers who want to build an LLM-agent simulation of a specific scenario typically must hand-write the agent-interaction code themselves, which demands programming expertise most social scientists lack and is labor-intensive even for those who have it. The goal is to let a user describe a scenario in natural language and receive working, validated simulation code and data, with no manual coding required for typical cases.

## Mechanism

Insert a structured intermediate representation — a **behavior graph** $\mathcal{G} = \{\mathcal{N}, \mathcal{E}\}$, where nodes are agent-type-level actions and edges are the triggering events connecting one action to the next — between the natural-language scenario description and the generated code, rather than having an LLM generate code directly from a prose description. The graph is built from a prior natural-language-to-ODD-protocol formalization step and is itself validated (structurally and semantically) before any code is generated from it, and code generation proceeds node-by-node via breadth-first graph traversal rather than as one monolithic generation call.

## Procedure

1. **Scenario formalization**: an ODD (Overview, Design Concepts, Details)-translation agent interacts conversationally with the user, asking clarifying questions until the scenario is fully specified as a structured ODD protocol.
2. **Behavior graph construction**: an LLM extracts agent types and their actions (nodes) and the events that trigger subsequent actions (edges) from the ODD protocol; a Start node and End node bound the graph. Two validation passes — structural (every node lies on a Start→End path) and semantic (alignment with the ODD description) — trigger regeneration with recorded issues/suggestions until both pass.
3. **Data-structure enrichment**: event variables (types, defaults, metadata) and action input/output variable specifications are generated and validated, so the graph carries the data schema the code will need.
4. **Code generation**: breadth-first traversal of the validated graph generates, node by node, a handler function from a generic template (using shared base classes for agent/environment so the LLM only writes action-specific logic), plus auto-assembled event classes and auto-generated monitoring-metric code; a full-code validation/repair pass iterates until the generated code is free of detected errors.
5. **Scenario specification**: environment data, agent-profile data (LLM-generated or randomly sampled per an LLM-generated schema), and an agent relationship network (LLM-generated schema, then randomly instantiated and validated so no agent is isolated and the behavior graph's event flow remains executable) are generated last, decoupled from the code itself.

## Assumptions

- The target scenario's causal structure can be decomposed into discrete, agent-type-level actions connected by a finite set of triggering events — scenarios with highly continuous or non-event-like dynamics may not fit the graph abstraction cleanly.
- A capable code-generation LLM (GPT-4o in the reported experiments) is available; quality is reported specifically for that model and may not transfer to weaker backbones.
- Human review remains available as a fallback: every one of the four construction steps is explicitly designed to be human-editable to correct LLM errors.

## Limitations

- Ablations show each component is load-bearing: removing the behavior graph (direct LLM coding) drops average code-quality score from 4.00 to 2.88/5; removing graph validation drops it to 3.00; removing code refinement drops it to 3.38 — so the full pipeline, not any single step, is responsible for the reported 4.20/5 average code rating.
- Most residual errors after the pipeline completes are logical (value-access errors, instruction-action mismatches, type mismatches) rather than syntactic, and the paper reports these as "typically straightforward to correct" but does not quantify the remaining manual-correction burden.
- Demonstrated across 8 pre-defined domains' default scenarios; generalization to open-ended, user-specified scenarios far outside those domains is not separately evaluated.

## Tradeoff profile

Trades generation speed and upfront programming-expertise requirements for a multi-step, validation-heavy pipeline (versus single-shot LLM code generation): slower and more complex to implement than asking an LLM to just write the code, but empirically much higher resulting code quality (4.20 vs. 2.88/5 without the graph step) and, per the paper, roughly 14x faster than human hand-coding (~50 tokens/second generation vs. ~3.5 tokens/second typing speed) once the pipeline itself is built.

## Evaluated by

Behavior-Graph rating (1-5, criteria in the source paper's Table 2) and Code rating (1-5, Table 3), both scored by GPT-4o across all 8 default domains, plus an ablation comparing the full pipeline against three stripped-down variants (no graph, no graph validation, no code refinement). See [[yulan-onesim-towards-next-generation-social]] for full results.
