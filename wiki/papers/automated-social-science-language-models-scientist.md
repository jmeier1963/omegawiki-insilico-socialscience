---
title: "Automated Social Science: Language Models as Scientist and Subjects"
slug: automated-social-science-language-models-scientist
arxiv: "2404.11794"
venue: "SSRN / arXiv"
year: 2024
tags: [structural-causal-model, in-silico-experimentation, automated-hypothesis-generation, llm-simulation, multi-agent, social-science, behavioral-economics]
importance: 4
date_added: 2026-04-13
source_type: pdf
s2_id: "281188f43de819c848a2f985144958ea9a4e0fcb"
keywords: [structural causal modeling, in silico experimentation, latent causal knowledge, LLM as social subject, automated hypothesis generation]
domain: "NLP"
code_url: "http://www.benjaminmanning.io/"
cited_by: []
---

## Problem

Developing hypotheses and testing them experimentally in social science is slow, expensive, and labor-intensive. While LLMs have been shown to simulate human-like behavior, there has been no automated system that can generate hypotheses, design experiments, run them on LLM agents, and analyze the results — all without human intervention. The question is whether the full social scientific process can be automated end-to-end, and whether the resulting simulations reveal information that cannot be obtained by simply prompting the LLM directly.

## Key idea

Use structural causal models (SCMs) as the organizing framework for automated social science. An SCM provides (1) a formal language for stating hypotheses as causal graphs, (2) a blueprint for constructing LLM-powered agents with the right exogenous attributes, (3) a factorial experimental design from the SCM's exogenous variables, and (4) a pre-analysis plan for estimating causal effects. The fitted SCM becomes a reusable artifact for prediction and follow-on experiments. The system automates the full loop: scenario → hypothesis generation → agent construction → experiment execution → data analysis.

## Method

The system takes a natural language scenario description as input (e.g., "two people bargaining over a mug") and proceeds through seven automated steps:

1. **Hypothesis generation**: An LLM identifies relevant agents, outcomes, and potential exogenous causes, then constructs a linear SCM (DAG).
2. **Variable operationalization**: The system generates treatment levels for each exogenous variable and survey questions for measuring outcomes.
3. **Agent construction**: Independent LLMs are prompted to role-play agents with specific exogenous attribute values.
4. **Interaction protocol**: A turn-taking protocol is selected from a menu of six ordering mechanisms; a coordinator LLM determines when to stop the conversation.
5. **Experiment execution**: All factorial combinations of treatment values are run in parallel as simulated conversations between LLM agents.
6. **Data collection**: Agents answer post-interaction survey questions; outcomes are measured.
7. **Analysis**: The linear SCM is fitted via OLS, yielding path estimates (causal effect coefficients) with standard errors.

Four scenarios are demonstrated: bargaining over a mug (405 runs), bail hearing for tax fraud (243 runs), job interview (80 runs), and auction (343 runs). The system uses GPT-4 throughout.

## Results

- **Bargaining**: Buyer's budget (+), seller's minimum price (−), and seller's emotional attachment (−) all significantly affect the probability of a deal.
- **Bail hearing**: Defendant's criminal history significantly increases bail (+$521/conviction); remorse has borderline significance; judge's case count has no effect.
- **Job interview**: Passing the bar exam is the only significant predictor of hiring (β* = 0.78); height and interviewer friendliness have no effect.
- **Auction**: All three bidders' budgets significantly affect the clearing price (~$0.30-0.35 per dollar); results closely match second-price auction theory (Maskin & Riley, 1985).

Elicitation comparisons:
- **Predict-yᵢ task**: LLM predictions of auction outcomes without the fitted SCM are wildly inaccurate (MSE = 8628 vs. theory MSE = 128).
- **Predict-β̂ task**: LLM predicts path coefficient signs correctly (10/12) but overestimates magnitudes by 13.2× on average.
- **Predict-yᵢ|β̂₋ᵢ task**: When given the fitted SCM, LLM predictions dramatically improve (MSE = 1505), though still less accurate than theory.

The paper concludes: "the LLM knows more than it can (immediately) tell."

## Limitations

- System uses simple linear SCMs only; nonlinear relationships are not captured.
- All experiments use GPT-4; generalizability to other LLMs is untested.
- Agent personas are minimal (only SCM-relevant attributes); no demographic richness, which may reduce simulation fidelity.
- Conversation stopping rules are rudimentary (coordinator LLM + 20-statement hard limit).
- No formal mechanism for novelty optimization — the system generates sensible but not necessarily surprising hypotheses.
- Fundamental external validity gap: no human-subject replication to confirm in-silico findings generalize.
- Factorial design scales combinatorially; scenarios with many variables become expensive.

## Open questions

- Can the system discover genuinely novel (not just plausible) social scientific hypotheses?
- How do results change with different LLM backbones or across model generations?
- Can automated iteration (SCM → experiment → refined SCM) converge on ground-truth causal structure?
- What is the optimal strategy for endowing agents with attributes beyond the SCM variables?
- Can the approach scale to scenarios with many agents and complex interaction protocols?
- How well do SCM-based simulation findings predict actual human experimental outcomes?

## My take

This is an ambitious and well-executed demonstration of end-to-end automated social science. The key intellectual contribution is the insight that SCMs provide exactly the right level of structure to make automation tractable — they collapse the combinatorial explosion of possible experimental designs into a determinate set of steps. The elicitation experiments (Section 4) are particularly compelling: they show that LLMs contain latent causal knowledge about social interactions that cannot be extracted by direct prompting but can be systematically revealed through simulation. The auction results matching theory provide strong evidence that these simulations are more than stochastic parroting. The main limitation is the lack of human-subject validation — this paper is about what the LLM knows, not whether that knowledge generalizes to real humans. The comparison to Park et al. (2023) in Section 5 is insightful: SCMs avoid the identification problems of open-ended simulations by guaranteeing exogenous variation.

## Related

- [[scm-based-automated-experimentation]]
- [[homo-silicus]]
- [[generative-agent-based-modeling]]
- [[large-language-models-simulated-economic-agents]]
- [[generative-agents-interactive-simulacra-human-behavior]]
- supports: [[llm-simulations-elicit-latent-causal-knowledge]]
- supports: [[llms-replicate-human-behavioral-biases-economic]]
