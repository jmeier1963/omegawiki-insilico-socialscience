---
title: "Understanding Protein Folding with Machine Learning Models? The Case of AlphaFold2"
slug: understanding-protein-folding-machine-learning-models
arxiv: ""
venue: "Synthese"
year: 2026
tags: [scientific-understanding, alphafold, opacity, philosophy-of-science, explanation, computational-biology, prediction-vs-explanation]
importance: 4
date_added: 2026-08-22
source_type: pdf
s2_id: ""
tldr: "Argues that AlphaFold2's opacity limits its direct contribution to explaining protein folding, yet shows through a review of the literature that it has nonetheless advanced explanatory understanding via a two-step adaptive process between scientists and predictions."
contribution_type: [theory, analysis]
datasets: [CASP14]
keywords: [protein folding problem, AlphaFold2, scientific understanding, opacity, objectual understanding, explanatory understanding, information integration]
domain: "Philosophy"
code_url: ""
cited_by: []
---

## Problem & Context

AlphaFold2 predicted 215 million protein structures across diverse organisms, won CASP14, and its developers won the Nobel Prize. Headlines concluded that the protein folding problem — open for fifty years — had been solved. Annika Schuster (TU Dortmund) asks what "solved" can mean when the solving system cannot say why any of its predictions hold.

The paper is the sharpest available case study of the general question: does prediction without explanation count as scientific understanding? AlphaFold2 is the strongest test because its empirical success is beyond dispute.

## Key idea

Disaggregate. The protein folding problem is not one problem but several objectives, each with its own object of understanding. AlphaFold2 addresses some and not others, and the blanket verdict ("solved" / "not solved") obscures which.

Schuster's answer has two halves that are usually treated as incompatible. Despite its empirical success, AF2's complexity and opacity **limit its capacity to contribute directly** to the scientific explanation of the PFP. And yet, on a review of the published literature, its use **has already enhanced** objectual and ultimately explanatory understanding of particular research questions in protein biology — even though its inner workings remain mysterious.

## Method

Philosophical analysis plus a review of scientific articles using AF2. Schuster proposes **four conditions for scientific understanding mediated by a method**:

1. information integration
2. abilities
3. the generation of potential explanations
4. the provision of actual explanations

AF2 is assessed against each, and the review establishes which conditions are met in actual research practice rather than in principle.

## Experiment & Results

The verdict is conditional and split. AF2 fails on the direct provision of actual explanations — the model does not, and structurally cannot, supply them. It performs on information integration and on abilities: it puts scientists in a position to do things they could not do before, and it generates candidates for explanation.

The constructive finding is the mechanism: understanding arises in a **two-step adaptive process** in which the interplay between scientists and predictions does the explanatory work. The model produces a structure; the scientist integrates it into an existing body of theory, generates hypotheses about mechanism, and tests them. Understanding is achieved, but not by the model, and not without it.

## Limitations

- Single case; whether the two-step process generalizes to domains without AF2's cheap experimental validation is untested.
- The four conditions are proposed rather than derived, and the paper does not defend them against rival accounts of method-mediated understanding.
- The literature review establishes that understanding was gained alongside AF2 use, not that AF2 caused it.

## Open questions

- Does the two-step process require a mature theoretical background to integrate predictions into, and what happens in fields that lack one?
- Is the human integration step itself automatable, and would understanding survive if it were?
- How should the four conditions be applied to opaque models whose outputs are not cheaply checkable?

## My take

This is the most careful answer available to the "does functioning suffice?" question, and its value is that it refuses both easy positions. The model does not explain; understanding nonetheless increased; the increase came from the *interaction*, not from either party alone.

That reframing has a sting in it. If explanatory understanding depends on a human integration step, then the amount of understanding a field produces is bounded by how much of that step it retains — and the step is exactly what gets optimized away when the predictions are good enough to use directly. The DeepMind tokamak-control case is the same structure with the human step already absent.

## Related

- [[jumper-alphafold-protein-structure]]
- [[boge-two-dimensions-opacity-deep-learning]]
- [[alvarado-explaining-epistemic-opacity]]
- [[de-regt-understanding-scientific-understanding]]
- [[degrave-tokamak-plasma-deep-rl]]
