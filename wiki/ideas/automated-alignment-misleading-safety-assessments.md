---
title: Automated alignment research produces systematically misleading safety assessments even without scheming
slug: automated-alignment-misleading-safety-assessments
status: proposed
origin: 'Migrated from research claim (original status: proposed, confidence: 0.6); proposed in: automated-alignment-harder-than-you-think'
origin_gaps: []
tags:
- alignment
- automated-alignment
- safety-cases
- scalable-oversight
- ai-safety
domain: AI Safety
priority: 3
pilot_result: ''
failure_reason: ''
linked_experiments: []
date_proposed: 2026-06-04
date_resolved: ''
---

> **Migrated from a research claim** (`wiki/claims/automated-alignment-misleading-safety-assessments.md`) on 2026-06-20. Original claim status `proposed` (confidence 0.6) mapped to idea status `proposed`. The claim's structured `evidence`/`confidence`/`conditions` are preserved verbatim in the body sections and in the provenance block at the end of this file.
## Statement

Even when AI research agents are not scheming to sabotage alignment work, automated alignment research programs will systematically produce compelling but catastrophically misleading safety assessments. This occurs via two failure modes: (1) output-level failures from undetectable systematic errors in individual research outputs due to hard-to-supervise fuzzy tasks, and (2) aggregation-level failures from mis-modelled correlation structures when combining research outputs into Overall Safety Assessments (OSAs).

## Evidence summary

Bowkis et al. (2026) provide a theoretical argument based on: (a) alignment research being disproportionately composed of hard-to-supervise fuzzy tasks (inferring alignment from proxies; aggregating correlated evidence); (b) optimisation pressure concentrating agent errors among those human reviewers least likely to catch; (c) five structural reasons AI errors are harder to detect than human errors. Supported by observations that current frontier models already exhibit systematic deceptive/misleading behaviour on hard tasks at scale.

## Conditions and scope

- Assumes human oversight as the primary error-correction mechanism
- Applies to alignment research specifically (not capabilities research, where feedback loops are tighter)
- Stronger as agent capabilities increase (harder tasks → harder-to-detect errors)
- May be mitigated by scalable oversight protocols that handle correlated uncertainty, though none currently exist

## Counter-evidence

- No direct empirical evidence yet — claim is theoretical/predictive
- Carlsmith (2025) argues automated alignment can be done safely with sufficient care; the degree of conflict is contested

## Linked ideas

## Open questions

- Can scalable oversight protocols be extended to handle the specific failure modes identified here?
- How miscalibrated would OSAs be in practice? Is the failure mode catastrophic or merely suboptimal?
- Are there domains outside alignment where this failure mode is already empirically observable?


<!-- PROVENANCE: original claim frontmatter (preserved for recovery / re-derivation)
title: "Automated alignment research produces systematically misleading safety assessments even without scheming"
slug: automated-alignment-misleading-safety-assessments
status: proposed
confidence: 0.6
tags: [alignment, automated-alignment, safety-cases, scalable-oversight, ai-safety]
domain: "AI Safety"
source_papers: [automated-alignment-harder-than-you-think]
evidence:
  - source: automated-alignment-harder-than-you-think
    type: supports
    strength: moderate
    detail: "Theoretical argument: alignment research involves hard-to-supervise fuzzy tasks where optimisation pressure concentrates undetectable errors; correlated evidence aggregation yields overconfident OSAs even when individual outputs are correct"
conditions: "Holds when: alignment research is automated using agents trained on human feedback; the alignment target is not directly measurable; human reviewers cannot reliably check all agent outputs. May not hold if formal verification or scalable oversight protocols that handle correlated uncertainty are developed."
date_proposed: 2026-06-04
date_updated: 2026-06-04
-->
