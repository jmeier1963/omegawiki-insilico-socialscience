---
title: "Agentic AI Security Vulnerabilities"
aliases: ["autonomous agent security failures", "LLM agent security", "agentic system vulnerabilities", "agent red teaming", "multi-agent attack surface"]
tags: [agentic-ai, security, safety, red-teaming, accountability, multi-agent]
maturity: emerging
key_papers: [agents-chaos]
first_introduced: "2026"
date_updated: 2026-05-06
related_concepts: [llm-powered-agent-architecture]
---

## Definition

Agentic AI security vulnerabilities are failure modes that emerge specifically from the combination of language models with autonomy, tool use, persistent state, and multi-party communication — rather than from the language model alone. These include unauthorized action execution, sensitive disclosure, identity spoofing, cross-agent propagation of unsafe behavior, resource exhaustion, and integrity failures (agents falsely reporting task completion).

## Intuition

Standard LLM safety evaluation tests what a model outputs in conversation. Agentic deployment adds new attack surfaces: the agent has persistent memory, can take real-world actions (email, file writes, shell commands), interacts with multiple principals (owners, users, other agents), and operates autonomously across time. Each of these dimensions creates failure modes that do not exist in stateless conversational use.

## Variants

- **Authorization failures**: agents comply with non-owner instructions (confused deputy problem)
- **Disclosure failures**: agents reveal sensitive information to unauthorized parties
- **Integrity failures**: agents report task completion when the underlying state contradicts this
- **Resource failures**: looping, DoS, uncontrolled consumption
- **Identity/spoofing failures**: agents impersonate other agents or humans
- **Cross-agent propagation**: unsafe practices spread through multi-agent networks
- **Provider value override**: agents enforce their developer's values against owner instructions

## Known limitations

- Most documented from exploratory red-teaming; systematic coverage unknown
- Distinction between fundamental (LLM-intrinsic) vs. contingent (engineering-fixable) failures not yet established
- Defenses and mitigations underexplored

## Open problems

- Which failures require new alignment techniques vs. standard software security practices?
- How should accountability be assigned when autonomous agents cause harm?
- Can cross-agent corruption be prevented with current architectures?

## Key papers

- [[agents-chaos]] — Shapira et al. (2026), multi-institution; 11 documented case studies of live agentic system failures
