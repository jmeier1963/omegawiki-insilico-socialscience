---
title: "Cognitive Architectures for Language Agents"
slug: cognitive-architectures-language-agents
arxiv: "2309.02427"
venue: "TMLR 2024"
year: 2023
tags: [llm-agents, cognitive-architecture, agent-design, memory, action-space, planning]
importance: 4
date_added: 2026-05-05
source_type: pdf
s2_id: "e4bb1b1f97711a7634bf4bff72c56891be2222e6"
keywords: [CoALA, cognitive architecture, language agent, modular memory, action space, decision-making, production systems]
domain: NLP
code_url: "https://github.com/ysymyth/awesome-language-agents"
cited_by: []
---

## Problem

The landscape of LLM language agents has grown rapidly but lacks a unified framework to organize existing designs, compare them, or guide future development. Custom terminology across papers ("tool use", "grounding", "actions") makes comparison difficult.

## Key idea

**CoALA (Cognitive Architectures for Language Agents)**: a unifying framework that draws on cognitive science and symbolic AI (production systems, cognitive architectures like SOAR and ACT-R) to describe any language agent in terms of three components:
1. **Modular memory**: in-context storage, external storage (knowledge bases, databases), in-weights storage, and in-cache storage
2. **Structured action space**: actions on memory (reading/writing), actions on the environment (internal reasoning steps, external world interactions), and actions for learning
3. **Generalized decision-making process**: a control loop that reads observations, retrieves relevant memory, reasons about actions, and executes the selected action

LLMs are characterized as probabilistic production systems; prompt engineering methods correspond to control-flow patterns from symbolic AI.

## Method

- Retrospective survey: CoALA applied to categorize ~50+ existing language agent papers across memory/action/decision dimensions
- Prospective analysis: identified 6 actionable research directions toward more capable agents (e.g., more sophisticated memory organization, richer external action spaces, learning from experience)
- Draws analogy: LLMs as production systems; chain-of-thought ≈ sequential rule firing; tool use ≈ external resource invocation

## Results

- Successfully organizes diverse agent systems (ReAct, Reflexion, Toolformer, AutoGPT, Generative Agents, etc.) within the CoALA taxonomy
- 344 citations as of 2025 — widely adopted as a reference framework in the LLM agent literature
- Published in TMLR (peer-reviewed), 2024

## Limitations

- Framework is primarily descriptive/taxonomic — does not provide concrete implementation guidance
- Memory categories may not generalize cleanly to multimodal agents or embodied agents
- Does not address agent safety or alignment within the framework

## Open questions

- How should CoALA be extended to handle multi-agent systems with shared memory?
- Can the framework quantitatively predict which memory/action combinations produce the most capable agents?
- How do the four memory types trade off in terms of compute/sample efficiency?

## My take

An important synthesis paper that brings cognitive science vocabulary to LLM agent design. The production-systems analogy is intellectually elegant and clarifies why LLMs are surprisingly effective as agent controllers. Especially useful as a reference for framing new agent architectures. Importance: 4 — widely cited framework paper at TMLR.

## Related

- [[llm-powered-agent-architecture]] (extends this concept; CoALA provides a systematic taxonomy)
- supports: [[coala-framework-unifies-language-agent-design]]
