---
title: "Epistemic Calibration in AI-Assisted Science: Measuring Meta-Knowledge Deficit via Assumption Taxonomy"
slug: epistemic-calibration-ai-assisted-science-measuring
status: proposed
origin: "ideate — direction: AI and epistemic quality of science; modified from basic calibration design per Review LLM (2026-05-02)"
origin_gaps:
  - messeri-crockett-ai-illusions-understanding
  - kosmyna-brain-chatgpt-cognitive-debt
  - bastani-generative-ai-harm-learning
tags: [epistemic-calibration, meta-knowledge, assumption-recall, ai-assisted-research, scientific-understanding, experiment]
domain: "NLP"
priority: 4
pilot_result: ""
failure_reason: ""
linked_experiments: []
date_proposed: 2026-05-02
date_resolved: ""
---

## Motivation

Messeri & Crockett (2024, Nature) argue that AI creates "illusions of understanding" in science — scientists believe they comprehend more than they do. They pose this as an empirical open question: "Do AI-assisted scientists have worse meta-knowledge (knowing what they don't know)?" Existing adjacent work (Kosmyna 2025: EEG cognitive debt in essay-writing students; Bastani 2024: learning harm in homework AI; arXiv 2409.16708: LSAT metacognitive dissociation) all shows the performance-metacognition gap, but none study *active researchers* on *actual research tasks*. The question of whether working scientists lose epistemic calibration is unanswered.

**Key novelty over basic calibration studies**: The innovation here is not another "AI makes you less calibrated" study (already done for LSAT/consumer tasks), but the introduction of a *formal assumption taxonomy* — a pre-registered, domain-grounded set of the minimal assumptions implicit in each research task — enabling objective measurement of "assumption recall" as a new epistemic construct distinct from confidence calibration.

## Hypothesis

Scientists who use AI tools for research tasks will show: (1) worse epistemic calibration (higher confidence on lower-accuracy responses); (2) worse assumption recall (inability to identify the minimal set of assumptions their conclusion depends on); and (3) degraded "counterfactual flexibility" (inability to specify what evidence would change their conclusions). The assumption-recall deficit is predicted to be larger than the confidence-calibration deficit, because AI tools abstract away assumption structure most aggressively.

The magnitude of the deficit will vary by AI-tool type: AI tools that provide only answers degrade assumption recall most; tools that expose reasoning degrade it less; tools that explicitly highlight assumptions may preserve or improve it.

## Approach sketch

1. **Develop a formal assumption taxonomy** for 3 task types: (a) causal inference (identifiability assumptions, ignorability, SUTVA); (b) mechanism selection (completeness of mechanism space, independence of alternatives); (c) hypothesis evaluation (auxiliary hypothesis dependencies, scope conditions). The taxonomy must have a ground-truth "minimal assumption set" for each task, validated by 5+ domain experts before the experiment.

2. **4-condition AI-interface manipulation** (not just AI-on/off): Condition 1 = no AI; Condition 2 = AI answers only (e.g., "The most likely mechanism is X"); Condition 3 = AI with reasoning trace (chain-of-thought); Condition 4 = AI with explicit assumption flagging ("This conclusion assumes Y; alternative: Z"). The 4-condition design targets the *mechanism* of calibration loss, not just the presence/absence of AI.

3. **Elicit three calibration measures** after each task: (a) confidence rating (0-100) + Brier score against ground truth; (b) assumption recall — list all assumptions the conclusion depends on, scored against the ground-truth taxonomy (F1 score: precision × recall of assumption set); (c) counterfactual specification — "what single change in the evidence would most change your conclusion?" scored against the ground-truth intervention set.

4. **Participants**: PhD-level researchers (n = 60-80) across 2-3 domains (computational biology, social science, chemistry), recruited via lab contacts. Counterbalanced within-subject design across the 4 conditions on matched task sets.

5. **Analysis**: Primary: mixed-effects ANOVA on calibration and assumption recall scores across conditions. Secondary: whether assumption-recall deficit predicts confidence-calibration deficit (structure of meta-knowledge loss). Tertiary: interaction with researcher experience (early-career vs. senior).

## Expected outcome

Condition 2 (AI answers only) will show the largest assumption-recall deficit; Condition 4 (AI with assumption flagging) will show preserved or improved assumption recall. This would demonstrate that the calibration loss is not inherent to AI use but contingent on interface design — providing actionable design principles. Condition 3 (reasoning trace) will partially preserve recall, but less effectively than explicit flagging.

## Risks

- Ground-truth assumption taxonomy creation is the hardest step: experts may disagree on what counts as a minimal assumption set
- Within-subject design risks carryover effects (participants become more metacognitive after first condition)
- "Research task" ecological validity: lab-compressed versions of causal inference may not capture the immersive conditions where calibration loss is worst
- 4-condition design requires careful power calculations; may need n > 80 for the interaction effects

## Pilot results

*Empty — to be filled after pilot*

## Lessons learned

*Empty — to be filled after completion*
