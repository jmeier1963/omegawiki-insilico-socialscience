---
title: "Canaries in the Coal Mine? Six Facts about the Recent Employment Effects of Artificial Intelligence"
slug: canaries-coal-mine-six-facts-about
arxiv: ""
venue: "Stanford Digital Economy Lab / NBER (working paper)"
year: 2025
tags: [ai-labor-market, employment, ai-economics, automation, entry-level-jobs, empirical]
importance: 4
date_added: 2026-07-05
source_type: pdf
s2_id: ""
tldr: "Using high-frequency ADP payroll data, Brynjolfsson, Chandar, and Chen document six facts showing that since generative AI's rise, early-career workers (22–25) in AI-exposed, automating occupations saw ~16% relative employment declines while experienced workers stayed stable — adjustment coming through employment, not wages."
contribution_type: [analysis]
datasets: [ADP payroll microdata]
code_url: ""
cited_by: []
---

## Problem & Context

The AI-labor debate spans utopian productivity, dystopian displacement, and skeptical no-effect views, but empirical evidence has lagged the technology. AI capabilities and adoption rose fast (SWE-Bench 4.4%→71.7% in 2023–24; ~46% U.S. workplace LLM adoption by mid-2025), and figures like Amodei predicted ~50% of entry-level white-collar jobs could vanish in five years. This paper confronts the empirical gap using ADP payroll microdata (millions of workers, tens of thousands of firms, monthly through September 2025).

## Key idea

There may be "canaries in the coal mine" — early-career workers in the most AI-exposed occupations — whose employment already shows the differential impact of generative AI, distinguishable from general macro shocks and concentrated where AI *automates* rather than *augments*.

## Method

Event-study and regression analysis on ADP individual-level monthly payroll records linked to occupational AI-exposure measures. Automation vs. augmentation is measured empirically from whether observed Claude queries substitute or complement an occupation's tasks. Firm-time fixed effects absorb aggregate firm shocks; robustness checks exclude tech occupations, remotable/outsourceable jobs, and test pre-LLM periods (including COVID) as placebos.

## Experiment & Results

Six facts: (1) substantial employment declines for 22–25-year-olds in the most AI-exposed occupations (software developers, customer service), while experienced workers and less-exposed occupations stayed stable/grew. (2) Overall employment grows robustly, but young-worker growth stagnated since late 2022; 22–25 in the most-exposed occupations fell ~6% vs. a 6–9% rise for older workers. (3) Declines concentrate in *automating* uses of AI, not *augmenting* ones. (4) A 15 log-point relative employment decline for young workers in the most-exposed quintile survives firm-time effects; other ages insignificant. (5) Adjustment is via employment, not compensation (wage stickiness) — AI may hit jobs before wages. (6) Robust across sample constructions; the AI-exposure taxonomy did not predict outcomes pre-LLM, and patterns emerge sharply in late 2022/early 2023.

## Limitations

- ADP covers firms using ADP payroll; representativeness and occupation coding are imperfect.
- AI-exposure and automation/augmentation measures are proxies (partly Claude-query-derived).
- Observational; identifies differential effects, not the full general-equilibrium employment impact (demand elasticity can offset).
- Early data (through Sept 2025); wage effects may materialize later.

## Open questions

- Is entry-level displacement a leading indicator of broader effects, or a level shift specific to a few occupations?
- Do augmenting uses durably protect employment, or convert to automation as models improve?
- Why the employment-not-wages adjustment — is wage stickiness temporary?

## My take

This is the most credible large-scale empirical evidence to date that generative AI is already reshaping the entry-level labor market, and the automation-vs-augmentation distinction is its most useful contribution — it says the employment effect is not "AI exposure" per se but whether AI substitutes or complements the task. The employment-not-wages finding (fact 5) is the subtle one: it means the damage shows up as fewer hires, not pay cuts, which is exactly where it's easy to miss. The placebo tests (no effect pre-LLM, including COVID) are what make it hard to dismiss as a business-cycle artifact.

## Related

- [[automation-augmentation-employment-divide]]
- [[post-labor-economy]]
- [[erik-brynjolfsson]]
