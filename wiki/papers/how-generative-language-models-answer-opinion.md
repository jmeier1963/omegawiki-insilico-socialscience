---
title: "How do Generative Language Models Answer Opinion Polls?"
slug: how-generative-language-models-answer-opinion
arxiv: ""
venue: "preprint"
year: 2024
tags: [silicon-sampling, llm-bias, opinion-polls, machine-bias, social-space, survey-simulation]
importance: 2
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [generative AI, opinion polls, machine bias, social space, representativity bias, LLM simulation]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

Can generative AI models replace human respondents in survey research? Two competing theses exist: "representativity" (LLMs reflect population attitudes) and "social bias" (LLMs are biased toward certain groups). This paper tests both and proposes a third account.

## Key idea

LLMs cannot replace human respondents for opinion/attitudinal research: they occupy only a small, inconsistent region of social space — a "machine bias" that is distinct from representativity failure and varies randomly across questions. Neither existing thesis captures this pattern.

## Method

- Experiment using survey questionnaires administered to LLMs
- LLM responses compared against human survey data
- Analysis framed through the concept of "social space" — the multidimensional space of opinion positions across respondents

## Results

- LLMs cannot replace research subjects for opinion/attitudinal research (replicated finding)
- LLMs display strong bias per question (occupying only a small region of social space)
- The bias varies randomly from question to question (reaching a different region each time) — "machine bias"
- Neither the representativity thesis nor the social bias thesis fully captures this: neither stable representation nor stable bias, but unstable bias

## Limitations

- Specific LLMs and survey instruments not detailed in the available abstract
- "Machine bias" is a proposed theoretical framing, not yet widely replicated
- No formal statistical test for the claimed randomness of bias direction

## Open questions

- Is machine bias a product of RLHF fine-tuning, pre-training data, or model architecture?
- Can machine bias be measured and corrected systematically, or is it fundamentally unpredictable?
- Does machine bias reduce with model scale or newer architectures?

## My take

The "machine bias" concept is a useful theoretical contribution: it distinguishes a third failure mode (random instability across questions) from the two more commonly discussed (systematic demographic skew, specific cultural bias). Connects to the prompt-sensitivity findings in Rupprecht et al. (2025). The instability aspect complicates calibration — if the bias direction is random, statistical correction is much harder.

## Related

- [[silicon-sampling]]
- supports: [[llms-misrepresent-human-opinion-distributions]]
- [[whose-opinions-language-models-reflect]]
- [[prompt-perturbations-reveal-human-like-biases]]
