---
title: "How AI Companies Can Pay Fair Rates for the Content They Need"
slug: how-ai-companies-pay-fair-rates
arxiv: ""
venue: "Harvard Business Review"
year: 2026
tags: [data-economy, ai-compensation, content-licensing, scaling-laws, ai-policy, data-markets]
importance: 3
date_added: 2026-07-05
source_type: pdf
s2_id: ""
tldr: "Weyl and Castro Fernandez propose pricing AI training data from the data-mixture weights and scaling laws AI firms already compute, distributing a share of per-model operating profit to creators through ASCAP/BMI-style collective management organizations."
contribution_type: [position]
datasets: []
code_url: ""
cited_by: [two-radical-ways-share-ai-ownership]
---

## Problem & Context

The fight over training data has become a defining economic conflict: creators say their work was taken without payment; AI firms claim fair use and argue that valuing millions of data contributions at scale is technically infeasible (the valuation cost would swallow the value created). Existing remedies — one-off licensing deals or copyright litigation — are backward-looking and do not tie a creator's fortunes to AI's success. Meanwhile the stock of fresh, high-quality human data is running down, and model-collapse research shows quality degrades when models train on model output.

## Key idea

AI firms already produce, as a byproduct of every training run, exactly the two quantities needed to price data fairly and cheaply. A market-based compensation scheme built on these can replace both litigation and welfare-style UBI with a productive stake in AI's upside.

## Method

Three economic principles applied to standard training artifacts, plus an institutional layer:
- **Data-mixture weights → how to divide the pie.** By the equimarginal principle, an optimized mixture means the last token from each source contributes roughly equally; the mixing weight therefore reveals relative source value. It costs nothing extra to compute (the weights are needed to train the model anyway).
- **Scaling laws → how big the pie is.** They map inputs to output value; the authors estimate data accounts for ~40–50% of pre-training value (upper bound), vs. ~20% in a leaked 2021 Amodei/Olah memo (lower bound), giving a ~one-third working midpoint.
- **Per-model operating profit → what to take a share of.** Preferred base over revenue or equity (mirrors Hollywood profit participation); ties payment to the specific asset the data built and shares upside and risk.
- **Institution:** ASCAP/BMI-style collective management organizations (CMOs) issue blanket licenses, collect, and distribute by usage — three steps: set total payment as a scaling-law-anchored % of operating profit (estimated by independent bodies like METR to resist firm manipulation), divide by mixture weights, distribute via CMOs. Payments could evolve into equity stakes with control rights over model behavior.

## Experiment & Results

Position piece, no experiment. Quantitative claims: data ~20–50% of pre-training value; models have earned only ~$15B operating profit so far (too little to matter), but projected ~$10T model-maker valuations and tens-of-trillions annual AI wealth by 2030 imply trillions/year could flow to creators. The music-industry CMO precedent has moved billions/year for decades despite contested formulas.

## Limitations

- Mixing-weight-to-value mapping is "not perfectly linear in a deep neural network" — informative but approximate.
- Relies on firms honestly reporting mixture weights and on independent scaling-law estimates being manipulation-resistant.
- Whole edifice depends on the projected trillions of AI value materializing; at today's $15B profit the scheme is immaterial.
- Ignores post-training/RAG-stage data contributions in the simplest framing.

## Open questions

- Can mixing weights be audited or verified, given firms guard their recipes closely?
- How are individual creators identified and paid within a source category (all "news" vs. a specific outlet vs. a specific article)?
- Does equity-with-control-rights for data creators help or fragment model governance?

## My take

The clever move is using artifacts firms *already* compute, defusing the "valuation is too expensive" objection that has stalled the debate. It reframes creator compensation as an investment in AI's own data supply rather than a tax — a genuinely different framing from UBI-as-panacea, and one that preserves human agency and a productive role. The weak joint is enforcement: the entire scheme hinges on truthful disclosure of closely-guarded mixture weights, which is precisely where firm incentives diverge. Sits alongside the broader predistribution debate on sharing AI's gains.

## Related

- [[scaling-law-data-compensation]]
- [[sharing-ai-prosperity]]
- [[shumailov-model-collapse]]
