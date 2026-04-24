---
title: "Can we automatize scientific discovery in the cognitive sciences?"
slug: automatize-scientific-discovery-cognitive-sciences
arxiv: "2603.20988"
venue: "arXiv preprint"
year: 2026
tags: [automated-discovery, cognitive-science, foundation-models, in-silico-experimentation, hypothesis-generation]
importance: 2
date_added: 2026-04-14
source_type: pdf
s2_id: ""
keywords: [agentic experiment generation, foundation model of cognition, LLM-based program synthesis, individual difference modeling, in-silico scientific discovery]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Cognitive science research is constrained by the cost and speed of human-subject experimentation. Can an automated in-silico discovery loop — generating novel paradigms, simulating behavioral data using foundation models, and hypothesis testing via algorithmic synthesis — replace or augment human-led cognitive science research?

## Key idea

A closed-loop automated discovery system with three components:
1. **LLMs generate experimental paradigms**: novel tasks and scenarios beyond standard cognitive science batteries
2. **Foundation model (Centaur) simulates behavioral data**: a foundation model of human cognition conditioned on individual differences generates high-fidelity behavioral data
3. **LLM program synthesis performs hypothesis testing**: generates and evaluates algorithmic hypotheses about cognitive mechanisms
4. **LLM critic evaluates "interestingness"**: guides iterative refinement via a novelty/conceptual-yield metric

## Method

Automated loop: LLM generates paradigm → Centaur simulates data → LLM program synthesis generates hypotheses → LLM critic evaluates interestingness → iterate. No human subject involvement after initial model training.

## Results

- Conceptual paper with system description; presents automated discovery loop design
- Key claim: the combination of LLM paradigm generation + foundation model behavioral data + LLM hypothesis synthesis enables scalable exploration of cognitive mechanisms
- "Interestingness" metric enables autonomous steering away from already-known patterns

## Limitations

- No empirical validation of the complete automated loop on real cognitive science questions
- Foundation model (Centaur) fidelity depends on training data quality and individual difference coverage
- "Interestingness" as an LLM-evaluated metric is subjective and may systematically miss low-salience but important findings

## Open questions

- How does automated discovery compare to human-led discovery in finding novel cognitive mechanisms?
- Can the loop produce hypotheses that are testable in human subjects (not just in-silico)?
- Does Centaur's individual difference modeling generalize to clinical/atypical populations?

## My take

An ambitious vision paper proposing full automation of cognitive science discovery. The foundation model of cognition (Centaur) is the key enabler. The epistemological challenge is whether in-silico discovery produces externally valid cognitive science claims, or just patterns that look interesting to LLMs. Relates to the broader SCM-based automated experimentation work in social science.

## Related

- supports: [[llm-driven-automated-silico-discovery-loop]]
- [[foundation-model-of-cognition]]
- [[scm-based-automated-experimentation]]
