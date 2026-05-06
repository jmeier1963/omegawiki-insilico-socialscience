---
title: "How Is ChatGPT's Behavior Changing over Time?"
slug: chen-zaharia-zou-chatgpt-behavior-changing
arxiv: "2307.09009"
venue: "Harvard Data Science Review"
year: 2024
tags: [llm-drift, chatgpt-behavior, model-monitoring, deployment-stability, llm-evaluation]
importance: 2
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [ChatGPT behavior drift, GPT-4, model versioning, LLM instability, deployed AI monitoring]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

ChatGPT and GPT-4 are updated continuously by OpenAI without version-pinned APIs. Do deployed LLMs exhibit behavioral drift between updates, and if so, how significant is it?

## Key idea

GPT-3.5 and GPT-4 exhibit significant behavioral drift across versions, detectable by testing the same prompts at different times. For example, GPT-4's accuracy on a prime-number identification task dropped from 84% (March 2023) to 51% (June 2023). Deployed AI behavior cannot be treated as stable.

## Method

- Tested GPT-3.5-turbo and GPT-4 monthly from March–June 2023
- Tasks: math problem solving, sensitive question answering, prime number identification, code generation
- Evaluated same fixed prompts across months
- Authors: Lingjiao Chen, Matei Zaharia, James Zou (Stanford/UC Berkeley)
- Published: Harvard Data Science Review, Spring 2024 (arXiv 2307.09009)

## Results

- GPT-4 prime identification: 84% → 51% (dramatic degradation)
- GPT-4 math word problems: 97.6% → 86.8%
- GPT-3.5 code generation: improved over time
- Behavioral changes were substantial and not announced by OpenAI
- Different tasks changed in different directions — no consistent trend

## Limitations

- Only two models tested; findings may not generalize
- Only 4 months of data
- Some behavioral changes may reflect intended updates, not regressions
- Prompts were fixed — may not be representative of typical use

## Open questions

- Do behavioral changes in LLMs affect reproducibility of AI-assisted scientific results?
- How should scientific workflows using LLMs document which version was used?

## My take

Important demonstration of a practical problem for AI-assisted science: the system you used in March may behave differently in June. This has direct implications for scientific reproducibility (Kapoor & Narayanan 2023) and for the stability of AI-based research pipelines. Version pinning and logging should be required for reproducible AI-assisted science.

## Related

- [[kapoor-narayanan-leakage-reproducibility]]
- [[liang-monitoring-ai-modified-content]]
- [[groeneveld-olmo-language-models]]
- [[narayanan-kapoor-ai-normal-technology]]
