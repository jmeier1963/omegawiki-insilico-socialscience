---
title: Deep-research agents can be poisoned by editing a single high-overlap user-generated-content page
slug: deep-research-agents-poisonable-via-ugc
status: proposed
origin: 'Migrated from research claim (original status: weakly_supported, confidence: 0.65); proposed in: deep-research-agents-poisoned-user-generated'
origin_gaps: []
tags:
- ai-security
- deep-research-agents
- rag-poisoning
- information-integrity
domain: ML Systems
priority: 3
pilot_result: ''
failure_reason: ''
linked_experiments: []
date_proposed: 2026-06-20
date_resolved: ''
---

> **Migrated from a research claim** (`wiki/claims/deep-research-agents-poisonable-via-ugc.md`) on 2026-06-20. Original claim status `weakly_supported` (confidence 0.65) mapped to idea status `proposed`. The claim's structured `evidence`/`confidence`/`conditions` are preserved verbatim in the body sections and in the provenance block at the end of this file.
## Statement

Because deep-research agents repeatedly retrieve the same writable open-web pages within a topic, an adversary who edits one such page (no control over retrieval, model, prompts, or query) can make agents cite attacker-chosen content and promote attacker-chosen entities across many related reports.

## Evidence summary

A single security study quantifies the structural retrieval overlap and demonstrates high-efficacy, minimal-footprint poisoning across three systems, with no effective stage-wise defense.

## Conditions and scope

Open-source systems under simulation; real-world impact depends on platform moderation speed and live exposure rates. Commercial exposure inferred from UGC citation rates (~12% for Gemini Deep Research).

## Counter-evidence

None recorded in-wiki.

## Linked ideas

## Open questions

Can provenance/trust scoring or retrieval diversification defeat overlap-concentration without hurting coverage?


<!-- PROVENANCE: original claim frontmatter (preserved for recovery / re-derivation)
title: "Deep-research agents can be poisoned by editing a single high-overlap user-generated-content page"
slug: deep-research-agents-poisonable-via-ugc
status: weakly_supported
confidence: 0.65
tags: [ai-security, deep-research-agents, rag-poisoning, information-integrity]
domain: ML Systems
source_papers: [deep-research-agents-poisoned-user-generated]
evidence:
  - source: deep-research-agents-poisoned-user-generated
    type: supports
    strength: moderate
    detail: "WARP attack on STORM/Co-STORM/OmniThink: one UGC page is retrieved in up to 48% of a topic's queries; ~13–15-word injection yields 38–62% conditional mention rates; tested source/input/output defenses fail to mitigate without degrading quality."
conditions: "Demonstrated on open-source deep-research systems via an ethical simulation harness (GeoStorm); commercial systems assessed only by retrieval reconnaissance; efficacy is conditional on exposure."
date_proposed: 2026-06-20
date_updated: 2026-06-20
-->
