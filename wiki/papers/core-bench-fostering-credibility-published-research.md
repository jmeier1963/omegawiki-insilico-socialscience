---
title: "CORE-Bench: Fostering the Credibility of Published Research Through a Computational Reproducibility Agent Benchmark"
slug: core-bench-fostering-credibility-published-research
arxiv: "2409.11363"
venue: "arXiv"
year: 2024
tags: [reproducibility, benchmark, ai-agent, computational-reproducibility, credibility]
importance: 3
date_added: 2026-04-23
source_type: pdf
s2_id: ""
keywords: [CORE-Bench, reproducibility, AI agent, benchmark, credibility, computational]
domain: "ML Systems"
code_url: ""
cited_by: []
---

## Problem

Reproducibility of published research is a fundamental scientific norm, but verifying computational reproducibility is tedious and time-consuming. AI agents could automate this verification, but no benchmark exists to measure their capability.

## Key idea

CORE-Bench provides 270 tasks from 90 papers across computer science, social science, and medicine with three difficulty levels. Best current agent (CORE-Agent with GPT-4o) achieves only **21% accuracy on hardest tasks**, establishing a low baseline and highlighting a large gap between AI capability and what reproducibility requires.

## Method

- 270 computational reproducibility tasks from 90 papers (3 tasks per paper: easy/medium/hard)
- Multi-agent evaluation: AutoGPT vs. CORE-Agent; GPT-4o vs. GPT-4o-mini
- Language-only and vision-language task variants
- Fast, parallelizable evaluation system (saves "days per run" vs. sequential)

## Results

- Best agent: 21% on hardest tasks (CORE-Agent + GPT-4o)
- Significant performance gap between difficulty levels
- Parallelizable evaluation saves substantial evaluation time
- Establishes reproducibility agents as important infrastructure for future automated science

## Limitations

- Only computational reproducibility (code + data provided); doesn't address experimental or theoretical reproducibility
- 90 papers may not represent the full diversity of scientific research
- 21% accuracy may reflect benchmark difficulty rather than a fundamental capability ceiling

## Open questions

- What specific bottlenecks prevent agents from achieving higher reproducibility accuracy?
- Can reproducibility benchmarks extend to experimental sciences?

## My take

A well-designed benchmark that reveals an important gap: despite rapid AI progress, computational reproducibility — a relatively well-specified task with clear success criteria — remains very hard for current agents. The 21% ceiling is a useful reality check for optimistic claims about AI automating scientific verification.

## Related

- [[automated-research-pipeline]]
- [[ai-driven-scientific-discovery]]
