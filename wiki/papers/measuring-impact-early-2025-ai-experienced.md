---
title: "Measuring the Impact of Early-2025 AI on Experienced Open-Source Developer Productivity"
slug: measuring-impact-early-2025-ai-experienced
arxiv: "2507.09089"
venue: "arXiv preprint (METR)"
year: 2025
tags: [developer-productivity, rct, coding-agents, ai-impact-measurement, metr]
importance: 5
date_added: "2026-11-11"
source_type: pdf
s2_id: ""
tldr: "A randomized controlled trial with 16 experienced open-source developers on 246 real tasks found that allowing early-2025 AI tools increased completion time by 19%, despite developers expecting a 20-24% speedup."
contribution_type: [analysis]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

Benchmarks show strong AI coding performance and lab experiments on synthetic tasks show speedups, but those tasks are self-contained and scored algorithmically. Field experiments had measured proxies like lines of code or tasks completed, which AI can inflate without real productivity gain. Real effects on experienced developers in mature codebases were unmeasured.

## Key idea

Randomize at the task level inside developers' own repositories: each issue is assigned to allow or disallow AI tools, and completion time is measured. This isolates the causal effect of AI on realistic, high-context work, and also compares forecasts (developers, economists, ML experts) with the measured outcome.

## Method

16 developers with moderate AI experience and about 5 years of prior experience on their projects (large, mature open-source repositories) completed 246 tasks. Tasks were randomly assigned AI-allowed or AI-disallowed; with AI, developers mainly used Cursor Pro with Claude 3.5/3.7 Sonnet. Screen recordings and self-reports supplemented timing. The authors then assessed evidence for 21 candidate factors (project size, quality bar, prior AI experience and others) that might explain the result.

## Experiment & Results

Developers forecast AI would cut time by 24% beforehand and, afterwards, believed it had cut time by 20%. Measured effect: AI **increased** completion time by **19%**. Economists (39% faster) and ML experts (38% faster) also predicted large speedups. The slowdown was robust across the analyses used to probe experimental artifacts.

## Limitations

Small sample (16 developers), a specific population (experienced maintainers of their own mature repos), early-2025 tools and a single time window; the authors state that artifacts cannot be fully ruled out and that results may not transfer to less experienced developers, greenfield work or newer agents.

## Open questions

Which of the 21 factors drive the slowdown, and does it vanish with newer agentic tools? Why is self-assessment so biased, and how should organizations measure real productivity?

## My take

The key lesson for the wiki is the **perception gap**: users felt faster while being slower, so adoption surveys and self-reports are weak evidence of impact. It pairs naturally with [[adoption-impact-command-line-ai-coding]], which finds a measurable gain with newer agentic CLI tools, suggesting the tool generation matters.

## Related

- [[ai-research-productivity-paradox]]
- [[effects-generative-ai-high-skilled-work]] — field experiments with the opposite sign
- [[measuring-ai-ability-complete-long-software]] — METR time-horizon work
- [[adoption-impact-command-line-ai-coding]] — later study of newer tools
