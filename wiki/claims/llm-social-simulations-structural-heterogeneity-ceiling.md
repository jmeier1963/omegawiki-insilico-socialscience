---
title: "LLM social simulations exhibit persistent overregularization — a structural ceiling on heterogeneity preservation"
slug: llm-social-simulations-structural-heterogeneity-ceiling
status: proposed
confidence: 0.6
tags: [silicon-sampling, heterogeneity, overregularization, algorithmic-fidelity, simulation-limits]
domain: NLP
source_papers: [restoring-heterogeneity-llm-based-social-simulation]
evidence:
  - source: restoring-heterogeneity-llm-based-social-simulation
    type: supports
    strength: moderate
    detail: "Systematic evaluation across segmentation strategies for U.S. climate opinion simulation: all tested configurations show residual overregularization — no approach fully captures real-world population diversity despite optimization."
conditions: "Evaluated on U.S. climate opinion survey data with off-the-shelf LLMs; magnitude of ceiling may vary across survey domains, LLM families, and conditioning approaches."
date_proposed: 2026-04-14
date_updated: 2026-04-14
---

## Statement

LLM-based social simulations persistently fail to capture the full diversity of real-world human opinion distributions, exhibiting systematic overregularization. This residual homogenization is a structural property of current LLM architectures (not merely a calibration/prompting issue) — even optimized audience segmentation strategies cannot fully overcome it.

## Evidence summary

2604.06663 evaluates multiple audience segmentation strategies on U.S. climate opinion data. All tested configurations — including optimized instrument-based and data-driven selection — show residual overregularization. The overregularization is not random but systematic: LLM simulations underestimate tail distributions and inter-subgroup variance.

## Conditions and scope

- Demonstrated on U.S. climate opinion survey data
- Tested with off-the-shelf (non-fine-tuned) LLMs
- Magnitude of overregularization ceiling may differ across LLM families and conditioning approaches

## Counter-evidence

- Park et al. (2024) achieve high individual-level accuracy with interview-grounded conditioning, suggesting richer conditioning might reduce the ceiling
- Fine-tuned models (e.g., Polypersona) may show different heterogeneity patterns
- Different survey domains (e.g., political identity) may produce different results

## Linked ideas

## Open questions

- Is overregularization reducible through fine-tuning on diverse human opinion data?
- Does the ceiling correlate with training data diversity (more diverse training → lower overregularization)?
- What is the theoretical lower bound on overregularization for transformer-based language models?
