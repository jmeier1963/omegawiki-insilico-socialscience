---
title: "Best AI agents achieve under 25 percent accuracy on computational reproducibility benchmarks"
slug: best-ai-agents-achieve-under-25
status: challenged
confidence: 0.2
tags: [reproducibility, ai-agent, benchmark, core-bench, limitation]
domain: "NLP"
source_papers: [core-bench-fostering-credibility-published-research]
evidence:
  - source: core-bench-fostering-credibility-published-research
    type: supports
    strength: moderate
    detail: "CORE-Agent with GPT-4o achieves 21% accuracy on hardest CORE-Bench tasks (270 tasks from 90 papers across CS, social science, medicine) at launch in September 2024"
  - source: ai-systems-about-start-building-themselves
    type: contradicts
    strength: strong
    detail: "Jack Clark (Anthropic) reports one of the CORE-Bench authors declared the benchmark 'solved' in December 2025, with Opus 4.5 achieving 95.5% — from 21% to near-solved in ~15 months"
conditions: "The original 21% finding reflects a 2024 snapshot; the claim as stated (under 25%) is now challenged by 2025 results showing near-saturation"
date_proposed: 2026-04-23
date_updated: 2026-05-05
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
- CORE-Bench was declared "solved" in December 2025 (Opus 4.5: 95.5%) — the original claim is now a historical snapshot, not a description of current capability

## Linked ideas

## Open questions

- What bottlenecks prevented higher accuracy in 2024 that were overcome by 2025?
- Does the 95.5% solve rate generalize to computational reproducibility outside CORE-Bench's 90-paper sample?
- [[ai-systems-about-start-building-themselves]]
