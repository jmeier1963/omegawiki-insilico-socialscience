---
title: "Plotting Progress in AI: Static Benchmarks and the Case for Dynamic Evaluation"
slug: plotting-progress-ai-static-benchmarks
arxiv: ""
venue: "Contextual AI (blog)"
year: 2023
tags: [ai-benchmarks, benchmark-saturation, dynabench, evaluation, ai-progress, nlp]
importance: 2
date_added: 2026-05-06
source_type: pdf
s2_id: ""
keywords: [AI benchmark saturation, dynamic benchmarks, Dynabench, AI progress measurement, NLP evaluation]
domain: "AI Governance / Policy"
code_url: ""
cited_by: []
---

## Problem

Static benchmarks are saturating as AI systems surpass human performance — how should the field measure AI progress?

## Key idea

Douwe Kiela, Tristan Thrush, Kawin Ethayarajh, and Amanpreet Singh (Contextual AI) update and extend their 2021 Dynabench work showing rapid AI benchmark saturation. Their visualization of benchmark saturation has become widely cited (e.g., in Science). They argue for "living benchmarks" that continuously evolve to prevent models from gaming fixed evaluation sets, and that the AI field's ability to gauge capabilities has worsened as progress has accelerated.

## Method

Data visualization and analysis. Contextual AI blog post, July 2023. 7 pages. Updates Dynabench figures from Kiela et al. (2021, ACL).

## Results

- Benchmark saturation is accelerating: models surpass human performance on major NLP benchmarks faster and faster
- Static benchmarks create Goodhart's law problems: once a benchmark is a target, it ceases to be a good measure
- Dynabench platform: human-and-model-in-the-loop annotation to maintain challenging benchmarks
- Updated visualization: AI progress is accelerating but our ability to measure it is falling behind

## Limitations

- Blog post format; limited methodological detail
- Goodhart's law critique applies to dynamic benchmarks too (they also become targets)
- Conflates different benchmark types (NLP, vision, reasoning)

## Open questions

- Can dynamic benchmarks scale to assess general AI capabilities?
- How to measure AI progress on capabilities with no human baseline?

## My take

Useful update to the benchmark saturation argument. The observation that "our ability to gauge AI abilities has never been worse" at a time of rapid progress is analytically important for AI governance. Importance 2 (blog post; but makes a genuine empirical point with good visualization).

## Related

- supports: [[ai-capabilities-investment-advanced-rapidly-each]]
