---
title: "Foundation Model of Human Cognition"
aliases: ["Centaur model", "cognitive foundation model", "individual difference behavioral model", "universal cognitive model", "in-silico cognitive simulator"]
tags: [cognitive-science, foundation-models, individual-differences, behavioral-simulation, in-silico]
maturity: emerging
key_papers: [foundation-model-predict-capture-human-cognition, automatize-scientific-discovery-cognitive-sciences, discovering-symbolic-cognitive-models-human-animal]
first_introduced: "2025"
date_updated: 2026-04-23
related_concepts: [homo-silicus, generative-agent-based-modeling, scm-based-automated-experimentation]
---

## Definition

A foundation model of human cognition is a large-scale computational model trained to simulate human behavioral responses across diverse cognitive tasks, conditioned on individual difference variables (age, cognitive ability, personality, etc.). Unlike LLM-based persona conditioning (which conditions on demographic attributes for opinion simulation), a cognitive foundation model aims to reproduce psychometric behavioral patterns (reaction times, error rates, task performance) with individual-level fidelity.

The **Centaur model** (Binz et al.) is the primary instantiation: fine-tuned on large-scale behavioral datasets from cognitive psychology, it generates trial-by-trial behavioral predictions conditioned on individual difference profiles.

## Intuition

If you know someone's age, working memory capacity, and trait anxiety, can you predict their performance on a novel cognitive task? A cognitive foundation model says yes — by learning the functional form of these relationships from data, it can extrapolate to new paradigms. This is analogous to how LLMs extrapolate language patterns to new text.

## Formal notation

Let $X_i$ be the individual difference profile of participant $i$, and $T$ be an experimental paradigm. The cognitive foundation model $\mathcal{M}$ predicts behavioral response distribution:
$$P(Y_i | X_i, T) = \mathcal{M}(X_i, T)$$
where $Y_i$ includes metrics like reaction times, accuracy rates, and choice patterns.

## Variants

- **Centaur**: foundation model fine-tuned on cognitive psychology datasets with individual differences
- **Demographic-conditioned LLMs**: use demographic prompting for opinion/attitude simulation (closer to silicon sampling)
- **Cognitive architectures**: ACT-R, SOAR (mechanistic models; different from data-driven foundation models)

## When to use

- Automated cognitive science discovery loops requiring high-fidelity behavioral data
- Power analysis for cognitive experiment design (simulating expected effect sizes)
- Generating synthetic data for underrepresented populations in cognitive research

## Known limitations

- Fidelity depends on training data coverage of individual difference space and task diversity
- May not generalize to clinical/atypical populations if not represented in training
- Does not capture longitudinal changes in cognitive ability

## Open problems

- Can cognitive foundation models be validated against held-out human experiments?
- How do individual difference profiles need to be specified for faithful simulation?
- Can the approach extend to naturalistic behavioral data beyond lab tasks?

## Key papers

- [[automatize-scientific-discovery-cognitive-sciences]] (2603.20988) — uses Centaur as behavioral simulator in automated discovery loop

## My understanding

Distinct from `homo-silicus` (which conditions LLMs on demographic profiles for socioeconomic opinion simulation). The cognitive foundation model aims at psychometric behavioral prediction — closer to cognitive science than social science. Bridges cognitive architectures and LLM-based simulation.
