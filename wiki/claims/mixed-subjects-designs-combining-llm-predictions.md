---
title: "Mixed subjects designs combining LLM predictions with human observations yield valid causal estimates at lower cost"
slug: mixed-subjects-designs-combining-llm-predictions
status: proposed
confidence: 0.55
tags: [silicon-sampling, mixed-methods, prediction-powered-inference, causal-inference, research-design, validity]
domain: "NLP"
source_papers: [mixed-subjects-design-treating-large-language]
evidence:
  - source: mixed-subjects-design-treating-large-language
    type: supports
    strength: moderate
    detail: "Broska et al. demonstrate that prediction-powered inference (PPI) using LLM predictions as informative priors plus a human gold-standard subsample preserves statistical validity while reducing cost; PPI correlation quantifies the effective sample size boost from LLM predictions."
conditions: "Requires a human gold-standard sample (not a purely LLM design); validity depends on LLM predictions having non-trivial PPI correlation with outcomes; most applicable when LLM-human PPI correlation is ≥ 0.5. Best suited for causal effect estimation, not distributional inference."
date_proposed: 2026-04-28
date_updated: 2026-04-28
---

## Statement

Rather than fully replacing human participants, LLMs can be treated as "potentially informative observations" in a mixed subjects design. Using prediction-powered inference (PPI), a small human gold-standard sample validates and recalibrates LLM predictions, yielding statistically valid causal estimates at lower cost than all-human designs — while the PPI correlation formally quantifies the efficiency gain.

## Evidence summary

Broska et al. (2025) demonstrate the mixed subjects design framework using PPI methodology. The key insight is that LLMs don't need to be accurate — they need to be informative (correlated with human outcomes). Even partial LLM accuracy translates into reduced human sample requirements via PPI. Power analysis tools allow researchers to optimize the human-to-LLM allocation ratio.

## Conditions and scope

- Requires at least a small human gold-standard sample — not a fully LLM-only design
- Most effective when PPI correlation is ≥ 0.5 (LLMs must be somewhat informative)
- Best for causal effect estimation; distributional inference requires additional considerations
- Does not apply to research questions where the validity of human participation is itself the object of study

## Counter-evidence

- If PPI correlation is low, the design reverts to a small human study with negligible cost savings
- Validity depends on LLM bias being consistent within a study context — may fail if bias varies across conditions

## Linked ideas

## Open questions

- What is the distribution of PPI correlations across research domains and LLMs?
- Can mixed designs be pre-registered to prevent researcher manipulation of the human/LLM split?
- How does the design perform for repeated-measures or longitudinal research?
