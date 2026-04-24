---
title: "Monitoring AI-Modified Content at Scale"
slug: liang-monitoring-ai-modified-content
arxiv: "2403.07183"
venue: "ICML 2024"
year: 2024
tags: [ai-detection, peer-review, scientific-integrity, llm-writing, ai-modified-content, academic-publishing]
importance: 3
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [AI-modified text, peer review, LLM detection, academic integrity, scientific publishing, ChatGPT]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

After ChatGPT's launch in November 2022, AI-generated content began appearing in academic writing. But how prevalent is AI-modified text in peer review specifically? And can it be detected at scale without access to individual documents?

## Key idea

A corpus-level statistical method detects population-level shifts in text features (certain adjectives, transition words, sentence structures) that are characteristic of LLM-generated text. Applied to thousands of peer reviews from major AI conferences, it estimates what fraction were substantially AI-modified.

## Method

- Corpus-level analysis of submitted peer reviews from ICLR 2024, NeurIPS 2023, CoRL 2023, EMNLP 2023
- Baseline: reviews submitted before ChatGPT release (November 2022)
- Feature analysis: frequency shifts in characteristic LLM adjectives ("commendable," "meticulous," "intricate," "innovative")
- Population-level inference — does not identify individual reviews
- Published ICML 2024 (PMLR 235:29575–29620; arXiv 2403.07183)

## Results

- 6.5%–16.9% of peer review text was estimated to be substantially LLM-modified (depending on venue and method)
- The shift occurred abruptly after ChatGPT release
- Effect is larger in reviews submitted close to deadlines
- AI conferences showed larger effects than other venues

## Limitations

- Population-level method cannot identify individual AI-modified reviews
- "AI-modified" is estimated, not confirmed — some reviews may naturally use these terms
- Implications for review quality (not just presence) are not directly measured

## Open questions

- Does AI-modified peer review correlate with review quality, accept/reject decisions, or review time?
- How should conferences respond? Outright bans? Disclosure requirements?

## My take

The first large-scale empirical demonstration that AI has already penetrated the peer review system — the cornerstone of scientific quality control. The 6.5–16.9% estimate is almost certainly a lower bound. Together with DFG (2023) and ICMJE (2023) policy responses, documents a fundamental challenge to the Mertonian norm of organized skepticism.

## Related

- [[dfg-2023-generative-ai-guidelines]]
- [[icmje-2023-authorship-ai]]
- [[smith-peer-review-flawed-process]]
- [[richardson-scancar-papermill-detection]]
- [[merton-sociology-of-science]]
- [[foucault-what-is-an-author]]
