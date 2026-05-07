---
title: "A Path Towards Autonomous Machine Intelligence"
slug: path-towards-autonomous-machine-intelligence
arxiv: ""
venue: "Position Paper (Open Review)"
year: 2022
tags: [agi, world-model, autonomous-ai, cognitive-architecture, self-supervised-learning, intrinsic-motivation, jepa, llm-limitations]
importance: 4
date_added: 2026-05-06
source_type: pdf
s2_id: ""
keywords: [world model, JEPA, joint embedding architecture, intrinsic motivation, autonomous intelligence, cognitive architecture, self-supervised learning, energy-based model, hierarchical planning]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Current AI systems — including large language models — learn from enormous data but still lag far behind humans and animals in efficiency, reasoning, and planning. The core missing piece: humans and animals learn *world models* — internal models of how the world works — and act through intrinsic motivation, not external rewards or supervised labels. What architecture enables this?

## Key idea

**Cognitive architecture for autonomous intelligence** combining: (1) a configurable predictive world model trained with self-supervised learning, (2) behavior driven by intrinsic motivation, and (3) hierarchical joint embedding architectures (JEPA) for multi-scale abstraction. LeCun argues that autoregressive LLMs are a "dead end" for AGI because they lack these components.

## Method

- Position paper, not an empirical study
- Proposes a complete cognitive architecture:
  - **Perception**: JEPA (Joint Embedding Predictive Architecture) — encodes percepts into abstract representations
  - **World model**: learned model predicting abstract future states (not pixel-level)
  - **Short-term memory**: stores working representations of current situation
  - **Cost module**: intrinsic motivations (safety, energy conservation) + task-defined objectives
  - **Actor**: plans sequences of actions by optimizing predicted future costs
  - **Configurator**: sets task and top-down attention based on current goal
- Self-supervised learning (not supervised labels or RL rewards) for most learning

## Results

- Theoretical position, not empirical benchmarks
- Central claims:
  - Autoregressive language models cannot produce true machine intelligence because they hallucinate, lack grounding, and have no world model
  - Self-supervised learning (not RL) is the right learning paradigm for most of intelligence
  - Energy-based models and joint embedding architectures (not generative pixel-level models) are the right representation approach
  - Intrinsic motivation is necessary for goal-directed behavior without human-specified rewards

## Limitations

- Position paper without experimental validation of the proposed architecture
- Does not provide a concrete training recipe; the architecture is described at a high level
- The "dead end" claim about autoregressive LLMs has been contested by subsequent rapid progress in LLM reasoning

## Open questions

- Can JEPA-based architectures achieve sample-efficient learning at scale?
- How should the world model handle uncertainty (latent variable models vs. energy-based approaches)?
- How do LLM capabilities that have improved since 2022 affect the central argument?

## My take

A highly influential position paper that shaped the discourse on what is missing from current AI. LeCun's argument against pure autoregressive token prediction and for world model-based architectures has significant support from cognitive science. The "dead end" framing is provocative and contested, but the positive proposal (JEPA, intrinsic motivation) is a genuine alternative research program. Importance 4 — widely read and debated, foundational for the world-model AI paradigm.

## Related

- [[predictive-world-model-architecture]]
- supports: [[autoregressive-llms-insufficient-for-autonomous-intelligence-without-world-models]]
