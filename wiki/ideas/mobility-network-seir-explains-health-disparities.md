---
title: Fine-grained mobility network SEIR models explain racial and socioeconomic COVID-19 disparities as mobility artifacts
slug: mobility-network-seir-explains-health-disparities
status: validated
origin: 'Migrated from research claim (original status: supported, confidence: 0.8); proposed in: mobility-network-models-covid-19-explain'
origin_gaps: []
tags:
- social-simulation
- network-simulation
- health-disparities
- epidemiology
- covid-19
- mobility-networks
domain: NLP
priority: 3
pilot_result: ''
failure_reason: ''
linked_experiments: []
date_proposed: 2026-05-06
date_resolved: 2026-05-06
---

> **Migrated from a research claim** (`wiki/claims/mobility-network-seir-explains-health-disparities.md`) on 2026-06-20. Original claim status `supported` (confidence 0.8) mapped to idea status `validated`. The claim's structured `evidence`/`confidence`/`conditions` are preserved verbatim in the body sections and in the provenance block at the end of this file.
## Statement

Integrating fine-grained mobile phone mobility data into a metapopulation SEIR model can accurately reproduce observed COVID-19 case trajectories and predict higher infection rates among disadvantaged racial and socioeconomic groups — with these disparities arising mechanistically from mobility differences alone, not from biological or demographic susceptibility differences.

## Evidence summary

Chang et al. (2020, *Nature*) calibrated a mobility-network SEIR model to 10 US metro areas. The model predicted that disadvantaged census block groups had higher infections because: (1) residents could not reduce mobility as sharply as wealthier groups, and (2) the POIs they visited were more crowded and higher-risk. No additional parameters were added for demographic groups — disparities emerged from the network structure.

## Conditions and scope

US urban settings; early pandemic (pre-vaccine); relies on commercial mobility data (SafeGraph). Mechanistic explanation (mobility) does not preclude other contributing factors in other settings.

## Counter-evidence

- Does not rule out concurrent biological or behavioral risk factors correlated with socioeconomic status
- Mobility data may itself be biased by device ownership patterns

## Linked ideas

## Open questions

- Do mobility-based disparities persist across other respiratory pathogens?
- Can targeted occupancy-cap policies effectively reduce disparities without causing economic harm to low-income workers?


<!-- PROVENANCE: original claim frontmatter (preserved for recovery / re-derivation)
title: "Fine-grained mobility network SEIR models explain racial and socioeconomic COVID-19 disparities as mobility artifacts"
slug: mobility-network-seir-explains-health-disparities
status: supported
confidence: 0.80
tags: [social-simulation, network-simulation, health-disparities, epidemiology, covid-19, mobility-networks]
domain: NLP
source_papers: [mobility-network-models-covid-19-explain]
evidence:
  - source: mobility-network-models-covid-19-explain
    type: supports
    strength: strong
    detail: "Model predicts higher infection rates for disadvantaged groups solely from mobility differences (less mobility reduction possible, more crowded POIs visited); validated across 10 US metro areas"
conditions: "Validated on 10 US metro areas, March–May 2020; depends on SafeGraph data coverage quality; does not rule out additional biological or social mechanisms"
date_proposed: 2026-05-06
date_updated: 2026-05-06
-->
