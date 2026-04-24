---
title: "Restoring Heterogeneity in LLM-based Social Simulation: An Audience Segmentation Approach"
slug: restoring-heterogeneity-llm-based-social-simulation
arxiv: "2604.06663"
venue: "arXiv preprint"
year: 2026
tags: [silicon-sampling, heterogeneity, audience-segmentation, algorithmic-fidelity, llm-evaluation]
importance: 2
date_added: 2026-04-14
source_type: pdf
s2_id: ""
keywords: [audience segmentation, heterogeneity masking, fidelity in simulation, segmentation parsimony, overregularization]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

LLM-based social simulations tend toward overregularization — they fail to capture the full diversity of real-world population responses. Standard approaches of adding more demographic segmentation identifiers do not consistently address this problem and can worsen it through over-specification. The paper investigates how to design segmentation strategies that restore meaningful heterogeneity.

## Key idea

**Parsimony beats exhaustiveness**: compact segmentation configurations (fewer but well-chosen identifiers) outperform exhaustive ones in both structural and predictive fidelity. The best selection strategy depends on the target fidelity dimension: instrument-based selection best preserves distributional shape, while data-driven selection best recovers subgroup structure and outcome associations.

## Method

- Dataset: U.S. climate opinion survey data
- Varies: segmentation identifier granularity (from compact to exhaustive)
- Evaluates: structural fidelity (does the simulation reproduce population structure?), predictive fidelity (does it predict outcomes?), distributional fidelity (does it preserve response distributions?)
- Tests multiple segmentation strategies: instrument-based, data-driven, exhaustive

## Results

- Increasing segmentation granularity does not consistently improve fidelity; moderate enrichment helps, over-enrichment hurts
- Compact, parsimonious configurations outperform exhaustive ones on structural and predictive fidelity
- Instrument-based selection best preserves distributional shape
- Data-driven selection best recovers subgroup structure and outcome associations
- All models show residual overregularization — persistent failure to fully capture real-world diversity even with optimized segmentation

## Limitations

- Single survey domain (U.S. climate opinion); generalizability unknown
- Overregularization persists despite optimization — no tested configuration fully solves heterogeneity loss
- Does not test fine-tuned LLMs

## Open questions

- What is the theoretical minimum achievable overregularization for current LLM architectures?
- Can heterogeneity-aware fine-tuning reduce residual overregularization?
- Do these findings generalize to political attitudes, economic beliefs, or social norms?

## My take

A practically useful contribution for researchers designing silicon sampling studies. The parsimony finding counters the intuition that "more demographic detail = better simulation." The residual overregularization finding is important and implies silicon sampling has a structural ceiling for diversity preservation regardless of segmentation strategy.

## Related

- supports: [[llm-social-simulations-have-structural-heterogeneity-ceiling]]
- [[silicon-sampling]]
- [[algorithmic-fidelity]]
