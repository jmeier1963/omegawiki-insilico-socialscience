---
title: "Persona Generators: Generating Diverse Synthetic Personas for Arbitrary Contexts"
slug: persona-generators-generating-diverse-synthetic-personas
arxiv: "2602.03545"
venue: "Preprint"
year: 2026
tags: [synthetic-personas, social-simulation, diversity, mode-collapse, alphaevolve, in-silico-social-science]
importance: 4
date_added: 2026-06-20
source_type: pdf
s2_id: ""
keywords: [persona generator, support coverage, density matching, mode collapse, AlphaEvolve, Concordia, diversity maximization]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Using LLMs to simulate human populations is a scalable laboratory for in-silico social science and AI stress-testing, but LLMs collapse onto a narrow band of stereotypical, agreeable WEIRD responses. Most prior work optimizes for **density matching** (reproducing aggregate human statistics), which enforces behavioral uniformity and underrepresents the rare, consequential outliers that actually drive system failures.

## Key idea

Shift the objective from **algorithmic fidelity / density matching** to **support coverage**: ensure synthetic populations span the entire landscape of possible traits, opinions, and preferences. Learn a reusable **Persona Generator** — a lightweight function that expands a short scenario prompt into a diverse synthetic population on demand — by evolving the *generator's code* (not the personas) with an AlphaEvolve loop that uses LLMs as mutation operators.

## Method

- Formalizes persona generation as **diversity maximization** over trait/preference embeddings.
- Two-stage generator architecture: an autoregressive stage 1 that places each persona along diversity axes (population-level diversity), and a parallel stage 2 that expands each into full detail (efficiency).
- Auto-generates questionnaires (context, diversity axes, Likert items) seeded from validated psychometric scales (BFI, DASS, SVO, NFCS) via Gemini 2.5 Pro; 50 questionnaires split 30/10/10.
- Personas answer items inside **Concordia** simulations; six diversity metrics form the fitness function; **AlphaEvolve** iteratively mutates generator code.

## Results

- Evolved generators substantially outperform baselines across six diversity metrics on held-out contexts.
- By explicitly fighting mode collapse, generated populations match the **true variance** of real human trait distributions *better* than baselines specifically grounded in demographic data — i.e., maximizing support coverage does not cost realism (one can always resample to a target density afterward).

## Limitations

Evaluation is questionnaire/embedding-based; coverage of "all possible traits" is bounded by the base LLM's latent knowledge; diversity metrics may not align with downstream task validity; optimization context can differ from deployment.

## Open questions

Does support coverage transfer to high-stakes forecasting (e.g., societal response to AGI)? How to certify that critical outliers are actually represented rather than merely numerically diverse?

## My take

A clean reframing of the synthetic-population problem: diversity-first rather than mean-first. Directly addresses the [[heterogeneity-collapse]] / [[optimization-induced-uniformity]] failure mode and slots into the wiki's synthetic-survey and persona-conditioning agenda. The "evolve the generator code, not the data" move is the methodological novelty.

## Related

- [[support-coverage]]
- [[persona-conditioning]]
- [[generative-agent-based-modeling]]
- [[optimization-induced-uniformity]]
- [[heterogeneity-collapse]]
- [[algorithmic-fidelity]]
- supports: [[support-coverage-beats-density-matching-for-diversity]]
- [[joel-leibo]]
- [[alexander-sasha-vezhnevets]]
