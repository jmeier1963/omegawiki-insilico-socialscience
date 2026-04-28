---
title: "Discovering Physical Concepts with Neural Networks"
slug: iten-discovering-physical-concepts
arxiv: "1807.10300"
venue: "Physical Review Letters"
year: 2020
tags: [symbolic-regression, physics-discovery, neural-networks, scientific-discovery, representation-learning, interpretability]
importance: 3
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [SciNet, physical concepts, neural network, AI discovery, degrees of freedom, heliocentric model, ETH Zurich]
domain: "ML Systems"
code_url: ""
cited_by: []
---

## Problem

Can neural networks autonomously identify the physically relevant degrees of freedom and underlying concepts from experimental data — not just fit curves, but find representations that match how physicists naturally describe a system?

## Key idea

SciNet, an autoencoder-like architecture with an information bottleneck, learns compact latent representations from physical data. These latent variables spontaneously correspond to physically meaningful concepts (e.g., heliocentric angles from planetary motion data) without being told what to look for.

## Method

- SciNet architecture: encoder maps observations to a compressed latent representation; decoder reconstructs observations
- Latent dimension forced to be small (information bottleneck)
- Trained on: pendulum motion, Newtonian gravity (heliocentric), damped oscillator, position-only tracking
- Published: *Physical Review Letters* 124(1):010508 (DOI 10.1103/PhysRevLett.124.010508)
- ETH Zurich (Iten, Metger, Wilming, Del Rio, Renner)

## Results

- Pendulum: latent space spontaneously encodes angle and angular momentum
- Planetary motion: latent space recovers heliocentric coordinates from geocentric observations
- Oscillator: latent space encodes amplitude and phase
- Demonstrates genuine concept discovery, not just function approximation

## Limitations

- Requires knowing the latent dimension in advance
- Works best for systems that have compact exact descriptions — not general
- Does not generate human-readable symbolic expressions (that's AI Feynman / SciNet-SR)

## Open questions

- Can SciNet-style approaches discover concepts in complex, high-dimensional systems (biological, social)?
- How does concept discovery relate to understanding in de Regt's (2017) sense?

## My take

A beautiful illustration of AI-assisted concept discovery. The heliocentric model recovery is particularly striking: the neural net effectively "rediscovers" a 16th-century paradigm shift from geocentric to heliocentric by finding the more parsimonious description. Closely related to Udrescu & Tegmark (2020) AI Feynman, which goes further in producing symbolic equations. Together they represent the most philosophically interesting category of AI-science results.

## Related

- [[udrescu-tegmark-ai-feynman]]
- [[krenn-scientific-understanding-ai]]
- [[de-regt-understanding-scientific-understanding]]
- [[hanson-patterns-discovery]]
- [[kuhn-structure-scientific-revolutions]]
