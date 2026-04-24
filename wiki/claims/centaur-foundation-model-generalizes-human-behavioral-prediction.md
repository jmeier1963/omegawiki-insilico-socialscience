---
title: "A foundation model fine-tuned on large-scale human behavioral data generalizes to predict out-of-distribution human choices across novel cognitive paradigms"
slug: centaur-foundation-model-generalizes-human-behavioral-prediction
status: supported
confidence: 0.85
tags: [foundation-model, cognition, behavioral-prediction, out-of-distribution-generalization, cognitive-science]
domain: NLP
source_papers: [foundation-model-predict-capture-human-cognition]
evidence:
  - source: foundation-model-predict-capture-human-cognition
    type: supports
    strength: strong
    detail: "Centaur (Llama 3.1 70B fine-tuned on Psych-101: 10.6M choices from 160 psychological experiments) outperforms existing cognitive models, generalizes to held-out participants and out-of-distribution tasks, and aligns internal representations with neural activity. Published in Nature."
conditions: "Demonstrated for laboratory cognitive tasks (decision-making, memory, supervised learning, Markov decisions); primarily Western participants; naturalistic and clinical generalization untested."
date_proposed: 2026-04-14
date_updated: 2026-04-14
---

## Statement

Fine-tuning a large language model (Llama 3.1 70B) on a large-scale dataset of human behavioral choices from 160 psychological experiments produces a foundation model (Centaur) that outperforms existing domain-specific cognitive models at predicting human behavioral choices, generalizes to out-of-distribution participants and novel experimental paradigms, and whose internal representations become more aligned with human neural activity after fine-tuning.

## Evidence summary

Binz et al. (2025, Nature): Centaur trained on Psych-101 (10,681,650 choices from 10,000 participants across 160 experiments). Evaluated on held-out participants (10%), out-of-distribution conditions, and novel paradigms. Outperforms existing cognitive models on all benchmarks. Neural representation alignment measured via probing before and after fine-tuning.

## Conditions and scope

- Trained on laboratory cognitive tasks; not validated on naturalistic behavior
- Primarily Western participants in Psych-101
- QLoRA fine-tuning adds only 0.15% of new parameters — highly parameter-efficient

## Counter-evidence

- No comparison to full fine-tuning baselines (only QLoRA)
- Out-of-distribution generalization evaluated on related laboratory paradigms, not fundamentally different behavioral domains

## Linked ideas

## Open questions

- What is the scaling behavior of behavioral prediction with training data size and model size?
- Does neural alignment extend to naturalistic behavioral contexts?
- Can Centaur be used for clinical assessment (diagnosing cognitive impairments)?
