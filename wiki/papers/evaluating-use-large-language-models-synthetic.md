---
title: "Evaluating the Use of Large Language Models as Synthetic Social Agents in Social Science Research"
slug: evaluating-use-large-language-models-synthetic
arxiv: "2509.26080"
venue: "Journal of Social Computing"
year: 2025
tags: [llm-validity, synthetic-agents, social-science-methodology, epistemology, guardrails, silicon-sampling]
importance: 2
date_added: 2026-04-14
source_type: pdf
s2_id: "01f7cc1aab43e9705b6c6750c10a81f78aabe469"
keywords: [martingale property, introspective hallucination, predictive coherence, order dependence, quasi-predictive interpolation, synthetic social agents]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Social scientists increasingly treat LLM outputs as if they were probabilistic posterior samples from human population distributions — as if querying a model is equivalent to drawing a random person from a subpopulation. This conflation creates two failure modes: (1) over-interpreting LLM outputs as valid Bayesian inference, and (2) applying no validation at all. The paper asks: what is the correct epistemological framing for using LLMs as synthetic agents, and what practical guardrails follow from it?

## Key idea

LLMs are not probabilistic inference engines. They violate the martingale property (predictions are order-dependent) and exhibit introspective hallucination (models confabulate about their own uncertainty). Instead, LLMs should be reframed as **high-capacity pattern matchers for quasi-predictive interpolation under explicit scope conditions**. Under this framing, valid use of LLMs as synthetic social agents requires practical guardrails to avoid category errors.

## Method

Conceptual/analytical paper. Diagnoses the epistemological problem via two properties:
1. **Martingale property violation**: LLM predictions are order-dependent — asking the same question in different sequence positions yields different outputs, violating the required exchangeability for posterior interpretation
2. **Introspective hallucination**: LLMs cannot accurately report their own uncertainty distributions

Proposes a validity framework with four practical guardrails:
- **Independent draws**: treat each LLM query as an independent observation, not as draws from a consistent posterior
- **Preregistered human baselines**: always benchmark LLM outputs against real human data before drawing inferences
- **Reliability-aware validation**: explicitly test measurement invariance and item-level consistency
- **Subgroup calibration**: assess whether LLM responses diverge systematically across demographic subgroups

## Results

Theoretical/prescriptive rather than empirical. Main arguments:
- LLMs violate the martingale property due to autoregressive generation and context window sensitivity
- Treating LLM outputs as posterior samples leads to systematic category errors in social science
- The quasi-predictive interpolation reframing allows productive use for prototyping/forecasting with appropriate uncertainty bounds
- Proposed guardrails enable valid prototyping without epistemic overreach

## Limitations

- No empirical validation of the proposed guardrails
- The martingale property argument focuses on autoregressive LLMs; future model architectures may differ
- Does not address multi-agent settings where order-dependence effects may compound

## Open questions

- Are there survey item types where order-dependence effects are negligible enough to safely ignore?
- Can subgroup calibration be automated or standardized across LLM social science studies?
- Does the quasi-predictive interpolation framing extend to multi-agent LLM simulations?

## My take

A useful methodological wake-up call. The martingale property argument is technically sound and underappreciated in the silicon sampling literature. The practical guardrails are sensible, though the paper is prescriptive without empirical demonstration of their effectiveness. Most valuable as a conceptual corrective to over-claiming by silicon sampling proponents.

## Related

- supports: [[llms-lack-bayesian-coherence-synthetic-social]]
- [[llm-simulation-validity-guardrails]]
- [[silicon-sampling]]
