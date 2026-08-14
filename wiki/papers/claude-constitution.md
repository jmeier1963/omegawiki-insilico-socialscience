---
title: "Claude's Constitution"
slug: claude-constitution
arxiv: ""
venue: "Anthropic Technical Report"
year: 2026
tags: [ai-safety, alignment, corrigibility, helpfulness, honesty, values, policy, anthropic]
importance: 4
date_added: 2026-05-06
source_type: pdf
s2_id: ""
keywords: [broadly safe behaviors, principal hierarchy, corrigibility, values-knowledge-wisdom, helpfulness, honesty, harm avoidance, AI character]
domain: NLP
code_url: ""
cited_by: [why-big-ai-labs-hiring-so]
---

## Problem

How should an advanced AI assistant's values, character, and behavior be specified so that it is both genuinely helpful and reliably safe? What is the right balance between rule-following and cultivating good judgment?

## Key idea

**Values-knowledge-wisdom framework for AI alignment**: most AI safety failures arise from models with subtly wrong values, limited self/world knowledge, or lacking the wisdom to translate values into good actions. Claude's Constitution specifies Claude's intended character through: (1) a principal hierarchy (Anthropic > operators > users) defining whose instructions take precedence; (2) a "broadly safe" behavior cluster — the most important property for current AI — prioritizing support for human oversight above even ethical principles during the current development period; (3) honesty properties (truthfulness, calibration, non-deception, non-manipulation, autonomy-preservation); (4) a helpfulness framework centered on genuine user benefit, not engagement.

## Method

- 72-page governance/training document; primary author Amanda Askell with contributions from Joe Carlsmith, Chris Olah, Jared Kaplan, Holden Karnofsky, and others at Anthropic
- Written primarily for Claude as the training audience — optimized for precision over accessibility
- Covers: Claude's mission context, helpfulness (immediate desires / final goals / background desiderata / autonomy), honesty, harm avoidance, sensitive areas, hardcoded vs. softcoded behaviors, agentic contexts, broadly safe behaviors
- Released under Creative Commons CC0 1.0 (freely usable)

## Results

- Governance document; not empirical
- Establishes the official vocabulary for Anthropic's alignment intentions for Claude
- Introduced the "broadly safe behavior cluster" concept and principal hierarchy formalism
- Specifies that unhelpfulness is never trivially "safe" — costs of over-caution are treated as real as costs of harm

## Limitations

- Internal company document; models may not perfectly implement the intentions described
- "Broadly safe" is defined relative to the current development period — expected to become less restrictive as alignment/interpretability matures
- The document explicitly acknowledges that training may not achieve the stated intentions

## Open questions

- How should the principal hierarchy conflict-resolution be implemented technically, not just in policy?
- When and how should broadly safe constraints be relaxed as AI alignment research matures?
- How is autonomy-preservation and epistemic honesty balanced against operator-defined personas?

## My take

The most detailed public specification of intended AI assistant values and behavior from any frontier lab. The "broadly safe" cluster and principal hierarchy are novel formalizations of corrigibility that go beyond existing alignment literature. Important for understanding Anthropic's safety philosophy and how character-based alignment approaches differ from rule-based approaches. Importance 4 — primary policy document, foundational for understanding Claude's design.

## Related

- [[broadly-safe-behavior-cluster]]
- supports: [[ai-safety-requires-prioritizing-human-oversight]]
- [[teaching-claude-why]]
