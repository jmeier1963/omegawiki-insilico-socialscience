---
title: "Statistical Inference as Severe Testing"
slug: mayo-statistical-inference-severe-testing
domain: general
status: mainstream
aliases: ["Mayo 2018", "severe testing", "error statistics", "statistics wars Mayo", "error-statistical philosophy"]
first_introduced: "2018"
date_updated: 2026-04-24
source_url: ""
---

## Definition

Mayo's 2018 Cambridge UP monograph proposes the severity principle as a foundation for frequentist statistics and the philosophy of inductive inference: a hypothesis passes a severe test only if the data would have been very unlikely had the hypothesis been false. This error-statistical philosophy offers an alternative to Bayesian approaches and directly addresses the replication crisis.

## Intuition

A result doesn't give evidence for a claim if you would have gotten that result even if the claim were false. Severity measures how well a test probes a claim. "p < 0.05" is not itself severity — it matters whether the experimental design was powered and structured to detect the effect you're claiming.

## Formal notation

**Severity principle**: data x provides good evidence for hypothesis H (relative to test T) iff:
- x accords with H
- P(such accord | H is false) is low — i.e., H would rarely pass test T if H were false

Severity(H, x, T) = P(Test T produces results as extreme as x | H false) — want this to be LOW

A claim is well-supported when it has passed a severe test; it is poorly supported when it could easily have passed even if false (low severity).

## Key variants

- **Neyman-Pearson**: frequentist hypothesis testing (error rates)
- **Fisher**: p-values and significance (severity is more explicit than Fisher's approach)
- **Bayesian inference**: prior + likelihood + posterior (Mayo's chief opponent)
- **Lakatos**: "progressive" research programmes as severity analog at the programme level

## Known limitations

- Severity can be hard to compute in complex multi-step procedures
- Does not address multi-hypothesis testing straightforwardly
- The frequentist interpretation of probability remains philosophically contested

## Open problems

- How do AI-generated scientific claims satisfy the severity criterion?
- Automated science pipelines (agent-laboratory, AlphaEvolve) need explicit severity analysis
- The replication crisis (Open Science Collaboration 2015) is exactly what Mayo's framework predicts when severity is low

## Relevance to active research

Direct relevance to replication crisis (Open Science Collaboration 2015), Kapoor & Narayanan (2023) on ML leakage (low-severity tests), and all discussions of AI-generated findings. Provides philosophical grounding for evaluating whether AI-discovered results constitute genuine evidence.
