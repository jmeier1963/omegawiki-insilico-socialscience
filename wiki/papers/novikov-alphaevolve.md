---
title: "AlphaEvolve: A Coding Agent for Scientific and Algorithmic Discovery"
slug: novikov-alphaevolve
arxiv: "2506.13131"
venue: "arXiv preprint"
year: 2025
tags: [alphaevolve, code-evolution, algorithmic-discovery, google-deepmind, scientific-discovery, ai-science]
importance: 3
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [AlphaEvolve, evolutionary coding, algorithmic discovery, DeepMind, data center scheduling, hardware circuit]
domain: "ML Systems"
code_url: ""
cited_by: []
---

## Problem

Can an AI system autonomously discover novel algorithms and solve open mathematical/engineering problems through code evolution, going beyond what humans or standard optimization can achieve?

## Key idea

AlphaEvolve uses an LLM-driven evolutionary loop — generating, evaluating, and selecting code modifications — to discover novel algorithms. Applied to practical problems: a more efficient data-center scheduling algorithm, a simplified hardware accelerator circuit, and improvements to matrix multiplication algorithms.

## Method

- Evolutionary algorithm with LLM as the mutation operator (Gemini models)
- Evaluation: automated oracle (correctness + performance metric)
- Selection: tournament selection favoring improvements
- Applied to: data center scheduling, hardware circuit design, matrix multiplication (Strassen variants)
- Published: arXiv 2506.13131 (Google DeepMind)
- Authors: Novikov, Vu, Eisenberger, Dupont, Huang, Wagner, et al.

## Results

- Data center scheduling: improved utilization by ~1% (significant at Google scale)
- Hardware accelerator: simplified circuit design (fewer logic gates)
- Matrix multiplication: improved Strassen-variant algorithms
- All results mathematically verifiable — genuine algorithmic improvements

## Limitations

- Preprint — not yet peer-reviewed
- Improvements are modest by absolute standards; significance depends on scale
- Evolutionary search is expensive; requires massive compute budget
- The LLM's role is mutation, not genuine understanding of the algorithm

## Open questions

- Can AlphaEvolve discover algorithms in domains requiring deep mathematical insight (not just code optimization)?
- What is the role of the LLM vs. the evolutionary selection in driving the improvements?

## My take

The algorithmic improvements are modest but verifiable — that's what distinguishes this from mere benchmark performance claims. The data center scheduling improvement is already deployed at Google, making it a genuine real-world AI scientific discovery. The mathematical verifiability criterion should be the standard for AI algorithmic discovery claims.

## Related

- [[jumper-alphafold-protein-structure]]
- [[degrave-tokamak-plasma-deep-rl]]
- [[single-minus-gluon-tree-amplitudes-nonzero]]
- [[ai-driven-scientific-discovery]]
- [[hacking-representing-intervening]]
