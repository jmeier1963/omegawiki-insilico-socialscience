---
title: Properly aligning AI with human values requires empirical social science to study how humans reason, express values, and respond to AI-generated arguments under realistic conditions
slug: ai-alignment-requires-empirical-social-science-for-value-elicitation
status: proposed
origin: 'Migrated from research claim (original status: weakly_supported, confidence: 0.7); proposed in: ai-safety-needs-social-scientists'
origin_gaps: []
tags:
- alignment
- ai-safety
- social-science
- human-values
- cognitive-bias
- value-learning
- scalable-oversight
domain: NLP
priority: 3
pilot_result: ''
failure_reason: ''
linked_experiments: []
date_proposed: 2026-05-06
date_resolved: ''
---

> **Migrated from a research claim** (`wiki/claims/ai-alignment-requires-empirical-social-science-for-value-elicitation.md`) on 2026-06-20. Original claim status `weakly_supported` (confidence 0.7) mapped to idea status `proposed`. The claim's structured `evidence`/`confidence`/`conditions` are preserved verbatim in the body sections and in the provenance block at the end of this file.
## Statement

AI alignment approaches that learn human values through feedback face unresolved empirical uncertainties about human psychology: how humans respond to different question framings, perform under adversarial conditions, experience cognitive bias, and reason about complex AI-generated arguments. These uncertainties can only be resolved through empirical social science research (psychology, economics, political science), not through ML engineering alone.

## Evidence summary

Irving & Askell (2019, Distill) identify specific empirical gaps in alignment research that require social science methods. Confidence is moderate because this is a position paper, but the logical argument is strong and widely accepted in the interdisciplinary AI safety community.

## Conditions and scope

Applies most directly to value-learning approaches (RLHF, debate, IRL). Constitutional AI and aggregative approaches partially address the concern. The claim is structural: no ML technique alone resolves uncertainty about how humans express preferences.

## Counter-evidence

- Some alignment approaches (constitutional AI) reduce reliance on direct human feedback by using AI-generated principles, reducing the dependency on human psychology
- RLHF at scale with diverse annotators may empirically sample the relevant variation without requiring social science theory

## Linked ideas

## Open questions

- What specific social science experiments would most advance alignment?
- How should AI labs institutionalize social science collaboration?
- Do current RLHF approaches inadvertently pick up on biases in preference elicitation?


<!-- PROVENANCE: original claim frontmatter (preserved for recovery / re-derivation)
title: "Properly aligning AI with human values requires empirical social science to study how humans reason, express values, and respond to AI-generated arguments under realistic conditions"
slug: ai-alignment-requires-empirical-social-science-for-value-elicitation
status: weakly_supported
confidence: 0.70
tags: [alignment, ai-safety, social-science, human-values, cognitive-bias, value-learning, scalable-oversight]
domain: NLP
source_papers: [ai-safety-needs-social-scientists]
evidence:
  - source: ai-safety-needs-social-scientists
    type: supports
    strength: moderate
    detail: "Distill 2019 position paper: alignment methods (debate, RLHF) depend on untested assumptions about human rationality; identifies specific empirically resolvable questions about human judge performance, cognitive bias, framing effects"
conditions: "Argument applies most directly to feedback-based alignment methods (RLHF, debate, IRL); position paper without empirical experiments"
date_proposed: 2026-05-06
date_updated: 2026-05-06
-->
