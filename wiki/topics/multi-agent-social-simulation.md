---
title: "Multi-Agent Social Simulation"
tags: [multi-agent, simulation, abm, social-dynamics, emergent-behavior]
my_involvement: main-focus
sota_updated: 2026-04-12
key_venues: [CHI, NeurIPS, ICML, JASSS, JAIR, AAAI]
related_topics:
  - llm-human-simulacra
  - persona-conditioning-evaluation
key_people: []
---

## Overview

Multi-agent social simulation uses networks of LLM-based agents to study emergent social dynamics — opinion formation, attitude diffusion, deliberation, norm development, and collective behavior. Unlike single-agent simulacra (which simulate a population by independently sampling many instances), multi-agent simulations allow agents to interact, influencing and being influenced by each other, potentially generating emergent macro-level phenomena from micro-level behavioral rules.

This approach extends classical agent-based modeling (ABM) by replacing hand-coded behavioral rules with LLM-generated behavior, dramatically increasing behavioral richness at the cost of interpretability and computational expense.

## Timeline

- **2023**: Park et al. "Generative Agents" landmark paper — 25 GPT-4 agents in Smallville sandbox. First demonstration of coherent emergent social behavior (rumor spreading, relationship formation, memory/reflection).
- **2023**: Concordia framework released — general-purpose LLM agent simulation environment.
- **2024**: Scaling efforts begin. "1000 Generative Agents" paper. AgentSociety framework. Domain applications: deliberation, attitude diffusion.
- **2025**: Billion-agent ambition (Light Society). Specialized environments for legal, political, scientific discourse. AgentSocialBench for evaluation. Multi-agent evaluation methodology matures.
- **2026**: Integration with real-world data sources. Governance frameworks for agentic simulation.

## Seminal works

- [[generative-agents-park]] — Park et al. 2023, "Generative Agents: Interactive Simulacra of Human Behavior"
- [[concordia-framework]] — DeepMind Concordia simulation framework
- [[agent-society]] — AgentSociety 2025

## SOTA tracker

| System | Scale | Key capability | Notes |
|--------|-------|---------------|-------|
| Generative Agents (Park 2023) | 25 agents | Full social sandbox | GPT-4 based |
| AgentSociety (2025) | 10K+ agents | Scalable social dynamics | |
| Light Society (2025) | 10^6–10^9 target | Efficient scaling | Architecture TBD |

## Open problems

- **Scalability vs. fidelity tradeoff**: richer agents (longer context, more memory) are expensive; cheaper agents lose behavioral richness
- **Emergence validation**: hard to know whether emergent macro-patterns reflect real social dynamics or LLM training artifacts
- **Agent identity stability**: agents drift from their assigned identities over long simulations
- **Ground truth**: no benchmark captures real social dynamics well enough to validate simulation accuracy
- **Feedback loops**: simulated agents trained on human data may amplify LLM biases when their outputs feed back into the world

## My position

Multi-agent LLM simulation is a genuinely new tool for social theory testing — allowing "what if" experiments at scale impossible in human subjects research. The primary barrier is rigorous validation: we don't yet know which macroscopic patterns are robust vs. artifacts of the LLM prior.

## Research gaps

- No systematic comparison of LLM-ABM vs. traditional ABM on matched scenarios
- Evaluation benchmarks for emergent social behavior quality remain primitive
- Long-running simulations (>100 turns) are rare; temporal consistency is unstudied
- Most simulations are English-only and set in WEIRD social contexts

## Key people
