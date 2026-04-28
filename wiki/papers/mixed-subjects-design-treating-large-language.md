---
title: "The Mixed Subjects Design: Treating Large Language Models as Potentially Informative Observations"
slug: mixed-subjects-design-treating-large-language
arxiv: ""
venue: "preprint"
year: 2025
tags: [silicon-sampling, causal-inference, mixed-methods, prediction-powered-inference, human-ai-collaboration, research-design]
importance: 3
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [mixed subjects design, prediction-powered inference, PPI, causal effects, LLM predictions, effective sample size, human subjects, validity]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

LLMs can generate cheap behavioral predictions but these are often inaccurate. Researchers either use LLMs as full human replacements (validity risk) or ignore them entirely (cost inefficiency). Is there a principled way to combine LLM predictions with human data?

## Key idea

Treating LLM predictions as "potentially informative observations" in a mixed subjects design — combined with a small gold-standard human sample — preserves validity (via human ground truth) while reducing costs. Prediction-Powered Inference (PPI) provides the formal statistical framework.

## Method

- Demonstrates and extends Prediction-Powered Inference (PPI) methodology from Angelopoulos et al.
- Defines "PPI correlation" as measure of LLM-human interchangeability
- Derives effective sample size for PPI designs
- Introduces power analysis for optimal allocation between human and LLM observations

## Results

- Mixed subjects designs can yield valid causal effect estimates at lower cost than all-human designs
- The PPI correlation quantifies how much information LLM predictions add — useful for planning
- LLMs are most valuable for mixed designs when PPI correlation is moderate-to-high (0.5+)
- Power analysis framework allows researchers to optimally pre-allocate resources between human and LLM samples

## Limitations

- Requires human gold-standard data — not a pure replacement
- PPI correlation must be estimated from the human subsample, adding uncertainty
- Validity guarantee assumes LLMs are biased but this bias is consistent within the study context (may not hold across survey domains)

## Open questions

- What is the PPI correlation for different types of research tasks and LLMs?
- Can mixed designs be extended to qualitative/textual outcomes?
- How does the design perform when LLM bias is heterogeneous across subgroups?

## My take

Methodologically elegant: rather than asking "can LLMs replace humans?" it asks "how can we combine the two optimally?" The PPI framework provides a statistically grounded answer. Practically useful because it gives researchers a concrete planning tool (power analysis with PPI correlation). Complements Broska et al. 2025's finding that LLMs are "potentially informative" — this turns that insight into a design methodology.

## Related

- [[silicon-sampling]]
- supports: [[mixed-subjects-design-llm-human-valid-causal-estimates]]
- [[benchmarking-distributional-alignment-large-language-models]]
- [[llms-behavioral-surrogates-require-statistical-calibration]]
