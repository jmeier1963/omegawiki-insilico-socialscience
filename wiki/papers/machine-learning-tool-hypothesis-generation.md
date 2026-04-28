---
title: "Machine Learning as a Tool for Hypothesis Generation"
slug: machine-learning-tool-hypothesis-generation
arxiv: ""
venue: "Quarterly Journal of Economics"
year: 2024
tags: [machine-learning, hypothesis-generation, scientific-discovery, social-science, pattern-recognition, empirical-methods]
importance: 4
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [machine learning, hypothesis generation, empirical research, pattern discovery, prediction, social science, QJE]
domain: "Computational Social Science"
code_url: ""
cited_by: []
---

## Problem

How can machine learning contribute to scientific discovery beyond prediction? Can ML identify novel hypotheses by finding patterns in data that human researchers are unlikely to notice or formulate a priori?

## Key idea

ML can function as a hypothesis generation tool by uncovering surprising predictive patterns in data, which researchers can then validate through theory and experiment. The paper demonstrates this in a social science context, using ML to identify non-obvious predictors that generate new theoretical insights.

## Method

- Published in Quarterly Journal of Economics (top economics journal) — Ludwig & Mullainathan
- Empirical demonstration using administrative and social science data
- ML identifies predictors that human researchers would not have hypothesized
- Emphasizes the distinction between ML-as-hypothesis-generator and ML-as-final-answer

## Results

- ML discovers patterns that challenge existing theoretical assumptions
- The process: (1) fit flexible ML model to data; (2) inspect surprising features; (3) generate novel hypotheses from these features; (4) validate hypotheses through theory/experiment
- Applied to understand what predicts a social outcome — discovers non-obvious features that reshape theoretical understanding

## Limitations

- The hypotheses generated are observational — still require experimental validation
- Risk of cherry-picking: ML will find spurious patterns in addition to genuine ones
- Framework requires researcher judgment to distinguish interesting from spurious patterns
- Published in economics context — may require adaptation for other social science domains

## Open questions

- Can the ML-as-hypothesis-generator framework be systematized (automated hypothesis generation)?
- How do LLMs change the hypothesis generation workflow — can they generate hypotheses from ML-discovered patterns?
- What is the expected false hypothesis rate from ML-based discovery?

## My take

A landmark paper for understanding how ML integrates into the scientific process as a discovery tool rather than an endpoint. The QJE venue gives it credibility in empirical social science. The key insight — ML for hypothesis generation, not final conclusion — maps onto how AI-driven scientific discovery should be positioned more broadly. Connects to the AI-as-scientist literature but from a grounded empirical economics perspective.

## Related

- [[ai-driven-scientific-discovery.md]]
- supports: [[machine-learning-generates-novel-scientific-hypotheses]]
- [[automated-social-science-language-models-scientist]]
