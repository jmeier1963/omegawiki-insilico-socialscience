---
title: "Mobility Network Epidemic Simulation"
aliases: ["mobility network SEIR model", "network-based epidemic model", "SEIR mobility network", "metapopulation mobility model", "mobility-driven contagion simulation"]
tags: [social-simulation, network-simulation, epidemiology, mobility-networks, computational-social-science]
maturity: active
key_papers: [mobility-network-models-covid-19-explain]
first_introduced: "2020"
date_updated: 2026-05-06
related_concepts: [generative-agent-based-modeling]
---

## Definition

A class of computational simulation that overlays a compartmental epidemic model (e.g., SEIR) on a fine-grained bipartite network encoding real-world human mobility — mapping movements between residential areas (census block groups) and points of interest (restaurants, gyms, churches) at hourly resolution derived from mobile phone data.

## Intuition

Rather than assuming a well-mixed population, each location (CBG, POI) maintains its own epidemiological state. Infection risk at a POI is driven by density: how many infectious individuals visit, how long they stay, and how large the space is. Mobility data replaces theoretical contact rate assumptions with empirically observed movement patterns.

## Formal notation

- G = bipartite graph: nodes V_cbg (census block groups) + V_poi (points of interest), edges e(c, p, t) = visit count from CBG c to POI p at hour t
- Each CBG c: state vector (S_c, E_c, I_c, R_c)
- Infection at POI p: rate ∝ density of infectious visitors × dwell time × 1/area(p)
- Three free parameters: β_poi, β_cbg, initial E fraction

## Variants

- **Counterfactual policy simulation**: scale mobility by factor α or cap POI max occupancy at fraction f to compare reopening strategies
- **Disaggregated disparity analysis**: compare infection trajectories across demographic subgroups defined by CBG characteristics

## Known limitations

- Requires high-quality mobility data (SafeGraph or equivalent) which may undersample low-income and minority groups
- Homogeneous mixing within CBGs
- Computationally intensive for national-scale deployment
- Reflects US urban geography; may not generalize to other built environments

## Open problems

- Multi-pathogen extensions (influenza, respiratory viruses)
- Integration with socioeconomic intervention data (e.g., stimulus payments reducing mobility pressure)
- Privacy-preserving alternatives to commercial mobility data

## Key papers

- [[mobility-network-models-covid-19-explain]] — seminal application to COVID-19; explains racial/socioeconomic disparities as mobility artifacts (Chang et al., Nature 2020)
