---
title: "Agent Autonomous Task Horizon"
aliases: ["METR task horizon", "autonomous task duration", "AI time horizon", "METR time horizon plot", "agent task duration benchmark"]
tags: [agentic-ai, benchmark, capability-measurement, metr, autonomous-agents]
maturity: emerging
key_papers: [ai-systems-about-start-building-themselves, when-ai-builds-itself, measuring-ai-ability-complete-long-software]
first_introduced: "2023"
date_updated: 2026-05-05
related_concepts: [automated-research-pipeline, llm-powered-agent-architecture]
---

## Definition

The agent autonomous task horizon is the duration of real-world tasks that an AI agent can complete at 50% reliability without human intervention. Tracked empirically by METR (Model Evaluation and Threat Research) via a benchmark of diverse tasks calibrated to human expert completion times.

## Intuition

A key question about AI systems is not just "can they do task X?" but "how long can they work on their own before needing recalibration?" A system that can handle 30-second tasks but fails at 5-minute tasks is qualitatively different from one that can sustain 12 hours of autonomous work. The horizon captures the *organizational length* of tasks AI can absorb — which has implications for research automation, agentic systems, and the practical boundary between human-supervised and human-free AI work.

## Formal notation

**Task Horizon H(t)** = median duration T such that a given model achieves ≥50% success on the METR basket of diverse multi-step tasks requiring ~T hours of skilled human effort.

## Variants

- **50% reliability horizon** (primary measure): T at which the model succeeds on half of tasks requiring ~T hours
- **90% reliability horizon**: harder threshold, implies more conservative operational use
- **Domain-specific horizons**: coding tasks, scientific tasks, and open-ended tasks may have different horizons

## Comparison

| System | Year | ~50% Task Horizon |
|--------|------|-------------------|
| GPT-3.5 | 2022 | ~30 seconds |
| GPT-4 | 2023 | ~4 minutes |
| o1 | 2024 | ~40 minutes |
| GPT-5.2 High | 2025 | ~6 hours |
| Claude Opus 4.6 | 2026 | ~12 hours |
| Projected | end-2026 | ~100 hours (Ajeya Cotra / METR) |

## When to use

When assessing whether an AI system can operate autonomously on a task of a given complexity. When evaluating AI systems for R&D automation: AI R&D tasks (cleaning data, launching experiments, reading papers, writing code) typically take a few hours — once task horizons exceed this, AI R&D automation becomes feasible without constant human oversight.

## Known limitations

- 50% threshold is a median; tail-case failures may be severe and hard to detect
- METR basket diversity may not perfectly represent AI R&D task distribution specifically
- Task success definition may not capture quality of outputs, only completion
- Horizon is a function of task type; some domains may scale faster than others

## Open problems

- What drives the consistent doubling-plus growth in horizon? (Scaling? RLHF improvements? Agent architecture?)
- Does horizon growth slow as tasks become genuinely open-ended vs. well-specified?
- At what horizon does full AI R&D automation become feasible — is 100 hours the threshold?

## Key papers

- [[ai-systems-about-start-building-themselves]] — synthesizes METR horizon data from 2022–2026; projects 100-hour horizon by end of 2026

## My understanding

The METR task horizon is one of the most operationally useful capability metrics because it directly tracks the duration of autonomous human-free operation — the relevant threshold for most automation questions. The progression from 30 seconds to 12 hours in four years is genuinely striking: it represents a ~1,400× increase in autonomous task capacity. If the trend continues linearly in log-space, the implications for AI R&D automation and the labor market are hard to overstate.
