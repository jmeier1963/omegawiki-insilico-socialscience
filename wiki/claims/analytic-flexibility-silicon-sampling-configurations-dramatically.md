---
title: "Analytic flexibility in silicon sampling configurations dramatically inflates false positive rates"
slug: analytic-flexibility-silicon-sampling-configurations-dramatically
status: proposed
confidence: 0.60
tags: [silicon-sampling, analytic-flexibility, false-positives, researcher-degrees-of-freedom, replication-crisis, validity]
domain: "NLP"
source_papers: [threat-analytic-flexibility-using-large-language]
evidence:
  - source: threat-analytic-flexibility-using-large-language
    type: supports
    strength: moderate
    detail: "Cummins (2025) demonstrates that the large number of researcher choices in silicon sampling designs (model selection, prompt wording, persona specification, temperature) create analytic flexibility that can dramatically inflate false positive rates; without pre-registration, researchers can inadvertently or deliberately tune configurations to find desired results."
conditions: "Most acute when silicon sampling is used for hypothesis testing (vs. exploration); particularly problematic without pre-registration of model and prompt choices; severity scales with number of free parameters in the simulation design."
date_proposed: 2026-04-28
date_updated: 2026-04-28
---

## Statement

The large number of researcher choices in silicon sampling designs — including model selection, prompt wording, persona specification, temperature, and output parsing — create analytic flexibility analogous to researcher degrees of freedom in traditional research. This flexibility can dramatically inflate false positive rates, making null results appear significant when researchers (even inadvertently) tune configurations until they find desired patterns.

## Evidence summary

Cummins (2025) provides a systematic analysis of the analytic flexibility threat in silicon sampling. The key insight is that silicon sampling involves more free parameters than most empirical social science designs, each of which can be varied to achieve different substantive results. Without pre-registration of the full simulation pipeline, the effective number of researcher degrees of freedom is very large.

## Conditions and scope

- Most acute for confirmatory hypothesis testing; less problematic for exploratory work
- Particularly severe without pre-registration of model version, prompt template, and output parsing rules
- Severity scales with the number of unconstrained researcher choices
- Less problematic when the silicon sampling configuration is fixed a priori and held constant

## Counter-evidence

- Robustness checks across multiple models/prompts can partially mitigate the concern
- Some findings replicate across many configuration variants, suggesting genuine signal
- Pre-registration norms are emerging and could substantially reduce the problem

## Linked ideas

## Open questions

- What is the empirically observed false positive inflation factor for typical silicon sampling designs?
- Can specification curve analysis provide a principled solution to analytic flexibility in silicon sampling?
- Do different LLMs provide correlated or independent flexibility paths (i.e., does multi-model testing truly reduce researcher degrees of freedom)?
