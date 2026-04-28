---
title: "Survey Response Generation: Generating Closed-Ended Survey Responses In-Silico"
slug: survey-response-generation-generating-closed-ended
arxiv: "2510.11586"
venue: "arXiv preprint"
year: 2025
tags: [silicon-sampling, survey-methodology, llm, closed-ended-surveys, response-generation, restricted-generation]
importance: 3
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [survey response generation, closed-ended surveys, restricted generation, log-probability, alignment, political attitudes]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

LLM-based survey simulation requires converting model probability distributions into discrete responses to closed-ended questions. Many different Survey Response Generation Methods (SRGMs) have been proposed, but no standardized practice exists and their comparative impact on alignment is unknown.

## Key idea

The choice of Survey Response Generation Method has a large, systematic impact on the alignment between LLM-predicted and human survey responses. Restricted generation methods (forcing the model to output only valid response tokens) outperform other approaches; reasoning does not consistently help.

## Method

- 32 million simulated survey responses across 8 SRGMs × 4 political attitude surveys × 10 open-weight LLMs
- SRGMs evaluated: log-probability extraction, constrained generation, free-form generation, chain-of-thought variants
- Alignment assessed at individual and subpopulation level

## Results

- Significant differences between SRGMs in both individual-level and subpopulation-level alignment
- Restricted Generation Methods perform best overall
- Reasoning output (chain-of-thought) does not consistently improve alignment
- The choice of SRGM can change substantive conclusions about which groups are well-simulated

## Limitations

- Open-weight models only — proprietary models (GPT-4, Claude) not evaluated
- Political attitude surveys in a specific set of countries; may not generalize
- Does not evaluate whether best-performing SRGMs generalize across survey domains (e.g., health, consumer)

## Open questions

- Why do restricted generation methods outperform free-form? Is it because they force within-scale responses, or something more fundamental about how LLMs represent discrete choices?
- Does the best SRGM differ by LLM family (instruction-tuned vs. base models)?
- Can SRGM choice be automated by testing alignment against a small labeled set?

## My take

Methodologically important: the silicon sampling literature has silently varied SRGMs across papers, making comparisons unreliable. This paper provides the most systematic evidence that method choice is not a minor technical detail but a primary determinant of results. Should be required reading before any new silicon sampling study.

## Related

- [[silicon-sampling]]
- supports: [[llms-behavioral-surrogates-require-statistical-calibration]]
- [[benchmarking-distributional-alignment-large-language-models]]
- [[whose-opinions-language-models-reflect]]
