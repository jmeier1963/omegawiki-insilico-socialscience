---
title: "Using Large Language Models for Idea Generation in Innovation"
slug: using-large-language-models-idea-generation
arxiv: ""
venue: "SSRN Working Paper / Wharton Mack Institute"
year: 2023
tags: [llm-ideation, innovation, idea-generation, product-design, human-ai-comparison]
importance: 3
date_added: 2026-04-23
source_type: pdf
s2_id: ""
keywords: [LLM, idea generation, innovation, GPT-4, product design, human comparison, few-shot]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

Can LLMs generate product ideas of higher quality than human students in a structured innovation context, and how does few-shot prompting change that quality?

## Key idea

GPT-4 generates product ideas with **46.8% average purchase probability** vs. **40.4%** for human university students in a product design course. GPT-4 seeded with highly-rated human ideas achieves **49.3%**. GPT-4 generates the single best-rated idea (11% higher purchase probability than best human idea). LLMs are so productive they can exhaustively explore an idea space that would take many humans much longer to cover.

## Method

- Three-way comparison: human students (pre-LLM), vanilla GPT-4 (same prompt as humans), GPT-4 with few-shot seed of top-rated ideas
- Domain: product ideas for college students, priced under $50
- Quality metric: purchase probability rating from external evaluators
- Analysis of idea space exhaustion rate

## Results

- GPT-4 (vanilla): 46.8% quality vs. humans 40.4% (statistically significant)
- GPT-4 (few-shot seeded): 49.3%
- GPT-4 generates best single idea in the study (+11% purchase probability over best human)
- LLM productivity implies near-complete exploration of idea space possible

## Limitations

- Single domain (product design for students)
- Purchase probability is a narrow quality metric; doesn't capture novelty, feasibility, or long-term value
- Few-shot seeding uses human-generated high-quality ideas — human input still required for best results

## Open questions

- Does LLM advantage in idea quality hold across diverse domains?
- How does the average/best quality change at larger scales of idea generation?

## My take

A landmark finding: LLMs don't just assist with ideation — they outperform average human ideators in this domain. The implication that LLMs can exhaustively cover idea spaces is significant for corporate innovation processes. Paired with [[prompting-diverse-ideas-increasing-ai-idea]], which addresses the follow-up problem of getting diverse rather than average-quality ideas.

## Related

- [[prompting-diverse-ideas-increasing-ai-idea]]
- [[evaluating-llms-divergent-thinking-capabilities-scientific]]
- [[ai-driven-scientific-discovery]]
