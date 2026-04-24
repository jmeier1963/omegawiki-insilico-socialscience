---
title: "Best AI agents achieve under 25 percent accuracy on computational reproducibility benchmarks"
slug: best-ai-agents-achieve-under-25
status: weakly_supported
confidence: 0.7
tags: [reproducibility, ai-agent, benchmark, core-bench, limitation]
domain: "NLP"
source_papers: [core-bench-fostering-credibility-published-research]
evidence:
  - source: core-bench-fostering-credibility-published-research
    type: supports
    strength: moderate
    detail: "CORE-Agent with GPT-4o achieves 21% accuracy on hardest CORE-Bench tasks (270 tasks from 90 papers across CS, social science, medicine)"
conditions: "Measured on CORE-Bench 2024; only covers computational reproducibility (code + data provided); does not include experimental or theoretical reproducibility"
date_proposed: 2026-04-23
date_updated: 2026-04-23
---

## Statement

Current best AI agents (GPT-4o-based CORE-Agent) achieve only ~21% accuracy on the hardest computational reproducibility tasks in the CORE-Bench benchmark, revealing a large gap between AI capability and what research verification requires.

## Evidence summary

Siegel et al. (2024): CORE-Bench measures AI ability to reproduce computational results from provided code and data. 270 tasks, 90 papers, 3 difficulty levels. CORE-Agent + GPT-4o: 21% hardest. AutoGPT performs substantially worse.

## Conditions and scope

- Computational reproducibility only (code + data available); excludes experimental and theoretical reproducibility
- GPT-4o (2024); newer models may perform better
- 90-paper sample may not represent full diversity of scientific computing

## Counter-evidence

- Easier CORE-Bench tasks see higher success rates; 21% is the hardest tier only

## Linked ideas

## Open questions

- What bottlenecks prevent higher accuracy (debugging, environment setup, understanding scientific context)?
- What does accuracy look like with newer models (o1, Claude 3.5, etc.)?
