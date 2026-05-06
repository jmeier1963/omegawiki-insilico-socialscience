---
title: "A Roadmap to Pluralistic Alignment"
slug: roadmap-pluralistic-alignment
arxiv: "2402.05070"
venue: "ICML 2024"
year: 2024
tags: [alignment, pluralism, value-diversity, rlhf, human-values, llm, benchmark]
importance: 4
date_added: 2026-05-06
source_type: pdf
s2_id: ""
keywords: [pluralistic alignment, Overton pluralism, steerable pluralism, distributional pluralism, value diversity, jury-pluralistic benchmark, RLHF limitations]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

AI alignment typically optimizes for averaged human preferences (RLHF), which treats human value diversity as noise rather than signal. As AI systems serve more diverse populations, single-preference alignment may suppress legitimate minority perspectives and reduce the diversity of outputs. How should alignment be operationalized to serve a pluralistic society?

## Key idea

**Pluralistic alignment**: a framework with three forms of pluralism and three corresponding benchmark types. Current RLHF-style alignment empirically *reduces* distributional pluralism — a fundamental limitation that motivates new alignment methods.

## Method

- **Conceptual framework**: three operationalizations of pluralism:
  1. **Overton pluralism**: models present a spectrum of reasonable responses (comprehensive coverage)
  2. **Steerable pluralism**: models can faithfully represent particular perspectives on request
  3. **Distributional pluralism**: model output distribution matches a given population's value distribution
- **Three benchmark types**:
  1. Multi-objective benchmarks (measure coverage across objectives)
  2. Trade-off steerable benchmarks (incentivize arbitrary trade-off steering)
  3. Jury-pluralistic benchmarks (explicitly model individual raters, not aggregated scores)
- **Empirical analysis**: measure distributional pluralism in models before and after RLHF alignment using opinion and value diversity metrics

## Results

- Standard RLHF alignment **reduces distributional pluralism** — models post-RLHF show less value diversity than pre-RLHF baselines or diverse human populations
- This is presented as both an empirical finding and a theoretical prediction: RLHF optimizes for averaged preferences, which by construction compresses the distribution
- Current benchmarks are not designed to detect or reward pluralism; existing methods systematically miss this failure mode

## Limitations

- Primarily a roadmap/position paper with limited empirical results; empirical findings are preliminary
- "Correct" level of distributional pluralism is not defined; matching raw population distributions may also not be desirable (e.g., including extreme harmful views)
- The three forms of pluralism may have technical tensions with each other

## Open questions

- How should harmful vs. merely minority views be distinguished in pluralistic alignment?
- Can pluralism and safety guardrails be jointly optimized?
- Which form of pluralism is most important for different deployment contexts?

## My take

A theoretically sophisticated position paper. The three-way taxonomy of pluralism is genuinely clarifying, and the finding that RLHF reduces pluralism is an important negative result often overlooked. Importance 4 — widely cited in alignment discourse and directly shapes how researchers think about "whose values" RLHF serves.

## Related

- [[pluralistic-alignment]]
- supports: [[rlhf-alignment-reduces-value-diversity]]
