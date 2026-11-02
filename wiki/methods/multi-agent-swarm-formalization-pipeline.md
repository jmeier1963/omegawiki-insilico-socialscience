---
name: "Multi-Agent Swarm Formalization Pipeline"
slug: multi-agent-swarm-formalization-pipeline
type: system
tags: [ai-math, formal-reasoning, lean, multi-agent-systems, theorem-proving]
source_papers: [[formalizing-enormous-theorem]]
parent_methods: []
child_methods: []
realizes_concepts: [[formalization-driven-error-discovery]]
code_repo: ""
date_updated: "2026-11-02"
---

## Problem setting

Formalizing a mathematical proof that spans thousands of pages, hundreds of articles, and decades of accumulated literature — far beyond what any individual formalization effort has previously attempted — requires coordinating a very large number of interdependent proof-writing tasks so that individual pieces compose correctly into a single, fully machine-checked whole, without any single coordinator (human or otherwise) being able to track every dependency by hand.

## Mechanism

Build an explicit "proof map" from the published literature that divides the overall target (a specific, chosen historical proof route) into discrete milestones and smaller tasks, each with declared dependencies on other tasks' results. Deploy swarms of AI agents against this shared task graph via a coordination layer (issue-tracker-style task claiming, chat-based progress reporting) and a shared code repository: agents claim available tasks, formalize the corresponding mathematical argument in the target proof assistant, and commit results that become available to other agents whose tasks depend on them. Role-specialized agents handle different functions (decomposing difficult arguments, searching for existing usable results, writing proofs, integrating pieces back into the final target statement), with human mathematicians intervening specifically on identified mathematical obstructions rather than routine formalization work.

## Procedure

1. Choose a specific proof route to formalize (not merely "some" proof of the target theorem) when multiple historical approaches exist, since different routes impose different formalization dependencies and completeness profiles.
2. Build a proof map from the literature, decomposed into milestones and smaller tasks with explicit dependency structure, leveraging any pre-existing formalization work and libraries available in the target proof assistant's ecosystem.
3. Launch agent swarms against the task graph, coordinated via shared tooling (task-claiming, progress reporting, a shared repository) that lets agents discover and build on each other's completed work.
4. When a milestone proves more complex than initially scoped (concealing unproven prerequisites agents had assumed), halt and replan: decompose the milestone into smaller, precisely stated theorems with explicit justification for how they compose into the original target, before resuming formalization.
5. Address build-system scaling bottlenecks (re-verification cost growing with repository size and shared-result changes) with distributed caching of build results and parallel independent checking, and externalize expensive finite/computational sub-steps into separately-checkable certificates to avoid re-deriving them inline.
6. Dedicate specific agents to integration work: tracing the final target theorem back through its full dependency chain, finding and filling missing connections, and ensuring existing formalized results remain usable and consistent as the shared library grows.
7. When formalization of a specific step fails, triage whether the failure reflects an agent error, a misinterpretation, or an actual gap in the source material; escalate genuine source-material gaps to human mathematical judgment, including direct consultation with domain experts when available.
8. Treat the project complete only when the full dependency chain contains no unjustified assumptions — track completed milestones for planning purposes, but recognize that milestone counts can overstate true progress if a "completed" result still rests on an unproven assumption elsewhere in the graph.

## Assumptions

- A sufficiently detailed, dependency-structured proof map can be constructed from the published literature before formalization begins, even for literature spanning decades and varying notation/organization across sources.
- Agents can reliably distinguish between their own formalization mistakes and genuine gaps in the source material, at least with human-assisted triage for ambiguous cases.
- The target proof assistant's existing library ecosystem (e.g. Mathlib for Lean) provides enough foundational infrastructure that agents are not formalizing basic mathematics from first principles.
- Human mathematical expertise remains available and willing to engage on the most consequential discovered obstructions, since the pipeline does not claim to resolve all gaps autonomously.

## Limitations

- Progress planning based on milestone counts can be actively misleading, since a milestone can appear complete under an unproven auxiliary assumption, requiring careful final-stage auditing to confirm no such assumptions remain anywhere in the dependency graph.
- The most consequential discovered gaps in the reported case required direct consultation with external human domain experts, not autonomous agent resolution — the pipeline's demonstrated capability is efficient, exhaustive gap-surfacing and large-scale mechanical proof-writing, not autonomous resolution of genuinely novel mathematical obstructions.
- Build-system scaling (re-verification cost as the shared repository grows) is a real, nontrivial engineering bottleneck requiring dedicated infrastructure investment (distributed caching, certificate externalization) rather than being solved by agent coordination alone.
- Choosing a specific historical proof route to formalize (rather than developing an independent, more streamlined proof) means the resulting formalization's authority is tied to that route's completeness and correctness profile, not to the mathematical result in the abstract.

## Tradeoff profile

Trades substantial coordination-infrastructure investment (proof map construction, distributed build caching, certificate externalization, replanning overhead) for the ability to formalize proofs at a scale (tens of millions of lines, over a thousand-article literature) that would be intractable for any individual or small human team, compressing a project that might otherwise take years of dedicated specialist labor into a period of weeks — at the cost of requiring continued human expert availability for the hardest discovered obstructions.

## Evaluated by

Applied to formalize the first-generation proof of the Classification of Finite Simple Groups: 108 milestones, ~380 smaller tasks, ~43.1 million lines of Lean code produced over 24 days (October 2-25, 2026), surfacing 34 noteworthy deviations from the published record and one new group-theory result. See [[formalizing-enormous-theorem]] for full results.
