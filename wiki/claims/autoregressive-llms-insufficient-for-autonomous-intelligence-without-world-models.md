---
title: "Autoregressive LLMs are insufficient for autonomous machine intelligence, which requires learned world models, intrinsic motivation, and hierarchical representations"
slug: autoregressive-llms-insufficient-for-autonomous-intelligence-without-world-models
status: proposed
confidence: 0.50
tags: [agi, world-model, llm-limitations, autonomous-ai, cognitive-architecture, intrinsic-motivation]
domain: NLP
source_papers: [path-towards-autonomous-machine-intelligence]
evidence:
  - source: path-towards-autonomous-machine-intelligence
    type: supports
    strength: moderate
    detail: "Position paper argument: autoregressive LLMs lack world models (cannot predict causal future states), lack intrinsic motivation, and lack hierarchical multi-scale representations; proposes JEPA+world-model architecture as the necessary alternative"
conditions: "Theoretical position, not empirical benchmark; argument is from architecture first-principles; LLM progress since 2022 has partially challenged the empirical evidence"
date_proposed: 2026-05-06
date_updated: 2026-05-06
---

## Statement

Autoregressive language models trained on token prediction — however large or capable — cannot achieve autonomous machine intelligence comparable to humans or animals. The missing components are: (1) a learned predictive world model that enables causal simulation; (2) intrinsic motivation that drives goal-directed behavior without external reward; (3) hierarchical joint embedding representations that support multi-scale reasoning and long-horizon planning. Without these, AI systems will remain reactive pattern-matchers rather than autonomous reasoners.

## Evidence summary

LeCun (2022) argues this from first principles about what humans do that current AI does not — primarily learning a world model from observational data and using it for planning. The argument is influential in the cognitive science and robotics communities.

## Conditions and scope

Theoretical position paper; no empirical experiments that directly test the claim. LLM capabilities have expanded rapidly since 2022 (chain-of-thought, tool use, RL from feedback), partially addressing some of LeCun's concerns while leaving others unaddressed.

## Counter-evidence

- LLMs with chain-of-thought, tool use, and world-grounding show much stronger reasoning than 2022 baselines, challenging the "dead end" claim
- Large-scale self-supervised video models (Sora, Genie 2) may function as implicit world models
- Some alignment researchers argue that emergent world-model-like capabilities arise in sufficiently large LLMs

## Linked ideas

## Open questions

- Do LLMs with retrieval augmentation and tool use approximate world model capabilities?
- Is the distinction between "world model" and "very large language model" principled or fuzzy at scale?
- What empirical benchmark would confirm or refute this claim?
