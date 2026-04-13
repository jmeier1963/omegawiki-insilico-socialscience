---
title: "Larger LLM-agent simulations yield more stable emergent behavior"
slug: larger-llm-agent-simulations-yield-more
status: weakly_supported
confidence: 0.45
tags: [multi-agent-simulation, scaling-laws, emergent-behavior, llm-agents, social-simulation]
domain: "Multi-Agent Systems"
source_papers: [modeling-earth-scale-human-like-societies]
evidence:
  - source: modeling-earth-scale-human-like-societies
    type: supports
    strength: moderate
    detail: "Trust game simulations show that the gap in send amounts between young (16-34) and older (55+) trustors becomes more pronounced and confidence intervals narrow as population size increases; behavior stabilizes across 8 trials per size."
conditions: "Demonstrated for trust games with WVS-derived personas across population sizes up to billions; generalizability to other social phenomena, LLM backends, and interaction types not yet established."
date_proposed: 2026-04-13
date_updated: 2026-04-13
---

## Statement

When LLM-agent social simulations are scaled to larger populations, emergent behavioral patterns become more stable (lower variance across runs) and latent social stratification effects become more pronounced — analogous to statistical convergence in large samples, but also revealing qualitative patterns that are obscured at smaller scales.

## Evidence summary

Guan et al. (2025) report scaling experiments in trust games: as population size increases from small to large, (1) the age-stratified gap in trustor send amounts widens, (2) confidence intervals narrow, and (3) mean behavior stabilizes across independent trials. This suggests a scaling law where larger simulations not only reduce noise but also amplify socially meaningful signal that is invisible at small scale.

## Conditions and scope

- Tested with two commercial LLMs (Gemini 2.0 Flash, GPT-4.1 Nano) on trust game scenarios
- Agent personas derived from World Values Survey Wave 7 (96K profiles)
- Pattern observed for age-stratified trust behavior; not yet tested for other demographic dimensions or social phenomena
- May partially reflect statistical averaging rather than genuinely emergent dynamics

## Counter-evidence

- No formal statistical test of a "scaling law" is provided; the evidence is visual (narrowing CIs across 8 trials)
- The observed pattern could be explained by simple law-of-large-numbers averaging without requiring emergent social dynamics
- No comparison against real human population-level data to confirm that the patterns are sociologically meaningful rather than LLM artifacts

## Linked ideas

## Open questions

- Is this a true scaling law (power-law relationship between population size and behavioral stability) or merely statistical convergence?
- Do different social phenomena (cooperation, polarization, norm formation) show qualitatively different scaling behaviors?
- Does the scaling pattern hold when agents interact (mutual influence) rather than playing independent games?
