---
title: "Advancing Mathematics Research with AI-Driven Formal Proof Search"
slug: advancing-mathematics-research-ai-driven-formal
arxiv: "2605.22763"
venue: arXiv
year: 2026
tags: [formal-proof, lean, theorem-proving, ai-mathematical-discovery, llm, agentic, erdos, combinatorics, algebraic-geometry]
importance: 4
date_added: 2026-05-29
source_type: pdf
s2_id: ""
keywords: [formal proof search, lean theorem prover, large language models, automated theorem proving, mathematical reasoning, Erdős problems, OEIS conjectures]
domain: NLP
code_url: "https://github.com/google-deepmind/alphaproof-nexus-results"
cited_by: []
---

## Problem

LLMs increasingly excel at mathematical reasoning, but hallucinations limit their utility in real mathematical research. AI needs a way to generate *verifiable* proofs. The challenge: can AI-driven formal proof search solve open *research-level* problems (not just competition math), and do so at tractable cost?

## Key idea

AlphaProof Nexus combines LLM-based proof generation with Lean's formal verifier in an agentic loop. The verifier provides immediate feedback on each tactic, enabling self-correction. A full-featured agent adds an evolutionary coordination layer plus AlphaProof (an RL-trained olympiad-level prover) as a focused sub-tool. The result: cost-effective, autonomous solving of Erdős problems and OEIS conjectures that have been open for decades.

## Method

**Basic agent (A)**: Multiple subagents independently generate Lean proof tactics, get compiler feedback, and iterate. Proof search is embarrassingly parallel across subagents.

**Full-featured agent (A+)**: Subagents coordinated by an evolutionary algorithm; can invoke AlphaProof (specialized RL system for hard olympiad steps) as a sub-tool. User provides Lean proof sketch with EVOLVE-BLOCK / EVOLVE-VALUE markers indicating modifiable regions.

**Evaluation corpora**:
- 353 Erdős problems (open combinatorics/number theory problems)
- 492 OEIS conjectures
- Selective deployment: Ben Green's problem list, convex optimization, algebraic geometry, quantum optics, graph theory

## Results

- Full-featured agent solved **9/353 Erdős problems** autonomously, including 2 questions open for 56 years, at cost of a few hundred dollars per problem.
- Proved **44/492 OEIS conjectures**.
- Resolved a 15-year-old open question on Hilbert functions in algebraic geometry.
- Improved an open convex optimization bound by discovering a novel algorithmic parameter schedule.
- The basic agent replicated all 9 Erdős successes (at higher cost on harder problems) — suggesting simpler architectures are competitive with sufficient LLM capability.

## Limitations

- Requires problems to be formalizable in Lean (structured with available library imports); not applicable to problems requiring entirely new mathematical foundations.
- Per-problem cost is non-trivial (hundreds of dollars) for hardest problems.
- Results concentrated in combinatorics, optimization, number theory — fields with good Lean library coverage.
- Human oversight still needed for problem formalization and assessment of novel proofs.

## Open questions

- Can the system tackle problems requiring development of new mathematical frameworks (not just proof of existing conjectures)?
- How does performance scale as base LLMs improve — will the basic agent eventually match the full-featured agent across all difficulty levels?
- Can costs drop to make the system accessible for broader mathematical communities?

## My take

A significant milestone: AI moving from competition math (Putnam, IMO) to genuine open research problems that have stumped professional mathematicians for decades. The cost-per-solution metric democratizes the comparison with human effort. The finding that the basic agent matches the full-featured agent on solved problems suggests that raw LLM capability is the binding constraint, not the evolutionary coordination. Closely related to Numina-Lean-Agent but targets research-level, not competition, mathematics.

## Related

- [[ai-mathematical-discovery]]
- [[numina-lean-agent-open-general-agentic]]
- [[ai-formal-proof-search-autonomously-solves]]
- [[general-coding-agents-formal-tool-integration]]
