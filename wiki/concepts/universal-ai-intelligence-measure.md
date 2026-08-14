---
title: "Universal AI Intelligence Measure"
aliases: ["Legg-Hutter score", "Legg-Hutter intelligence", "Universal AI", "UAI", "AIXI", "universal intelligence"]
tags: [universal-ai, aixi, intelligence-measure, agi, asi, theory, reinforcement-learning]
maturity: active
definition: "A formal, agent-agnostic measure of intelligence defined as an agent's expected performance averaged over all computable tasks (weighted toward simpler ones), realized by the incomputable AIXI agent and used to ground a continuum from human-level AGI to superintelligence."
key_papers: [from-agi-to-asi]
first_introduced: "2007"
date_updated: 2026-06-26
related_concepts: [agi-asi-transition, marginal-returns-to-intelligence, wisdom-versus-instrumental-intelligence]
---

## Definition

The Legg-Hutter intelligence score formalizes intelligence as the average performance of an agent across all computable tasks (environments with computable reward functions), with simpler tasks (lower Kolmogorov complexity) weighted more heavily. Its theoretical optimum is the AIXI agent of the Universal AI (UAI) framework, which maximizes this score but is incomputable; UAI is therefore the endpoint of the intelligence continuum that real systems can only approximate from below with increasing capability.

## Intuition

Rather than defining intelligence by performance on a fixed benchmark, ask: how well does an agent do *on average across every possible task*, favoring the simple, frequent ones? This single number gives a smooth, paradigm-agnostic scale on which one can place human-level AGI and superhuman ASI as regions rather than relying on sharp, contestable definitions. The measure is smooth with respect to compute (given ideal algorithms), even though concrete systems' capability profiles can be "jagged" across particular tasks.

## Variants

- **AIXI** — the optimal but incomputable reinforcement-learning agent realizing the measure (Hutter 2005; Hutter et al. 2024).
- **Approximations from below** — practical learners (e.g. large transformers trained with SGD) that may outperform AIXI on narrow benchmark sets but are dominated as the task set broadens toward the full computable class.
- **Restricted-hypothesis variants** — constraining the task set to "tasks of current and future human interest" (hard or soft probabilistic), trading away some optimality guarantees for relevance.

## Comparison

- Complements alternative theoretical frameworks the report cites as offering other lenses on intelligence and its limits: reflective oracles, logical induction, Schmidhuber's Gödel machines, computational mechanics, PAC/statistical learning theory, algorithmic game theory, and thermodynamic bounded rationality (Ortega & Braun) with Landauer-based energy bounds.
- Versus [[agi-asi-transition]]: this measure is the *formal grounding* that makes the AGI-ASI continuum well-defined; the transition concept builds on it.

## Known limitations

- AIXI is incomputable; the measure is used non-literally, "to give formal grounding" rather than as an operational metric.
- The choice of universal Turing machine for the complexity prior can have impact beyond a theoretical nuisance.
- "All computable tasks" may be the wrong target — the average performance over all computable worlds need not track usefulness in our concrete world.
- Bridging this ideal framework with empirical deep learning remains an open problem; practical ASI may be built before foundations are unified.

## Open problems

- How can the AIXI framework be modified/extended to analyze *practical* ASI algorithms?
- For which problem classes are good approximations possible, and how does approximation quality scale with compute budget?
- Is capability "jaggedness" a fundamental theoretical property or an artefact of comparison to human performance?
- Can general "compression benchmarks" motivated by Universal Induction serve as ASI-grade evaluations?

## Relationship to foundations

Rooted in algorithmic information theory and Solomonoff induction; connects to thermodynamic limits of computation (Landauer bounds; Kolchinsky & Wolpert) that constrain any physical intelligent system.

## Realized by

- AIXI (incomputable optimal agent) and its computable approximations.

## My understanding

The report's most distinctive move: borrowing a decades-old theoretical construct to give the otherwise hand-wavy AGI/ASI debate a single, smooth, paradigm-agnostic axis. Its power is conceptual clarity, not measurability — useful exactly because it sidesteps benchmark-specific definitions of "superintelligence".

## Key papers

- [[from-agi-to-asi]] — Genewein et al. (2026, Google DeepMind); uses the Legg-Hutter / AIXI framework to ground the AGI-to-ASI continuum and motivate a research agenda on the theoretical foundations of superintelligence.
