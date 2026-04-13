---
title: "LLM persona-based studies systematically underspecify task and target population, limiting ecological validity and generalizability"
slug: llm-persona-underspecification-limits-ecological-validity
status: weakly_supported
confidence: 0.7
tags: [persona, llm-alignment, ecological-validity, representativeness, sociodemographics, transparency]
domain: NLP
source_papers: [whose-personae-synthetic-persona-experiments-llm]
evidence:
  - source: whose-personae-synthetic-persona-experiments-llm
    type: supports
    strength: moderate
    detail: "Systematic review of 63 NLP/AI papers (2023–2025) finds 43% target an undifferentiated 'general population,' only 35% discuss representativeness of their LLM personae, and 65% do not explicitly discuss sociodemographic representation — establishing a wide, cross-venue pattern of underspecification."
conditions: "Applies to persona-based LLM alignment and evaluation experiments published 2023–2025 in leading NLP/AI venues. Scope may broaden or narrow with inclusion of preprints and non-English venues."
date_proposed: 2026-04-12
date_updated: 2026-04-12
---

## Statement

The dominant practice of synthetic persona-based experiments in LLM research systematically fails to specify (a) the concrete task for which the model is being personalized and (b) the target population whose views the persona is meant to represent. This dual underspecification means that most persona-based evaluation results cannot be meaningfully generalized to real-world deployment settings, and that claims about "diverse user representation" are largely unsubstantiated.

## Evidence summary

- **whose-personae-synthetic-persona-experiments-llm** (AIES 2025, N=63 papers): 43% of studies use "general population" as their target, 35% mention representativeness at all, 65% omit explicit sociodemographic discussion in the main text; 60% use interaction settings that do not reflect real deployment contexts. Zero papers include a positionality statement.

## Conditions and scope

- Covers peer-reviewed NLP/AI venues 2023–2025 (ICML, ICLR, CHI, AAAI, FAccT, AIES, *ACL Anthology).
- Claim is about the *field-wide distribution* of practices, not individual paper quality.
- May not apply to domain-specific sub-communities (e.g., computational social science) that have separate representativeness norms.

## Counter-evidence

None recorded yet.

## Linked ideas

## Open questions

- Does higher checklist compliance produce more reproducible alignment findings?
- How much does task underspecification inflate false-positive claims of demographic parity?
