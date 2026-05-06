---
title: "Predictive World Model Architecture"
aliases: ["world model AI", "JEPA", "joint embedding predictive architecture", "configurable world model", "learned world model", "model-based cognitive architecture"]
tags: [agi, world-model, autonomous-ai, cognitive-architecture, self-supervised-learning, jepa, planning]
maturity: emerging
key_papers: [path-towards-autonomous-machine-intelligence]
first_introduced: "2022"
date_updated: 2026-05-06
related_concepts: [llm-powered-agent-architecture]
---

## Definition

A cognitive architecture for autonomous AI in which an agent learns an internal predictive model of the world — the world model — and uses it to plan actions by simulating future states, rather than relying on memorized input-output mappings or reward-shaping. The world model is trained self-supervised from observational data; the agent acts by optimizing intrinsic and task-specific costs over the predicted future.

## Intuition

Humans plan by simulating "what would happen if I did X" — they don't need to have lived through every situation; they reason from a model of the world. Current LLMs, by contrast, are sophisticated next-token predictors that lack this capacity for causal simulation. A world model architecture fills this gap: it learns the causal structure of the environment and uses that structure for planning.

## Formal notation

World model W: s_t × a_t → ŝ_{t+1} (predicts next abstract state). Actor π: minimize ∑ C(ŝ_{t+k}) over action sequence, using W to roll out simulated states. JEPA: encode x → ŷ in abstract representation space (not pixel space), trained to predict representations of future observations.

## Variants

- **JEPA (Joint Embedding Predictive Architecture)**: LeCun's proposed self-supervised architecture that predicts in abstract representation space rather than generating raw observations
- **Energy-based models (EBM)**: compatible world model formulation; assign low energy to plausible state-action pairs
- **Latent variable world models**: handle uncertainty by learning a distribution over future states
- **Hierarchical world models**: predict at multiple levels of abstraction and time scales simultaneously

## Known limitations

- No large-scale empirical validation of LeCun's specific JEPA+intrinsic-motivation architecture as of 2022
- Designing the "cost module" (intrinsic motivations) is a hard open problem
- Training a world model at scale comparable to LLMs remains an open engineering challenge

## Open problems

- How should world models handle multimodal sensory input (vision, language, proprioception)?
- Can world models be trained at internet scale without catastrophic forgetting?
- How does JEPA compare to video generation models as world models for planning?

## Key papers

- [[path-towards-autonomous-machine-intelligence]] — LeCun (2022), NYU/Meta; proposes the full architecture including JEPA, configurable world model, and intrinsic motivation
