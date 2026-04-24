---
title: "The Book of Why"
slug: pearl-mackenzie-book-of-why
domain: general
status: mainstream
aliases: ["Pearl Mackenzie 2018", "causal inference Pearl", "ladder of causation", "do-calculus", "DAG causal model"]
first_introduced: "2018"
date_updated: 2026-04-24
source_url: "https://en.wikipedia.org/wiki/The_Book_of_Why"
---

## Definition

Pearl and Mackenzie's 2018 Basic Books popular science book introduces the "Ladder of Causation" and argues that science and AI have been held back by the inability to reason formally about causality. Correlation-based machine learning is stuck on the first rung; intervention and counterfactual reasoning require the second and third rungs, addressed by Pearl's graphical causal models (DAGs + do-calculus).

## Intuition

There are three levels of causal reasoning: seeing (correlations), doing (interventions), and imagining (counterfactuals). Standard statistics and ML only handle the first level. The do-calculus allows deriving interventional distributions from observational data plus a causal structure (DAG), without running experiments. Counterfactual reasoning ("what if?") requires the full structural causal model.

## Formal notation

**Ladder of Causation**:
1. **Association** (seeing): P(Y|X) — purely observational
2. **Intervention** (doing): P(Y|do(X)) — do-calculus; requires causal structure
3. **Counterfactual** (imagining): P(Yₓ = y | X = x', Y = y') — requires structural equations

**DAG**: Directed Acyclic Graph encoding causal assumptions. **do-calculus**: three rules for transforming interventional queries into observational queries given a DAG.

## Key variants

- **Rubin (1974)**: potential outcomes framework — alternative formalization of causation
- **Peters, Janzing, Schölkopf (2017)**: *Elements of Causal Inference* — modern ML causal inference
- **Judea Pearl (2000)**: *Causality* — technical version of the same ideas

## Known limitations

- DAGs must be specified by a modeler — the causal structure is assumed, not discovered
- Requires untestable assumptions (faithfulness, causal Markov condition)
- Counterfactual claims may be metaphysically controversial (Lewis-style objections)

## Open problems

- Do LLMs have implicit causal knowledge? Can they reason on the third rung?
- Automated causal discovery from observational data remains hard (and possibly impossible in general)

## Relevance to active research

Directly relevant to debates about AI in social simulation (in-silico social science): can LLMs reason causally or only correlate? Also relevant to AI science papers — does automated scientific discovery recover causal structure or only predictive associations?
