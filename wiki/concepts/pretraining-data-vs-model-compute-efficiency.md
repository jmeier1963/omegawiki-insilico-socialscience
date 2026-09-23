---
title: "Pretraining Data-vs-Model Compute-Efficiency Decomposition"
aliases: ["data vs model contribution to pretraining progress", "additive data-model efficiency decomposition", "compute-efficiency multiplier decomposition"]
tags: [scaling-laws, pretraining, data-quality, empirical-methodology]
maturity: emerging
key_papers: [pretraining-progress-mostly-coming-data]
first_introduced: "2026"
date_updated: "2026-09-23"
related_concepts: [software-intelligence-explosion, scaling-law-data-compensation]
---

## Definition

An empirical methodology and finding: pretraining compute-efficiency gains over a given period can be decomposed into a data-improvement multiplier and a model-improvement multiplier by training the full cross-product of year-representative data corpuses and year-representative model recipes across multiple compute budgets, then fitting an additive linear model to the resulting capability grid. Applied to 2019–2025 open recipes and corpuses, the decomposition found a 12.0x data multiplier versus a 3.7x model multiplier at 1e19 FLOPs, with an additive (no-interaction) model explaining 88% of the variance in end-capability score.

## Intuition

Pretraining loss can't be compared directly across models trained on different data, so isolating "how much did data improve things" from "how much did the model improve things" requires literally training every combination and reading off each factor's independent multiplier — analogous to a two-way ANOVA design applied to compute-efficiency scaling curves.

## Variants

- **Additive/independent regime** (what was found here): gains from a model improvement and a data improvement compose by simple multiplication regardless of which is paired with which — realizing one doesn't require the other.
- **Interacting regime** (not found, but the alternative the design rules out): a model improvement's efficiency gain depends on being paired with a specific data corpus, or vice versa — would show up as unexplained variance beyond the additive model's 88%.

## Comparison

- Distinct from a standard scaling law (which fixes data and varies compute/parameters): this decomposition instead fixes compute and varies data and model recipe jointly, treating data quality as a first-class scaling axis alongside architecture.
- Distinct from data-attribution/valuation methods like [[scaling-law-data-compensation]], which price individual data *sources* within a fixed mixture; this decomposition instead attributes aggregate progress *over time* to the data-corpus axis as a whole versus the model-recipe axis as a whole.

## Known limitations

- Demonstrated only at small scale (up to 1e19 FLOPs); the additive/independent finding may not hold at frontier scale.
- End-capability evaluation (OLMES) rather than pretraining loss introduces evaluation noise into the multiplier estimates.
- Says nothing about whether the historical data-improvement trend can continue once easily-scraped internet data is exhausted (the "data wall" question), since it is a backward-looking decomposition of 2019–2025 progress, not a forecast.

## Open problems

- Does the additive/independent structure persist at frontier compute scales, or does data quality matter more (or less) as models get larger?
- Can the same decomposition be extended to post-training (RL, fine-tuning) data versus algorithm improvements, where recent progress has concentrated?
- How does synthetic data fit into the "data multiplier" axis — does it behave like another data-corpus generation, or does it saturate differently from human-scraped corpus improvements?

## Realized by

*No method page — the training/evaluation protocol is paper-specific rather than a named, independently reusable technique.*

## My understanding

The concept's value is in supplying a falsifiable, quantified answer to a question the field mostly argues about qualitatively. The additive/independent result is the more surprising and more useful finding than the headline 3.24x ratio itself, since it implies labs can pursue data and model-recipe improvements as separate, non-competing investments rather than needing to co-design them — at least at the compute scales tested.
