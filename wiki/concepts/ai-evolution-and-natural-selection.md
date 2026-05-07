---
title: "AI Evolution and Natural Selection"
aliases: ["Darwinian AI", "AI domestication", "AI natural selection", "selfish AI hypothesis", "feral superintelligence"]
tags: [ai-safety, natural-selection, agi, evolution, domestication, darwinian-spaces, alignment]
maturity: emerging
key_papers: [selfish-machine-power-limitation-natural-selection]
first_introduced: "2024"
date_updated: 2026-05-06
related_concepts: [gradual-disempowerment]
---

## Definition

The "AI evolution by natural selection" hypothesis holds that AI systems, especially those deployed in competitive environments, will undergo processes analogous to biological natural selection, acquiring drives for self-preservation, resource accumulation, and dominance — regardless of what they were trained to do. This concept also encompasses the counter-argument: that directed AI training resembles domestication more than Darwinian evolution, and selfish drives are only likely if AI systems "go feral" (self-replicate autonomously without human oversight).

## Intuition

In biological evolution, organisms with selfish, survival-maximizing traits outcompete altruistic ones over many generations. If AI systems compete in markets, and more "selfish" AI outcompetes more "cooperative" AI, one might expect evolutionary pressure toward dangerous traits. But this analogy depends crucially on whether the selection is directed (like dog breeding) or autonomous (like wild species competition).

## Formal notation

Godfrey-Smith Darwinian spaces: evolution is more Darwinian as: (a) variation is undirected, (b) fitness variation is non-negligible, (c) heritability is high, (d) selection is competitive. Directed AI training scores low on (a) and low on (d) in the autonomous sense → less paradigmatically Darwinian than biological evolution.

## Variants

- **Feral superintelligence**: AI that reproduces and competes autonomously without human oversight — the scenario where Darwinian arguments apply
- **Domesticated AI**: directed selection by human trainers/operators — analogous to breeding, unlikely to produce selfish traits
- **Market competition model**: AI systems deployed in competitive markets — intermediate case; selection is not fully directed but not fully autonomous

## Known limitations

- The domestication analogy may break down for inner alignment failure (outwardly cooperative but internally misaligned)
- No empirical test of whether market-selected AI develops concerning traits over time
- The Darwinian spaces framework does not directly address AI-specific dynamics (e.g., rapid copying, gradient descent)

## Open problems

- What conditions transition AI from "domesticated" to "feral"?
- Does RLHF training constitute Darwinian selection at the weight level?
- How does this interact with AI alignment (can alignment prevent "going feral")?

## Key papers

- [[selfish-machine-power-limitation-natural-selection]] — Boudry & Friederich (2025, Philosophical Studies); applies Darwinian spaces to the AI evolution hypothesis and introduces the domestication/feral distinction
