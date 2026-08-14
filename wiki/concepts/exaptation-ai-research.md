---
title: "Exaptation in AI Research"
aliases: ["exaptation tax", "exaptive capacity", "benchmark-driven exaptation", "research exaptation"]
tags: [research-evaluation, benchmarking, science-of-science, philosophy-of-science, ai-policy]
maturity: emerging
definition: "A biological concept (traits evolved for one function later co-opted for another) applied to AI research: ideas, tools, or architectures developed for one problem that later become decisive for an unrelated one, provided they survive long enough under a selection regime that does not reward their original value."
key_papers: [position-there-futures-benchmark-driven-ai]
first_introduced: "2026"
date_updated: 2026-07-16
related_concepts: [ai-research-productivity-paradox]
---

## Definition

Exaptation, a term coined by Gould & Vrba (1982) in evolutionary biology, describes traits that evolved for one function and were later co-opted for another (e.g., bones from jaw mechanics repurposed into the mammalian middle ear). Applied to AI research, exaptation describes ideas, tools, or architectures developed to solve one problem that later become decisive for a different, often unanticipated, problem — provided they persist long enough under the field's prevailing evaluation regime to be discovered and repurposed. The **exaptation tax** is the cost that a benchmark-centered selection environment imposes on this process: work whose value is latent, indirect, or only revealed under a future problem regime is less likely to survive long enough to be exapted, because current benchmarks cannot measure a value that does not yet exist.

## Intuition

Benchmarks reward what they can measure today. But many of the field's most important breakthroughs were originally built for a different purpose and only became important later: GPUs (built for real-time graphics rendering) became the substrate for deep learning; the U-Net (built for biomedical image segmentation) became the backbone of diffusion models; backpropagation's mathematical core (from a 1970 numerical-analysis thesis and 1974 political-forecasting PhD work) was popularized for neural networks over a decade later; the attention mechanism grew out of a linguistics-adjacent research community (machine translation) and only later became the basis of the Transformer and, via AlphaFold2, a Nobel-Prize-winning contribution to structural biology. In each case, no benchmark existing at the time of invention could have signaled the idea's eventual importance — the idea had to survive a period of being "invisible to the metrics that matter" before its later use case arrived.

## Variants

- **Infrastructural exaptation**: hardware or tooling repurposed across domains (GPUs: graphics → deep learning).
- **Architectural exaptation**: a model architecture repurposed for a new task (U-Net: segmentation → generative diffusion).
- **Cross-community exaptation**: concepts crossing disciplinary/subfield boundaries that require a heterogeneous research ecosystem to persist long enough for the crossing to happen (attention: machine translation → protein folding).
- **The "such-that problem"** ([[such-that-problem-ai-evaluation]]) is presented as the case where the exaptation tax becomes most acute: alignment, interpretability, and safety research cannot be benchmarked the way capability research can, because their success criteria are not yet agreed upon (human-side, not world-side, problems).

## Comparison

Related but distinct from simple **benchmark saturation** (where a metric stops discriminating between systems) or **construct validity** critiques of individual benchmarks (where a specific metric fails to measure what it claims to). Exaptation is a claim about the *dynamics of a whole research ecosystem* over time: it is not that any single benchmark is wrong, but that a benchmark-dominated selection environment systematically under-preserves exploratory, cross-domain, or currently-illegible work, narrowing the space of ideas available for future recombination. This connects to science-of-science findings that AI research is thematically narrowing (Klinger et al. 2020) and that AI-tool adoption in science collectively contracts the topics researchers explore even as individual output rises ([[artificial-intelligence-tools-expand-scientists-impact]]; see [[ai-research-productivity-paradox]]).

## Known limitations

- **Unfalsifiability** ("Invisibility Objection"): lost innovations cannot be observed, so the tax's magnitude cannot be directly measured — only proxied via observable narrowing of thematic diversity.
- **Attribution problem**: benchmark culture is not the sole cause of any observed narrowing; compute costs, industrial organization, and convergence on effective methods also contribute.
- **No operationalized metric**: the paper proposes the concept and institutional remedies (plural evaluation regimes, protected venues, reflexive governance of evaluation criteria) but does not offer a quantitative exaptation-tax estimator.

## Open problems

- Can the exaptation tax be estimated empirically (e.g., via citation-lag analysis of "sleeping beauty" papers, or via counterfactual simulation of alternative selection regimes)?
- Does the tax apply symmetrically to capability research and to alignment/safety research, or is the "such-that problem" categorically different, as the source paper argues?
- Would portfolio-style evaluation (parallel scoring regimes, protected venues, partial randomization among near-threshold submissions) measurably increase the rate of valuable cross-domain recombination, or merely increase noise?

## Relationship to foundations

Draws on Gould & Vrba's (1982) evolutionary-biology concept of exaptation, and on Kuhn's normal/revolutionary science distinction and Arthur's path-dependence/increasing-returns theory, to argue that benchmark culture creates lock-in for a particular research profile (compute, engineering infrastructure, standardized datasets). No dedicated foundations page exists yet for exaptation-in-biology or path-dependence theory.

## My understanding

The concept's strength is reframing a familiar complaint ("benchmarks distort research incentives") as a *dynamical* claim with a biological analogy that makes the mechanism concrete: persistence, not just quality, determines what survives to be exapted. Its weakest point is exactly what the authors admit — the core cost is invisible by construction, so the argument rests on suggestive historical cases (GANs nearly rejected from NeurIPS, LSTMs ignored for a decade) rather than a general estimator. The most actionable idea is the "such-that problem" distinction: it gives a precise, falsifiable reason why alignment/safety research *cannot* borrow capability research's benchmark-validated methodology wholesale, since the correlation between benchmark performance and real progress that was empirically earned for capability questions has not been established for such-that questions.
