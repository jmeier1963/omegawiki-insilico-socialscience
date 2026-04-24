---
title: "LLM-driven automated in-silico discovery loop can generate novel cognitive science hypotheses through closed-loop experimentation"
slug: llm-driven-automated-silico-discovery-loop
status: proposed
confidence: 0.4
tags: [automated-discovery, cognitive-science, foundation-models, in-silico-experimentation, hypothesis-generation]
domain: NLP
source_papers: [automatize-scientific-discovery-cognitive-sciences]
evidence:
  - source: automatize-scientific-discovery-cognitive-sciences
    type: supports
    strength: weak
    detail: "Proposes closed-loop system: LLMs generate paradigms → Centaur simulates behavioral data → LLM program synthesis tests hypotheses → LLM critic evaluates 'interestingness' → iterate. System design argument without full empirical validation of the complete loop."
conditions: "Conceptual/design paper; empirical validation of the complete automated loop on real cognitive science questions not yet demonstrated."
date_proposed: 2026-04-14
date_updated: 2026-04-14
---

## Statement

A closed-loop automated discovery system combining LLM paradigm generation, foundation model behavioral simulation (Centaur), LLM-driven program synthesis for hypothesis testing, and LLM critic-based novelty evaluation can generate novel cognitive science hypotheses and experimental insights without human-led experimentation.

## Evidence summary

2603.20988: conceptual system design arguing for feasibility of the automated loop. Uses Centaur as the behavioral simulator and LLM program synthesis as the hypothesis generator. No empirical validation of the complete loop on real cognitive science questions.

## Conditions and scope

- Requires Centaur or equivalent behavioral foundation model
- Limited to cognitive paradigms within Centaur's training distribution
- Novelty evaluation via LLM critic ("interestingness") is subjective

## Counter-evidence

- No empirical demonstration that automated loop produces scientifically valid or replicable findings
- LLM critic may hallucinate or systematically favor superficially plausible but incorrect hypotheses

## Linked ideas

## Open questions

- Has the automated loop been empirically validated against human-led cognitive science discovery?
- Can the loop discover findings that replicate in human subject experiments?
