---
title: "Leakage and the Reproducibility Crisis in Machine-Learning-Based Science"
slug: kapoor-narayanan-leakage-reproducibility
arxiv: "2207.07048"
venue: "Patterns"
year: 2023
tags: [data-leakage, reproducibility, ml-science, benchmark-inflation, meta-science, methodology]
importance: 4
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [data leakage, reproducibility crisis, ML methodology, benchmark overfitting, scientific validity]
domain: "ML Systems"
code_url: "https://github.com/sayashk/ml-reproducibility"
cited_by: []
---

## Problem

Machine learning is increasingly applied in scientific research (medicine, neuroscience, social science, etc.), but the validity of reported performance claims is uncertain. How widespread is the practice of data leakage — using test information during model training or selection — across ML-based science?

## Key idea

Data leakage (also: data snooping, look-ahead bias) occurs when information from the test set contaminates the training or model-selection process, causing reported metrics to be systematically overoptimistic. The authors survey 17 scientific fields to document how common this is.

## Method

- Surveyed the ML-in-science literature across 17 fields
- Identified 294 papers with clear evidence of data leakage
- Categorized leakage types: feature leakage, sample overlap, preprocessing leakage, temporal leakage, hidden duplicate samples
- Documented how leakage inflates reported accuracy, sometimes dramatically

## Results

- 294 papers across 17 fields show clear data leakage
- Effects can be dramatic: reported 20-30% accuracy advantages that disappear when leakage is removed
- Fields affected include clinical medicine, neuroscience, NLP, computer vision, financial forecasting, genomics
- Leakage is often subtle and easy to miss (e.g., normalization using test-set statistics)

## Limitations

- Survey not exhaustive — only papers where leakage was clearly documentable
- Requires domain expertise to detect subtle leakage in each field
- Does not fully address conceptual replication (different from exact replication)

## Open questions

- What fraction of AI-for-science publications are affected by leakage? Is the problem getting better or worse?
- Do peer reviewers have sufficient ML expertise to detect leakage?
- Are AI-generated scientific results from automated pipelines more or less prone to leakage?

## My take

The most comprehensive empirical documentation of the reproducibility crisis specifically in ML-based science. Should be required reading for anyone using ML in applied scientific research. The results are sobering: a substantial fraction of published ML-in-science findings are unreliable. Companion to Narayanan & Kapoor (2025) "AI as Normal Technology" essay and directly motivates groeneveld-olmo reproducibility infrastructure.

## Related

- [[open-science-collaboration-reproducibility]]
- [[narayanan-kapoor-ai-normal-technology]]
- [[golchin-surdeanu-data-contamination]]
- [[groeneveld-olmo-language-models]]
- [[mayo-statistical-inference-severe-testing]]
- [[hicks-leiden-manifesto]]
