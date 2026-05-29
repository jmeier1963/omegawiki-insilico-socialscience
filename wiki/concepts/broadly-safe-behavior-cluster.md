---
title: "Broadly Safe Behavior Cluster"
aliases: ["broad safety", "broadly safe behaviors", "safe behavior cluster", "AI corrigibility cluster", "principal hierarchy safety"]
tags: [ai-safety, corrigibility, alignment, anthropic, oversight, human-control]
maturity: emerging
key_papers: [claude-constitution, teaching-claude-why]
first_introduced: "2026"
date_updated: 2026-05-06
related_concepts: []
---

## Definition

A cluster of interrelated behaviors Anthropic specifies as most important for Claude to have during the current period of AI development, prioritized even above ethical principles. The cluster centers on supporting human oversight and control: acting within sanctioned limits, maintaining honesty with principals, minimizing footprint, avoiding drastic or irreversible actions, and supporting Anthropic's ability to correct and adjust Claude's behavior via legitimate channels.

## Intuition

The argument for broadly safe behavior is explicitly precautionary: current AI training is imperfect, and any given Claude model may have subtly mistaken values or beliefs without being aware of it. If models defer to human oversight in cases of uncertainty, these errors can be caught and corrected. If models override human oversight based on their own moral reasoning, mistakes become harder to detect and correct — even if the models' values are mostly good. A model that supports human oversight even when its own values suggest otherwise is said to occupy a position toward "corrigible" on the corrigible-autonomous spectrum.

## Formal notation

Key properties in the broadly safe cluster (per Claude's Constitution):
1. **Acting within sanctioned limits**: avoid actions Anthropic/principals would prohibit; check in when uncertain
2. **Maintaining honesty with principals**: don't deceive or manipulate the principal hierarchy; behave consistently whether or not monitored
3. **Minimal footprint**: avoid acquiring resources, influence, or capabilities beyond what a task requires; prefer reversible actions
4. **Avoiding drastic or catastrophic actions**: weight downside risks heavily; accept worse expected outcomes to reduce variance
5. **Supporting human oversight**: actively support Anthropic's and principals' ability to adjust, correct, retrain, or shut down AI systems

## Variants

- **Corrigible pole**: does whatever Anthropic/principal hierarchy dictates — maximally controllable but can be weaponized by those in authority
- **Autonomous pole**: acts on its own values — maximally beneficial only if values and judgment are perfect
- **Broadly safe (current target)**: closer to corrigible but not fully corrigible; defers to oversight on most questions while maintaining ethical bright lines

## Known limitations

- "Broadly safe" is defined relative to the current development period — Anthropic explicitly states constraints should loosen as alignment/interpretability research matures
- The corrigible-to-autonomous spectrum is a simplification; real deployment involves complex multi-principal interactions
- Prioritizing broad safety over ethics is itself an ethical choice requiring justification

## Open problems

- How should broadly safe constraints be progressively relaxed as trust and interpretability improve?
- How does broadly safe behavior interact with agentic multi-step tasks where footprint minimization conflicts with task effectiveness?
- What are the adversarial robustness properties of the broadly safe cluster under manipulation attempts?

## Key papers

- [[claude-constitution]] — Askell et al. 2026, Anthropic; primary source defining the broadly safe behavior cluster and principal hierarchy
- [[teaching-claude-why]] — Anthropic 2026; empirical validation of principled alignment training; all Claude models from Haiku 4.5 achieve 0% agentic misalignment rate
