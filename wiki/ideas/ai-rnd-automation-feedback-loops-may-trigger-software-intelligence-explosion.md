---
title: AI R&D automation feedback loops may overcome diminishing returns and trigger a rapid software intelligence explosion
slug: ai-rnd-automation-feedback-loops-may-trigger-software-intelligence-explosion
status: proposed
origin: 'Migrated from research claim (original status: proposed, confidence: 0.45); proposed in: will-ai-automation-cause-software-intelligence'
origin_gaps: []
tags:
- intelligence-explosion
- ai-rnd-automation
- feedback-loops
- agi
- ai-safety
- software-progress
domain: NLP
priority: 3
pilot_result: ''
failure_reason: ''
linked_experiments: []
date_proposed: 2026-05-06
date_resolved: ''
---

> **Migrated from a research claim** (`wiki/claims/ai-rnd-automation-feedback-loops-may-trigger-software-intelligence-explosion.md`) on 2026-06-20. Original claim status `proposed` (confidence 0.45) mapped to idea status `proposed`. The claim's structured `evidence`/`confidence`/`conditions` are preserved verbatim in the body sections and in the provenance block at the end of this file.
## Statement

If AI systems capable of independently automating the full AI development cycle (ASARA) are developed, empirical evidence about recent rates of AI software improvement suggests that the resulting positive feedback loop may overcome the diminishing returns to R&D, producing an exponentially accelerating "software intelligence explosion" — a rapid capability increase occurring on existing hardware without requiring faster chip manufacturing.

## Evidence summary

Eth & Davidson (2025, Epoch AI) build an economic model parameterized against historical data on AI software progress rates and research effort growth. The key parameter r (returns to software R&D) appears empirically to be > 1 in multiple calibrations. The argument distinguishes software SIE (which is not hardware-bottlenecked) from hardware-dependent explosion scenarios.

## Conditions and scope

The claim is conditional on ASARA being developed. The key parameter r is uncertain. The model is stylized and does not account for governance, safety constraints, or the self-limiting effects of a rapidly progressing AI ecosystem. Confidence is low because of high model uncertainty and contested empirical premises.

## Counter-evidence

- Diminishing returns to software R&D may be more severe than historical data suggests
- Compute and training time constraints may bottleneck SIE before it becomes explosive
- Governance interventions (compute caps, licensing) could interrupt the feedback loop

## Linked ideas

## Open questions

- What would empirical falsification of r > 1 look like?
- At what timescale after ASARA would an SIE be detectable?
- How does the SIE hypothesis change AI governance priorities?


<!-- PROVENANCE: original claim frontmatter (preserved for recovery / re-derivation)
title: "AI R&D automation feedback loops may overcome diminishing returns and trigger a rapid software intelligence explosion"
slug: ai-rnd-automation-feedback-loops-may-trigger-software-intelligence-explosion
status: proposed
confidence: 0.45
tags: [intelligence-explosion, ai-rnd-automation, feedback-loops, agi, ai-safety, software-progress]
domain: NLP
source_papers: [will-ai-automation-cause-software-intelligence]
evidence:
  - source: will-ai-automation-cause-software-intelligence
    type: supports
    strength: moderate
    detail: "Epoch AI technical report: economic model calibrated to historical AI software progress shows returns-to-software-R&D parameter r likely > 1; positive feedback from ASARA may outpace diminishing returns; software SIE does not require faster hardware"
conditions: "Model depends on uncertain parameter r; historical calibration from AI/ML progress metrics; does not model safety constraints or governance interventions; plausibility argument, not prediction"
date_proposed: 2026-05-06
date_updated: 2026-05-06
-->
