---
name: "Staggered AI-Adoption Within-Person Design"
slug: staggered-ai-adoption-within-person-design
type: evaluation
tags: [ai-economics, labor-market, causal-inference, ai-adoption, enterprise-ai]
source_papers: [[how-employment-changing-anthropic]]
parent_methods: []
child_methods: []
realizes_concepts: [[ai-adoption-depth-breadth-gap]]
code_repo: ""
date_updated: "2026-11-02"
---

## Problem setting

Measuring AI's causal effect on worker productivity is confounded by the fact that AI adoption coincides with other changes — overall business growth, selection of which employees or tasks get exposed to new tools first, and secular trends that would have occurred regardless. Simply comparing adopters to non-adopters, or comparing output before and after adoption across the whole organization, conflates the tool's effect with these confounds.

## Mechanism

Exploit staggered adoption timing across individuals within the same organization and time period: different employees start using agentic tools in different calendar months, creating natural treatment and comparison groups exposed to the same overall business context but different tool availability. Estimate a two-way fixed-effects model with both person fixed effects (controlling for stable individual differences in skill, role, or motivation) and calendar-month fixed effects (controlling for organization-wide shocks like business growth or model releases affecting all employees simultaneously in a given month), isolating the within-person, within-month change associated specifically with crossing the adoption threshold.

## Procedure

1. Define a clear adoption threshold from usage telemetry (e.g., a person's first month with at least some minimum number of agentic sessions).
2. Identify the set of employees who adopt during the observation window (treatment group) and those who do not yet adopt (comparison group).
3. Track an output metric for all employees across the full observation window (e.g., code added, deals closed, contracts processed).
4. Fit a two-way fixed-effects regression with person and calendar-month fixed effects, using adoption timing (relative to each person's own adoption month) as the treatment variable.
5. Cluster standard errors on person to account for serial correlation in each individual's repeated observations.
6. Separately test for quality degradation by comparing within-person, within-month, same-context output produced via different methods (e.g., the same employee's human-written vs. agent-written code commits in the same directory and month) using multiple quality proxies rather than a single metric.
7. Explicitly examine pre-adoption trends for the treatment group to assess whether adopters were already on a different trajectory before adoption (a check against the most obvious form of selection bias).

## Assumptions

- Adoption timing, while not random, is at least not perfectly correlated with unobserved factors that would independently drive the same output changes attributed to adoption — a stronger assumption than full randomization but weaker than requiring a true randomized experiment.
- Calendar-month fixed effects adequately capture organization-wide shocks (business growth, model releases) that affect adopters and non-adopters similarly in a given month.
- The chosen output metrics (code added, deals closed) are reasonable proxies for genuine productivity rather than being gameable or decoupled from real value (partially checked via the separate quality-proxy comparison).

## Limitations

- Selection into adoption timing remains a real threat to causal interpretation: an employee anticipating a large upcoming project might adopt tools specifically to prepare for it, which the design cannot fully rule out even after checking pre-trends.
- Quality proxies for comparing human- vs. agent-written output (reversion rates, lint-suppression comments, skipped tests) are necessarily partial; systematic AI-specific error modes not captured by these proxies could go undetected.
- Results are specific to the firm, tools, and time period studied; the magnitude of estimated effects may not generalize to organizations with different baseline skill levels, tooling, or AI-tool maturity.
- Requires rich, longitudinal, person-level telemetry (usage logs, output metrics, calendar data) that is rarely available outside a small number of AI-native organizations with the internal data infrastructure to support it.

## Tradeoff profile

Trades the strong internal validity of a true randomized experiment (infeasible here, since adoption cannot ethically or practically be randomly assigned within an operating company) for substantially better identification than a simple before/after or cross-sectional comparison, at the cost of requiring rich person-level longitudinal data and remaining vulnerable to selection-on-anticipated-need bias that the design can only partially address via pre-trend checks.

## Evaluated by

Applied to 192 engineers who adopted coding agents versus 74 who had not, over a defined observation window, with a parallel code-quality comparison and an analogous staggered-adoption analysis for sales representatives. See [[how-employment-changing-anthropic]] for full results and the explicit discussion of pre-adoption trend differences between adopters and non-adopters.
