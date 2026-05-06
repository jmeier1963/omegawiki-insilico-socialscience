---
title: "MetaGPT: Meta Programming for A Multi-Agent Collaborative Framework"
slug: metagpt-meta-programming-multi-agent-collaborative
arxiv: "2308.00352"
venue: "arXiv"
year: 2023
tags: [multi-agent, sop, meta-programming, software-engineering, llm-agents, hallucination-reduction]
importance: 4
date_added: 2026-04-23
source_type: pdf
s2_id: ""
keywords: [MetaGPT, multi-agent, SOP, meta-programming, software engineering, hallucination]
domain: "ML Systems"
code_url: ""
cited_by: []
---

## Problem

LLM-based multi-agent systems suffer from cascading hallucinations and lack coordination mechanisms that reflect real-world human workflows, leading to poor performance on complex, multi-step tasks like software engineering.

## Key idea

MetaGPT encodes **Standardized Operating Procedures (SOPs)** into prompt sequences, structuring how LLM agents interact. An assembly-line paradigm assigns diverse roles (product manager, architect, engineer, QA) to different agents. Agents verify intermediate results before passing outputs downstream, reducing error propagation. Outperforms chat-based multi-agent alternatives on software engineering benchmarks.

## Method

- Map human SOPs to prompt-based agent interactions
- Role specialization: each agent has a defined responsibility in the pipeline
- Structured output verification: agents check their own and upstream outputs before proceeding
- Assembly-line architecture: sequential task decomposition with specialist agents

## Results

- Outperforms chat-based multi-agent systems on software engineering benchmarks (HumanEval, MBPP, SWE-bench-style tasks)
- Reduces cascading hallucination errors via intermediate verification
- Generalizes across different software engineering task types

## Limitations

- Evaluated primarily on software engineering tasks; generalizability to other domains unclear
- SOP design requires upfront human expert knowledge to encode
- Performance degrades for tasks with long dependency chains

## Open questions

- How does MetaGPT's SOP approach compare to more recent planning/reflection frameworks (ReAct, Tree-of-Thought)?
- Can SOPs be automatically learned/extracted rather than hand-designed?

## My take

MetaGPT's key insight — that structured workflows reduce hallucination more effectively than naive agent loops — is well-supported and broadly applicable. The framework has been influential in the multi-agent systems field. The SOP encoding is essentially a form of procedural constraint that keeps agents on-task.

## Related

- [[llm-powered-agent-architecture]]
- [[automated-research-pipeline]]
- [[ai-driven-scientific-discovery]]
