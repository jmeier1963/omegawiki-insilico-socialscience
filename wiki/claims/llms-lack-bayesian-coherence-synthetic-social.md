---
title: "LLMs lack Bayesian coherence and should not be treated as posterior samples from human population distributions"
slug: llms-lack-bayesian-coherence-synthetic-social
status: proposed
confidence: 0.65
tags: [llm-validity, epistemology, social-science-methodology, martingale, synthetic-agents]
domain: NLP
source_papers: [evaluating-use-large-language-models-synthetic]
evidence:
  - source: evaluating-use-large-language-models-synthetic
    type: supports
    strength: moderate
    detail: "Theoretical argument: LLMs violate the martingale property (order-dependent predictions) and exhibit introspective hallucination; reframing as quasi-predictive pattern matchers with explicit guardrails avoids epistemic category errors in social science."
conditions: "Applies to autoregressive LLMs used as synthetic agents in social science; may differ for future model architectures with explicit probabilistic outputs or calibrated uncertainty."
date_proposed: 2026-04-14
date_updated: 2026-04-14
---

## Statement

Large Language Models used as synthetic social agents in social science research violate the martingale property required for valid Bayesian posterior sampling. LLM outputs are order-dependent and models cannot accurately introspect their own uncertainty distributions. Therefore, interpreting LLM outputs as probabilistic samples from human population distributions is an epistemic category error; LLMs should instead be treated as high-capacity pattern matchers for quasi-predictive interpolation under explicit scope conditions.

## Evidence summary

Madden (2025) provides a theoretical argument grounded in two properties:
1. Autoregressive LLMs produce context-sensitive, order-dependent outputs — violating the exchangeability required for valid posterior samples
2. LLMs confabulate about their own uncertainty, making self-reported confidence scores unreliable

The paper proposes practical guardrails (independent draws, preregistered baselines, reliability-aware validation, subgroup calibration) that allow productive use without epistemic overreach.

## Conditions and scope

- Primarily applies to current autoregressive Transformer-based LLMs
- Future architectures with explicit probabilistic outputs might partially address these limitations
- The critique targets social science use cases where inference about population-level distributions is intended

## Counter-evidence

- No empirical demonstration that the guardrails actually prevent the claimed category errors
- Some papers (e.g., Argyle et al.) show empirically that silicon sampling produces outputs that correlate with real survey data — whether this constitutes "valid inference" is contested
- The martingale property is a formal statistical criterion; practical question is whether its violation matters for specific use cases

## Linked ideas

## Open questions

- Does order-dependence in LLMs produce meaningful distortions in practice, or is it a theoretical concern?
- Are there elicitation protocols that reduce order-dependence enough to restore near-posterior sampling behavior?
- How do the proposed guardrails perform empirically compared to unguarded silicon sampling?
