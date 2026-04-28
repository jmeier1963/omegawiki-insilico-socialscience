---
title: "Grounds for Trust: Essential Epistemic Opacity and Computational Reliabilism"
slug: duran-formanek-computational-reliabilism
arxiv: "1904.01052"
venue: "Minds and Machines"
year: 2018
tags: [opacity, computational-reliabilism, simulation, trust, epistemology, philosophy-of-science]
importance: 3
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [computational reliabilism, epistemic opacity, simulations, trust, verification, process reliabilism]
domain: "general"
code_url: ""
cited_by: []
---

## Problem

Computer simulations are epistemically opaque — we cannot fully track why they produce their outputs. Does this opacity undermine their epistemic trustworthiness? If not, what grounds our trust in simulation results?

## Key idea

Rather than requiring transparency, the epistemic trustworthiness of computer simulations is grounded in "computational reliabilism" — a process reliabilism appealing to four sources of justified confidence: verification, validation, robustness analysis, and expert knowledge. Opacity is not inherently epistemically problematic if these reliability indicators are in place.

## Method

- Philosophical analysis drawing on process reliabilism (Goldman 1979) and simulation epistemology
- Four-source framework for computational reliabilism
- Published: *Minds and Machines* 28:645–666 (DOI 10.1007/s11023-018-9481-6)
- Juan M. Duran (Karlsruhe), Nico Formanek

## Results

Four sources of computational reliability:
1. **Verification**: the code does what it is intended to do (no implementation errors)
2. **Validation**: the simulation matches the target system behavior (match to data)
3. **Robustness**: results are stable across parameter variations
4. **Expert knowledge**: domain scientists' judgment about simulation quality

Together, these grounds trust without requiring full transparency of the simulation process.

## Limitations

- Process reliabilism itself is contested (the generality problem)
- The four sources are idealizations — real simulations often lack full validation
- Does not address cases where all four indicators are satisfied but the simulation is still wrong (unknown unknowns)

## Open questions

- Do the four reliability sources transfer to deep learning models? (Verification is hard; validation is feasible)
- Can the computational reliabilism framework be operationalized into explicit evaluation checklists?

## My take

An important middle ground between "opacity is always bad" (pessimism) and "opacity is irrelevant" (dismissal). The four-source framework is practical and usable. Together with Duede (2023) and Beisbart (2021), provides the most complete philosophical toolkit for evaluating the epistemic status of AI-generated results.

## Related

- [[duede-deep-learning-opacity]]
- [[beisbart-opacity-computer-simulations]]
- [[boge-two-dimensions-opacity-deep-learning]]
- [[sullivan-understanding-machine-learning-models]]
- [[humphreys-extending-ourselves]]
- [[humphreys-philosophical-novelty-simulation]]
