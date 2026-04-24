---
title: "A foundation model to predict and capture human cognition"
slug: foundation-model-predict-capture-human-cognition
arxiv: ""
venue: "Nature"
year: 2025
tags: [foundation-model, cognition, behavioral-prediction, cognitive-science, individual-differences, neural-alignment]
importance: 5
date_added: 2026-04-14
source_type: pdf
s2_id: ""
keywords: [Centaur, Psych-101, foundation model of cognition, individual differences, behavioral prediction, out-of-distribution generalization, neural representations]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

No existing computational model of human cognition generalizes across the full breadth of cognitive tasks. Domain-specific cognitive models (ACT-R, Prospect Theory, etc.) work within their domain but cannot capture human versatility across decision-making, memory, attention, learning, and reasoning. Can a large language model fine-tuned on large-scale human behavioral data serve as a universal cognitive model?

## Key idea

**Centaur**: a foundation model of human cognition built by fine-tuning Llama 3.1 70B on **Psych-101** — a dataset of 10,681,650 behavioral choices from 160 psychological experiments involving 253,597,411 text tokens. Centaur predicts human behavior trial-by-trial across experimental paradigms, outperforms existing cognitive models, generalizes to out-of-distribution participants and tasks, and its internal representations align with neural activity after fine-tuning.

## Method

1. Compile Psych-101: behavioral data from 160 psychological experiments covering decision-making, memory, supervised learning, Markov decision processes, and more; 10,681,650 choices from 10,000 participants
2. Fine-tune Llama 3.1 70B on Psych-101 using quantized low-rank adaptation (QLoRA); base model parameters frozen, low-rank adapters trainable (0.15% of parameters)
3. Evaluate on held-out participants (90%/10% split) and out-of-distribution tasks
4. Compare to existing cognitive models (domain-specific)
5. Analyze internal representations: probe alignment with neural activity before vs. after fine-tuning

## Results

- Centaur captures human behavior across diverse experimental paradigms better than existing cognitive models
- Generalizes to out-of-distribution participants not in training data
- Generalizes to out-of-distribution experimental conditions and novel tasks
- Internal representations become more aligned with human neural activity after fine-tuning
- Demonstrates potential for discovering previously unknown stories (cross-study generalization)

## Limitations

- Training data (Psych-101) primarily from Western psychology experiments; may not generalize to cross-cultural behavioral differences
- Fine-tuning on token-level behavioral data — complex temporal dependencies may be simplified
- Neural alignment is correlational; causal direction not established
- Psych-101 consists of lab tasks; naturalistic behavior remains untested

## Open questions

- Does Centaur generalize to clinical/atypical populations not represented in Psych-101?
- Can Centaur simulate individual-level longitudinal cognitive change?
- How does the neural alignment emerge — is it a property of the base LLM or specific to behavioral fine-tuning?
- What is the minimum dataset size for effective foundation model fine-tuning on behavioral data?

## My take

A landmark paper in computational cognitive science. Published in Nature, Centaur demonstrates that the foundation model paradigm extends to behavioral prediction — a qualitative advance over domain-specific cognitive models. The out-of-distribution generalization is especially impressive. The neural alignment finding suggests behavioral fine-tuning aligns model representations with biological cognitive representations. Most directly useful for automated cognitive science discovery (see 2603.20988) and for setting the upper bound on LLM behavioral simulation quality.

## Related

- supports: [[centaur-foundation-model-generalizes-human-behavioral-prediction]]
- supports: [[llms-accurately-simulate-human-subpopulation-survey]]
- [[foundation-model-of-cognition]]
