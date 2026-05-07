---
title: "AI Models Collapse When Trained on Recursively Generated Data"
slug: shumailov-model-collapse
arxiv: "2305.17493"
venue: "Nature"
year: 2024
tags: [model-collapse, synthetic-data, recursive-training, generative-models, data-quality, ai-sustainability]
importance: 4
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [model collapse, synthetic data, recursive training, distribution shift, tail erosion, AI sustainability]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

As AI-generated content increasingly populates the internet, future AI models will be trained on mixtures of human-generated and AI-generated data. What happens to model quality when AI models are trained on the outputs of prior AI models?

## Key idea

Iterative training of generative models on their own outputs causes "model collapse" — a degenerative process in which the tails of the original data distribution progressively disappear, producing models that have forgotten rare events and exhibit reduced diversity. This is irreversible without access to the original data.

## Method

- Demonstrated on Gaussian Mixture Models, Variational Autoencoders (VAEs), and Large Language Models
- Simulated recursive training: model generation → new training set → retrained model → repeat
- Tracked distribution statistics across generations: mean bias, variance collapse, tail erosion
- arXiv preprint title: "The Curse of Recursion: Training on Generated Data Makes Models Forget"

## Results

- Early generations: slight bias toward the mean, variance reduction begins
- Late generations: model "hallucinates" concentrated, non-diverse outputs; original distribution tails vanish
- Effect observed consistently across model families
- LLM experiments: perplexity degrades on natural text as training generations increase

## Limitations

- Demonstrated primarily in controlled settings; real-world internet data mixing is more complex
- Rate of collapse depends on fraction of synthetic data in training
- Filtering strategies (e.g., watermarking) not evaluated
- Published as Nature 2024, DOI 10.1038/s41586-024-07566-y (arXiv version 2023)

## Open questions

- How much synthetic data contamination triggers measurable collapse in practice?
- Can data provenance or watermarking prevent collapse?
- Does this apply to multi-modal models, not just text?

## My take

An alarming result for the long-term sustainability of LLM training. As AI-generated content floods the web, the effective "training data commons" is being degraded. The paper's key insight — that forgetting is irreversible without access to original data — makes human-generated data increasingly valuable. Directly relevant to Richardson/Scancar (2025) papermill detection: synthetic/fraudulent papers in the literature may cause similar collapse in scientific LLMs.

## Related

- [[groeneveld-olmo-language-models]]
- [[golchin-surdeanu-data-contamination]]
- [[richardson-scancar-papermill-detection]]
- [[eisenstein-printing-press-agent-change]]
- [[messeri-crockett-ai-illusions-understanding]]
