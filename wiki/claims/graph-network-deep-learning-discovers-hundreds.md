---
title: "Graph network deep learning discovers hundreds of thousands of novel stable crystal structures"
slug: graph-network-deep-learning-discovers-hundreds
status: supported
confidence: 0.85
tags: [materials-discovery, graph-network, crystal-structure, deep-learning, gnome]
domain: "ML Systems"
source_papers: [scaling-deep-learning-materials-discovery]
evidence:
  - source: scaling-deep-learning-materials-discovery
    type: supports
    strength: strong
    detail: "GNoME identifies 2.2M sub-stability-hull crystal structures; 381,000 independently confirmed as stable; 736 experimentally synthesized in active learning experiments"
conditions: "Holds for inorganic crystal structures in the training distribution; prediction quality may degrade for structures far from training data"
date_proposed: 2026-04-23
date_updated: 2026-04-23
---

## Statement

Graph neural networks trained on known stable crystal databases can identify hundreds of thousands of novel stable inorganic crystal structures, with a substantial fraction confirmed experimentally — constituting a genuine scientific contribution to materials knowledge.

## Evidence summary

GNoME (Merchant et al., Nature 2023): 2.2M structures below convex hull of stability, 381k independently confirmed, 736 experimentally synthesized. Prior known stable structures: ~48,000.

## Conditions and scope

- Inorganic crystal structures with DFT stability predictions available for training
- "Stable" defined computationally as below DFT convex hull; some may not be synthesizable
- Results from Google DeepMind — dataset and full model not fully public

## Counter-evidence

- Experimental synthesis success rate for predicted candidates not reported at scale; 736 is a small fraction of 381k

## Linked ideas

## Open questions

- What fraction of the 381k are practically synthesizable at scale?
- Does the approach extend to organic or hybrid materials?
