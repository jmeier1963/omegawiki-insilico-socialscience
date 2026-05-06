---
title: "Deep Agents"
slug: deep-agents-langchain
arxiv: ""
venue: "LangChain Blog"
year: 2025
tags: [llm-agents, agent-design, planning, multi-agent, context-management, production-agents]
importance: 2
date_added: 2026-05-06
source_type: pdf
s2_id: ""
keywords: [deep agents, long-horizon tasks, planning, filesystem, sub-agents, prompt engineering, production agents]
domain: NLP
code_url: "https://github.com/hwchase17/deepagents"
cited_by: []
---

## Problem

As LLM agents tackle increasingly general tasks over longer time horizons (hundreds of tool calls, multi-day tasks), ad-hoc prompt-and-call patterns break down. What design patterns do successful production agents share?

## Key idea

"Deep agents" — agents working on general tasks over long horizons — converge on four design principles: (1) planning, (2) filesystem-based context offloading, (3) sub-agent delegation, and (4) careful/extensive prompt engineering.

## Method

Practitioner synthesis comparing Manus, Anthropic multi-agent research system, open-deep-research, and Claude Code. Case analysis of how each system implements the four principles.

## Results

- All four production systems implement some combination of the four principles
- Planning: save TODO lists, use plan mode for user approval, recite objectives to steer agent
- Filesystem: store notes, track plans (todo.md), offload token-heavy context, maintain long-term memories
- Sub-agents: split context across agents, delegate sub-tasks — but beware of conflicting decisions (Cognition warning)
- Prompt engineering: extensive system prompts and task framing (examples: Manus, Claude Code)

## Limitations

- Not a controlled empirical study; practitioner synthesis from a small number of systems
- No quantitative evaluation of which principles matter most or their interaction effects

## Open questions

- Which of the four principles contributes most to long-horizon task success?
- How do sub-agent coordination failures (conflicting decisions) scale with the number of agents?

## My take

A useful conceptual map of production agent design patterns, concisely capturing what practitioners converge on. Low academic rigor but high practical relevance for agent builders. Importance 2.

## Related

- [[llm-powered-agent-architecture]]
