---
title: "Psychologically-grounded semi-structured personas (SPIRIT) reproduce human-like individual heterogeneity better than demographic conditioning at population scale"
slug: spirit-inferred-personas-reproduce-human-heterogeneity
status: proposed
confidence: 0.6
tags: [persona-conditioning, silicon-sampling, heterogeneity, SPIRIT, population-scale]
domain: NLP
source_papers: [persona-based-simulation-human-opinion-population]
evidence:
  - source: persona-based-simulation-human-opinion-population
    type: supports
    strength: moderate
    detail: "SPIRIT-conditioned LLM agents validated on Ipsos KnowledgePanel (nationally representative U.S. probability sample): recover self-reported responses more faithfully than demographic conditioning, reproduce human-like heterogeneity in response patterns, function as virtual respondent panels for stable and time-sensitive opinion tracking."
conditions: "Validated on U.S. Ipsos KnowledgePanel; requires social media data from target population for persona inference. Comparison baseline is demographic attribute-list conditioning."
date_proposed: 2026-04-14
date_updated: 2026-04-14
---

## Statement

Inferring semi-structured, psychologically grounded personas from social media posts (SPIRIT) produces LLM-based agents that recover individual self-reported survey responses more faithfully and reproduce human-like heterogeneity in response patterns better than demographic attribute-list conditioning, while being scalable to population-level simulation.

## Evidence summary

Li & Conrad (2026): SPIRIT validated on Ipsos KnowledgePanel (nationally representative). Better individual-level recovery and heterogeneity reproduction than demographic conditioning. Persona banks function as virtual respondent panels.

## Conditions and scope

- U.S. population; requires social media data for target population
- Comparison to demographic-only conditioning, not interview-grounded conditioning (Park et al.)
- Individual-level accuracy measured on self-reported responses

## Counter-evidence

- Social media data may not represent populations with low social media presence (elderly, rural, low-income)
- Persona inference via LLM introduces hallucination risk that has not been quantified

## Linked ideas

## Open questions

- Does SPIRIT's advantage extend to ideological heterogeneity (belief system structure, as measured by Barrie & Cerina)?
- Can SPIRIT be applied without social media data?
- How does SPIRIT compare to interview-grounded conditioning (Park et al. 2024)?
