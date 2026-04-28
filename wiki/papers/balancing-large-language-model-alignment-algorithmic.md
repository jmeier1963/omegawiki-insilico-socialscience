---
title: "Balancing Large Language Model Alignment and Algorithmic Fidelity in Social Science Research"
slug: balancing-large-language-model-alignment-algorithmic
arxiv: ""
venue: "preprint"
year: 2025
tags: [silicon-sampling, model-alignment, algorithmic-fidelity, llm-simulation, open-source-models, social-science]
importance: 3
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [model alignment, RLHF, algorithmic fidelity, silicon sampling, open-source LLMs, simulation fidelity, human attitude simulation]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

Social scientists increasingly face the choice of which LLM to use for silicon sampling without social-science-specific guidance. Does model alignment (human feedback fine-tuning) help or hurt simulation fidelity?

## Key idea

Model alignment (RLHF fine-tuning) significantly affects LLM simulation output in predictable ways. Aligned and unaligned models differ systematically in the attitudes they simulate, with implications for task completion and substantive research conclusions. Researchers must account for alignment in model selection.

## Method

- Benchmark comparison of aligned vs. unaligned versions of 6 open-source LLMs
- Evaluated against human survey responses
- Assessment of how alignment impacts: attitude distributions, prompting sensitivity, task completion, substantive content

## Results

- Model alignment impacts output in predictable and significant ways
- Aligned models tend toward more "mainstream" or "acceptable" positions (RLHF-induced conservatism)
- Unaligned models may be more variable but less constrained by safety filters
- The alignment effect interacts with prompting approach and survey domain
- Implications for model selection: neither always-aligned nor always-unaligned is optimal

## Limitations

- Only open-source models — GPT-4/Claude behavior may differ significantly
- "Alignment" is operationalized as the difference between base and instruction-tuned variants — not a pure alignment measure
- Preprint, not yet peer reviewed

## Open questions

- Can model alignment be "dialed" to optimize simulation fidelity for specific research tasks?
- Do newer aligned models (with more diverse training data) show smaller alignment effects?
- How does alignment interact with interview-based persona conditioning?

## My take

Practically useful guidance for researchers choosing between model variants. The key finding — alignment affects simulation in predictable ways — is consistent with the broader finding that RLHF pushes LLMs toward liberal/educated perspectives (Santurkar et al. 2023). The open-source focus makes it directly actionable for researchers who can't afford proprietary APIs at scale.

## Related

- [[algorithmic-fidelity]]
- [[silicon-sampling]]
- supports: [[persona-conditioning-degrades-subgroup-fidelity-llm]]
- [[llms-misrepresent-human-opinion-distributions]]
- [[benchmarking-distributional-alignment-large-language-models]]
