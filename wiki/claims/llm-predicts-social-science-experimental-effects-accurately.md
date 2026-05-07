---
title: "LLMs can predict social science experimental treatment effects with high accuracy (r=0.85), matching or surpassing human forecasters and holding for unpublished studies"
slug: llm-predicts-social-science-experimental-effects-accurately
status: weakly_supported
confidence: 0.75
tags: [silicon-sampling, llm-simulation, social-science, experimental-prediction, validity, treatment-effects]
domain: NLP
source_papers: [predicting-results-social-science-experiments-using]
evidence:
  - source: predicting-results-social-science-experiments-using
    type: supports
    strength: strong
    detail: "GPT-4 predictions correlate r=0.85 with actual treatment effects (476 effects, 105,165 participants); r=0.90 on unpublished studies not in training data; matches/surpasses human forecasters"
conditions: "US-only; TESS survey experiments with text stimuli and self-report measures; GPT-4 2024 snapshot; single study from Stanford/NYU — no independent replication yet"
date_proposed: 2026-05-06
date_updated: 2026-05-06
---

## Statement

GPT-4 can simulate representative samples of Americans responding to social science experimental stimuli and produce treatment effect predictions that correlate r=0.85 with actual experimental results — matching or surpassing the accuracy of human forecasters. Notably, accuracy reaches r=0.90 for unpublished studies that could not appear in the model's training data, ruling out simple memorization as an explanation.

## Evidence summary

Hewitt et al. (2024) tested GPT-4 on 70 pre-registered TESS survey experiments (476 treatment effects, 105,165 actual participants). LLM-simulated effect sizes predicted actual effects at r=0.85 overall; for unpublished experiments, r=0.90. Human forecaster benchmarks were matched or surpassed.

## Conditions and scope

US survey experiments only; text-based stimuli; self-reported outcomes. Accuracy is lower for field experiments, behavioral outcomes, and demographic subgroups underrepresented in training data. GPT-4-specific (2024 alignment state).

## Counter-evidence

- The claim depends on alignment stability: if fine-tuning removes political/social bias signal, accuracy may degrade (see Grossmann et al. "scientist-humanist dilemma")
- Replication in independent labs and non-US contexts not yet available
- Risk of misuse: same capability could be used to optimize persuasion or manipulation campaigns

## Linked ideas

## Open questions

- Does the predictive accuracy scale to cross-cultural or non-English experiments?
- Can this capability be used to pre-screen hypotheses and reduce costly human experiments without sacrificing validity?
