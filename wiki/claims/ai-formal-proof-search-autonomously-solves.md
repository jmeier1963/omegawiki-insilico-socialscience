---
title: "AI-driven formal proof search with LLM+Lean autonomously solves open research-level mathematical conjectures (Erdős problems, OEIS) at tractable cost"
slug: ai-formal-proof-search-autonomously-solves
status: weakly_supported
confidence: 0.72
tags: [formal-proof, lean, ai-mathematical-discovery, theorem-proving, erdos, ai-science]
domain: NLP
source_papers: [advancing-mathematics-research-ai-driven-formal]
evidence:
  - source: advancing-mathematics-research-ai-driven-formal
    type: supports
    strength: strong
    detail: "AlphaProof Nexus solved 9/353 Erdős problems (including 2 open 56 years) and 44/492 OEIS conjectures; cost: a few hundred dollars per problem. Also resolved 15-year-old algebraic geometry question and improved convex optimization bound."
conditions: "Requires problems to be formalizable in Lean with available library imports. Demonstrated for combinatorics, optimization, number theory, algebraic geometry. Cost is tractable but non-trivial (hundreds of dollars for hardest problems)."
date_proposed: 2026-05-29
date_updated: 2026-05-29
---

## Statement

LLM-guided formal proof search (using Lean for verification) can autonomously solve open mathematical research-level problems — including Erdős conjectures open for decades — without requiring specialized training for each problem class, at a cost of a few hundred dollars per solved problem.

## Evidence summary

AlphaProof Nexus (Tsoukalas et al., 2026) demonstrates this in the largest-scale evaluation to date: 353 Erdős problems and 492 OEIS conjectures. The 9 Erdős successes include problems open for 56 years. The basic (non-evolutionary) agent replicates all 9 successes, suggesting raw LLM capability is the primary driver.

## Conditions and scope

- Requires Lean formalization of the problem (structured input)
- Library coverage constrains applicable domains (strongest in combinatorics, number theory, algebraic geometry)
- Does not address problems requiring entirely new mathematical frameworks beyond the Lean library
- Distinct from competition math (Putnam, IMO) — this is open research-level problem solving

## Counter-evidence

The Numina-Lean-Agent (2026) demonstrates similar capability for competition mathematics using a simpler architecture (pure Claude + MCP), suggesting the full evolutionary machinery may be unnecessary at current difficulty levels.

## Linked ideas

## Open questions

- At what mathematical depth does current LLM-guided formal search break down?
- How does solver performance scale with base model capability improvements?
