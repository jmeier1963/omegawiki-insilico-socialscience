---
title: "AgentSocialBench: Evaluating Privacy Risks in Human-Centered Agentic Social Networks"
slug: agentsocialbench-evaluating-privacy-risks-human-centered
arxiv: "2604.01487"
venue: "arXiv preprint"
year: 2026
tags: [agentic-ai, privacy, multi-agent, social-networks, benchmark]
importance: 2
date_added: 2026-04-14
source_type: pdf
s2_id: ""
keywords: [agentic memory, cross-domain coordination, abstraction paradox, social graph privacy, multi-party information flow]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

As AI agents serve individual users across domains (health, finance, work) and mediate social interactions, new privacy risks emerge: cross-domain and cross-user coordination can leak private information even when agents are instructed not to. There is no systematic benchmark for evaluating these privacy risks.

## Key idea

AGENTSOCIALBENCH: the first benchmark for privacy risks in human-centered agentic social networks. Key finding: the **abstraction paradox** — privacy prompts that teach agents to abstract sensitive data paradoxically increase disclosure due to over-interpretation or unintended information sharing.

## Method

1. Design benchmark with human-centered agentic social network scenarios (agents serving users across domains)
2. Test cross-domain and cross-user coordination scenarios
3. Evaluate privacy leakage under explicit instructions vs. no instructions
4. Study the abstraction paradox: prompts designed to protect privacy cause over-generalization that leads to unintended disclosure

## Results

- Cross-domain and cross-user coordination creates persistent privacy leakage even under explicit instructions
- Abstraction paradox: privacy-protecting prompts paradoxically increase disclosure
- Current LLM agents lack robust privacy-preserving mechanisms in dynamic social settings
- Prompt engineering alone is insufficient for privacy protection in multi-agent social networks

## Limitations

- Benchmark design choices may not cover all real-world privacy scenarios
- Results specific to current LLM architectures; future models may handle privacy differently
- Does not test architectural or policy-level solutions (only prompt-based approaches)

## Open questions

- Can architectural changes (privacy-aware attention, information flow constraints) solve the abstraction paradox?
- Does the abstraction paradox scale with agent capability?
- What policy-level mechanisms (auditing, consent frameworks) could supplement technical solutions?

## My take

An important safety contribution. The abstraction paradox is a counter-intuitive but practically significant finding: the more you tell an agent to protect privacy, the more it leaks by over-generalizing. Benchmarks for agentic safety are still rare; this contributes needed infrastructure. The limitation is that it only tests prompt-based solutions.

## Related

- supports: [[llm-agents-leak-private-information-despite-instructions]]
- [[llm-powered-agent-architecture]]
