---
title: "Measuring AI Ability to Complete Long Software Tasks"
slug: measuring-ai-ability-complete-long-software
arxiv: "2503.14499"
venue: "arXiv (METR)"
year: 2026
tags: [ai-evaluation, capability-forecasting, agentic-ai, task-horizon, metr, benchmark]
importance: 4
date_added: 2026-07-05
source_type: pdf
s2_id: ""
tldr: "METR proposes the 50%-task-completion time horizon — the human task length at which a model succeeds 50% of the time — measures o3 at ~110 minutes, and finds this horizon has doubled roughly every seven months since 2019 (possibly faster since 2024), extrapolating to month-long software tasks within five years."
contribution_type: [benchmark, analysis]
datasets: [RE-Bench, HCAST]
code_url: ""
cited_by: []
---

## Problem & Context

Benchmark scores don't translate cleanly into real-world capability: knowing a model scores X% on a test says little about what human-scale work it can do. Frontier developers have committed to capability thresholds for risk mitigations, so a metric that tracks and forecasts autonomy in interpretable, human terms is foundational to responsible AI governance.

## Key idea

Measure capability in units of **human time**: the **50%-task-completion time horizon** is the length of task (measured by how long skilled humans take) that a model can complete with 50% success. This converts benchmark performance into a human-comparable, forecastable quantity.

## Method

Timed domain-expert humans on RE-Bench, HCAST, and 66 novel shorter tasks, then measured model success rates as a function of human task length to estimate each model's 50% (and 80%) time horizon. Analyzed the historical trend since 2019 and the drivers of longer horizons.

## Experiment & Results

- Current frontier models (e.g. o3) have a 50% time horizon of ~110 minutes.
- The time horizon has doubled approximately every seven months since 2019; the trend may have accelerated since 2024.
- Gains are driven primarily by greater reliability, ability to adapt to mistakes, logical reasoning, and tool use — not raw knowledge.
- Extrapolation: if the trend holds, within ~5 years AI could automate many software tasks that currently take humans a month.

## Limitations

- External validity: horizons measured on RE-Bench/HCAST/novel tasks may not transfer to messy real-world software work.
- 50% success is a low reliability bar; higher-reliability horizons are shorter.
- Extrapolating an exponential is fragile; the trend could bend (S-curve) or accelerate.

## Open questions

- Do these horizons generalize to real-world, poorly-specified software tasks?
- Is the doubling rate stable, accelerating (post-2024), or about to bend?
- What reliability threshold matters for dangerous autonomous capabilities (CBRN, self-replication)?

## My take

The 50%-time-horizon metric is the field's most useful single number for capability forecasting because it is human-interpretable and directly forecastable — it turns "AI is getting better" into "AI can now do ~2-hour tasks, doubling every ~7 months." It is the empirical backbone of the agentic-task-horizon and software-intelligence-explosion discussions; the honest caveats (50% bar, external validity, exponential fragility) are exactly the ones that determine whether the 5-year extrapolation holds.

## Related

- [[agent-autonomous-task-horizon]]
- [[software-intelligence-explosion]]
