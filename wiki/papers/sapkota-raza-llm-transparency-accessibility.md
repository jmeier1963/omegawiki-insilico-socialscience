---
title: "Comprehensive Analysis of Transparency and Accessibility of ChatGPT, DeepSeek, and other SoTA Large Language Models"
slug: sapkota-raza-llm-transparency-accessibility
arxiv: "2502.18505"
venue: "arXiv preprint"
year: 2025
tags: [transparency, open-source, open-weight, llm, reproducibility, open-washing, accessibility]
importance: 2
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [LLM transparency, open-source AI, open-weight, open-washing, DeepSeek, ChatGPT, reproducibility, Sapkota, Raza]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

"Open-source" AI is a contested term: models labeled open-source often lack full transparency in training data, code, or key metrics. How do current SoTA LLMs actually fare against formal transparency standards, and what are the implications of partial openness?

## Key idea

Systematic audit of 100+ SoTA LLMs (2020–2025) against OSI open-source criteria and open-weight distinctions. Finds that even models branded "open-source" frequently omit training data, carbon emissions, and code — a practice the authors call "open-washing." The open-source vs. open-weight distinction is underappreciated and consequentially underdiscussed.

## Method

- Systematic review of 100+ LLMs including ChatGPT, DeepSeek, LLaMA, and others
- Evaluation framework combining OSI open-source definition with AI-specific transparency criteria
- Dual lens: open-source (code + data + weights) vs. open-weight (weights only)
- arXiv preprint: 2502.18505 (submitted 21 Feb 2025)
- Authors: Ranjan Sapkota, Shaina Raza (Toronto Metropolitan University), Manoj Karkee

## Results

- Most "open-source" LLMs are in practice open-weight only: weights released but training data withheld
- Even best-case open-source models regularly omit training data details and carbon footprints
- "Open-washing" — claiming openness without meeting transparency standards — is widespread
- First systematic study examining transparency across 100+ models through the open-source/open-weight dual lens

## Limitations

- Preprint — not peer-reviewed at time of ingest
- Transparency criteria are partly normative; OSI definition is contested in AI context
- Rapidly-changing landscape: model transparency evolves faster than systematic reviews

## Open questions

- Will EU AI Act transparency requirements drive convergence toward genuine open-source in practice?
- Does open-weight (without training data) provide meaningful reproducibility benefits?

## My take

A useful empirical audit that fills a gap: most commentary on "open-source AI" is impressionistic, this is systematic. The open-washing finding is important for reproducibility and bias-mitigation discussions. Connects to Ahmed et al. (2023) on industry control of AI infrastructure — even "open" models are often controlled via data opacity. Note: arXiv 2502.18505 was initially misidentified in this wiki as a political bias paper; it is this transparency paper.

## Related

- [[groeneveld-olmo-language-models]]
- [[ahmed-industry-influence-ai-research]]
- [[kapoor-narayanan-leakage-reproducibility]]
- [[open-science-collaboration-reproducibility]]
