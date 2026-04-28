---
title: "Using Generative AI for Sequential Data Generation in Monte Carlo Simulation Studies"
slug: using-generative-ai-sequential-data-generation
arxiv: ""
venue: "preprint"
year: 2025
tags: [generative-ai, monte-carlo-simulation, synthetic-data, sequential-data, statistical-methodology, evaluation]
importance: 2
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [Monte Carlo simulation, generative AI, synthetic data, sequential data, process data, statistical methods, evaluation framework]
domain: "Computational Social Science"
code_url: ""
cited_by: []
---

## Problem

Traditional Monte Carlo simulation studies use smoothly generated synthetic data that may not reflect real-world complexity. How can generative AI improve simulation studies, particularly for sequential/process data?

## Key idea

AI-based simulation using GenAI for data generation outperforms traditional Monte Carlo simulation in terms of data realism, providing a more accurate evaluation of statistical methods' real-world performance. A five-step framework is proposed for AI-based simulation.

## Method

- Five-step framework: (a) pre-processing, (b) training GenAI models, (c) assessing synthetic data quality, (d) conducting AI-based simulations, (e) evaluating results
- Applied to sequential/process data (action sequences)
- Robustness checks across synthetic data quality and simulation outcomes

## Results

- AI-based simulations outperform traditional ones in generating realistic synthetic data
- More accurate evaluation of real-world statistical method performance
- Framework is generalizable to other sequential data types

## Limitations

- Limited to sequential/process data — generalizability to other data types requires further study
- GenAI models introduce their own biases into synthetic data
- Training GenAI on real data introduces privacy considerations

## Open questions

- How does AI-based simulation quality compare across different GenAI architectures (VAEs, diffusion, LLMs)?
- Can the framework be used to test statistical methods for LLM-generated survey data?

## My take

Methodological contribution that bridges the gap between traditional simulation studies and AI-generated data. Most relevant to psychometrics and educational measurement contexts using process/sequential data. Less directly connected to the survey simulation literature but shares the goal of improving synthetic data realism.

## Related

- [[silicon-sampling]]
- [[automated-social-science-language-models-scientist]]
