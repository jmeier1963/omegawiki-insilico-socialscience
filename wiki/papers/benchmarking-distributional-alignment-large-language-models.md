---
title: "Benchmarking Distributional Alignment of Large Language Models"
slug: benchmarking-distributional-alignment-large-language-models
arxiv: "2411.05403"
venue: "arXiv preprint"
year: 2024
tags: [distributional-alignment, silicon-sampling, evaluation, benchmarking, llm-measurement, opinion-distribution]
importance: 3
date_added: 2026-04-14
source_type: pdf
s2_id: ""
keywords: [distributional alignment, total variation, distribution expression method, steering method, log-probabilities, verbalization, opinion simulation]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Language models are increasingly used to simulate the opinion distribution of specific demographic groups, but evaluation is inconsistent. Three key sources of variation are underexplored: (1) the distribution expression method (how the model expresses its distribution), (2) the steering method (how the model is directed toward a demographic group), and (3) dataset design choices. This makes it unclear whether LLMs "know" human opinion distributions but struggle to express them, or whether they genuinely lack the knowledge.

## Key idea

Build a systematic benchmark varying all three dimensions. Key finding: **log-probability evaluation methods systematically underestimate LLM distributional alignment**. LLMs can more accurately describe opinion distributions in text-based verbalization form (e.g., "return the distribution in JSON") than by generating samples or computing log-probabilities of response options.

## Method

1. Construct benchmark: NYT Book Opinions dataset (expands beyond political values to book preferences, cultural opinions)
2. Vary distribution expression method: log-probabilities vs. sequence generation vs. verbalization (text-form)
3. Vary steering method: persona conditioning (demographic prompts) vs. few-shot examples
4. Evaluate distributional alignment as total variation between model-predicted and human ground-truth distributions
5. Establish human baseline for the distributional alignment task

## Results

- Log-probability methods systematically underestimate LLM distributional alignment
- Verbalization (model describes distribution in text) outperforms log-probability and sampling approaches
- LLMs can more accurately describe distributions than they can sample from their own distribution
- Significant gaps in distributional alignment for non-political opinions (book preferences, non-cultural values) compared to political/cultural opinions
- Distributional alignment and steerability remain challenging for non-political domains

## Limitations

- NYT Book Opinions extends evaluation domain but may not cover all relevant non-political opinion types
- Verbalization requires LLMs to express uncertainty explicitly — may introduce its own biases
- Human baseline shows distributional alignment is not perfectly achievable even for humans

## Open questions

- Why do LLMs know distributions better than they can sample from them?
- Can verbalization be standardized for systematic survey simulation comparisons?
- Does the measurement gap between log-probabilities and verbalization indicate a training data artifact?

## My take

An important methodological contribution. The finding that log-probabilities underestimate alignment has practical implications: prior work showing poor LLM alignment may have been using the wrong measurement method. The verbalization result is counterintuitive but actionable: switch from sampling-based to verbalization-based evaluation for distributional alignment studies. The non-political opinion gap is a key open problem.

## Related

- supports: [[log-probability-methods-underestimate-llm-distributional-alignment]]
- [[silicon-sampling]]
- [[algorithmic-fidelity]]
- [[opinionqa]]
