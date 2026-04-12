---
title: "Synthetic Survey Research"
tags: [survey, synthetic-data, public-opinion, methodology, validation]
my_involvement: main-focus
sota_updated: 2026-04-12
key_venues: [POQ, Political Analysis, APSR, IJPOR, SSRN, AAPOR]
related_topics:
  - llm-human-simulacra
  - persona-conditioning-evaluation
key_people: []
---

## Overview

Synthetic survey research uses LLMs to generate artificial survey responses that stand in for (or complement) human respondent data. Applications include: rapid opinion polling at low cost, augmenting small samples with synthetic data, exploring opinion distributions for hypothetical populations or future scenarios, and pre-testing survey instruments. "Silicon sampling" is the colloquial term for using LLMs as survey respondents.

Validation — comparing synthetic responses to real survey data and to behavioral outcomes — is the central methodological challenge. The field has moved from early existence proofs (LLMs can recover broad opinion distributions) toward systematic evaluation of when and where synthetic data is reliable.

## Timeline

- **2022–2023**: Proof-of-concept studies. Argyle et al. and Horton establish viability; Santurkar et al. document biases.
- **2024**: Population-scale synthetic surveys (Chile, German GSS). Distributional alignment benchmarks. NYT "Silicon Sampling" critique signals mainstream attention.
- **2025**: Validation against behavioral evidence. Cross-national replication studies. Methodological guidance papers.
- **2026**: Applied synthetic surveys for policy consultation; governance debates about acceptable use.

## Seminal works

- [[argyle-out-of-one-many]] — foundational validation
- [[homo-silicus-horton]] — economic behavior validation
- [[synthetic-survey-chile]] — large-scale population survey
- [[validating-llm-simulations-behavioral-evidence]] — behavioral validity

## SOTA tracker

| Method | Population | Alignment | Notes |
|--------|-----------|-----------|-------|
| GPT-4 + GSS personas | German GSS | TBD | 2025 |
| LLM synthetic panel | Chile | TBD | 2025 |

## Open problems

- **Behavioral vs. stated validity**: synthetic surveys predict stated preferences but may diverge from behavioral choices
- **Rare opinion holders**: LLMs poorly simulate extreme or minority views; synthetic distributions are compressed toward the center
- **Non-response simulation**: LLMs always respond; real respondents skip questions — synthetic data lacks missing-data structure
- **Longitudinal validity**: can synthetic panels track real opinion change over time?
- **Instrument sensitivity**: LLMs are more sensitive to question wording than human respondents (higher "satisficing")

## My position

Synthetic survey research is most valuable for exploratory piloting and mixed-methods augmentation. Pure LLM-only opinion polling risks systematic bias that is difficult to detect without validation data. The field needs clear guidelines on when synthetic data is and isn't appropriate.

## Research gaps

- Bayesian frameworks for combining synthetic and real survey data are absent
- No systematic comparison across different LLM architectures for the same survey instrument
- Little work on cross-national comparability of synthetic surveys
- Effects of survey design choices (scale, order, framing) on LLM response quality are understudied

## Key people
