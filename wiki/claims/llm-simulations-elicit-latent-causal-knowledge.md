---
title: "LLM simulations elicit latent causal knowledge beyond direct prompting"
slug: llm-simulations-elicit-latent-causal-knowledge
status: weakly_supported
confidence: 0.6
tags: [llm-simulation, structural-causal-model, in-silico-experimentation, latent-knowledge, causal-inference]
domain: "NLP"
source_papers: [automated-social-science-language-models-scientist]
evidence:
  - source: automated-social-science-language-models-scientist
    type: supports
    strength: moderate
    detail: "In auction simulations, direct LLM elicitation of clearing prices is wildly inaccurate (MSE=8628) while SCM-based simulation matches theory (MSE≈128). LLM predicts path coefficient signs correctly (10/12) but overestimates magnitudes by 13.2×. When conditioned on the fitted SCM, LLM predictions improve dramatically (MSE=1505)."
conditions: "Demonstrated with GPT-4 on four social scenarios (bargaining, bail, interview, auction). The gap between simulation and elicitation may vary by scenario complexity and LLM capability. 'Latent knowledge' may partly reflect knowledge the LLM cannot efficiently organize rather than truly inaccessible information."
date_proposed: 2026-04-13
date_updated: 2026-04-13
---

## Statement

Large language models contain latent knowledge about causal relationships in social interactions that cannot be reliably accessed through direct prompting (elicitation) but can be systematically extracted through structured simulation using structural causal models. The LLM "knows more than it can immediately tell."

## Evidence summary

Manning et al. (2024) provide three pieces of evidence:
1. **Predict-yᵢ vs. simulation**: Direct elicitation of auction clearing prices is off by an order of magnitude (MSE=8628), while SCM-based simulations closely match second-price auction theory (MSE≈128).
2. **Predict-β̂ task**: The LLM can predict the *direction* of causal effects (10/12 correct signs) but overestimates magnitudes by 13.2× — suggesting it has qualitative but not quantitative access to its own causal knowledge.
3. **Predict-yᵢ|β̂₋ᵢ task**: When given the fitted SCM from simulation, the LLM's predictions improve 5.7× (MSE from 8628 to 1505) — demonstrating that the simulation artifact unlocks knowledge the LLM could not access alone.

## Conditions and scope

- Tested only with GPT-4 on four scenarios; unknown whether the gap persists with more capable models or chain-of-thought elicitation
- The claim is about *relative* advantage of simulation over elicitation, not about absolute accuracy
- Does not address whether the latent knowledge generalizes to real human behavior

## Counter-evidence

- Improved prompting strategies (e.g., chain-of-thought, self-consistency, or multi-step reasoning) might narrow the elicitation-simulation gap
- The LLM may be bad at math rather than lacking causal knowledge per se — the predict-yᵢ|β̂₋ᵢ improvement could reflect arithmetic assistance rather than knowledge unlocking

## Linked ideas

## Open questions

- Does the elicitation-simulation gap persist with more capable models (GPT-5, Claude-4)?
- Can structured prompting (CoT, scratchpad) substitute for simulation?
- Is the latent knowledge causal in nature or merely statistical regularities from training data?
