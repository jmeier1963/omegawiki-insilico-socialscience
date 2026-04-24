---
title: "Log-probability evaluation methods systematically underestimate LLM distributional alignment with human opinion distributions"
slug: log-probability-methods-systematically-underestimate-llm
status: proposed
confidence: 0.7
tags: [distributional-alignment, evaluation, silicon-sampling, llm-measurement, verbalization]
domain: NLP
source_papers: [benchmarking-distributional-alignment-large-language-models]
evidence:
  - source: benchmarking-distributional-alignment-large-language-models
    type: supports
    strength: strong
    detail: "Systematic benchmark across three distribution expression methods (log-probabilities, sampling, verbalization): verbalization outperforms both alternatives; log-probabilities systematically underestimate alignment, suggesting prior negative results using log-probabilities may have measured the expression method rather than genuine LLM knowledge of distributions."
conditions: "Tested on NYT Book Opinions and political/cultural opinion datasets; evaluation using total variation distance metric."
date_proposed: 2026-04-14
date_updated: 2026-04-14
---

## Statement

Standard log-probability evaluation methods for measuring how well LLMs match human opinion distributions systematically underestimate true LLM knowledge of those distributions. LLMs can more accurately describe opinion distributions in verbalized text form (e.g., as explicit probability distributions) than by generating samples or computing log-probabilities of response options.

## Evidence summary

Meister, Guestrin & Hashimoto (2024, Stanford): benchmark systematically varies distribution expression method, steering method, and dataset. Finds verbalization consistently outperforms log-probability and sampling methods for distributional alignment, measured via total variation distance against human ground-truth distributions.

## Conditions and scope

- Evaluated on NYT Book Opinions and political/cultural opinion domains
- Uses total variation distance as alignment metric
- May not hold for fine-tuned models specifically optimized for one expression method

## Counter-evidence

- Verbalization introduces its own biases (models may confabulate about their own distributional knowledge)
- The gap between verbalization and sampling may reflect LLMs' ability to describe stereotypes rather than genuine distributional knowledge

## Linked ideas

## Open questions

- Is verbalized distributional knowledge (model describes distribution) causally linked to behavioral distributional alignment (model generates aligned responses)?
- Can the measurement gap be closed by fine-tuning specifically for calibrated distributional sampling?
