---
title: "Scaling-Law Data Compensation"
aliases: ["data dividend", "mixture-weight data pricing", "collective management organization for AI data", "equimarginal data valuation", "profit-share for training data"]
tags: [data-economy, ai-compensation, scaling-laws, data-markets, ai-policy]
maturity: emerging
definition: "A market mechanism that prices AI training data using the data-mixture weights and scaling laws firms already compute during training, distributing a share of per-model operating profit to content creators through collective management organizations."
key_papers: [how-ai-companies-pay-fair-rates, two-radical-ways-share-ai-ownership]
first_introduced: "2026"
date_updated: 2026-07-05
related_concepts: [sharing-ai-prosperity, post-labor-economy]
---

## Definition

A market mechanism that prices AI training data using two artifacts firms already produce during training — the data-mixture weights (relative source value) and scaling laws (total data share of model value) — and distributes a share of per-model operating profit to content creators through ASCAP/BMI-style collective management organizations.

## Intuition

The long-standing objection to compensating creators is that valuing millions of data contributions after the fact is prohibitively expensive. The insight is that training *already* reveals what data is worth: an optimized data mixture means (by the equimarginal principle) the last token from each source contributes roughly equally, so mixing weights are a zero-marginal-cost signal of relative value, and scaling laws bound the aggregate share of value attributable to data (~20–50% of pre-training value). An institution (a CMO) turns those estimates into blanket-licensed payments.

## Variants

- **Payment form:** cash profit-share vs. equity stakes in models with control rights over model behavior.
- **Profit base:** per-model operating profit (preferred) vs. revenue vs. company equity.
- **Value-share estimate:** upper bound ~40–50% (industry scaling laws) vs. lower bound ~20% (Amodei/Olah 2021 memo); ~one-third working midpoint.
- **Governance layer:** independent estimation of the data share (e.g. by evaluation bodies like METR) vs. firm self-reporting under a pre-release model review.

## Comparison

Contrasts with (1) one-off licensing deals and copyright litigation, which are backward-looking and decouple creators from AI's upside; and (2) UBI-style redistribution, which the authors argue fosters dependence rather than a productive role. Unlike research data-valuation methods (e.g. Shapley-value attribution), it adds no extra computation because the pricing inputs are byproducts of training. Complements the broader [[sharing-ai-prosperity]] predistribution debate.

## Known limitations

- The mixing-weight-to-value mapping is not perfectly linear in a deep network — informative but approximate.
- Depends on firms truthfully disclosing closely-guarded mixture weights.
- Only material if the projected trillions of AI value materialize; at ~$15B current operating profit the transfers are negligible.
- The simplest framing prices pre-training data and underweights post-training/RAG-stage contributions.

## Open problems

- How to audit or verify reported mixture weights against firm incentives to understate the data share.
- Intra-source attribution: identifying and paying individual creators within a category (a specific outlet or article, not just "news").
- Whether equity-with-control-rights for data creators improves or fragments model governance.

## Realized by

- [[how-ai-companies-pay-fair-rates]] — proposes the mixture-weight + scaling-law + CMO mechanism.

## My understanding

The mechanism's strength is defusing the feasibility objection by reusing artifacts that already exist; its weakness is enforcement, since the whole edifice rests on truthful disclosure of exactly the recipes firms guard most closely. Worth watching whether policy (EU acts, White House orders already gesturing at CMOs) supplies the institutional layer the economics assumes.
