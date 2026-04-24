---
title: "The Impact of Large Language Models on Scientific Discovery: A Preliminary Study using GPT-4"
slug: impact-large-language-models-scientific-discovery
arxiv: "2311.07361"
venue: "arXiv"
year: 2023
tags: [llm-science, gpt-4, scientific-discovery, drug-discovery, materials-science, evaluation]
importance: 3
date_added: 2026-04-23
source_type: pdf
s2_id: ""
keywords: [GPT-4, scientific discovery, drug discovery, materials design, computational chemistry, biology]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

LLMs are being deployed rapidly in scientific contexts, but there is no systematic evaluation of what GPT-4 can and cannot do across diverse scientific domains.

## Key idea

Comprehensive 230-page evaluation of GPT-4 across drug discovery, biology, computational chemistry, materials design, and partial differential equations. Uses expert-driven case assessments and benchmark testing. Finds GPT-4 shows "promising potential" across domains but cannot replace domain expert judgment.

## Method

- Expert-driven qualitative case assessments designed by domain scientists
- Domain-specific benchmarks (DFT, molecular dynamics, materials science)
- Evaluation of four capabilities: knowledge base, scientific understanding, numerical calculation, prediction

## Results

- GPT-4 competent at knowledge synthesis, literature review, and hypothesis suggestion
- Weaker on numerical computation and rigorous scientific reasoning
- Useful as a research assistant in all domains tested
- Cannot substitute for domain expert judgment on complex or novel problems

## Limitations

- Evaluated on GPT-4; subsequent models substantially more capable
- Expert case assessments are subjective and hard to reproduce
- Benchmark coverage is sparse relative to the breadth of scientific domains

## Open questions

- How much have these capabilities improved in GPT-4o, o1, and Claude 3.5+?
- Which specific subtasks within scientific research are most tractable for LLMs?

## My take

A useful baseline from 2023 — the "promising but not replacing experts" conclusion has held up but the capability ceiling keeps rising. This paper's main value is the breadth of domains covered and the careful expert-designed case studies, not any specific quantitative finding.

## Related

- [[automated-research-pipeline]]
- [[ai-driven-scientific-discovery]]
