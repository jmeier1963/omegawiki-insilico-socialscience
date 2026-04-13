---
title: "Large Language Models as Simulated Economic Agents: What Can We Learn from Homo Silicus?"
slug: large-language-models-simulated-economic-agents
arxiv: "2301.07543"
venue: "NBER Working Paper"
year: 2023
tags: [llm-simulation, behavioral-economics, homo-silicus, persona-conditioning, social-preferences, experimental-economics]
importance: 5
date_added: 2026-04-12
source_type: pdf
s2_id: ""
keywords: [homo-silicus, llm-simulation, behavioral-economics, persona, social-preferences, status-quo-bias, prospect-theory, experimental-economics]
domain: "NLP"
code_url: "https://pypi.org/project/edsl/"
cited_by: []
---

## Problem

Most economic research takes one of two forms: (a) deductive modeling using *Homo economicus*, and (b) empirical study of *Homo sapiens*. Running human subjects experiments is expensive, slow, and limited in scope. There is no cheap, flexible tool for piloting hypotheses about human behavior before committing to costly empirical studies.

## Key idea

LLMs—because of how they are trained on vast human-generated text—are *implicit computational models of humans*: a *Homo silicus*. Just as economists endow *Homo economicus* with preferences and constraints to derive behavior, researchers can endow LLMs with personas, endowments, and information, then simulate their behavior in economic scenarios. The paper introduces this framework and demonstrates it across five canonical behavioral economics experiments, showing that high-capability LLMs reproduce qualitatively human-like behavioral patterns. Crucially, LLM simulations are best viewed as analogous to economic theory (not empirical data): a fast, cheap engine of hypothesis generation that can guide later empirical work.

## Method

Five simulated experiments using contemporary LLMs (GPT-4, GPT-4o, Claude-Sonnet-3.5, Llama-3-70B, Deepseek):

1. **Fairness/price-gouging** (Kahneman et al., 1986): AI agents endowed with political personas (socialist to libertarian) evaluate fairness of price hikes. Results replicate across translated, alternative, and adversarial prompt variants.

2. **Social preferences / dictator games** (Charness and Rabin, 2002): Agents endowed with efficiency, inequity-aversion, or self-interest personas play unilateral allocation games. Calibrated mixture-of-types agents (optimized on unilateral games) successfully generalize to structurally distinct two-stage games, halving MSE vs. persona-less agents.

3. **Status quo bias** (Samuelson and Zeckhauser, 1988): Agents with beliefs about car vs. highway safety choose budget allocations; presentation as status quo strongly influences choices — consistent across five LLMs.

4. **Complexity view of prospect theory** (Oprea, 2024b): Agents endowed with varying math ability levels; the fourfold pattern of risk attitudes appears in both lottery and mirror (no-risk) conditions, supporting Oprea's complexity interpretation.

5. **Labor-labor substitution under minimum wage** (Horton, 2025): Employer agents choose between applicants varying in experience and wage; minimum wage causes directionally consistent labor-labor substitution across 43 models.

**Calibration approach**: Theory-grounded personas are calibrated on in-distribution games; calibrated mixture weights generalize out-of-sample. Open-source Python package (`edsl`) released for reproducibility.

## Results

- High-capability LLMs reproduce qualitative findings from all five target experiments
- Persona-endowed agents dramatically outperform persona-less baselines (calibrated MSE ~0.094 vs. 0.182 for persona-less on Charness-Rabin two-stage games)
- Political endowments shift fairness judgments in predictable directions; results robust to translated/alternative/adversarial prompt variants
- Status quo bias evident across all five tested LLMs
- Fourfold pattern emerges in both lottery and mirror conditions, with magnitude scaled by mathematical ability endowment
- Minimum wage causes ~$1.3/hour increase in hired worker wage; ~0.08 year increase in experience (without reference wage); effects grow with reference wage
- Lower-capability models (GPT-3.5-Turbo, Claude-Haiku-3) show noisier, less consistent behavior than frontier models

## Limitations

- LLM simulations require empirical confirmation before drawing causal inference (Ludwig et al., 2025)
- Training data opacity: unknown selection biases in what social information LLMs learned
- Memorization/performativity: models may have ingested original study results; robustness tests mitigate but cannot eliminate this concern
- Smaller LLMs may lack sufficient capability for reliable simulation
- Results may not generalize across model generations (GPT-3 results now woefully outdated)
- Potential WEIRD bias in training corpora, though economic principles may generalize more broadly than psychological ones

## Open questions

- When exactly do AI simulations fail? (false negative / false positive classification)
- Can mechanistic interpretability map which prompts improve fidelity to specific human features?
- What is the right statistical framework for drawing inference from AI simulation data?
- How do simulations fare for populations underrepresented in LLM training data?
- Does calibration on related settings always generalize, or are there sharp domain boundaries?

## My take

Seminal paper establishing *Homo silicus* as a legitimate conceptual framework. The analogy to economic theory (not empirical evidence) is exactly right: simulations are hypothesis generators, not substitutes for data. The calibration-and-generalization result is the most compelling technical contribution — showing that theory-grounded persona mixtures transfer across game formats is non-trivial. The paper's intellectual honesty about limitations (memorization, training data bias, confirmatory risk) strengthens its credibility. With 376+ citations in ~3 years, this has become a foundational reference for the LLM-as-social-simulator paradigm.

## Related

- supports: [[llms-replicate-human-behavioral-biases-in-economic-experiments]]
- supports: [[theory-grounded-persona-calibration-improves-llm-simulation-fidelity]]
- [[homo-silicus]]
- [[persona-conditioning]]
- [[john-j-horton]]
- [[benjamin-s-manning]]
