---
title: A small minority of superspreader locations account for a disproportionate majority of epidemic transmissions, and targeted occupancy caps outperform uniform mobility reduction
slug: superspreader-locations-drive-disproportionate-transmission
status: validated
origin: 'Migrated from research claim (original status: supported, confidence: 0.8); proposed in: mobility-network-models-covid-19-explain'
origin_gaps: []
tags:
- social-simulation
- network-simulation
- epidemiology
- superspreader
- covid-19
- policy
- occupancy
domain: NLP
priority: 3
pilot_result: ''
failure_reason: ''
linked_experiments: []
date_proposed: 2026-05-06
date_resolved: 2026-05-06
---

> **Migrated from a research claim** (`wiki/claims/superspreader-locations-drive-disproportionate-transmission.md`) on 2026-06-20. Original claim status `supported` (confidence 0.8) mapped to idea status `validated`. The claim's structured `evidence`/`confidence`/`conditions` are preserved verbatim in the body sections and in the provenance block at the end of this file.
## Statement

In mobility-network epidemic simulations, a small fraction of high-density, high-traffic locations (superspreader POIs) generate a disproportionately large share of infections, implying that targeted interventions (occupancy caps) achieve greater infection reduction per unit of economic disruption than uniform mobility reduction policies.

## Evidence summary

Chang et al. (2020) found that 10% of POIs accounted for 85% of simulated POI-attributed infections in Chicago. Capping occupancy at 20% of maximum reduced predicted new infections by more than 80% while retaining 58% of overall visits — consistently outperforming a uniform proportional mobility reduction strategy across all 10 metro areas.

## Conditions and scope

Specific to COVID-19 aerosol/droplet transmission dynamics in US indoor commercial settings. Quantitative thresholds depend on building density, visit duration, and pathogen characteristics.

## Counter-evidence

- Simulation-based finding; empirical validation of occupancy cap effectiveness in real reopening is limited
- The superspreader fraction varies across contexts (religion vs. gym vs. restaurant)

## Linked ideas

## Open questions

- How do occupancy cap policies interact with income effects (reduced economic activity for low-wage workers in high-risk POIs)?
- Do these findings generalize to airborne pathogens with different transmission dynamics?


<!-- PROVENANCE: original claim frontmatter (preserved for recovery / re-derivation)
title: "A small minority of superspreader locations account for a disproportionate majority of epidemic transmissions, and targeted occupancy caps outperform uniform mobility reduction"
slug: superspreader-locations-drive-disproportionate-transmission
status: supported
confidence: 0.80
tags: [social-simulation, network-simulation, epidemiology, superspreader, covid-19, policy, occupancy]
domain: NLP
source_papers: [mobility-network-models-covid-19-explain]
evidence:
  - source: mobility-network-models-covid-19-explain
    type: supports
    strength: strong
    detail: "10% of POIs accounted for 85% of POI-attributed infections in Chicago; capping occupancy at 20% reduced new infections by >80% while losing only 42% of visits — outperforming uniform mobility reduction"
conditions: "Validated across 10 US metro areas in 2020; specific percentages vary by metro and time period; depends on mobility data quality"
date_proposed: 2026-05-06
date_updated: 2026-05-06
-->
