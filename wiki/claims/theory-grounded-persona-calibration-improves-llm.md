---
title: "Theory-grounded persona calibration improves LLM simulation fidelity"
slug: theory-grounded-persona-calibration-improves-llm
status: weakly_supported
confidence: 0.65
tags: [llm-simulation, persona-conditioning, calibration, behavioral-economics, homo-silicus]
domain: "NLP"
source_papers: [large-language-models-simulated-economic-agents, polypersona-persona-grounded-llm-synthetic-survey]
evidence:
  - source: large-language-models-simulated-economic-agents
    type: supports
    strength: moderate
    detail: "Calibrating mixture weights of theory-grounded personas (efficient/inequity-averse/self-interested) on unilateral dictator games halves out-of-sample MSE on two-stage games (0.094 vs. 0.182 for persona-less agents), and persona endowment makes agents track assigned types near-perfectly."
  - source: polypersona-persona-grounded-llm-synthetic-survey
    type: supports
    strength: weak
    detail: "Persona-conditioned LoRA fine-tuning on compact models (1.1B–2B) achieves BERTScore F1 > 0.88 and stable survey quality metrics across 10 domains and 433 personas, matching 7B baselines. However, evaluation is against LLM-generated references, not real human data."
conditions: "Calibration works when the same theoretical construct (e.g., social preferences) plausibly drives behavior in both calibration and target settings. Atheoretical or scientifically meaningless persona traits (hobbies, TV preferences) do not improve fidelity. Requires that agents faithfully follow their persona instructions, which holds mainly for frontier models."
date_proposed: 2026-04-12
date_updated: 2026-04-12
---

## Statement

Endowing LLM agents with theory-grounded personas (motivated by economic theory) and calibrating the mixture of agent types to match human behavior in a known setting substantially improves out-of-sample simulation fidelity compared to persona-less agents — provided the same theoretical construct governs behavior in both calibration and target settings.

## Evidence summary

Horton et al. show that: (1) assigning personas (efficient/inequity-averse/self-interested) causes agents to track their assigned type near-perfectly; (2) a mixture of persona-types, with mixture weights optimized on unilateral dictator games from Charness and Rabin, predicts responses to structurally distinct two-stage games substantially better than persona-less baselines (calibrated MSE ~0.094 vs. 0.182). Manning and Horton (2025) extend this approach more fully. Theory-based prompts (risk preferences, fairness, cooperation) that improve predictive accuracy in Xie et al. (2025) match exactly what economists would anticipate from the relevant theory.

## Conditions and scope

- Persona must be grounded in economic theory (or other interpretable behavioral theory)
- Calibration setting and target setting must share the same underlying theoretical mechanism
- Atheoretical traits do not transfer
- Requires high-capability instruction-following LLMs; weaker models may not faithfully execute persona instructions

## Counter-evidence

- Fine-tuning on task-specific data can further improve fidelity but sacrifices generalizability and risks catastrophic forgetting
- The improvement mechanism is not fully understood; better prompts might exploit LLM artifacts rather than genuine behavioral theory

## Linked ideas

## Open questions

- What is the minimum overlap in underlying theory required for calibration to transfer?
- Can calibration-and-generalization work for more complex multi-agent settings?
- How does this approach scale to theories with more than 3 agent types?
