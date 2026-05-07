---
title: "LLM Social Network Generation"
aliases: ["LLM network generation", "synthetic social network via LLM", "LLM-generated network", "persona-based network generation"]
tags: [social-network, llm, network-generation, social-simulation, graph]
maturity: emerging
key_papers: [llms-generate-structurally-realistic-social-networks]
first_introduced: "2024"
date_updated: 2026-05-05
related_concepts: [silicon-sampling, generative-agent-based-modeling]
---

## Definition

The use of LLMs to generate synthetic social networks by having the model decide, for each synthetic persona, which other personas they would form social ties with — producing networks that can be used for epidemic modeling, social simulation, and platform testing without access to real (private) network data.

## Intuition

Instead of specifying a statistical model (Erdős–Rényi, stochastic block model), the researcher describes personas in natural language and asks the LLM to "simulate" the social decisions of each person. The LLM draws on its knowledge of human social behavior to construct plausible tie patterns.

## Formal notation

Given personas P = {p_1, ..., p_n} with attribute vectors:
- **Global**: LLM(P) → edge set E
- **Local**: for each p_i, LLM(p_i, P \ {p_i}) → {p_j : p_i knows p_j}; E = ∪_i E_i

## Variants

- **Global generation**: ask LLM to produce the full network at once (lower fidelity)
- **Local generation**: ask LLM to generate edges for one persona at a time (higher fidelity)

## Known limitations

- LLMs systematically overestimate political homophily, reflecting political content bias in training data
- Local generation is slow at scale
- Cultural/national bias — primarily validated on US-style social networks

## Open problems

- Correcting demographic homophily biases through prompt engineering or fine-tuning
- Scaling local generation efficiently
- Validating LLM-generated networks for downstream use cases (epidemiology, opinion dynamics)

## Key papers

- [[llms-generate-structurally-realistic-social-networks]] — first systematic comparison of LLM-generated vs. real social networks; identifies political homophily overestimation bias (2024)
