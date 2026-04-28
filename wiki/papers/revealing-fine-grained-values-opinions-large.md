---
title: "Revealing Fine-Grained Values and Opinions in Large Language Models"
slug: revealing-fine-grained-values-opinions-large
arxiv: "2406.19238"
venue: "arXiv preprint"
year: 2024
tags: [llm-bias, values, opinions, political-compass, demographic-prompting, tropes, fine-grained-analysis]
importance: 3
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [Political Compass Test, LLM stances, values, opinions, demographic bias, prompt variation, tropes, text analysis]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

Existing studies of LLM political stances vary widely depending on prompting. Can a more robust analysis of LLM values and opinions be achieved using both quantitative stance measurement and qualitative text analysis?

## Key idea

A large-scale analysis of 156k LLM responses to the Political Compass Test (PCT) using 420 prompt variations reveals: demographic prompts significantly affect PCT outcomes (bias), and LLMs generate consistent "tropes" — recurring semantic patterns that reveal latent opinion structures regardless of stated stance.

## Method

- 6 LLMs × 420 prompt variations × 62 PCT propositions = 156k responses
- Quantitative: coarse-grained stance analysis (agree/disagree/neutral)
- Qualitative: identification of "tropes" — semantically similar recurring phrases across prompts
- Comparison of closed-form vs. open-domain response stances

## Results

- Demographic features in prompts significantly affect PCT outcomes — consistent with bias literature
- Disparities between closed-form (choose agree/disagree) vs. open-domain responses — format affects stance
- Tropes reveal consistent underlying justifications even when surface stances vary
- All 6 LLMs produce characteristic tropes that are similar across models and prompts

## Limitations

- Political Compass Test is a simplified instrument with known validity issues
- Trope analysis is exploratory — not validated against independent measures of LLM values
- Focus on Western political compass dimensions

## Open questions

- Do the identified tropes reflect training data content or emergent LLM reasoning patterns?
- Can trope analysis be extended to identify latent values on non-political topics?
- Are tropes stable across model versions (GPT-4 vs. GPT-4o)?

## My take

The trope concept is the key methodological innovation: it identifies consistent patterns in LLM text generation that persist across different surface stances, providing a more robust measure of latent LLM values than single-prompt PCT scores. Connects to the broader debate about what "LLM opinions" actually measure. The prompt variation design (420 variants) is a good-practice template for robustness testing.

## Related

- [[silicon-sampling]]
- supports: [[llms-misrepresent-human-opinion-distributions]]
- [[whose-opinions-language-models-reflect]]
- [[prompt-perturbations-reveal-human-like-biases]]
- [[opinionqa]]
