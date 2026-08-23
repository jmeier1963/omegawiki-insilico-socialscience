---
title: "The 2026 AI Index Report"
slug: 2026-ai-index-report
arxiv: ""
venue: "Stanford Institute for Human-Centered AI (HAI)"
year: 2026
tags: [ai-index, measurement, industry-concentration, compute, model-transparency, ai-education, ai-sovereignty, open-weights]
importance: 4
date_added: 2026-08-22
source_type: pdf
s2_id: ""
tldr: "Stanford HAI's annual measurement of the AI field, reporting that industry produced over 90% of notable models in 2025 while the most capable models became the least transparent, and that global compute capacity grew 3.3x per year since 2022."
contribution_type: [survey, analysis]
datasets: [Epoch AI notable models dataset]
keywords: [notable AI models, industry share, training compute, H100-equivalents, model transparency, AI PhDs, data centers, AI sovereignty]
domain: "general"
code_url: ""
cited_by: []
---

## Problem & Context

The AI Index is the field's reference measurement instrument: an annual, source-cited compilation covering research and development, technical performance, economy, policy, education and public opinion. Its function is to give a contested and fast-moving field a shared factual baseline. The 2026 edition (published June 2026) is the one that documents the shift of the frontier fully into private hands.

## Key idea

Two findings define the edition. **Concentration**: industry now accounts for over 90% of notable AI models. **Opacity**: the most capable models are simultaneously the least transparent — training code, parameter counts, dataset sizes and training duration are no longer disclosed for several of the most resource-intensive systems, including those from OpenAI, Anthropic and Google.

The combination is the substantive point. It is not that the frontier moved to industry, which has been true for years; it is that the frontier moved to industry *and* stopped reporting the quantities from which capability could be independently assessed.

## Method

Compilation from primary sources and curated datasets, notably Epoch AI's notable-models dataset for the model counts, with independent estimation used where disclosure has stopped (training compute can be estimated even when unreported; parameter counts largely cannot).

## Experiment & Results

Selected findings relevant to the science-system question:

- **Industry share**: over 90% of notable AI models in 2025 came from industry.
- **Geography**: the U.S. produced 59 notable models in 2025, China 35. China leads in publication volume, citations and patent grants; its share of the 100 most-cited AI papers rose from 33 in 2021 to 41 in 2024.
- **Disclosure**: reported parameter counts have stayed near 1 trillion for three years, but reporting from frontier labs has stopped; training compute continues to rise on independent estimates.
- **Compute**: global AI compute capacity grew 3.3x per year since 2022, reaching 17.1 million H100-equivalents. Nvidia accounts for over 60%; the U.S. hosts 5,427 data centres, more than ten times any other country.
- **Efficiency vs. scale**: OLMo 3.1 Think 32B, with nearly 90 times fewer parameters than Grok 4, reaches comparable results on several benchmarks through pruning, deduplication and curation alone — synthetic data is still not replacing real data in pre-training.
- **Talent**: new AI PhDs in the U.S. and Canada increased 22% from 2022 to 2024, and the PhDs making up that increase took jobs in **academia, not industry**.
- **Education**: over 80% of U.S. high-school and college students use AI for school-related tasks, but only half of middle and high schools have AI policies and just 6% of teachers say those policies are clear.
- **Sovereignty**: national AI strategies and state-backed AI supercomputing investments are expanding, while open-source contributions from outside the U.S. and Europe grow.

## Limitations

- Compilation, not primary research; inherits the biases of its sources.
- "Notable models" is a curatorial category (Epoch AI's), and the 90% figure depends on it.
- Where disclosure has stopped, the report necessarily substitutes estimates, so the transparency finding partly undermines the measurability of the other findings.
- Annual cadence lags a field that moves faster than the reporting cycle.

## Open questions

- What measurement remains possible if disclosure continues to decline?
- Does the academia-bound PhD flow persist, and does it survive contact with the compute gap?
- Is the OLMo efficiency result generalizable enough to change what public compute would be required to stay near the frontier?

## My take

The talent finding deserves more attention than it gets, because it cuts against the standard brain-drain narrative: the PhD growth went to academia. What has moved is not the people but the conditions — compute, data and model access — and that is a harder problem than a labour-market one, because it cannot be fixed by hiring.

The transparency finding is the one with the sharpest institutional consequence. A science system that cannot inspect the leading edge cannot audit it, and a report that must estimate what used to be published is itself the evidence of that.

## Related

- [[some-simple-economics-agi]]
- [[groeneveld-olmo-language-models]]
- [[bloom-176b-parameter-open-access-multilingual]]
- [[chen-zaharia-zou-chatgpt-behavior-changing]]
