---
title: "Synthetic personas distort the structure of human belief systems"
slug: synthetic-personas-distort-structure-human-belief
arxiv: ""
venue: "arXiv preprint"
year: 2026
tags: [persona-conditioning, silicon-sampling, belief-systems, overregularization, llm-evaluation, ideological-coherence]
importance: 2
date_added: 2026-04-14
source_type: pdf
s2_id: ""
keywords: [belief system constraint, polychoric correlation, ideological coherence, demographic mediation, principal component analysis, synthetic survey data]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Existing silicon sampling evaluations measure whether LLMs match the marginal distribution of individual survey items. But human belief systems are characterized by their *structure* — the patterns of correlations among beliefs, the number of latent dimensions, and the degree to which demographics predict beliefs. Do LLM personas preserve the structural properties of human belief systems?

## Key idea

LLM personas produce belief systems that are **unrealistically coherent**: higher constraint (beliefs too strongly correlated/ideologically structured), overemphasis of the leading ideological dimension, and missing secondary belief structure. Persona conditioning makes this worse by amplifying demographic mediation — LLMs respond more to demographic cues than real humans do.

## Method

1. Compare 28 LLMs to 2024 General Social Survey (GSS) using 52 attitude items
2. Estimate polychoric correlation matrices for both human (GSS) and LLM responses
3. Propagate uncertainty in GSS via bootstrap resampling with multiple imputation
4. Measure constraint via: (a) variance share explained by first principal component, (b) effective dependence (determinant-based global linear dependence measure)
5. Condition on demographic persona traits and re-assess constraint
6. Project onto shared GSS basis to compare structural alignment

## Results

- LLM personas exhibit substantially higher constraint (more ideologically coherent) than human GSS respondents
- Conditioning on demographic persona traits reduces constraint for LLMs far more than for humans → greater demographic mediation in LLMs
- Projection onto GSS basis shows LLM responses overemphasize the leading ideological dimension and miss secondary belief structure
- Applies across 28 diverse LLMs — robust finding, not model-specific

## Limitations

- Evaluated on political/social attitude items (52 GSS items); may not generalize to other belief domains
- Comparison is cross-sectional; temporal dynamics of belief systems not studied
- No evaluation of richer conditioning formats (interview-based, narrative personas)

## Open questions

- Does the belief system distortion persist with richer persona formats (SPIRIT, Synonymix)?
- What training data properties cause LLMs to overemphasize ideological coherence?
- Can post-hoc calibration of LLM correlation matrices restore realistic belief system structure?

## My take

An important structural critique of silicon sampling. Most evaluation papers check marginal distributions (do LLMs get the right proportion of "agree" responses?). This paper shows that even if marginal distributions are right, the correlation structure is wrong — LLMs produce beliefs that are too internally consistent, too ideologically aligned, and too responsive to demographic cues. This matters for any application that relies on belief system structure, not just isolated item predictions.

## Related

- supports: [[synthetic-personas-distort-belief-system-constraint]]
- [[persona-conditioning]]
- [[algorithmic-fidelity]]
- [[silicon-sampling]]
