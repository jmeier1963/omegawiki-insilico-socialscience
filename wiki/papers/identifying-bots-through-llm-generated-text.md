---
title: "Identifying bots through LLM generated text in open narrative responses: A proof of concept study"
slug: identifying-bots-through-llm-generated-text
arxiv: ""
venue: "ResearchGate preprint"
year: 2025
tags: [survey-bots, llm-detection, bot-detection, open-responses, survey-integrity, quality-control]
importance: 2
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [bot detection, LLM-generated text, open narrative responses, survey quality, text classification, fraud detection]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

LLM-generated bots can infiltrate online surveys and produce responses that appear human. Can LLM-generated text in open narrative survey responses be reliably detected?

## Key idea

Proof-of-concept study demonstrating that LLM-generated text in open narrative survey responses can be identified using text analysis methods, providing a potential defense against bot infiltration of online surveys.

## Method

- Proof-of-concept study using open narrative responses
- Detection approach based on characteristics of LLM-generated text (stylistic, statistical)
- Authors: Claassen, Höhne, Bach, Haensch (German survey methodology researchers)
- Published on ResearchGate 2025

## Results

- LLM-generated responses in open narrative format are detectable with meaningful accuracy
- Specific detection features exploit the typical characteristics of LLM text generation (formality, length, hedging patterns)
- Provides groundwork for automated quality control in large-scale online surveys

## Limitations

- Proof of concept only — limited to specific survey and LLM conditions
- Adversarial prompting can make LLM text harder to detect
- Open narrative only — closed-ended responses are much harder to detect

## Open questions

- How does detection accuracy degrade as LLMs improve their human-mimicry?
- Can detection be combined with prompt injection approaches (Höhne et al.) for layered defense?
- What is the false positive rate — how often are human responses misclassified as bots?

## My take

Part of an emerging sub-literature on survey security, complementing Höhne et al. (2025) on defensive prompt injections and Westwood (2025) on the broader threat. The open-narrative focus is practically important since it's the response type most vulnerable to bot infiltration.

## Related

- [[potential-existential-threat-large-language-models]]
- [[llm-driven-bot-infiltration-protecting-web]]
- supports: [[llm-bots-contaminating-online-surveys-threaten]]
