---
title: "LLMs replicate human behavioral biases in economic experiments"
slug: llms-replicate-human-behavioral-biases-economic
status: weakly_supported
confidence: 0.75
tags: [llm-simulation, behavioral-economics, behavioral-biases, social-preferences, homo-silicus]
domain: "NLP"
source_papers: [large-language-models-simulated-economic-agents, automated-social-science-language-models-scientist]
evidence:
  - source: large-language-models-simulated-economic-agents
    type: supports
    strength: moderate
    detail: "Five experiments show high-capability LLMs reproduce qualitative patterns from canonical behavioral economics studies: price-gouging fairness, dictator game social preferences, status quo bias, prospect theory fourfold pattern, and labor-labor substitution under minimum wage."
  - source: automated-social-science-language-models-scientist
    type: supports
    strength: moderate
    detail: "SCM-based auction simulation with GPT-4 agents produces clearing prices closely matching second-price auction theory (Maskin & Riley 1985); bargaining, bail, and interview simulations yield economically sensible causal effects (e.g., buyer budget increases deal probability, criminal history raises bail)."
conditions: "Holds primarily for high-capability frontier LLMs (GPT-4+, Claude-Sonnet-3.5+); lower-capability models show weaker or inconsistent patterns. Results are qualitative recapitulations, not quantitative replication. Memorization of published results cannot be fully ruled out."
date_proposed: 2026-04-12
date_updated: 2026-04-13
---

## Statement

High-capability large language models, when prompted with economic scenarios, exhibit behavioral patterns qualitatively similar to those observed in human subjects experiments — including social preference effects, status quo bias, political framing effects on fairness judgments, and prospect-theoretic risk attitudes.

## Evidence summary

Horton et al. (2023/2026) conduct five recapitulations of canonical behavioral economics experiments. Across price-gouging fairness (Kahneman et al. 1986), social preferences in dictator games (Charness and Rabin 2002), status quo bias (Samuelson and Zeckhauser 1988), prospect theory complexity (Oprea 2024b), and minimum wage labor substitution (Horton 2025), frontier LLMs produce qualitatively consistent results — with appropriate directional effects for political endowments, persona types, and framing manipulations. Robustness checks (translated prompts, adversarial variants, alternative phrasings) suggest results are not narrowly script-dependent.

Manning, Zhu & Horton (2024) provide additional evidence through automated SCM-based experiments: an auction simulation with GPT-4 agents produces clearing prices closely matching second-price auction theory, and bargaining/bail/interview simulations yield economically sensible causal effects.

## Conditions and scope

- Requires high-capability models; smaller models (GPT-3.5-Turbo, Claude-Haiku-3) are less reliable
- Results are *qualitative* recapitulations, not exact quantitative matches
- Domains well-covered in LLM training data (everyday economic decisions) are more reliable than niche or highly technical domains
- Simulation results require empirical confirmation before causal inference

## Counter-evidence

- Memorization: LLMs may have ingested original experiment descriptions, making "replication" potentially circular
- Persona-less LLMs without endowments often differ substantially from human distributions
- Cross-model heterogeneity: Llama-3-70B tends more selfish, GPT-4o/Claude-Sonnet more efficiency-minded by default

## Linked ideas

## Open questions

- What is the precise capability threshold below which LLM behavioral simulation becomes unreliable?
- How do results fare for behavioral patterns absent or underrepresented in internet text?
- Can mechanistic interpretability explain which internal representations drive human-like behavioral outputs?
