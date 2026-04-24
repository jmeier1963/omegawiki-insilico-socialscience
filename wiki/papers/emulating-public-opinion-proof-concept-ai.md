---
title: "Emulating Public Opinion: A Proof-of-Concept of AI-Generated Synthetic Survey Responses for the Chilean Case"
slug: emulating-public-opinion-proof-concept-ai
arxiv: "2509.09871"
venue: "arXiv preprint"
year: 2025
tags: [silicon-sampling, synthetic-survey, public-opinion, demographic-bias, llm-evaluation, non-western-context]
importance: 2
date_added: 2026-04-14
source_type: pdf
s2_id: "bf197175f1cb50c2e41ea2ac0b455808e1a06bd1"
keywords: [synthetic samples, survey data, LLMs, bias mitigation, demographic alignment, algorithmic fidelity]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Existing silicon sampling research is dominated by US/English-language political surveys. It is unclear whether LLM-generated synthetic survey responses reliably recover aggregate item distributions in non-Western contexts, or whether they reproduce social stereotypes and demographic biases from training data. This paper asks: can LLMs emulate Chilean public opinion with sufficient fidelity for applied survey research?

## Key idea

Benchmark LLM-generated synthetic survey responses against a probabilistic Chilean public opinion survey using a systematic meta-analysis of 128 prompt-model-question triplets (generating 189,696 synthetic profiles). Test multiple OpenAI models (GPT-4o, GPT-4o-mini, o-series reasoning), Llama, and Qwen, pooling accuracy/precision/recall/F1 across question-subsample pairs and testing for sociodemographic bias dimensions.

## Method

1. Source ground-truth data from a Chilean probabilistic public opinion survey
2. Generate synthetic respondents using varied prompt formulations × model × question combinations (128 triplets → 189,696 profiles)
3. Pool F1-score and accuracy in meta-analysis across 128 question-subsample pairs
4. Test for systematic bias along key sociodemographic dimensions (age, gender, education, etc.)
5. Compare performance across model families (GPT, Llama, Qwen)

## Results

- **High accuracy on trust items**: F1-score and accuracy >0.90 for trust-related survey items across top models
- **Model parity**: GPT-4o, GPT-4o-mini, and Llama 4 Maverick perform comparably on this task
- **Demographic skew**: synthetic-human alignment is highest among respondents aged 45–59; younger and older cohorts show lower fidelity
- **Item-level heterogeneity**: substantial variation in performance across question types; trust items outperform other domains
- LLM-based synthetic samples approximate responses from a probabilistic sample in aggregate, but with meaningful limitations

## Limitations

- Single country case (Chile); generalizability to other Latin American or non-Western contexts is untested
- Ground-truth survey limited to public opinion items; does not test economic behavior or deliberative questions
- Synthetic-human alignment may be partly driven by training data contamination (Chilean surveys available online)
- Does not distinguish between distributional accuracy and response consistency within individuals

## Open questions

- Does fidelity generalize to other Latin American countries and languages beyond Spanish?
- What is the contamination-corrected fidelity estimate for Chilean-specific survey data?
- Can item-level heterogeneity be predicted a priori to flag unreliable synthetic items?
- Does demographic skew toward 45–59 year olds reflect training data demographics?

## My take

A useful empirical contribution extending silicon sampling to non-Western contexts. The high accuracy on trust items is encouraging, but the demographic skew and item-level heterogeneity reinforce that algorithmic fidelity is not uniform — careful calibration is required before using LLM synthetic samples as substitutes for real surveys. The multi-model comparison showing parity between GPT-4o and open-source Llama 4 Maverick is practically useful.

## Related

- supports: [[llms-accurately-simulate-human-subpopulation-survey]]
- [[silicon-sampling]]
- [[algorithmic-fidelity]]
