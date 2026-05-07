---
title: "Predicting Results of Social Science Experiments Using Large Language Models"
slug: predicting-results-social-science-experiments-using
arxiv: ""
venue: "Preprint"
year: 2024
tags: [silicon-sampling, social-science, llm-simulation, experimental-prediction, survey-experiment, validity]
importance: 4
date_added: 2026-05-06
source_type: pdf
s2_id: ""
keywords: [LLM simulation, experimental effects, treatment effects, prediction, social science, survey experiment, GPT-4]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Can LLMs accurately predict the results of social science experiments (i.e., experimental treatment effects), and can they do so for studies not in their training data? If so, they could dramatically accelerate social science research by enabling hypothesis filtering before costly human participant studies.

## Key idea

Build a large archive of 70 pre-registered, nationally representative TESS survey experiments (476 treatment effects, 105,165 participants) and prompt GPT-4 to simulate experimental conditions — then compare LLM-predicted treatment effects to observed treatment effects, with a key test on unpublished studies.

## Method

- Archive: 70 TESS experiments + 9 megastudies; 476 treatment effects total; 105,165 participants
- GPT-4 simulates demographically diverse American samples responding to each experimental condition
- LLM-predicted effect = difference in average simulated responses across conditions
- Accuracy metric: Pearson r between LLM predictions and actual treatment effects
- Subgroup analysis: demographic groups, disciplines, published vs. unpublished studies
- Additional robustness: megastudies with behavioral and field experiment measures

## Results

- **Overall correlation r = 0.85** between LLM predictions and actual treatment effects
- **r = 0.90 for unpublished studies** (not in GPT-4 training data) — ruling out data contamination as explanation
- LLM predictions matched or surpassed human forecasters
- Accuracy was somewhat lower for demographic subgroups underrepresented in training data
- Performance was lower for field experiments and behavioral (non-survey) outcomes
- LLMs can also be misused to develop content that misleads people — acknowledged as risk

## Limitations

- US-only sample; surveys only (no cross-cultural validation)
- Text-based stimuli; field experiments and behavioral outcomes perform worse
- GPT-4 snapshot; may degrade with alignment changes that reduce bias signal
- Societal risk: accurate prediction capability could accelerate development of persuasion/manipulation content

## Open questions

- Does predictive accuracy generalize to other countries and cultures?
- How does accuracy vary with the degree of cultural/political salience of the treatment?
- Can LLM-based prediction replace a substantial fraction of costly human participant experiments?

## My take

One of the most striking empirical demonstrations of LLM simulation validity for social science. The r=0.85 result is surprising in magnitude; r=0.90 on unpublished studies is even more impressive and directly addresses data contamination concerns. This is a landmark paper for the silicon sampling / in-silico social science research program. Importance 4.

## Related

- [[silicon-sampling]]
- supports: [[llm-predicts-social-science-experimental-effects-accurately]]
