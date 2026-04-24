---
title: "Persona-Based Simulation of Human Opinion at Population Scale"
slug: persona-based-simulation-human-opinion-population
arxiv: "2603.27056"
venue: "arXiv preprint"
year: 2026
tags: [persona-conditioning, silicon-sampling, population-scale, social-media-personas, heterogeneity, survey-simulation]
importance: 2
date_added: 2026-04-14
source_type: pdf
s2_id: ""
keywords: [SPIRIT, persona inference, semi-structured personas, individualized trajectories, Ipsos KnowledgePanel, population inference, social media]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Demographic attribute conditioning (standard silicon sampling) only captures a small portion of what shapes human opinions — demographics explain limited variance, and people with the same demographics can hold very different views. How can LLM simulations reproduce individual-level heterogeneity at population scale, while remaining suitable for population-level inference?

## Key idea

**SPIRIT (Semi-structured Persona Inference and Reasoning for Individualized Trajectories)**: infers psychologically grounded, semi-structured personas from public social media posts, integrating:
- **Structured attributes**: personality traits, world beliefs, values
- **Unstructured narrative text**: lived experiences reflected in social media

These rich personas condition LLM-based agents to act as specific individuals when answering survey questions. Validated on Ipsos KnowledgePanel (nationally representative U.S. probability sample).

## Method

1. Extract social media posts from publicly available sources
2. Use LLM to infer semi-structured persona: structured attributes (personality, values, world beliefs) + narrative text summary
3. Condition LLM agents on SPIRIT personas for survey question answering
4. Validate on Ipsos KnowledgePanel (nationally representative U.S. probability sample): compare simulated vs. self-reported responses

## Results

- SPIRIT-conditioned simulations recover self-reported responses more faithfully than demographic persona conditioning
- Reproduces human-like heterogeneity in response patterns (not just aggregate distributions)
- Persona banks can function as virtual respondent panels for studying stable attitudes and time-sensitive public opinion
- Outperforms demographic-only conditioning at both individual and population levels

## Limitations

- Requires public social media data — raises representativeness concerns (not all populations have social media)
- Social media posts may not accurately reflect private beliefs
- Persona inference via LLM introduces hallucination risk
- Requires substantially more computation than demographic attribute prompting

## Open questions

- Does SPIRIT's advantage over demographic conditioning hold across diverse opinion domains?
- How does SPIRIT handle populations underrepresented on social media (elderly, low-income)?
- Can SPIRIT be used without social media input (e.g., with survey-based narrative elicitation)?

## My take

A methodologically significant advance. If validated, SPIRIT demonstrates that the failure of demographic conditioning (as found in 2602.18462) can be overcome by richer, psychologically grounded persona inference. The social media sourcing is practical but raises valid concerns about representativeness. This paper and 2602.18462 together suggest the field needs to move beyond simple demographic prompting.

## Related

- supports: [[spirit-inferred-personas-reproduce-human-heterogeneity]]
- [[spirit-semi-structured-persona-inference-framework]]
- [[persona-conditioning]]
- [[silicon-sampling]]
- [[algorithmic-fidelity]]
