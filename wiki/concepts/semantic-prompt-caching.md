---
title: "Semantic Prompt Caching"
aliases: ["prompt caching", "prompt reuse", "vector-based prompt deduplication", "semantic cache", "LLM query caching"]
tags: [scalability, llm-inference, caching, multi-agent-simulation, efficiency]
maturity: emerging
key_papers: [modeling-earth-scale-human-like-societies]
first_introduced: "2025"
date_updated: 2026-04-13
related_concepts: [generative-agent-based-modeling, llm-powered-agent-architecture]
---

## Definition

Semantic prompt caching is an inference optimization technique for LLM-powered multi-agent simulations. Each LLM query is encoded into a vector representation and stored in a vector database. Before issuing a new prompt, the system performs embedding similarity search to identify structurally similar prompts that have already been processed. If a sufficiently close match is found, the cached response is reused without making a new LLM call — reducing redundant inference in scenarios where many agents face similar decision contexts.

## Intuition

In a large-scale agent simulation, many agents face structurally similar situations (e.g., trustors with similar demographic profiles facing the same game). Their prompts differ only in minor details. Rather than calling the LLM separately for each, semantic prompt caching embeds the prompt, searches for near-duplicates in a vector database, and returns the cached output when the semantic match is close enough.

## Formal notation

Given prompt p_new:
1. Compute embedding e_new = Embed(p_new)
2. Search cache: (p_cached, r_cached) = argmin_{(p,r) in Cache} dist(e_new, Embed(p))
3. If dist < threshold τ: return r_cached
4. Else: r_new = LLM(p_new); Cache ← Cache ∪ {(p_new, r_new)}; return r_new

## Variants

- **Exact prompt caching**: string-level dedup (trivial, catches only identical prompts)
- **Semantic prompt caching** (Light Society): embedding-level similarity with tunable threshold
- **Template-level caching**: cache by prompt template + discretized slot values

## Comparison

| | Exact caching | Semantic caching | Template caching |
|---|---|---|---|
| Catch rate | Low (identical prompts only) | High (structurally similar) | Medium (same template) |
| False positive risk | None | Possible (overly similar but meaningfully different) | Low |
| Infrastructure | Simple hash table | Vector database + embedding model | Template registry |

## When to use

- Large-scale agent simulations where many agents face structurally similar decisions
- Scenarios with high prompt redundancy (same game, different but similar personas)
- When reducing LLM API cost is critical for achieving target scale

## Known limitations

- Threshold τ tuning is non-trivial: too low → few cache hits; too high → behavioral homogenization
- Cached responses may reduce behavioral diversity (agents with similar but distinct profiles get identical outputs)
- Embedding quality directly affects cache accuracy

## Open problems

- How to set the similarity threshold optimally for different simulation types?
- Does semantic caching systematically reduce behavioral variance in ways that bias simulation outcomes?
- Can adaptive thresholds maintain fidelity as simulation evolves?

## Key papers

- [[modeling-earth-scale-human-like-societies]] — introduces semantic prompt caching as a core component of billion-agent simulation infrastructure

## My understanding

A pragmatic engineering solution to the O(N) LLM call problem in agent simulation. The key question is whether the behavioral diversity lost through caching materially affects simulation validity — in principle, it trades individual-level precision for population-level scalability.
