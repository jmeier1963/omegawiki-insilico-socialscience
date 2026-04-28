---
title: "AI Feynman: A Physics-Inspired Method for Symbolic Regression"
slug: udrescu-tegmark-ai-feynman
arxiv: "1905.11716"
venue: "Science Advances"
year: 2020
tags: [symbolic-regression, physics-discovery, neural-networks, feynman-equations, scientific-discovery, interpretability]
importance: 3
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [AI Feynman, symbolic regression, Feynman equations, neural network, physics laws, Tegmark, MIT]
domain: "ML Systems"
code_url: "https://github.com/SJ001/AI-Feynman"
cited_by: []
---

## Problem

Symbolic regression — finding a mathematical formula that fits experimental data — is combinatorially hard. Standard genetic programming methods fail on functions of more than ~5 variables. Yet physics equations often have dozens of variables with hidden structure (symmetries, separability).

## Key idea

AI Feynman exploits physical structure: symmetry, dimensional analysis, separability, and compositionality to recursively decompose the symbolic regression problem. A neural network first identifies these properties; then the problem is broken into smaller sub-problems that simpler symbolic methods can solve.

## Method

- Neural network identifies: translational symmetry, multiplicative separability, dimensional structure
- Recursive decomposition: break complex equation into simpler components
- Benchmark: 100 equations from the Feynman Lectures on Physics
- Published: *Science Advances* 6(16):eaay2631 (DOI 10.1126/sciadv.aay2631)
- MIT (Udrescu, Tegmark)

## Results

- Solves all 100 Feynman equations from the Lectures on Physics
- Vastly outperforms prior symbolic regression methods (EQL, genetic programming)
- Works on equations up to 10+ variables
- Companion: AI Feynman 2.0 (arXiv:2006.10128) extends to arbitrary complexity

## Limitations

- Requires data generated from a known, noiseless equation — not robust to noise
- Structure detection is heuristic; may fail on equations not resembling physics laws
- Evaluating when equations are "correctly" recovered requires ground truth

## Open questions

- Can AI Feynman-style methods discover genuinely new equations in experimental data from complex systems (biology, economics)?
- What is the relationship between symbolic equation recovery and understanding in de Regt's sense?

## My take

A striking demonstration that AI can recover physics equations from data — the dream of "discovering" Newton's laws from observations. The physics-informed recursive decomposition is elegant and outperforms brute-force genetic programming decisively. Together with Iten et al. (2020), represents the most compelling AI-driven "concept discovery" results. Note: AI Feynman 2.0 is the follow-up extending to more complex equation classes.

## Related

- [[iten-discovering-physical-concepts]]
- [[krenn-scientific-understanding-ai]]
- [[de-regt-understanding-scientific-understanding]]
- [[hanson-patterns-discovery]]
- [[wang-yu-ml-reveals-physics-plasma]]
