---
title: "Cultural bias and cultural alignment of large language models"
slug: cultural-bias-cultural-alignment-large-language
arxiv: ""
venue: "PNAS Nexus"
year: 2024
tags: [cultural-bias, llm, silicon-sampling, cross-cultural, gpt-4, opinion-alignment, cultural-prompting]
importance: 3
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [cultural bias, cultural alignment, GPT-4, cross-cultural, opinion polls, cultural prompting, Western bias, English-speaking]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

LLMs are trained predominantly on English-language data. Does this introduce cultural bias into their outputs? Can cultural prompting reduce such bias? 

## Key idea

Five GPT model versions all exhibit cultural values resembling English-speaking and Protestant European countries. Cultural prompting (explicit country/cultural context in prompt) improves alignment for 71–81% of countries in later GPT models, partially compensating for the baseline bias.

## Method

- Disaggregated evaluation of 5 OpenAI GPT models (GPT-3.5-turbo, GPT-4, GPT-4-turbo, GPT-4o)
- Compared against nationally representative survey data from Pew and WVS
- Cultural prompting: prompting models with explicit cultural/national context
- Coverage: multiple countries/territories across cultural regions

## Results

- All five models exhibit values most resembling English-speaking Protestant European countries
- Later models (GPT-4, 4-turbo, 4o) respond better to cultural prompting: 71–81% of countries show improved alignment
- Cultural prompting is a partial fix, not a complete solution
- Earlier models (GPT-3, 3.5) show less improvement from cultural prompting

## Limitations

- Evaluated only on OpenAI models — may not generalize to open-source or non-English-first models
- "Cultural prompting" is a surface-level intervention — cannot address deeper training data imbalances
- Country-level analysis may mask within-country cultural heterogeneity

## Open questions

- Does fine-tuning on non-English multilingual data eliminate the Western bias?
- Can cultural prompting be systematically optimized (e.g., via few-shot examples from the target culture)?
- What is the relationship between language training data proportion and cultural alignment?

## My take

Confirms and quantifies what many suspected: LLMs are culturally Western. The cultural prompting finding is practically useful (71–81% improvement) but the residual bias is important. Directly relevant to silicon sampling validity outside the U.S./Europe context. Connects to the three von der Heyde papers on German opinion estimation failures — the cultural bias documented here explains why GPT-3 performs poorly on German political data.

## Related

- [[silicon-sampling]]
- supports: [[llms-misrepresent-human-opinion-distributions]]
- [[whose-opinions-language-models-reflect]]
- [[vox-populi-vox-ai-using-language]]
