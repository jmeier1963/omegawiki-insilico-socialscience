---
title: "GDPval: Evaluating AI Model Performance on Real-World Economically Valuable Tasks"
slug: gdpval-evaluating-ai-model-performance-real
arxiv: ""
venue: "arXiv (OpenAI)"
year: 2025
tags: [ai-evaluation, benchmark, ai-economics, labor-market, economically-valuable-tasks, capability-measurement]
importance: 4
date_added: 2026-07-05
source_type: pdf
s2_id: ""
tldr: "OpenAI introduces GDPval, a benchmark of real-world economically valuable tasks spanning 44 occupations across the top 9 U.S. GDP sectors, built from the work of professionals averaging 14 years' experience; frontier models improve roughly linearly and are approaching industry experts in deliverable quality."
contribution_type: [benchmark, analysis]
datasets: [GDPval]
code_url: "https://evals.openai.com"
cited_by: []
---

## Problem & Context

Measuring AI's economic impact via adoption rates, usage, or GDP growth yields lagging indicators — historically, invention-to-permeation takes years or decades. A leading indicator is possible: directly measure model capability on real economically valuable work, giving attributable evidence of economic relevance ahead of adoption.

## Key idea

Benchmark models on **representative real-world deliverables** drawn from the actual work of experienced professionals, covering the majority of BLS Work Activities for 44 occupations across the top 9 GDP-contributing sectors — a capability measure with direct economic meaning.

## Method

GDPval tasks are constructed from the representative work of industry professionals (avg. 14 years' experience), ≥30 tasks per occupation (5 per occupation in a 220-task gold subset). Deliverables are graded (expert comparison; a public automated grading service at evals.openai.com). The paper analyzes trends over time and the effect of reasoning effort, task context, and scaffolding, plus human-oversight cost/speed comparisons.

## Experiment & Results

- Frontier performance on GDPval improves roughly **linearly** over time; the best current models are **approaching industry experts** in deliverable quality.
- With human oversight, frontier models can perform GDPval tasks **cheaper and faster** than unaided experts.
- Increased reasoning effort, task context, and scaffolding each improve performance.
- Open-sources a 220-task gold subset and an automated grader.

## Limitations

- Deliverable-quality grading is hard and partly comparison-based; "approaching experts" depends on the rubric.
- Capability ≠ deployment: closing the eval gap does not mean economy-wide automation (the paper stresses adoption lags).
- Covers occupations/sectors selected for GDP contribution and measurability; coverage is not exhaustive.

## Open questions

- How well does GDPval deliverable quality predict actual labor-market and productivity outcomes?
- Does the roughly-linear improvement continue, saturate, or accelerate?
- How much of the human-oversight cost advantage survives real deployment friction?

## My take

GDPval's premise — measure capability on real occupational deliverables as a *leading* indicator — is the right complement to lagging payroll evidence like the Canaries paper (which GDPval explicitly cites): one measures what models *can* do, the other what firms have *done*. The "approaching experts, roughly linear" framing is more measured than benchmark-saturation hype, and the open gold subset plus public grader make it a usable standard. The load-bearing caveat is its own: capability leads adoption by years, so an expert-level GDPval score is a warning, not a nowcast of automation.

## Related

- [[economically-valuable-task-benchmark]]
- [[sociotechnical-ai-evaluation]]
- [[canaries-coal-mine-six-facts-about]]
