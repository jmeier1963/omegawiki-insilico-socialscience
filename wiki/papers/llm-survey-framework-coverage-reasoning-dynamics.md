---
title: "LLM Survey Framework: Coverage, Reasoning, Dynamics, Identification"
slug: llm-survey-framework-coverage-reasoning-dynamics
arxiv: ""
venue: "NBER Working Paper w34308"
year: 2025
tags: [llm-surveys, economic-surveys, silicon-sampling, inflation-expectations, cost-efficiency]
importance: 3
date_added: 2026-04-23
source_type: pdf
s2_id: ""
keywords: [LLM surveys, economic surveys, inflation expectations, silicon sampling, treatment effects, identification]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

Human economic surveys are expensive, infrequent, and limited in temporal coverage. Can LLM-based surveys reliably replicate human survey results for economic questions like inflation expectations?

## Key idea

LLM-based surveys recover **human-comparable treatment effects** in a multi-wave RCT of inflation expectations surveys, at **1/1000 the cost** of human surveys. The framework extends historical survey data from 10 human waves (2018–2023) to over 50 LLM-based waves back to 1990, enabling analysis of dynamic treatment effects and expectation formation mechanisms previously impossible with human surveys.

## Method

- Multi-wave randomized controlled trial (RCT) of inflation expectations surveys
- LLM-based respondents compared to human respondents for treatment effect recovery
- Extension of historical data from 10 to 50+ waves (1990–2023) via LLM re-running
- Analysis of mean-reversion and individual-attention channels in expectation formation

## Results

- LLM surveys recover human-comparable treatment effects at 1/1000 cost
- 50+ historical waves reconstructed enabling unprecedented longitudinal analysis
- Identifies specific economic channels (mean-reversion, individual-attention) that human surveys cannot isolate due to data constraints
- Enables research designs "unattainable with human surveys"

## Limitations

- Validated on inflation expectations — generalizability to other survey domains unclear
- LLMs may not reproduce rare or idiosyncratic responses at the tails of distributions
- Causality of historical LLM waves is unclear (LLMs trained on intervening data)

## Open questions

- Does the LLM survey approach generalize to political opinion, social attitudes, and other survey domains?
- How sensitive are results to the choice of LLM model?

## My take

Directly relevant to this wiki's core theme: the most rigorous economic validation of LLM surveys to date. The 1/1000 cost finding and the historical extension capability address key practical concerns about silicon sampling. The identification of economic channels that human surveys can't isolate is the most scientifically novel finding.

## Related

- [[silicon-sampling]]
- [[algorithmic-fidelity]]
- [[out-one-many-using-language-models]]
- [[llms-accurately-simulate-human-subpopulation-survey]]
