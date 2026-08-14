---
title: "How We Built Our Multi-Agent Research System"
slug: how-built-multi-agent-research-system
arxiv: ""
venue: "Anthropic (Engineering blog)"
year: 2025
tags: [multi-agent-systems, llm-agents, agent-orchestration, prompt-engineering, agent-evaluation, ai-engineering]
importance: 3
date_added: 2026-07-05
source_type: pdf
s2_id: ""
tldr: "Anthropic's engineering account of its Research feature — an orchestrator-worker multi-agent system where a lead agent spawns parallel subagents — reporting a 90.2% improvement over single-agent Opus 4, that token usage explains ~80% of performance variance, and the prompt/eval/reliability lessons from getting it to production."
contribution_type: [system]
datasets: [BrowseComp]
code_url: ""
cited_by: []
---

## Problem & Context

Research involves open-ended, path-dependent problems where the required steps can't be predicted in advance, making a fixed one-shot pipeline unsuitable. Anthropic's Research feature needed agents that operate autonomously over many turns, adapting to intermediate findings across the web, Google Workspace, and integrations — which introduces new challenges in coordination, evaluation, and reliability.

## Key idea

An orchestrator-worker multi-agent architecture: a lead agent plans and spawns parallel subagents with separate context windows, each acting as an intelligent compression filter over part of the problem, then synthesizes. Multi-agent systems mainly work because they let you *spend enough tokens*; the architecture is a way to scale token usage and parallel reasoning past a single agent's limits.

## Method

Engineering write-up. Lead agent analyzes the query, saves its plan to memory (to survive the 200k-token context truncation), spawns specialized subagents that search and use interleaved thinking, then a CitationAgent attributes claims. Prompt-engineering principles: think like your agents (simulate them), teach the orchestrator to delegate with explicit objective/format/tools/boundaries, scale effort to query complexity (embedded rules), treat tool design as a first-class interface, let agents improve their own prompts/tool descriptions, start-wide-then-narrow, guide the thinking process, and parallelize (lead spawns 3–5 subagents; subagents call 3+ tools at once). Evaluation: start with ~20 real queries, LLM-as-judge on a rubric (factual/citation accuracy, completeness, source quality, tool efficiency), plus human testing for edge cases; end-state evaluation for stateful agents.

## Experiment & Results

- Multi-agent (Opus 4 lead + Sonnet 4 subagents) beat single-agent Opus 4 by **90.2%** on the internal research eval (e.g. finding all IT S&P 500 board members via decomposition).
- On BrowseComp, three factors explained **95%** of performance variance; **token usage alone explained ~80%**, with tool-call count and model choice the other two.
- Upgrading Sonnet 3.7→4 beat doubling the token budget; agents use ~4× the tokens of chat, multi-agent ~15× (so multi-agent needs high-value, parallelizable tasks to be economical).
- A tool-testing agent that rewrote MCP tool descriptions cut downstream task-completion time by 40%; parallelization cut research time by up to 90% on complex queries.

## Limitations

- Multi-agent burns ~15× chat tokens — only viable for high-value, heavily parallelizable tasks; poor fit for tasks needing shared context (most coding).
- Synchronous subagent execution creates coordination bottlenecks (lead can't steer mid-flight; subagents can't coordinate).
- Emergent behaviors and non-determinism make debugging and deployment (rainbow deployments, checkpointing) hard.
- Practitioner report, single system, internal evals only.

## Open questions

- When does asynchronous subagent execution's added parallelism justify its state-consistency/error-propagation complexity?
- How far does "token usage explains performance" generalize beyond breadth-first search tasks?
- What is the right division between deterministic orchestration logic and model-driven coordination?

## My take

The load-bearing empirical claim is that token usage explains ~80% of performance variance — it reframes multi-agent architectures as a mechanism for *spending more tokens in parallel* rather than as intrinsically smarter, which both explains the 90% win and the 15× cost. The practical lessons (delegate with explicit boundaries, scale effort to complexity, let agents rewrite their own tool descriptions) are the most reusable part. Sits alongside MetaGPT-style role-based multi-agent orchestration and the multi-agent-scaling-laws literature.

## Related

- [[llm-powered-agent-architecture]]
- [[parallel-agent-supervision]]
- [[multi-agent-scaling-laws]]
- [[metagpt-meta-programming-multi-agent-collaborative]]
