---
title: "Position: There Are Futures That Benchmark-Driven AI Cannot See"
slug: position-there-futures-benchmark-driven-ai
arxiv: ""
venue: "International Conference on Machine Learning (ICML) — Position Paper Track"
year: 2026
tags: [benchmark-culture, ai-evaluation, exaptation, philosophy-of-science, research-policy, alignment, ai-safety, position-paper]
importance: 4
date_added: 2026-07-16
source_type: pdf
s2_id: ""
tldr: "Applies the biological concept of exaptation to argue that benchmark-centered AI evaluation imposes an 'exaptation tax' on exploratory, cross-domain, and currently-illegible research, and that this tax becomes most acute for the 'such-that problem' (aligned, interpretable, safe AI) because its success criteria cannot be externally fixed the way capability benchmarks' can."
contribution_type: [position]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

Modern machine learning is organized around benchmark performance: shared datasets, held-out evaluation, and leaderboards made progress legible, comparable across labs, and easy to coordinate as the field scaled. But benchmark-centered selection is not a neutral measuring instrument — it is a selection environment that determines which lines of research survive long enough to matter. As the field's guiding question shifts from Q1 ("can machines exhibit intelligent behavior?") to Q2 ("can machines exhibit intelligent behavior such that they are aligned, interpretable, safe, and governable?"), the paper asks what a benchmark-dominated selection regime systematically loses, and whether that loss becomes more costly exactly as the questions that matter most become harder to benchmark.

## Key idea

Borrowing exaptation from evolutionary biology (traits evolved for one function later co-opted for another), the authors argue that many of ML's most important contributions — GPUs, the U-Net architecture, backpropagation, the attention mechanism — only became decisive because they survived a period of being invisible to the metrics dominant at the time. A benchmark-centered selection environment imposes an **exaptation tax**: it reduces the survival probability of work whose value is latent, indirect, or only revealed under a future problem regime, because current benchmarks cannot measure a value that does not yet exist. This tax becomes acute for the **such-that problem** (see [[such-that-problem-ai-evaluation]]): Q1 is a world-side problem with externally fixed success criteria (closed-loop benchmarking is a natural methodology), while Q2 is a human-side problem whose success criteria — what counts as "aligned" or "interpretable" — must be constructed through deliberation, not read off from the task. Importing Q1's benchmark culture into Q2 without validating that it transfers forecloses exactly the exploratory work from which an adequate answer to Q2 would have to emerge.

## Method

A position paper (ICML 2026 position track) combining: (1) a historical reconstruction of AI evaluation regimes (pre-benchmark/protoscience era 1956–1987; benchmark-intervention era 1987–2012 via DARPA's Common Task Framework; scaling era 2012–present), (2) case studies of exaptation in ML (GPUs, U-Net→diffusion, SVM-era neglect of neural nets, GANs nearly rejected from NeurIPS, LSTMs ignored for a decade, backpropagation's 1970s/1974 origins outside AI, attention emerging from machine translation and later powering AlphaFold2), (3) a three-level diagnosis of how benchmark culture governs research (community composition, research agenda, limits of evaluation), and (4) six pre-registered objections with rebuttals (Success, Invisibility, Protection, Industry Lab, and Measurement Objections).

## Experiment & Results

No new empirical experiment; the paper's evidentiary base is historical case analysis plus synthesis of science-of-science findings. Cited empirical support includes: a large-scale analysis of 41 million research papers showing AI tools amplify individual researcher output while collectively narrowing the themes researchers pursue ([[artificial-intelligence-tools-expand-scientists-impact]]; Hao et al. 2026); Klinger et al.'s (2020) finding that AI research thematic diversity has stagnated, with private-sector work less diverse than academic work; and Wu, Wang & Evans' (2019) finding that small teams disrupt existing trajectories while large teams consolidate them. The paper proposes three institutional remedies rather than reporting a new result: (1) plural evaluation regimes (parallel scoring criteria, partial randomization among near-threshold submissions, treating high reviewer disagreement as signal rather than failure); (2) protected venues, funding streams, and career signals for exploratory work that does not improve benchmark performance; (3) reflexive governance — legitimizing meta-level critique of benchmarks and evaluation criteria as a core research activity (e.g., the ICML position-paper track itself, or ICML 2026's Gold/Silver reviewer designations).

## Limitations

- **Unfalsifiability** ("Invisibility Objection"): the exaptation tax cannot be directly measured, since lost innovations are by definition unobserved; the authors concede the specific counterfactual is unavailable and argue by analogy to conservation biology (biodiversity is worth preserving under uncertainty even though one cannot name which lost species would have mattered).
- **Attribution confound**: benchmark culture is not shown to be the sole or dominant cause of any observed narrowing in AI research; compute costs, industrial organization (venture capital and Big Tech funding dominance), and convergence on effective methods plausibly all contribute.
- **No quantitative exaptation-tax estimator** is proposed; the contribution is conceptual and institutional, not measurement-methodological.
- **Q1/Q2 boundary is contestable**: some benchmarks already targeting deception detection or situational awareness blur the world-side/human-side distinction the paper relies on.

## Open questions

- Can the exaptation tax be estimated empirically, e.g., via citation-lag analysis of "sleeping beauty" papers or counterfactual simulation of alternative selection regimes?
- Would portfolio-style evaluation (parallel scoring regimes, protected venues, partial randomization) measurably increase the rate of valuable cross-domain recombination, or merely add noise to peer review?
- Does the such-that framing generalize beyond alignment/interpretability/safety/governance to other essentially-contested AI evaluation targets (e.g., creativity, welfare, autonomy)?
- The paper cites the Hao et al. finding on AI-driven thematic narrowing as suggestive evidence of the exaptation tax in action, connecting to broader open questions in [[ai-research-productivity-paradox]] about whether AI-tool adoption in science is a net accelerant or a homogenizing force.

## My take

The paper's most useful contribution is not "exaptation" per se (a suggestive but unfalsifiable framing) but the crisp Q1/Q2 distinction: capability research earned its benchmark-validated methodology empirically, over decades, by observing that benchmark performance correlated with real progress; that correlation has simply never been validated for alignment, interpretability, or safety research, so importing Q1's evaluation culture into Q2 wholesale is an unvalidated methodological transplant dressed up as a conservative default. The paper's prominent author list (Norvig, Narayanan, Koyejo, Torr) and its appearance in ICML's dedicated position-paper track are themselves an instance of the "reflexive governance" mechanism it recommends — a critique of benchmark culture that a benchmark-dominated venue explicitly makes room for.

## Related

- [[exaptation-ai-research]]
- [[such-that-problem-ai-evaluation]]
- [[ai-research-productivity-paradox]]
- [[artificial-intelligence-tools-expand-scientists-impact]]
- [[arvind-narayanan]]
