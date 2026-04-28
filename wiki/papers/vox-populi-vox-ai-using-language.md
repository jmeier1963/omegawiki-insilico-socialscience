---
title: "Vox Populi, Vox AI? Using Language Models to Estimate German Public Opinion"
slug: vox-populi-vox-ai-using-language
arxiv: ""
venue: "preprint"
year: 2023
tags: [silicon-sampling, llm-bias, german-public-opinion, gpt-3, vote-choice, subgroup-analysis, cross-national]
importance: 2
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [GPT-3, German public opinion, GLES, vote choice, demographic personas, subgroup analysis, partisan bias, cultural limitations]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

Can LLMs estimate German public opinion? Applying the Argyle et al. (2023) methodology to Germany, can GPT-3 predict vote choice in the 2017 German federal elections when prompted with GLES respondent characteristics?

## Key idea

GPT-3 does NOT accurately predict German vote choice: it exhibits a bias toward Green and Left parties, performs better for "typical" voter subgroups, misses multifactor drivers of German partisanship, and fails at nuanced subgroup-specific political attitudes.

## Method

- Replicated Argyle et al. methodology for German context
- 2017 GLES respondents' demographic characteristics used as persona prompts
- GPT-3 conditioned to predict vote choice
- Aggregate and subgroup comparison with actual GLES vote data

## Results

- GPT-3 doesn't predict citizens' vote choice accurately
- Bias toward Green and Left parties
- Better predictions for more "typical" voter subgroups
- Fails to capture multifaceted factors shaping individual German voter choices
- Not reliable for nuanced subgroup-specific political attitude estimation

## Limitations

- GPT-3 only; newer models likely perform differently on German data
- Single election (2017) — limited generalizability across German electoral contexts
- Persona conditioning as implemented by Argyle et al. may not be optimal for German context

## Open questions

- Can fine-tuning on German political data overcome the bias?
- Does cultural prompting (Tao et al. approach) improve German vote prediction?
- What is the minimum training data requirement for reliable non-U.S. silicon sampling?

## My take

Third in the von der Heyde series and the most fully developed of the three (most detailed methods and analysis). Together with the other two papers, establishes a robust finding: U.S.-trained LLMs systematically fail on German political opinion data. The title "Vox Populi, Vox AI?" is a well-chosen rhetorical frame. These three papers are collectively cited as evidence that silicon sampling has a cultural/geographic generalizability problem.

## Related

- [[silicon-sampling]]
- supports: [[llms-misrepresent-human-opinion-distributions]]
- [[artificial-intelligence-unbiased-opinions-assessing-gpt]]
- [[assessing-bias-llm-generated-synthetic-datasets]]
- [[cultural-bias-cultural-alignment-large-language]]
- [[whose-opinions-language-models-reflect]]
