---
title: "Assessing Bias in LLM-Generated Synthetic Datasets: The Case of German Voter Simulation"
slug: assessing-bias-llm-generated-synthetic-datasets
arxiv: ""
venue: "preprint"
year: 2023
tags: [silicon-sampling, llm-bias, synthetic-datasets, german-context, gpt-3, vote-choice, privacy]
importance: 2
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [synthetic datasets, LLM bias, German voter simulation, GPT-3, GLES, privacy, accuracy, political bias]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

LLMs are being used to generate synthetic public opinion data, including for privacy research. What biases does this data generation process introduce, particularly in a non-U.S. context?

## Key idea

GPT-3 inaccurately predicts German voter choices, with systematic biases favoring certain political groups and more "predictable" voter profiles. The paper raises critical questions about reliability and ethical use of LLMs for synthetic data generation.

## Method

- Used GPT-3 to construct synthetic personas based on the German Longitudinal Election Study (GLES)
- Prompted LLM to predict voting behavior for 2017 German federal election
- Compared LLM predictions with actual survey data at aggregate and subgroup levels
- Focus on bias sources in the data generation process

## Results

- GPT-3 shows propensity to inaccurately predict voter choices
- Biases favor certain political groups (Green/Left) and more predictable voter profiles
- Raises questions about reliability and ethical use for synthetic data
- Privacy considerations from using real demographic data to generate synthetic responses

## Limitations

- GPT-3 only; newer models may differ
- Single election context
- Privacy analysis is preliminary

## Open questions

- Does synthetic data from LLMs introduce systematic bias patterns that persist across model generations?
- How should researchers validate synthetic voter datasets before using them in analysis?

## My take

Second in the von der Heyde German silicon sampling series. Adds a privacy framing alongside the accuracy critique. The convergence with the GOR poster findings makes both more credible through replication. Together with Vox Populi Vox AI, these three papers establish a robust German-context failure case.

## Related

- [[silicon-sampling]]
- supports: [[llms-misrepresent-human-opinion-distributions]]
- [[artificial-intelligence-unbiased-opinions-assessing-gpt]]
- [[vox-populi-vox-ai-using-language]]
