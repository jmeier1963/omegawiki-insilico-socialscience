---
title: "A Mobile Robotic Chemist"
slug: burger-mobile-robotic-chemist
arxiv: ""
venue: "Nature"
year: 2020
tags: [robotic-chemistry, autonomous-lab, bayesian-optimization, photocatalysis, materials-discovery, ai-science]
importance: 3
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [mobile robot, autonomous chemistry, Bayesian optimization, photocatalyst, materials discovery, University of Liverpool]
domain: "ML Systems"
code_url: ""
cited_by: []
---

## Problem

Chemistry laboratories are largely manual operations requiring human chemists to design, execute, and analyze experiments. Can a mobile robot autonomously conduct open-ended materials discovery without human guidance?

## Key idea

A mobile robot autonomously navigated a chemistry laboratory, designed and executed 688 photocatalyst experiments over eight days using Bayesian optimization across a ten-variable composition space, and discovered a catalyst 6x more active than the initial starting point.

## Method

- Mobile robot platform with robotic arm, chemical handlers, and analytical equipment
- Bayesian optimization: models the response surface and selects next experiment to maximize information gain
- 10-dimensional composition space for photocatalyst optimization
- Automated mixing, reaction, characterization (via UV-vis spectroscopy)
- Published: *Nature* 583:237–241 (DOI 10.1038/s41586-020-2442-2)
- University of Liverpool (Burger, Maffettone, Gusev, et al.)

## Results

- 688 experiments in 8 days (human chemist would take months)
- 6x improvement in photocatalytic activity vs. starting point
- Bayesian optimization significantly outperformed random search
- Robot ran autonomously through day and night

## Limitations

- Optimization within a pre-defined composition space — not generative discovery
- Photocatalytic activity is one metric; broader utility not assessed
- High infrastructure cost limits access
- Published in Nature, paywalled

## Open questions

- Can mobile robot chemists extend to multi-step synthesis and purification?
- How does the Bayesian optimization performance compare to human expert strategy in the same space?

## My take

The mobile aspect is what distinguishes this from prior automated chemistry: the robot physically moves around the lab, picking up equipment, combining reagents, and running analyses. This is physically autonomous, not just computationally automated. Together with Szymanski (2023) and Boiko (2023), defines the frontier of autonomous laboratory science.

## Related

- [[szymanski-autonomous-laboratory]]
- [[boiko-autonomous-chemical-research]]
- [[leeman-challenges-autonomous-synthesis]]
- [[degrave-tokamak-plasma-deep-rl]]
- [[hey-fourth-paradigm]]
