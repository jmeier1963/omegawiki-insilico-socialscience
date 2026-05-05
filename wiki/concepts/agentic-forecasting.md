---
title: "Agentic Forecasting"
aliases: ["LLM forecasting", "AI superforecasting", "judgmental AI forecasting", "agentic search forecasting"]
tags: [forecasting, llm, agentic-ai, superforecasting, calibration]
maturity: emerging
key_papers: [aia-forecaster]
first_introduced: "2024"
date_updated: 2026-05-04
related_concepts: [automated-research-pipeline]
---

## Definition

Agentic forecasting is an LLM-based approach to judgmental forecasting that combines autonomous information retrieval (agentic search over news sources), multi-agent aggregation (supervisor agents reconciling sub-forecaster disagreements), and statistical calibration to produce probability estimates for open-ended future events. It differs from statistical forecasting in operating on unstructured text rather than tabular data.

## Intuition

Human superforecasters succeed by actively seeking out relevant information, aggregating diverse sub-analyses, and calibrating confidence appropriately. Agentic forecasting replicates these three steps mechanically: search agents gather evidence, a supervisor agent reasons about disagreements, and a calibration layer corrects for LLMs' tendency to hedge toward 50% (underconfidence).

## Formal notation

Let Q be a forecasting question, S = {s_1, ..., s_k} search results from agentic retrieval, F_i the probability estimate from sub-forecaster i, and F_sup the supervisor-reconciled aggregate. Calibration via Platt scaling maps F_sup → F_cal to correct for systematic attenuation bias.

## Variants

- **Simple averaging**: mean of sub-forecaster outputs; strong baseline
- **Supervisor aggregation**: a reasoning LLM resolves disagreements between sub-forecasters
- **Platt scaling calibration**: logistic regression on held-out data to de-attenuate hedged probabilities; shown equivalent to generalized log-odds extremization
- **Foreknowledge bias filtering**: search queries filtered to exclude information that would not have been available at forecast time

## Comparison

Distinct from statistical forecasting (time-series models, tabular data). Related to prediction market aggregation but does not require market prices. The ensemble of agentic forecaster + market consensus outperforms either alone, suggesting complementary information sources.

## When to use

When forecasting open-ended events from unstructured text (news, reports), especially where tabular data is unavailable or insufficient. Not suited for high-frequency financial forecasting or domains requiring precise numerical modeling.

## Known limitations

- Requires high-quality, up-to-date news source access; performance degrades without good search
- Calibration correction requires a validation set of resolved historical forecasts
- Underperforms liquid prediction market consensus on hard questions — market prices encode information LLMs cannot fully replicate

## Open problems

- Can agentic forecasters match prediction market consensus on genuinely hard geopolitical questions?
- How does performance scale with number of search agents and diversity of sub-forecasters?
- Does domain specialization (e.g., dedicated scientific forecasting agents) improve on generalist systems?

## Key papers

- [[aia-forecaster]]

## My understanding

The calibration / de-attenuation insight is the most transferable contribution — LLMs systematically hedge, and this can be corrected via a simple post-processing step. The agentic search architecture is intuitive but the foreknowledge bias filtering is a subtle and important implementation detail that is easy to overlook.
