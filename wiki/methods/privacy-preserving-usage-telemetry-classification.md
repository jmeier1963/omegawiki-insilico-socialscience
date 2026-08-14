---
name: "Privacy-Preserving Usage Telemetry Classification"
slug: privacy-preserving-usage-telemetry-classification
type: data
tags: [ai-economics, ai-adoption, telemetry, classification, privacy, agentic-ai, measurement]
source_papers: [shift-agentic-ai-evidence-codex, google-ai-economy-atlas-v1-mapping, work-frontier-how-ai-expanding-what]
parent_methods: []
child_methods: []
realizes_concepts: [agentic-ai-delegated-production, ai-adoption-depth-breadth-gap, task-crossover]
code_repo: ""
date_updated: 2026-06-26
---

## Problem setting

Studying how people use an AI product at population scale, without researchers reading private user messages. The goal is aggregated, anonymized measures of *who* adopts agentic tooling, *what* they delegate, *how complex* those tasks are, and *how* work is organized (concurrency, runtime, skill use) — across heterogeneous account types (individual, organizational, internal).

## Mechanism

Automated LLM/classifier passes run over raw interaction logs and emit only aggregated, anonymized statistics. No human inspects underlying messages. Several stacked classifiers each label a request along one axis, and user-level labels are formed by aggregating a user's requests (e.g. modal persona over 30 days, ties broken by most recent request).

## Procedure

1. **Persona classifier** — label each request Developer / General Knowledge Worker / Personal; assign each user their modal persona over a trailing window.
2. **Task taxonomy classifier** — assign each request a primary task category in a fixed two-level taxonomy (software: code implementation, understanding, validation, engineering operations, application management; knowledge work: data analysis, research, knowledge artifacts, collaboration, business-function workflows).
3. **Complexity classifier** — estimate the time an experienced human would need to complete the task without AI; run on a 0.1% opted-in (training-permitted) sample.
4. **Role/seniority measures** — cleaned job-title groups, seniority, and manager status for firms with high-quality title coverage; direct internal job-function metadata for OpenAI workers.
5. **Behavioral margins** — compute output-token share (Codex vs ChatGPT), turn concurrency (overlapping cross-thread turns >30s), cumulative daily active runtime, and skill/plugin invocation by source.
6. **Validation** — sanity-check persona labels against HR titles (>90% engineers→Developer; >90% sales→General Knowledge Worker); validate the complexity classifier against held-out metrics.

## Assumptions

- Output tokens are a meaningful proxy for the amount of AI-mediated work; tool use is a proxy for agency.
- Classifier labels are accurate enough in aggregate for population-level inference.
- Opted-in samples (for complexity) are representative of the relevant population.

## Limitations

- Classification error propagates into every downstream estimate; estimated human-time is not measured outcome quality.
- Privacy constraints preclude message-level audit by researchers, so error characterization relies on indirect validation.
- Single-vendor telemetry; non-random selection into adoption and into job-title coverage.

## Tradeoff profile

Trades message-level resolution and causal identification for population-scale coverage and strong privacy guarantees. Well-suited to descriptive diffusion/adoption studies in the "economic index" lineage (cf. Chatterji et al. 2025; Handa et al. 2025; Hitzig et al. 2026); poorly suited to causal or fine-grained qualitative claims.

## Evaluated by

- [[shift-agentic-ai-evidence-codex]]
