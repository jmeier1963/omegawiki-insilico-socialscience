---
title: "Donald Trumps in the Virtual Polls: Simulating and Predicting Public Opinions with LLMs"
slug: donald-trumps-virtual-polls-simulating-predicting
arxiv: "2411.01582"
venue: "arXiv preprint"
year: 2024
tags: [silicon-sampling, election-prediction, llm-simulation, world-values-survey, anes, cultural-differences, vote-prediction]
importance: 3
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [election prediction, ChatGPT-4o, World Values Survey, ANES, US elections, cultural simulation, vote choice, 2024 election]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

Can LLMs accurately replicate human survey responses and predict election outcomes? Using WVS and ANES data, can ChatGPT-4o simulate cross-cultural differences and forecast U.S. vote choice?

## Key idea

GPT-4o shows notable cultural alignment across U.S.-China samples and provides plausible election forecasts, demonstrating limited but real potential as a supplement for survey-based political research — while also showing limitations on value-sensitive topics.

## Method

- Data: World Values Survey (WVS) + American National Election Studies (ANES)
- Tasks: (1) simulate human responses to socio-cultural and trust questions; (2) predict past U.S. election outcomes; (3) forecast 2024 election
- GPT-4o conditioned on demographic characteristics

## Results

- Notable alignment with human response patterns on broad cultural and trust questions
- Some limitations on value-sensitive topics (religion, national identity)
- Effective replication of cultural differences between U.S. and China samples
- In-sample predictive validity for past U.S. elections
- Plausible out-of-sample forecast for 2024 election outcome

## Limitations

- "Notable alignment" on aggregate masks subgroup failures
- 2024 election prediction is a single data point — not a rigorous forecasting evaluation
- Value-sensitive topics are exactly the ones most politically relevant
- GPT-4o version and prompting details affect generalizability

## Open questions

- How does the cultural alignment result generalize beyond U.S.-China to non-WEIRD countries?
- What prompting approach optimizes election prediction accuracy?
- Can LLMs predict election outcomes better than polling aggregates in low-data contexts?

## My take

Mixed evidence paper: positive results on cultural differences (consistent with Park et al. and the broader simulation literature) but predictive forecasting is underdeveloped. The 2024 election prediction angle grabbed attention but the methodology doesn't meet the standard needed for forecasting claims. More useful as a demonstration of potential use cases.

## Related

- [[silicon-sampling]]
- supports: [[llms-accurately-simulate-human-subpopulation-survey]]
- [[out-one-many-using-language-models]]
- [[whose-opinions-language-models-reflect]]
