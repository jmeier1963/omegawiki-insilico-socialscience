---
title: "The threat of analytic flexibility in using large language models to simulate survey responses"
slug: threat-analytic-flexibility-using-large-language
arxiv: "2509.13397"
venue: "arXiv preprint"
year: 2025
tags: [silicon-sampling, analytic-flexibility, methodology, llm, survey-simulation, researcher-degrees-of-freedom]
importance: 3
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [analytic flexibility, silicon sampling, survey simulation, researcher degrees of freedom, configuration, alignment, methodology]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

Silicon sampling involves many analyst choices (model selection, prompting strategy, response generation method, persona specification, etc.). How much do these choices affect the quality of the resulting synthetic sample? Is there a "one-size-fits-all" configuration?

## Key idea

Analytic flexibility is a serious methodological threat to silicon sampling: a small number of configuration decisions dramatically change the correspondence between silicon samples and human data. No single configuration performs well across all alignment dimensions, implying that researchers face undisclosed degrees of freedom that can systematically distort conclusions.

## Method

- 252 configurations systematically varied across key analytic choices
- Evaluated on three alignment dimensions: (i) rank ordering of participants, (ii) response distributions, (iii) between-scale correlations
- Configuration space includes: model selection, prompting approach, SRGM choice, persona specification depth

## Results

- Configurations vary substantially in all three alignment dimensions
- No configuration optimizes all three simultaneously — trade-offs are pervasive
- A configuration that performs well on one dimension often performs poorly on another
- The effective "researcher degrees of freedom" in silicon sampling are large, threatening replicability

## Limitations

- Study may not cover all relevant configuration dimensions (e.g., fine-tuning, system prompts)
- Three alignment dimensions are reasonable but not exhaustive — other criteria (ecological validity, predictive validity) not tested
- Findings may differ across survey domains beyond political attitudes

## Open questions

- Can pre-registration of silicon sampling configurations mitigate the analytic flexibility problem?
- Is there a configuration-independent alignment metric that correlates with downstream validity?
- Do the same trade-offs appear in non-Western, non-English survey contexts?

## My take

Arguably the most practically important methodological paper for silicon sampling in 2025. The multiverse-style analysis reveals that silicon sampling results are fragile to undisclosed choices — similar to the analytic flexibility problem in psychology (Simmons et al. 2011). Strongly implies that silicon sampling papers need to report all configuration choices and ideally conduct multiverse analyses. Connects with Ahnert et al. (2025) on SRGM choice.

## Related

- [[silicon-sampling]]
- supports: [[analytic-flexibility-silicon-samples-configuration-dependent]]
- [[survey-response-generation-generating-closed-ended]]
- [[llms-behavioral-surrogates-require-statistical-calibration]]
- [[benchmarking-distributional-alignment-large-language-models]]
