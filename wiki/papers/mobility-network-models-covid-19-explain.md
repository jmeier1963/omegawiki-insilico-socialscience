---
title: "Mobility network models of COVID-19 explain inequities and inform reopening"
slug: mobility-network-models-covid-19-explain
arxiv: ""
venue: "Nature"
year: 2020
tags: [social-simulation, network-simulation, epidemiology, mobility-networks, health-disparities, covid-19, policy]
importance: 5
date_added: 2026-05-06
source_type: pdf
s2_id: "d1e51f9663140fe20c905619fa37ccf15ba2a1b3"
keywords: [mobility networks, SEIR model, COVID-19, superspreader locations, health inequities, reopening policy, SafeGraph]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Epidemiological models of COVID-19 needed to capture fine-grained, time-varying human mobility to explain both spread dynamics and the disproportionate infection burden borne by disadvantaged racial and socioeconomic groups.

## Key idea

Overlay a metapopulation SEIR model on a bipartite mobility network derived from mobile phone data (98 million people, 5.4 billion hourly edges between census block groups and points of interest), and use counterfactual simulation to evaluate reopening strategies and explain health disparities.

## Method

- SafeGraph mobile data: CBG-to-POI hourly visit counts for 10 largest US metro areas (March–May 2020)
- Bipartite network: 56,945 census block groups × 552,758 points of interest
- SEIR compartments per CBG; infection at POIs governed by area, visit duration, and infectious density
- 3 free parameters calibrated per metro area on confirmed case counts
- Counterfactual analysis: scaled mobility reduction magnitude, shifted timing, POI category reopening, maximum occupancy caps

## Results

- Model accurately fits observed case trajectories across all 10 metro areas
- **10% of POIs accounted for 85% of POI-attributed infections** (superspreader locations)
- Restricting maximum occupancy is more effective per unit mobility reduction than uniform cuts
- Disadvantaged groups could not reduce mobility as much, and visited more crowded POIs → higher predicted infection rates purely from mobility differences
- Socioeconomic and racial disparities in COVID-19 infections explained as mobility artifacts, not demographic susceptibility

## Limitations

- Mobility data limited to SafeGraph users (potential demographic bias)
- Model assumes homogeneous mixing within CBGs
- Does not capture within-household transmission explicitly
- Snapshot of 2020 behavior; generalizability to other pathogens or settings unclear

## Open questions

- Do mobility-network disparities persist in post-pandemic reopening or other infectious disease contexts?
- How can targeted occupancy-cap policies be implemented equitably without further disadvantaging low-income workers?

## My take

A landmark paper combining large-scale mobility data with compartmental epidemic modeling. The demonstration that health disparities arise mechanistically from mobility differences — not biology — is a major contribution with direct policy implications. 1,422 citations makes this one of the most influential computational social science papers of the pandemic era. Importance 5.

## Related

- [[mobility-network-epidemic-simulation]]
- supports: [[mobility-network-seir-explains-health-disparities]]
- supports: [[superspreader-locations-drive-disproportionate-transmission]]
