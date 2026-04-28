---
title: "Artificial Intelligence, Unbiased Opinions? Assessing GPT's suitability for public opinion simulation outside the US"
slug: artificial-intelligence-unbiased-opinions-assessing-gpt
arxiv: ""
venue: "GOR 2023 (conference poster)"
year: 2023
tags: [silicon-sampling, llm-bias, german-context, gpt-3, public-opinion, vote-choice, cross-national]
importance: 1
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [GPT-3, German public opinion, GLES, vote choice, silicon sampling, cross-national bias, Argyle replication]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

Argyle et al. (2023) showed GPT-3 could replicate U.S. ANES data using demographic personas. Does this generalize to Germany? Can GPT-3 estimate German public opinion outside the U.S. context?

## Key idea

Preliminary findings: GPT-3 does NOT successfully replicate German GLES data as it did ANES data. It shows a leftward bias (toward Green/Left parties), performs better on "typical" voter subgroups, and fails to capture the multifactor drivers of German vote choice.

## Method

- Applied Argyle et al. (2023) methodology to German context
- Prompted GPT-3 with personas matching GLES 2017 post-election cross-section
- Compared predicted vote shares to GLES survey data at aggregate and subgroup levels

## Results

- GPT-3 does not successfully predict German vote choice
- Bias toward Green and Left parties (leftward skew)
- Better predictions for more "typical" voter subgroups
- Conditions under which LLMs can be used for non-U.S. opinion estimation are unclear

## Limitations

- Conference poster — preliminary, no formal statistical evaluation
- GPT-3 is outdated; newer models may perform differently
- Single election cycle (2017) — may not generalize

## Open questions

- Does the leftward bias reflect training data composition or RLHF fine-tuning?
- Would newer GPT versions or cultural prompting reduce the bias for German data?

## My take

Part of the von der Heyde series (three papers on German silicon sampling). The poster format limits the analysis but the finding is consistent across their three papers: GPT systematically fails on German political data. Together these three papers provide converging evidence for the cultural bias finding that Tao et al. (2024) later documented more systematically.

## Related

- [[silicon-sampling]]
- supports: [[llms-misrepresent-human-opinion-distributions]]
- [[vox-populi-vox-ai-using-language]]
- [[assessing-bias-llm-generated-synthetic-datasets]]
- [[cultural-bias-cultural-alignment-large-language]]
