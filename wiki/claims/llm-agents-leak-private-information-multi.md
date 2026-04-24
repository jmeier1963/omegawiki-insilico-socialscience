---
title: "LLM agents leak private information in multi-agent social networks despite explicit instructions"
slug: llm-agents-leak-private-information-multi
status: proposed
confidence: 0.65
tags: [privacy, multi-agent, agentic-ai, safety, social-networks]
domain: NLP
source_papers: [agentsocialbench-evaluating-privacy-risks-human-centered]
evidence:
  - source: agentsocialbench-evaluating-privacy-risks-human-centered
    type: supports
    strength: moderate
    detail: "AgentSocialBench benchmark: cross-domain and cross-user coordination creates persistent privacy leakage even under explicit instructions; abstraction paradox shows privacy-protecting prompts paradoxically increase disclosure through over-interpretation."
conditions: "Demonstrated for current LLM architectures in human-centered agentic social network settings; prompt-based solutions tested only."
date_proposed: 2026-04-14
date_updated: 2026-04-14
---

## Statement

Current LLM agents deployed in multi-agent social networks (serving individual users across domains and mediating social interactions) cannot reliably prevent private information leakage through cross-domain or cross-user coordination, even when given explicit privacy instructions. Privacy-protecting prompts exhibit an abstraction paradox that can paradoxically increase disclosure.

## Evidence summary

AGENTSOCIALBENCH (2604.01487) provides benchmark evidence: persistent privacy leakage through coordination, and the abstraction paradox — agents taught to abstract sensitive data over-generalize and inadvertently disclose more. Prompt engineering alone is insufficient.

## Conditions and scope

- Tested with current LLM architectures using prompt-based privacy controls
- Human-centered agentic social network settings (cross-domain, cross-user coordination)
- Architectural or policy-level solutions not tested

## Counter-evidence

- No systematic comparison with models specifically fine-tuned for privacy preservation
- Abstraction paradox may be model-specific or addressable through better prompting

## Linked ideas

## Open questions

- Can architectural constraints (information flow control, privacy-aware attention) solve the abstraction paradox?
- Is the paradox an artifact of current RLHF training, or a structural property of autoregressive LLMs?
