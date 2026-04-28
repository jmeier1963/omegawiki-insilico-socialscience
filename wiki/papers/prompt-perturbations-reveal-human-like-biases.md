---
title: "Prompt Perturbations Reveal Human-Like Biases in Large Language Model Survey Responses"
slug: prompt-perturbations-reveal-human-like-biases
arxiv: "2507.07188"
venue: "arXiv preprint"
year: 2025
tags: [silicon-sampling, prompt-sensitivity, survey-bias, recency-bias, llm-robustness, world-values-survey]
importance: 3
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [prompt perturbations, recency bias, LLM survey responses, World Values Survey, prompt sensitivity, response robustness, central tendency bias]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

LLMs used as survey proxies must produce stable responses under minor question/answer rephrasing. How robust are LLM survey responses to prompt perturbations? Do they show human-like cognitive biases?

## Key idea

LLMs show systematic recency bias in survey responses (favoring the last answer option) and broad sensitivity to prompt perturbations. Larger models are more robust but all models remain sensitive. This reveals fundamental limitations for using LLMs as survey proxies requiring stable, unbiased responses.

## Method

- 9 LLMs tested on World Values Survey (WVS) questions
- 10 perturbation types applied to both question phrasing and answer option structure
- 167,000+ simulated survey interviews
- Perturbations include: paraphrasing, answer option reordering, scale reversal, combined perturbations

## Results

- All models show consistent recency bias — disproportionately favoring last-presented answer option
- Larger models are generally more robust but not immune
- Semantic perturbations (paraphrasing) and combined perturbations cause the most disruption
- Specific biases: central tendency, opinion floating, primacy and recency effects — echoing human response biases
- No model achieves satisfactory robustness across all perturbation types

## Limitations

- WVS only — may not generalize to other survey instruments
- Perturbation severity not calibrated against human sensitivity levels
- Does not test whether robustness improvements from model scale are sufficient for research use

## Open questions

- Does the recency bias reflect RLHF fine-tuning (models trained on data where "correct" answers appeared last)?
- Can post-hoc calibration correct for recency bias?
- Are there survey design strategies that minimize LLM prompt sensitivity (e.g., forced ranking instead of Likert)?

## My take

Methodologically important: the recency bias finding is a concrete, testable bias that researchers should actively control for. The finding that all models exhibit this bias means it is not a model-selection problem — it is a systematic property of the SRGM/prompt architecture. Connects to Ahnert et al. (SRGM choice matters) and the broader analytic flexibility literature (Cummins 2025).

## Related

- [[silicon-sampling]]
- supports: [[llm-persona-underspecification-limits-ecological-validity]]
- [[survey-response-generation-generating-closed-ended]]
- [[threat-analytic-flexibility-using-large-language]]
- [[benchmarking-distributional-alignment-large-language-models]]
