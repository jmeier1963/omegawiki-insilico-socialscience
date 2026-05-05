---
title: "AIA Forecaster: Technical Report"
slug: aia-forecaster
arxiv: "2511.07678"
venue: "arXiv preprint (Bridgewater AIA Labs)"
year: 2025
tags: [forecasting, llm, agentic-ai, superforecasting, calibration, prediction-markets, judgmental-forecasting]
importance: 2
date_added: 2026-05-04
source_type: pdf
s2_id: ""
keywords: [judgmental forecasting, superforecasters, agentic search, supervisor agent, statistical calibration, ForecastBench, prediction markets, Platt scaling]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

Can LLMs match or exceed the performance of expert human forecasters (superforecasters) on open-ended judgmental forecasting tasks? Prior LLM-based forecasters underperform human experts, and there is no verified system achieving expert-level accuracy at scale.

## Key idea

Combining three components — agentic search over high-quality news sources, a supervisor agent that reconciles disagreements across multiple sub-forecasters, and statistical calibration (Platt scaling / log-odds extremization) to counter LLM hedging behavior — the AIA Forecaster achieves superforecaster-level performance on the ForecastBench benchmark.

## Method

Three core components:
1. **Agentic search**: multiple sub-agents independently search high-quality news sources for relevant information before making forecasts; mitigates foreknowledge bias by filtering queries for future-information contamination
2. **Supervisor agent**: reconciles disparate forecasts from sub-agents using structured reasoning; simple averaging is a strong baseline but supervisor improves on disagreements
3. **Statistical calibration**: LLMs systematically attenuate (hedge toward 50%); Platt scaling re-extremizes forecasts toward appropriate confidence; shown equivalent to generalized log-odds extremization

Evaluated on:
- **ForecastBench** (Karger et al. 2024): standard academic forecasting benchmark
- **MarketLiquid**: new 1610-question benchmark from liquid prediction markets (harder)

## Results

- ForecastBench: AIA Forecaster performance statistically indistinguishable from human superforecasters — first verified claim of expert-level AI forecasting at scale
- MarketLiquid: AIA Forecaster underperforms market consensus alone, but ensemble of AIA + market consensus outperforms consensus alone, showing the system adds information beyond market prices
- Search is critical: removing search substantially degrades performance; search must filter for foreknowledge bias
- LLMs attenuate forecasts toward 50%; calibration correction (Platt scaling) is important and transferable

## Limitations

- Technical report from industry (Bridgewater), not peer-reviewed
- ForecastBench questions may not represent the hardest forecasting challenges (prediction market questions are harder)
- Calibration technique requires a validation set of past forecasts, which may not always be available
- Track record is modest (real-time forward-looking results are preliminary)

## Open questions

- Does expert-level forecasting performance generalize to domain-specific forecasting (e.g., scientific, geopolitical) beyond ForecastBench's scope?
- How sensitive is the system to the quality and breadth of the news sources accessible during agentic search?
- Can the calibration approach transfer to other LLM-based prediction tasks beyond open-ended forecasting?

## My take

Interesting system paper establishing a new empirical milestone (AI = superforecasters on ForecastBench), though the benchmark limitations deserve scrutiny. The MarketLiquid results are more informative: the ensemble outperforming consensus alone is a signal that LLMs can extract non-priced information. The statistical calibration / hedging correction insight is practically important and likely transferable. Less relevant to the core wiki domain (AI in social science methods) but relevant to agentic AI research and LLM capability benchmarking.

## Related

- supports: [[llm-agentic-forecaster-achieves-superforecaster-level-accuracy]]
- [[agentic-forecasting]]
- [[automated-research-pipeline]]
