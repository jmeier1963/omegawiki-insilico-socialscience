---
title: "OLMo: Accelerating the Science of Language Models"
slug: groeneveld-olmo-language-models
arxiv: "2402.00838"
venue: "ACL 2024"
year: 2024
tags: [open-source-llm, reproducibility, language-model-science, transparency, dolma, ai2]
importance: 3
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [OLMo, open language model, reproducibility, Dolma, Allen AI, training transparency]
domain: "NLP"
code_url: "https://github.com/allenai/OLMo"
cited_by: []
---

## Problem

Major language models (GPT-4, Llama, Gemini) withhold training data, training code, or model architecture details — making reproducibility and scientific study of LLM training impossible. This restricts the science of language models to those with access to industrial-scale resources.

## Key idea

OLMo releases fully open language model weights, training code, evaluation code, and the complete Dolma training dataset (~3T tokens), enabling reproducible scientific study of LLM training dynamics. This is the first fully open LLM at this scale.

## Method

- Model: 7B and 65B parameter decoder-only transformers
- Training data: Dolma v1.5 (publicly released, permissively licensed)
- Full training code: released on GitHub (PyTorch, FSDP)
- Evaluation suite: released as separate package (lm-eval-harness)
- Published at ACL 2024 (Allen Institute for AI / AI2)

## Results

- OLMo-7B matches or exceeds comparable open models on standard benchmarks
- Full reproducibility: any researcher can reproduce training runs
- Enables study of training dynamics, data mixtures, and scaling behavior
- Dolma includes ~3T tokens of Common Crawl, Wikipedia, code, science papers, Project Gutenberg

## Limitations

- Does not match closed models (GPT-4) in performance — different resource levels
- Openness creates dual-use concerns (easier to misuse than closed models)
- Requires significant compute to train even with full code access

## Open questions

- Does full openness accelerate scientific progress on LLMs more than closed but accessible APIs?
- What is the appropriate level of openness for AI models used in scientific research?

## My take

The counterexample to the Ahmed et al. (2023) critique: OLMo is deliberately designed to be a scientific artifact, not a commercial product. The release of Dolma is as important as the model — enabling data contamination analysis (Golchin & Surdeanu 2024) and scaling studies. The gold standard for what open science in AI could look like.

## Related

- [[ahmed-industry-influence-ai-research]]
- [[golchin-surdeanu-data-contamination]]
- [[wilkinson-fair-guiding-principles]]
- [[kapoor-narayanan-leakage-reproducibility]]
- [[open-science-collaboration-reproducibility]]
