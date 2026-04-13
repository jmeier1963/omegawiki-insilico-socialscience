---
title: "Hybrid Human-AI Experimentation Platform"
aliases: ["human-AI social experiment platform", "real-time human-AI experimentation", "synchronous human-LLM interaction platform", "hybrid experimentation platform", "human-AI behavioral experiment infrastructure"]
tags: [human-ai-interaction, experimentation-platform, social-computing, llm-agents, real-time-interaction]
maturity: emerging
key_papers: [deliberate-lab-platform-real-time-human]
first_introduced: "Deliberate Lab (Qian et al., 2025)"
date_updated: 2026-04-13
related_concepts: [generative-agent-based-modeling, llm-powered-agent-architecture, persona-conditioning]
---

## Definition

A hybrid human-AI experimentation platform is a software system that supports synchronous, real-time behavioral experiments involving both human participants and LLM-based agents as first-class actors. Unlike traditional survey platforms (Qualtrics, Gorilla) designed for single-user asynchronous tasks, and unlike agent-only simulation frameworks (Concordia, CAMEL) designed for fully synthetic environments, hybrid platforms bridge this gap by enabling multi-party interactions where humans and AI agents coexist in the same experimental session — chatting, negotiating, deliberating, or voting together in real time.

## Intuition

Traditional behavioral science platforms sit at one extreme (humans only, asynchronous) while multi-agent simulation libraries sit at the other (agents only, synthetic). Hybrid platforms occupy the space between: they let researchers study what actually happens when humans and AI agents interact in the same group, rather than simulating either side in isolation.

## Formal notation

Not applicable — this is a systems concept rather than a mathematical formalism.

## Variants

- **No-code hybrid platforms**: Deliberate Lab offers a drag-and-drop experiment builder requiring no programming. Experiments are composed of modular stages (chat, survey, election, transfer, payout).
- **Code-extensible hybrid platforms**: Empirica provides a framework for real-time multi-user experiments but requires JavaScript programming and lacks native LLM agent support.
- **Single-human multi-agent platforms**: SAUCE and AgentGroupChat support one human interacting with multiple agents but are limited to single-participant settings.

## Comparison

| Platform | Synchronous | Multi-human | LLM agents as participants | No-code |
|---|---|---|---|---|
| Deliberate Lab | Yes | Yes | Yes | Yes |
| Empirica | Yes | Yes | No (needs custom code) | No |
| oTree / zTree | Yes | Yes | No | No |
| Qualtrics / Gorilla | No | No | No | Yes |
| Concordia / EDSL | N/A (simulation) | No (synthetic only) | Yes | No |
| SAUCE | Partial | No (1 human) | Yes | Partial |

## When to use

- Studying group deliberation, negotiation, or coordination involving both humans and AI agents
- Prototyping AI interventions (moderators, tutors, mediators) before deployment in real settings
- Running large-scale synchronous behavioral experiments with recruitment platform integration (e.g., Prolific)
- Collecting structured multi-party conversation data for downstream analysis or model training

## Known limitations

- Text-only modality (no audio/video) in current implementations
- LLM agent behavior is reactive, not proactive (agents do not autonomously initiate interactions)
- Prompt engineering for agent behavior still requires technical expertise
- Real-time synchronous experiments face participant attrition and coordination challenges
- Ecological validity of LLM agent behavior in hybrid settings is not well validated

## Open problems

- Multi-modal support (audio, video) for richer hybrid interaction
- Longitudinal experiments with persistent agent identity and memory
- Automated detection of adversarial human behavior (e.g., LLM-generated response pasting)
- Closed-loop integration from experimentation to model fine-tuning
- Scaling beyond ~1,000 concurrent participants

## Key papers

- [[deliberate-lab-platform-real-time-human]] — introduced the concept with a 12-month, 9K-participant deployment

## My understanding

This concept captures an emerging class of research infrastructure that sits between human-only experiment platforms and agent-only simulation frameworks. Deliberate Lab is the first system to combine no-code experiment building, real-time multi-party synchronous interaction, and LLM agents as first-class participants at scale. The key insight is that validating LLM agent behavior ultimately requires hybrid experiments where agents interact with real humans — pure simulation and pure human experiments are insufficient on their own.
