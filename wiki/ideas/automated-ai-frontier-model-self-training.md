---
title: Automated AI R&D where a frontier model can autonomously train its own successor is likely by end of 2028
slug: automated-ai-frontier-model-self-training
status: proposed
origin: 'Migrated from research claim (original status: proposed, confidence: 0.6); proposed in: ai-systems-about-start-building-themselves'
origin_gaps: []
tags:
- ai-rd-automation
- recursive-self-improvement
- forecasting
- capability-benchmarks
- metr
domain: ML Systems
priority: 3
pilot_result: ''
failure_reason: ''
linked_experiments: []
date_proposed: 2026-05-05
date_resolved: ''
---

> **Migrated from a research claim** (`wiki/claims/automated-ai-frontier-model-self-training.md`) on 2026-06-20. Original claim status `proposed` (confidence 0.6) mapped to idea status `proposed`. The claim's structured `evidence`/`confidence`/`conditions` are preserved verbatim in the body sections and in the provenance block at the end of this file.
## Statement

Based on a synthesis of publicly available benchmark progress (SWE-Bench, METR task horizons, CORE-Bench, MLE-Bench, PostTrainBench, LLM training optimization), there is a ~60% probability that AI systems will achieve end-to-end automated AI R&D — where a frontier model can autonomously train its own successor without human involvement — by the end of 2028. By end of 2027, probability is estimated at ~30%.

## Evidence summary

Single high-credibility source (Jack Clark, co-founder of Anthropic). Mosaic argument from multiple benchmark trajectories:
- SWE-Bench: 2% (2023) → 93.9% (Claude Mythos Preview, 2026) — near saturation
- METR autonomous task horizon: 30 sec (2022) → 12 hours (2026) — projected 100 hours by end of 2026
- CORE-Bench: 21% (2024) → 95.5% (December 2025) — "solved"
- PostTrainBench: AI at ~50% of human fine-tuning quality (April 2026)
- LLM training optimization: 2.9× (2025) → 52× speedup (April 2026)
- Anthropic automated alignment research: proof-of-concept AI agents beating human baseline on scalable oversight

## Conditions and scope

- Conditional on current scaling trends continuing
- Frontier model training is identified as harder than non-frontier (more compute, more human expert input)
- The "creativity" component — generating genuinely novel research directions — is the key remaining uncertainty; engineering automation is nearly complete
- OpenAI (automated AI research intern by September 2026), Anthropic, DeepMind, and multiple startups have explicitly stated this as a goal

## Counter-evidence

- AI has not yet demonstrated transformative creative insight in AI research specifically (math domain results are suggestive but not conclusive)
- PostTrainBench: AI at 25-28% vs. human 51% as of April 2026 — still a meaningful gap for fine-tuning quality
- Frontier model training scale makes proof-of-concept much harder to achieve than non-frontier demonstrations
- METR horizons track median task performance; tail-case failures may be harder to close

## Linked ideas

## Open questions

- What is the minimum creative capability threshold AI needs to automate the research frontier?
- Does the METR task horizon reach 100 hours by end of 2026 as projected?
- What are the compounding alignment risks if recursive self-improvement begins before alignment techniques are proven robust at scale?


<!-- PROVENANCE: original claim frontmatter (preserved for recovery / re-derivation)
title: "Automated AI R&D where a frontier model can autonomously train its own successor is likely by end of 2028"
slug: automated-ai-frontier-model-self-training
status: proposed
confidence: 0.6
tags: [ai-rd-automation, recursive-self-improvement, forecasting, capability-benchmarks, metr]
domain: "ML Systems"
source_papers: [ai-systems-about-start-building-themselves]
evidence:
  - source: ai-systems-about-start-building-themselves
    type: supports
    strength: moderate
    detail: "Jack Clark (Anthropic co-founder) estimates 60%+ probability of no-human-involved AI R&D by end of 2028, based on SWE-Bench saturation (93.9%), METR 12-hour task horizon, CORE-Bench solved (95.5%), PostTrainBench 50% of human quality, and 52× LLM training speedup"
conditions: "Clark's estimate assumes current scaling trends continue; the creative insight component of AI research is identified as the key remaining uncertainty; frontier model training is harder than non-frontier due to cost and complexity"
date_proposed: 2026-05-05
date_updated: 2026-05-05
-->
