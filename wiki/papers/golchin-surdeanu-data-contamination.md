---
title: "Time Travel in LLMs: Tracing Data Contamination in Large Language Models"
slug: golchin-surdeanu-data-contamination
arxiv: "2308.08493"
venue: "ICLR 2024"
year: 2024
tags: [data-contamination, llm-evaluation, benchmark-integrity, memorization, reproducibility, llm-methodology]
importance: 3
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [data contamination, LLM benchmarks, memorization, benchmark leakage, test set contamination, evaluation validity]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

LLMs are trained on massive internet-scraped corpora that may include evaluation benchmarks. If test examples appear in training data, reported benchmark performance is inflated — a form of unintentional data leakage. How can we detect and measure this contamination?

## Key idea

A two-stage guided prompting method detects data contamination at the instance level (is this specific example in the training data?) and partition level (is this dataset's test split contaminated?). The method exploits the observation that memorized examples can be "unlocked" by initial context cues.

## Method

- Stage 1: prompt the LLM with the beginning of a benchmark example, ask it to complete the rest
- Stage 2: compare LLM completion to the ground-truth answer; statistical tests identify contaminated partitions
- Applied to multiple LLMs (GPT-4, LLaMA, Falcon, etc.) and benchmark datasets
- ICLR 2024 (note: user citation as "EMNLP 2024" is a venue error)

## Results

- Many prominent benchmarks show evidence of contamination in several LLMs
- Contamination rates vary substantially across models and datasets
- Models that perform best on a benchmark sometimes show highest contamination — suggesting score inflation
- Method works without access to model weights (black-box analysis)

## Limitations

- Method has false positives: some "completion" may reflect generalization, not memorization
- Requires careful calibration of similarity thresholds
- Cannot quantify the degree to which contamination inflates specific reported scores

## Open questions

- How much does contamination explain state-of-the-art benchmark performance on reasoning tasks?
- Should benchmark evaluations require explicit contamination analysis?

## My take

An important methodological contribution for AI evaluation. Together with Kapoor & Narayanan (2023), establishes that a non-trivial fraction of impressive AI benchmark results may reflect training data leakage rather than genuine generalization. The groeneveld-olmo-language-models paper (open training data) directly enables contamination analysis.

## Related

- [[kapoor-narayanan-leakage-reproducibility]]
- [[groeneveld-olmo-language-models]]
- [[open-science-collaboration-reproducibility]]
- [[narayanan-kapoor-ai-normal-technology]]
