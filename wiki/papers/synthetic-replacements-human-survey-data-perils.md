---
title: "Synthetic Replacements for Human Survey Data? The Perils of Large Language Models"
slug: synthetic-replacements-human-survey-data-perils
arxiv: ""
venue: "Political Analysis"
year: 2024
tags: [silicon-sampling, llm-bias, survey-methodology, political-science, opinion-representation, demographic-bias]
importance: 4
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [synthetic replacements, LLM bias, political surveys, opinion estimation, demographic representation, ANES, polarization]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

Can LLMs serve as synthetic replacements for human survey respondents in political science research? What specific empirical failures arise when attempting to use LLMs as survey sample substitutes?

## Key idea

LLMs cannot reliably substitute for human survey data: they produce narrower distributions than real populations, overrepresent certain demographic perspectives, and their "personae" do not consistently behave as the targeted groups would. The perils are systematic, not just random noise.

## Method

- Empirical evaluation using ANES (American National Election Studies) data
- LLMs prompted with demographic persona information matching real respondents
- Comparison of LLM-generated responses with actual survey data at aggregate and subgroup levels
- Assessment of political attitude distributions, polarization, and cross-demographic variation

## Results

- LLM-generated distributions are systematically narrower than human distributions — less heterogeneous
- Models overrepresent liberal, educated, high-income perspectives
- Personae conditioning improves some metrics but cannot overcome fundamental distributional skew
- Political polarization patterns are distorted: artificial consensus in some areas, artificial conflict in others
- Findings replicate and extend across multiple LLMs and survey instruments

## Limitations

- Primarily evaluated on U.S. political opinion data (ANES); generalizability to other domains and countries uncertain
- Based on off-the-shelf persona conditioning; fine-tuned models or richer conditioning may perform differently
- Paper predates Park et al. (2024) interview-based conditioning approach

## Open questions

- Do the specific failure modes (distributional narrowing, demographic skew) persist with fine-tuned or interview-grounded models?
- Can simulation be reliably used for *relative* comparisons (A vs. B treatment effects) even when absolute distributions are wrong?
- What is the minimum acceptable level of distributional accuracy for different research purposes?

## My take

One of the most rigorous empirical critiques of silicon sampling from a political science perspective. The "narrower distributions" finding connects directly to the overregularization/heterogeneity ceiling identified by Restoring Heterogeneity (2024) and the structural ceiling claim. Published in Political Analysis (top methods journal), so methodologically authoritative for the field.

## Related

- [[silicon-sampling]]
- supports: [[llms-misrepresent-human-opinion-distributions]]
- [[whose-opinions-language-models-reflect]]
- [[llm-social-simulations-structural-heterogeneity-ceiling]]
- [[out-one-many-using-language-models]]
- [[james-bisbee]]
