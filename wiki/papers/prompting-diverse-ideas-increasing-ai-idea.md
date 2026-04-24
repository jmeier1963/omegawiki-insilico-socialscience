---
title: "Prompting Diverse Ideas: Increasing AI Idea Variance"
slug: prompting-diverse-ideas-increasing-ai-idea
arxiv: ""
venue: "SSRN Working Paper 4708466"
year: 2024
tags: [llm-ideation, diversity, idea-variance, prompting, innovation, brainstorming]
importance: 3
date_added: 2026-04-23
source_type: pdf
s2_id: ""
keywords: [prompting, diverse ideas, idea variance, GPT-4, brainstorming, cosine similarity, innovation]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

While LLMs generate high-quality ideas on average, they produce insufficiently diverse ideas — the idea space quickly becomes exhausted, limiting the quality of the single best idea discoverable. How can prompting methods increase the variance/diversity of AI-generated ideas?

## Key idea

Different prompting strategies significantly affect the diversity of AI-generated ideas (measured by cosine similarity between ideas and number of unique ideas). Some prompting methods can substantially increase the dispersion of ideas, improving the quality of the best idea discoverable by a user working with LLMs.

## Method

- Domain: new products for college students, priced under $50 (same as LLM-Ideas-Working-Paper)
- Prompting variations: different instruction styles to generate more varied ideas
- Metrics: cosine similarity between ideas (lower = more diverse), unique idea count, speed of idea space exhaustion
- Baseline: vanilla GPT-4 prompting (Meincke et al. 2023)

## Results

- Prompting methods significantly affect diversity of idea output
- Specific methods increase unique ideas and reduce redundancy
- Implications for human-AI ideation workflows: targeted prompting needed to escape local optima in idea space

## Limitations

- Single domain evaluation
- "Diversity" measured by cosine similarity — may not capture true conceptual novelty
- Prompting tricks may have diminishing returns at scale or across domains

## Open questions

- Does increased diversity of LLM ideas lead to better outcomes in real innovation contexts?
- How do diversity-enhancing prompts interact with quality-enhancing prompts?

## My take

A natural follow-up to the LLM-Ideas paper. The finding that vanilla LLM prompting exhausts idea space quickly is important for practitioners: you need to actively engineer for diversity, not just generate more ideas with the same prompt.

## Related

- [[using-large-language-models-idea-generation]]
- [[evaluating-llms-divergent-thinking-capabilities-scientific]]
- [[ai-driven-scientific-discovery]]
