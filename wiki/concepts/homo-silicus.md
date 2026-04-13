---
title: "Homo Silicus"
aliases: ["LLM as simulated human", "AI economic agent", "LLM economic simulation", "silicon human", "computational model of humans", "LLM as homo economicus"]
tags: [llm-simulation, behavioral-economics, social-science, experimental-economics]
maturity: emerging
key_papers: [large-language-models-simulated-economic-agents, automated-social-science-language-models-scientist]
first_introduced: "2023-01-18"
date_updated: 2026-04-12
related_concepts: [persona-conditioning, scm-based-automated-experimentation]
---

## Definition

*Homo silicus* is the conceptual framing of a large language model as an implicit computational model of human behavior — analogous to *Homo economicus* in economic theory but instantiated as an LLM rather than a mathematical formulation. A *Homo silicus* agent can be given endowments, preferences, information, and scenarios via natural language prompts, and then queried for decisions or responses as a substitute for (or pilot of) human subjects experiments.

## Intuition

Just as *Homo economicus* is a simplified, abstract model of human rationality that economists endow with parameters and subject to scenarios, *Homo silicus* is a data-driven, implicit model of human behavior learned from massive text corpora. Unlike mathematical models, *Homo silicus* is flexible: it can respond to any scenario expressible in natural language without requiring re-specification of structural equations. Its behavior can be explored through simulation rather than deduction.

The key insight is that LLMs are trained to predict human-generated text, so their output distributions implicitly encode social norms, decision-making heuristics, economic reasoning, and behavioral regularities from both scholarly and everyday sources. This makes them reasonable (if imperfect) stand-ins for human respondents in pilot experiments.

## Formal notation

Not formalized — the framework is conceptual. The closest formalization is the calibration approach: given persona vectors $v_i$ for agent types $i$ and mixture weights $w = (w_1, \ldots, w_k)$, the simulated population is a weighted mixture minimizing $\|{\sum_i w_i v_i - v_{human}}\|^2$ subject to $\sum_i w_i = 1$, $w_i \geq 0$.

## Variants

- **Persona-less Homo silicus**: off-the-shelf LLM queried without any persona endowment; tends to reflect the modal/average behavior in training data, often mismatched to specific human populations
- **Endowed Homo silicus**: LLM given explicit persona instructions (preferences, beliefs, constraints) to represent a particular agent type
- **Calibrated Homo silicus**: mixture of typed agents with weights optimized on held-out human data to improve predictive validity
- **SCM-based Homo silicus**: agents endowed only with exogenous variables from a structural causal model, used in factorial experiments for automated causal inference (Manning, Zhu & Horton 2024)

## Comparison

| | Homo economicus | Homo silicus |
|---|---|---|
| Instantiation | Mathematical model | LLM (neural network) |
| Behavior derivation | Deduction | Simulation |
| Flexibility | Fixed structural form | Any natural language scenario |
| Endowment | Model parameters | Prompt text |
| Ground truth | Rational equilibrium | Human training corpora |
| Limitations | Rigid, unrealistic | Black box, memorization risk |

## When to use

- Pilot experiments before committing to costly human subjects studies
- Generating hypotheses about human behavior in novel settings
- Extending known experimental designs to new conditions (e.g., new price levels, political leanings, languages)
- Out-of-sample prediction using calibrated agent mixtures when human data is available for a related in-distribution task
- Stress-testing experimental designs or data pipelines

## Known limitations

- Requires high-capability LLMs; weaker models produce unreliable or inconsistent behavior
- Training data opacity: unknown what social information was ingested and with what biases
- Memorization risk: LLMs may parrot known experimental results rather than genuinely simulating behavior
- Results are qualitative guides, not substitutes for empirical human data for causal inference
- May reflect WEIRD (Western, Educated, Industrialized, Rich, Democratic) population biases
- Black-box: cannot yet map prompt improvements to specific internal representations

## Open problems

- Establishing when and why *Homo silicus* simulations fail (false positive/negative classification)
- Developing rigorous statistical frameworks for drawing inference from simulation data
- Understanding the capability threshold below which LLM simulation becomes unreliable
- Extending the framework to multi-agent equilibrium settings

## Key papers

- [[large-language-models-simulated-economic-agents]] — introduces the Homo silicus concept and framework
- [[automated-social-science-language-models-scientist]] — extends Homo silicus to automated SCM-based experimentation; demonstrates that simulation reveals latent knowledge beyond direct elicitation

## My understanding

A conceptually elegant reframing that draws a tight analogy between economic theory's use of stylized agents and the empirical capabilities of LLMs. The framework's value is not in replacing human data but in dramatically lowering the cost of hypothesis generation. The most powerful insight is that LLMs are better understood as *theory*-like tools than as *empirical* substitutes.
