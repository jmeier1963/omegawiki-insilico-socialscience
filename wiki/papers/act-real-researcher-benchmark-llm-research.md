---
title: "Act As a Real Researcher: A Suite of Benchmarks Evaluating Frontier LLMs and Agentic Harnesses in Research Lifecycle"
slug: act-real-researcher-benchmark-llm-research
arxiv: "2606.07462"
venue: "Preprint (arXiv)"
year: 2026
tags: [ai-research-automation, agent-evaluation, benchmark, research-agents, llm-agents]
importance: 3
date_added: 2026-06-20
source_type: pdf
s2_id: "9351bde42877e974c0b5c3814476b56429cc4759"
keywords: [AARR benchmark, research intern, researcher quality, human-easy agent-hard, agentic harness, scientific judgment, research ethics]
domain: ML Systems
code_url: "https://github.com/AARR-bench/AARRI-bench"
cited_by: []
---

## Problem

Agentic LLM systems have evolved from research assistants into autonomous research agents capable of long-horizon coding, experiment execution, and paper writing. Yet existing research-agent benchmarks measure only macro-level *execution* — task completion, code correctness, final outcomes — and miss the qualities that define a real researcher: integrity, awareness of uncertainty, careful verification, and nuanced scientific judgment. As a result, benchmarks can show high scores while agents still make mistakes that are obvious to any human researcher.

## Key idea

Conceptualize the **AARR (Act As a Real Researcher)** benchmark *series*, which evaluates whether agents emulate the professionalism, thoroughness, and nuanced reasoning of human researchers in granular research scenarios — rather than only whether they finish tasks. A central design principle is to target **tasks that are easy for humans but where agents are highly likely to fail**, inverting the usual "make agents solve human-hard problems" framing.

## Method

- **AARRI-Bench (Act As a Real Research Intern)** — the inaugural benchmark in the series, with tasks simulating real research-intern activities across the research lifecycle (literature handling, experiment setup, verification, reporting).
- Tasks are designed around researcher *qualities* (integrity, uncertainty awareness, careful verification, responsible reasoning), not just outcome correctness.
- Extensive evaluation across frontier models and agentic harnesses (e.g., Mini-SWE-Agent scaffolding paired with frontier models).

## Results

- The best-performing configuration (Mini-SWE-Agent with Claude Opus 4.7) reaches only **68.3% success rate**.
- Agents frequently overlook subtle yet critical details obvious to human researchers (field sensitivity, research ethics, nuanced judgment).
- Improvements come from better *research behavior*, not merely more complex scaffolding — scaffolding sophistication alone does not close the gap.

## Limitations

- AARRI-Bench is the first instalment; the broader AARR series is conceptual and not yet complete.
- Single-snapshot evaluation of fast-moving frontier models; absolute numbers will date quickly.
- "Researcher-quality" rubric design is itself subjective and hard to validate at scale.

## Open questions

- Can researcher-like behavior be trained directly, rather than emerging from scaffolding?
- How do human-easy/agent-hard failure modes generalize across scientific fields?
- What is the right way to score integrity and uncertainty-awareness automatically?

## My take

A useful counterweight to execution-only research-agent benchmarks (e.g., MLE/CORE-style). The "easy for humans, hard for agents" framing is the durable contribution; the specific 68.3% number is ephemeral. Strengthens the broader claim that autonomous research automation is bottlenecked on judgment, not raw capability.

## Related

- [[automated-research-pipeline]]
- [[researcher-quality-evaluation]]
- supports: [[frontier-ai-agents-fail-research-tasks]]
- part_of: [[ai-driven-scientific-discovery]]
- same_problem_as: [[ai-agents-conduct-open-ended-ai]]
