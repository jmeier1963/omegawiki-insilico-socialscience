---
title: "Optimizing synthetic populations for support coverage captures real human diversity better than density matching"
slug: support-coverage-beats-density-matching-for-diversity
status: weakly_supported
confidence: 0.6
tags: [synthetic-personas, social-simulation, diversity, mode-collapse]
domain: NLP
source_papers: [persona-generators-generating-diverse-synthetic-personas]
evidence:
  - source: persona-generators-generating-diverse-synthetic-personas
    type: supports
    strength: moderate
    detail: "Evolved Persona Generators (AlphaEvolve over generator code) beat baselines on six diversity metrics on held-out contexts and, by defeating mode collapse, match true human trait variance better than baselines explicitly grounded in demographic data."
conditions: "Evaluated via auto-generated questionnaires and embedding-based diversity metrics; 'full support' is bounded by the base LLM's latent knowledge."
date_proposed: 2026-06-20
date_updated: 2026-06-20
---

## Statement

Shifting the objective from density matching (reproducing aggregate human statistics) to support coverage (spanning the full landscape of traits/opinions/preferences) yields synthetic populations that both cover consequential outliers and, by mitigating LLM mode collapse, better reproduce real human trait variance.

## Evidence summary

A single strong study (Google DeepMind) shows evolved generators dominate baselines on coverage/diversity metrics and out-match demographically-grounded baselines on true variance — evidence that coverage and realism are not in tension.

## Conditions and scope

Holds for questionnaire/embedding-based evaluation; downstream task validity of the extra diversity is not yet demonstrated. One can resample a high-coverage population to any target density.

## Counter-evidence

None recorded. Numerical diversity does not guarantee the *correct* outliers are present.

## Linked ideas

## Open questions

Does coverage transfer to high-stakes forecasting (e.g., societal response to AGI)? How to certify critical-outlier representation?
