---
title: "Polypersona: Persona-Grounded LLM for Synthetic Survey Responses"
slug: polypersona-persona-grounded-llm-synthetic-survey
arxiv: "2512.14562"
venue: "arXiv preprint"
year: 2025
tags: [persona-conditioning, synthetic-data, survey-generation, parameter-efficient-fine-tuning, small-language-models]
importance: 2
date_added: 2026-04-13
source_type: pdf
s2_id: ""
keywords: [persona conditioning, survey response generation, parameter-efficient fine-tuning, demographic consistency, synthetic data fidelity]
domain: "NLP"
code_url: "https://anonymous.4open.science/r/Polypersona-1D70/"
cited_by: []
---

## Problem

Traditional survey research suffers from rising costs, declining response rates, and demographic coverage gaps. Existing LLM-based synthetic respondent approaches rely on ad-hoc prompting without structured persona constraints, leading to outputs that regress toward the mean, exhibit reduced variance compared to real populations, and skew toward socially desirable responses — especially for non-WEIRD demographic groups.

## Key idea

PolyPersona is a generative framework that instruction-tunes compact chat models (1.1B–2B parameters) with LoRA adapters and 4-bit quantization, using a dialogue-formatted data pipeline that preserves persona cues (demographic + psychographic attributes) throughout training. The framework enforces within-persona behavioral consistency across diverse question types and survey domains.

## Method

1. **Dataset construction**: 3,568 responses spanning 10 domains and 433 unique personas, built on top of Tencent's PersonaHub (200K persona subset). Each record follows ChatML format with system/user/assistant triplets encoding persona card, domain, question type, and response.
2. **Model training**: Parameter-efficient fine-tuning via LoRA (r=16, α=32) applied to all attention and MLP projections, with 4-bit quantization (QLoRA). Resource-adaptive configuration for consumer-grade hardware. Models tested: TinyLlama 1.1B, Phi-2, Mistral 7B, DeepSeek R1 Distill Qwen2 1.5B, Qwen2 1.5B, Qwen1.5 MoE, LLaMA-2 7B.
3. **Evaluation**: Multi-metric stack combining text similarity (BLEU, ROUGE, BERTScore), lexical diversity (Distinct-n), and survey-specific metrics (structural similarity, length similarity, sentence count similarity, sentiment similarity).

## Results

- TinyLlama 1.1B achieved highest BLEU (0.090) and competitive ROUGE/BERTScore despite being the smallest model; Phi-2 achieved highest ROUGE-1 (0.429).
- Small models (1.1B–2B) matched or outperformed 7B baselines on most metrics, demonstrating that persona-conditioned fine-tuning compensates for fewer parameters.
- BERTScore F1 > 0.88 across all models except Qwen1.5 MoE, indicating strong semantic alignment.
- Domain-specific analysis: Social Issues and Finance domains showed highest performance; Consumer Preferences and Lifestyle domains were most challenging.
- Mistral 7B showed best structural fidelity (sentence count similarity 0.913).

## Limitations

- Small dataset (3,568 responses, 433 personas) limits generalizability claims.
- Evaluation compares model outputs to GPT-generated reference responses rather than real human survey data — no direct human validation.
- Persona definitions drawn from PersonaHub may not capture nuanced cultural or intersectional identities, especially for non-WEIRD populations.
- No longitudinal consistency testing across sessions.
- Lower performance on subjective domains (Consumer Preferences, Lifestyle) suggests persona templates do not fully model nuanced preference formation.
- Reproducibility concerns: prompt sensitivity and model update drift not systematically tested.

## Open questions

- How does performance change when validated against actual human survey responses rather than LLM-generated references?
- Can the framework scale to thousands of diverse personas while maintaining demographic fidelity?
- How sensitive are outputs to minor persona description variations?
- What evaluation protocols can capture cultural and intersectional validity beyond surface-level demographic alignment?

## My take

A solid engineering contribution that demonstrates persona-conditioned LoRA fine-tuning on small models for survey generation. The multi-metric evaluation framework is more thorough than most in this space. However, the key weakness is evaluation against LLM-generated references rather than real human data — this makes it hard to assess whether the framework truly captures human response distributions or just learns to mimic another LLM's style. The paper sits in useful-but-incremental territory: it confirms that structured persona conditioning + efficient fine-tuning works on compact models, but doesn't advance the fundamental question of whether LLM-generated surveys can substitute for real ones.

## Related

supports: [[theory-grounded-persona-calibration-improves-llm]]
supports: [[llms-accurately-simulate-human-subpopulation-survey]]
[[silicon-sampling]]
[[persona-conditioning]]
extends: [[out-one-many-using-language-models]]
