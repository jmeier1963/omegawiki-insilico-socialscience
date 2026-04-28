---
title: "AI-Augmented Surveys: Leveraging Large Language Models and Surveys for Opinion Prediction"
slug: ai-augmented-surveys-leveraging-large-language
arxiv: "2305.09620"
venue: "arXiv preprint"
year: 2023
tags: [silicon-sampling, fine-tuning, opinion-prediction, llm, survey-augmentation, retrodiction, general-social-survey]
importance: 3
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [AI-augmented surveys, fine-tuning, LLM, opinion prediction, retrodiction, General Social Survey, unasked questions, Alpaca-7b]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

Can LLMs fine-tuned on historical survey data predict missing survey responses (retrodiction) or responses to questions never asked? The paper proposes a new framework for "AI-augmented surveys" that combines LLM capabilities with survey research.

## Key idea

Fine-tuning LLMs on repeated cross-sectional surveys allows prediction of year-level missing responses (retrodiction: AUC=0.86) and, with less success, completely unasked questions (AUC=0.73). LLMs and surveys can mutually enhance each other's capabilities.

## Method

- 3,110 binarized opinions from 68,846 Americans in the General Social Survey (1972–2021)
- Fine-tuned Alpaca-7B on survey responses with temporal and individual belief context
- Two tasks: retrodiction (predicting missing responses) and unasked opinion prediction
- Metrics: AUC for individual prediction, ρ for public opinion prediction

## Results

- Retrodiction: AUC = 0.86 (personal opinion), ρ = 0.98 (public opinion) — high accuracy for filling survey gaps
- Unasked opinion prediction: AUC = 0.73, ρ = 0.67 — modest success
- Fine-tuned models substantially outperform zero-shot prompting
- Application: can identify when public attitudes changed (e.g., same-sex marriage support timeline)

## Limitations

- Alpaca-7B is a relatively small model — larger models likely perform better
- Retrodiction success may partly reflect interpolation, not genuine prediction
- Unasked opinion prediction much weaker — cannot reliably generate genuinely novel insights
- Ethical concerns about individual autonomy and privacy raised but not resolved

## Open questions

- Does the retrodiction capability generalize to non-U.S. surveys and non-political topics?
- Can the approach identify genuine opinion change points that human analysts missed?
- What is the minimum fine-tuning data size for reliable retrodiction?

## My take

An underappreciated application: using LLMs to fill gaps in longitudinal survey data rather than replacing surveys entirely. The retrodiction accuracy (ρ = 0.98 for public opinion) is impressive if it holds up. The "AI and surveys enhance each other" framing is more defensible than full replacement. Complements the mixed-subjects design approach (Broska et al.) as a way to add value to existing survey infrastructure.

## Related

- [[silicon-sampling]]
- supports: [[llms-accurately-simulate-human-subpopulation-survey]]
- [[out-one-many-using-language-models]]
- [[whose-opinions-language-models-reflect]]
