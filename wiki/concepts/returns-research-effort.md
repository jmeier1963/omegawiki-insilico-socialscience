---
title: "Returns to Research Effort (r)"
aliases: ["returns to research effort", "r parameter", "research productivity returns", "ideas getting harder to find", "r > 1 condition"]
tags: [intelligence-explosion, ai-rnd-automation, growth-economics, feedback-loops, semi-endogenous-growth]
maturity: active
definition: "The parameter r that compares how much an output's growth responds to more research labour against how fast new ideas get harder to find; under full automation of AI R&D, r > 1 means the software feedback loop accelerates, r = 1 sustains a constant rate, and r < 1 makes progress fade."
key_papers: [what-if-automating-ai-triggers-intelligence]
first_introduced: "2020"
date_updated: 2026-10-04
related_concepts: [software-intelligence-explosion]
---

## Definition

In semi-endogenous growth models of a technology (following Bloom, Jones, Van Reenen & Webb, "Are Ideas Getting Harder to Find?"), software quality A evolves with effective R&D labour E. In the CASP formulation ([[what-if-automating-ai-triggers-intelligence]]), one parameter captures returns to scale on R&D labour and another captures how fast ideas get harder to find. Their ratio is r. When AI R&D is fully automated, effective labour scales with software quality (E = kA). Each improvement then expands the workforce that produces the next improvement, and the growth rate rises with A exactly when r > 1.

## Intuition

Every doubling of AI software quality makes the next doubling harder (low-hanging fruit is exhausted) but also doubles the automated research workforce. If the workforce effect beats the difficulty effect (r > 1), each doubling arrives faster than the last. With r ≈ 1.39 (the central estimate), each doubling takes about 76% as long as the previous one.

## Formal notation

Growth of software quality: dA/dt = A^(1−β) · E^λ, with λ the returns to scale on labour and β the difficulty of finding ideas. Full automation sets E = kA. The growth rate (1/A)·dA/dt then scales as A^(λ−β). It increases with A if and only if r = λ/β > 1. Under Ho & Whitfill's central estimates (λ = 1.40, β = 1.01), the growth rate multiplies by 2^0.39 ≈ 1.31 per doubling, and becomes ten times faster after about 8.5 doublings, roughly 17 months if the first doubling takes 4.5 months.

## Variants

- **Inference-efficiency r.** Software improvements make running systems cheaper, directly multiplying the number of automated researchers.
- **Training-efficiency r.** Improvements yield more capable rather than more numerous systems. Mapping this onto effective researchers needs a linearity assumption. Existing estimates use this variant.
- **Labour-only versus all-inputs r.** Bloom et al. measure inputs in R&D dollars (labour plus capital). The intelligence-explosion literature holds compute fixed and counts labour only, which gives lower r.

## Known limitations

- Estimates come from an era of rapid compute scaling. Scale-dependent software gains (such as transformers) confound software and compute progress, biasing r upward.
- R&D labour is proxied by unique paper authors, which miscounts adjacent fields.
- The models have only been validated at growth rates of a few percent a year and break down in the limit, where infinite labour implies infinite progress in finite time. r must eventually fall below 1 at physical limits.
- The 90% credible intervals for the three subfields extend below 1 (0.73–2.09, 0.38–2.71, 1.07–3.21).

## Open problems

- A combined measure of software quality that weights inference- and training-efficiency gains appropriately.
- Data on how frontier companies split R&D spending across human researchers, experiment compute and AI labour, which is needed to estimate r inside labs.
- Whether parallel AI researchers face stronger duplication penalties than humans (bounded parallelizability).

## Relationship to foundations

Rests on semi-endogenous growth theory (Jones) and the empirical "ideas are getting harder to find" literature, applied to I. J. Good's intelligence-explosion argument.

## Realized by

*No method page; this is a model parameter, not a procedure.*

## My understanding

r is the hinge of every quantitative intelligence-explosion argument in the wiki ([[software-intelligence-explosion]]). That makes it worth a separate page, because its estimation problems (confounding with compute, proxy labour, intervals crossing 1) are where skeptics and proponents actually disagree. Claims of "tenfold acceleration within 1.5 years" should be read as conditional on r staying near its point estimate.
