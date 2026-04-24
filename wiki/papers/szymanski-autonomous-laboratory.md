---
title: "An Autonomous Laboratory for the Accelerated Synthesis of Novel Materials"
slug: szymanski-autonomous-laboratory
arxiv: "2301.05916"
venue: "Nature"
year: 2023
tags: [autonomous-lab, materials-discovery, active-learning, a-lab, lbnl, ai-science]
importance: 3
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [A-Lab, autonomous synthesis, inorganic materials, active learning, Bayesian optimization, LBNL, Ceder group]
domain: "ML Systems"
code_url: ""
cited_by: []
---

## Problem

Discovering new inorganic solid-state materials requires extensive trial-and-error synthesis with many failed experiments. Can an automated laboratory autonomously plan, execute, and learn from synthesis experiments to accelerate materials discovery?

## Key idea

The A-Lab (Autonomous Laboratory) integrates computations, literature-trained language models, and active learning to autonomously plan and execute solid-state synthesis experiments. It successfully synthesized 36 of 57 target compounds over 17 days with no human intervention in the synthesis loop.

## Method

- Planning: computational predictions (DFT stability) + LLM-based literature parsing of synthesis conditions
- Synthesis: automated solid-state synthesis robot (weighing, pressing, annealing)
- Characterization: automated X-ray diffraction analysis
- Active learning: failures updated the synthesis model for subsequent trials
- Published: *Nature* 624:86–91 (DOI 10.1038/s41586-023-06734-w)
- LBNL (Szymanski, Rendy, Fei, Kumar, He, Milsted, McDermott, Gallant, Cubuk, Merchant, Kim, Jain, Bartel, Persson, Zeng, Ceder)

## Results

- 36/57 target compounds synthesized successfully (63% success rate)
- 17 days of autonomous operation, no human intervention in the loop
- Success rate improved over time as the active learning component updated
- The 36 compounds included several not previously reported

## Limitations

- Leeman et al. (2024) critique: stability estimates overoptimistic; "novel" compounds may not satisfy novelty + stability + utility
- Requires extensive robotic infrastructure unavailable to most labs
- Solid-state synthesis only; does not generalize to other chemistry domains
- Human expertise embedded in the computational planning stage

## Open questions

- Are the 36 synthesized compounds genuinely novel and useful? (Leeman et al. 2024 raises this)
- Can A-Lab-style approaches extend to functional materials with property targets, not just synthesis success?
- What is the role of human chemical expertise that was embedded in the system's design?

## My take

A landmark demonstration of autonomous materials discovery at scale. The 17-day autonomous run is impressive; the 63% success rate is remarkable for solid-state synthesis. The Leeman et al. (2024) critique is important: the definition of "novel" needs scrutiny. Together with Boiko (2023) and Burger (2020), establishes the feasibility of autonomous laboratory science.

## Related

- [[boiko-autonomous-chemical-research]]
- [[burger-mobile-robotic-chemist]]
- [[leeman-challenges-autonomous-synthesis]]
- [[degrave-tokamak-plasma-deep-rl]]
- [[hey-fourth-paradigm]]
- [[ai-driven-scientific-discovery]]
