---
title: "Generative Agent Memory Stream"
aliases: ["memory stream", "agent memory stream", "long-term agent memory", "memory retrieval scoring", "recency-importance-relevance retrieval"]
tags: [agents, memory, retrieval, llm-agents, long-term-memory]
maturity: emerging
key_papers: [generative-agents-interactive-simulacra-human-behavior]
first_introduced: "2023"
date_updated: 2026-04-12
related_concepts: [agent-reflection, llm-powered-agent-architecture]
---

## Definition

A persistent, natural-language record of all experiences an agent has perceived, stored as a flat list of timestamped memory objects. Retrieval is governed by a weighted scoring function that combines three signals: recency (exponential decay over time since last access), importance (LLM-elicited poignancy score 1–10), and relevance (cosine similarity between memory embedding and query embedding). The top-ranked memories within the LLM context window are included in each prompt.

## Intuition

An agent cannot reason from its entire life history in a single prompt — the context window is too small and the irrelevant detail too noisy. The memory stream solves this by mimicking human memory: recent events stay fresh, emotionally significant events are weighted more heavily, and contextually relevant memories are surfaced on demand.

## Formal notation

Retrieval score:
```
score(m) = α_recency · recency(m) + α_importance · importance(m) + α_relevance · relevance(m)
```
- `recency(m)` = exp(−decay · Δt), decay = 0.995 per sandbox hour, Δt = hours since last retrieval
- `importance(m)` = LLM score 1–10 normalized to [0,1]
- `relevance(m)` = cosine_similarity(embed(m), embed(query)), normalized to [0,1]
- All α = 1 in the reference implementation; min-max scaling applied per component

## Variants

- **Hierarchical memory**: memory stream is complemented by reflections (higher-level inferences) stored back as memory objects, forming a tree structure.
- **Planning entries**: plans are also stored as memory objects and retrieved alongside observations and reflections, giving the agent access to its own future intentions during reasoning.

## Comparison

- vs. naive context stuffing: summarizing all experiences into the prompt loses specificity and overwhelms the LLM; memory stream retrieval surfaces only what is needed.
- vs. vector database RAG (pure semantic retrieval): pure relevance ignores temporal dynamics; memory stream adds recency and importance as first-class retrieval signals.

## When to use

Use when an agent must maintain coherent, personalized behavior over long interaction horizons (hours to days) where the full history of events cannot fit in a single LLM context window.

## Known limitations

- Retrieval can fail to surface relevant memories, especially when importance and recency pull in different directions.
- Memory hallucination: agents sometimes fabricate embellishments to retrieved memory fragments.
- Scalability: as memory streams grow (thousands of events), retrieval quality and LLM cost become concerns.

## Open problems

- Can retrieval quality be improved by fine-tuning the importance and relevance components?
- How should conflicting memories (contradictory observations at different times) be handled?
- Can memory streams be compressed or summarized without losing behavioral fidelity?

## Key papers

- [[generative-agents-interactive-simulacra-human-behavior]] — introduced the memory stream architecture

## My understanding

The key insight is treating all agent knowledge (observations, reflections, plans) as a unified, searchable memory with three orthogonal retrieval signals. The recency + importance + relevance combination elegantly handles both "what just happened" and "what matters most" queries without requiring separate data structures.
