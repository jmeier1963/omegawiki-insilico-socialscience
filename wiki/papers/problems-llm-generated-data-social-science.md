---
title: "The Problems of LLM-generated Data in Social Science Research"
slug: problems-llm-generated-data-social-science
arxiv: ""
venue: "preprint / essay"
year: 2024
tags: [silicon-sampling, llm-data, epistemology, synthetic-data, social-science, methodology]
importance: 2
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [LLM-generated data, synthetic data, epistemology, social science, proxy data, data augmentation, methodological assumptions]
domain: "Computational Social Science"
code_url: ""
cited_by: []
---

## Problem

LLMs are increasingly used to generate synthetic data for social science research. But what epistemological assumptions underlie this practice? Are these assumptions defensible, and what are the key challenges they create?

## Key idea

LLM-based synthetic data rests on fundamentally different epistemological assumptions than traditional synthetic data (statistical simulation). This creates methodological challenges that the social science community has not fully confronted: questions of validity, generalizability, and the status of "LLM opinions" as proxies for human opinions.

## Method

- Essay / position paper by Rossi et al.
- Reviews how LLMs have been used for synthetic data in social science: (1) data augmentation, (2) prototyping, (3) human subject proxy
- Critiques underlying epistemological assumptions for each use case

## Results

- LLM-generated data is justified by different logics than statistical synthetic data
- For human proxy use: the key assumption (LLM responses ≈ human responses) lacks sufficient empirical grounding
- For data augmentation: may introduce correlational artifacts from LLM training data
- Main challenges: distinguishing LLM artifacts from genuine social patterns, lack of ground truth for novel synthetic scenarios

## Limitations

- Essay format — no new empirical findings
- Critique is largely conceptual; does not propose concrete solutions
- Focuses on problems rather than conditions under which LLM data might be valid

## Open questions

- Can the validity assumptions of LLM-as-human-proxy ever be fully justified empirically?
- How should LLM-generated data be treated in meta-analyses?
- What disclosure standards should journals require for studies using LLM-generated data?

## My take

Useful philosophical complement to the empirical failures documented elsewhere. Identifying the distinct epistemological assumptions behind LLM synthetic data helps explain why standard validity checks (test-retest, inter-rater reliability) may not apply directly. The critique that LLM data "builds on fundamentally different epistemological assumptions" echoes Rossi et al. in design research and the philosophy-of-science concerns about LLM opacity.

## Related

- [[silicon-sampling]]
- supports: [[llms-misrepresent-human-opinion-distributions]]
- [[synthetic-replacements-human-survey-data-perils]]
