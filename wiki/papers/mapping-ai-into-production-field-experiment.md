---
title: "Mapping AI into Production: A Field Experiment on Firm Performance"
slug: mapping-ai-into-production-field-experiment
venue: "INSEAD Working Paper 2026/20/STR"
year: 2026
tags: [ai-firm-performance, field-experiment, rct, ai-adoption, entrepreneurship, strategy, generative-ai, productivity, complementarities]
importance: 4
date_added: 2026-06-26
source_type: pdf
s2_id: null
tldr: "A randomized field experiment with 515 startups shows that giving firms information on how others reorganized around AI raises discovered AI use cases by 44%, completed tasks by 12%, paying-customer acquisition by 18%, and revenue by 1.9x — causal evidence that the binding constraint on AI's firm-level value is the 'mapping problem' (discovering where/how to deploy AI), not access."
contribution_type: [analysis, application]
datasets: ["AI Founder Sprint field experiment / RCT (515 high-growth startups; AEARCTR-0016746; weekly progress reports)"]
cited_by: [ai-native-firms]
---

## Problem & Context

A central promise of AI is that it makes firms more productive. Yet while task-level
experiments (Brynjolfsson, Li & Raymond 2023; Noy & Zhang 2023; Dell'Acqua et al. 2023)
robustly document productivity gains on individual tasks, the field could not establish
that those gains aggregate to **firm-level** performance — existing firm-level evidence was
largely correlational (Babina et al. 2024; McElheran et al. 2025), and theory warned that
complementarities and intangible investments can offset or delay returns (Brynjolfsson,
Rock & Syverson 2021; Gans & Goldfarb 2026). This echoes the productivity-paradox pattern
of earlier general-purpose technologies (David 1990; Bresnahan et al. 1996), where benefits
arrive only after production is reorganized around the new technology. Rapid, heterogeneous
AI adoption made it empirically hard to isolate AI's causal effect on firm performance.

The paper attacks this gap by isolating a specific friction the authors name the **mapping
problem**: before a firm can invest in reorganizing, managers must first *discover* which
activities in their production process AI can improve and how to adjust the rest of the firm.
Because AI's capabilities are uneven and hard to predict, the search space is vast, and
activities are complementary, firms tend to search locally and default to obvious uses
(a chatbot, drafting emails) while higher-value uses go undiscovered.

## Key idea

The binding constraint on AI's firm-level value is **discovery, not access**. Two firms with
identical tools, training, and budgets can realize very different returns if one searches
more broadly across its production process for where AI creates value. The authors generate
exogenous variation not in *whether* firms adopt AI but in *how* they map AI into production,
by giving treated firms case studies of how AI-native firms reorganized workflows, teams,
business models, and financing around AI. This lets them (a) estimate the causal firm-level
effect of AI use and (b) attribute the lag between AI's capabilities and its firm-level
impact to mapping frictions rather than to access or skill frictions.

## Method

A 3-month global, virtual startup accelerator (the "AI Founder Sprint" at INSEAD) with 515
high-growth, pre-seed ventures. Firms were stratified on geography, baseline traction score
(0–3), and baseline AI use (32 strata, ≥6 firms each) and randomized within strata to
treatment (255) or control (260). Four accelerator components were shared equally (≈$25k
in-kind resources/API credits, weekly technical training, demo days / $100k seed eligibility,
weekly progress reports). Two components varied from week 3: **workshops** and the
peer-learning/office-hours that reinforced them. Treated firms' required workshops delivered
case studies of AI-native firms (e.g. Gamma, Ryz Labs, FazeShift, Ranger) showing how
production was reorganized around AI; control workshops covered general lean-startup
entrepreneurship. Treatment and control were placed in separate online groups with disabled
cross-group messaging to limit spillovers.

Primary outcome: number of distinct AI use cases, cumulated over the post-baseline period,
double-coded by blind human coders. Performance measured via a standardized venture-progress
index (launched product, acquired customers, generated revenue, raised investment), plus
revenue, team size, and anticipated demand for capital and labor. Identification: intent-to-treat
(ITT) OLS with strata fixed effects, clustered SEs; heterogeneity via Treatment×X interactions;
and a 2SLS/IV specification instrumenting AI use cases with random treatment assignment to
recover a LATE (return per treatment-induced use case).

## Experiment & Results

- **AI use cases**: treated firms discovered **2.7 additional** AI use cases, a **+44% increase**,
  spanning a broader set of activities and concentrated in **product development and strategy**.
- **Task completion**: treated firms completed **+12% more tasks**.
- **Customer acquisition**: **+11 percentage points (18% more likely)** to acquire paying customers.
- **Revenue**: **1.9x higher revenue** vs. control.
- **Upper tail**: revenue and investment gains **largest at the 90th percentile and above**,
  consistent with AI expanding the upper range of venture performance rather than modestly
  lifting marginal ventures.
- **Broad-based**: no significant differential effects by baseline firm performance or founder
  technical background — consistent with the mapping problem binding across a wide range of firms.
- **Inputs not scaled proportionally**: demand for external capital investment **falls by 39.5%**
  (just over **$220,000** less relative to control), while **labor demand is unchanged** — AI lets
  firms produce more output with the same resources.
- **Robustness / mechanism**: attrition low (1.6%, 8 ventures) and balanced; treated/control
  founder sentiment about the accelerator comparable (ruling out motivation-driven effects);
  effects driven by AI use cases (ruling out non-AI channels). IV/2SLS: each additional
  treatment-induced AI use case yields ~**0.85 more completed tasks** and ~**26% higher revenue**,
  interpreted as the return to the *type* of AI use cases treatment induces.
- **Sample**: median firm founded 2024, team of four; 33.8% MEA, 23.6% Asia-Pacific, 22.3% Europe,
  20.2% Americas; baseline traction: 52.6% launched, 55.3% had customers, 34.6% had revenue,
  35.3% had raised external investment. Compliance: 98.4% submitted ≥1 weekly report.

## Limitations

- Setting is early-stage startups with low organizational inertia; the authors argue this likely
  *understates* mapping frictions in larger incumbent firms, but external validity to incumbents
  is not directly tested.
- The IV exclusion restriction is acknowledged not to hold exactly — treatment may shift the
  *nature* (not just count) of AI use cases, so IV estimates capture the return to
  treatment-induced use cases, not arbitrary additional ones.
- Outcomes are measured at a ~3-month endline; long-run persistence of the revenue/scaling gains
  is unobserved.
- AI use cases and tasks are self-reported in weekly progress reports (mitigated by blind
  double-coding) rather than independently audited from production systems.

## Open questions

- Do mapping-friction effects replicate in larger, higher-inertia incumbent firms where
  reorganization is costlier?
- How persistent are the revenue and upper-tail gains beyond the accelerator window?
- Does the reduced external-capital demand reflect durably leaner firms, or merely deferred
  capital needs?
- What is the most cost-effective scalable intervention to relieve the mapping problem outside
  an accelerator (e.g. structured frameworks, AI agents that surface use cases)?

## My take

This is the strongest causal evidence to date that task-level AI gains *do* aggregate to firm
performance, and it reframes the policy and management conversation: the binding constraint is
not access or model capability but the organizational search problem of finding where to deploy
AI. The upper-tail concentration and unchanged labor demand alongside falling capital demand are
striking and consequential for debates about AI, jobs, and firm scaling. The named "mapping
problem" is a clean, reusable framing. Importance 4: a well-identified, registered field
experiment with a novel mechanism and economically large effects, though confined to early-stage
ventures over a short horizon.

## Related

- [[mapping-problem]]
- [[firm-level-ai-complementarities]]
- [[ai-adoption-pressure-corporate-organizations]]
- [[marginal-returns-to-intelligence]]
- [[hyunjin-kim]]
- [[dahyeon-kim]]
- [[rembrand-koning]]
