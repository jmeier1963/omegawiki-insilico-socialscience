---
title: "Magnetic Control of Tokamak Plasmas through Deep Reinforcement Learning"
slug: degrave-tokamak-plasma-deep-rl
arxiv: "2209.07551"
venue: "Nature"
year: 2022
tags: [reinforcement-learning, plasma-physics, tokamak, scientific-control, deepmind, real-world-rl]
importance: 4
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [deep reinforcement learning, tokamak, plasma control, fusion energy, DeepMind, simulation-to-reality]
domain: "ML Systems"
code_url: ""
cited_by: []
---

## Problem

Controlling the shape and current of magnetized plasma in a tokamak requires real-time adjustment of dozens of coupled magnetic coils. The plasma is highly nonlinear, difficult to model analytically, and must be controlled at millisecond timescales. Classical controllers require months of expert tuning for each plasma configuration.

## Key idea

Train a deep RL controller entirely in a physics simulation of the tokamak (TCV at SPC/EPFL), then deploy it directly on the real physical device to control plasma shape, current, and stability — including challenging configurations (negative triangularity, "droplet" plasma) that had never been achieved with conventional control.

## Method

- Environment: physics simulator of TCV tokamak
- Controller: deep RL with actor-critic architecture; multi-objective reward combining shape accuracy, stability, and physics constraints
- Sim-to-real transfer without domain randomization
- Deployed on TCV tokamak at École Polytechnique Fédérale de Lausanne (EPFL) / SPC
- Collaboration: DeepMind + EPFL + SPC

## Results

- First RL controller deployed on a real tokamak for plasma shape control
- Successfully achieved negative triangularity configuration
- Simultaneously maintained two separate plasma "droplets" in the vessel
- Faster tuning than traditional controllers; generalizes across configuration families

## Limitations

- TCV is a small research tokamak — scalability to ITER-class devices is not demonstrated
- The RL controller is a black box; plasma physicists do not get mechanistic understanding from it
- Simulation fidelity limits what can be learned before sim-to-real transfer

## Open questions

- Can RL-based control scale to burning-plasma tokamaks (ITER, SPARC)?
- Does RL plasma control provide understanding of plasma physics or only operational control?
- What are the safety implications of black-box controllers on fusion-relevant devices?

## My take

One of the cleanest demonstrations of deep RL deployed on a high-stakes real physical system. The sim-to-real transfer worked without domain randomization — a remarkable result. The plasma configurations achieved (negative triangularity, droplet) were beyond what classical controllers could produce. Philosophically interesting: it achieves control (Hacking's intervention) without understanding (de Regt), making it a useful case study for AI-as-instrument debates.

## Related

- [[jumper-alphafold-protein-structure]]
- [[boiko-autonomous-chemical-research]]
- [[hacking-representing-intervening]]
- [[de-regt-understanding-scientific-understanding]]
- [[szymanski-autonomous-laboratory]]
