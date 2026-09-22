---
name: "Replica Figure-Replication Task Generation Pipeline"
slug: replica-figure-replication-pipeline
type: benchmark
tags: [benchmark-construction, ai-rnd-automation, scientific-replication, evaluation, automated-pipeline]
source_papers: [training-ai-scientists-replicate-research]
parent_methods: []
child_methods: []
realizes_concepts: [research-taste-bottleneck]
code_repo: ""
date_updated: "2026-09-22"
---

## Problem setting

Building a scalable, hard-to-saturate benchmark for evaluating whether AI agents can replicate published research results, without hand-curating each task — which does not scale past a small number of papers and cannot easily be extended as new papers are published. The benchmark also needs a ground truth that cannot simply be looked up: an agent must produce the withheld result through genuine experimentation, not retrieval.

## Mechanism

Fully automated, three-stage pipeline built on an LLM (Gemini-2.5-Pro in the introducing instance) that scans a paper for results figures, locates and redacts one, and packages the redacted paper plus the original (hidden) figure as a task with a gold answer. Because the pipeline is automated end to end, it can be run over an arbitrarily large and continually growing corpus of papers, producing a task space that scales with the literature itself rather than with curator effort.

## Procedure

1. **Scan** the full text of a candidate paper for every main-text results plot and its associated caption.
2. **Localize** each identified figure's bounding box within the paper's PDF, using an LLM-verifier repair loop to correct localization errors before proceeding.
3. **Redact** the located figure irreversibly from the paper PDF, producing a task instance consisting of the redacted paper plus the original figure retained separately as the gold answer.
4. **Filter** every generated task via manual inspection, removing instances with insufficient redaction, non-results plots (e.g., diagrams rather than data), or mis-identified captions.
5. **Package** the surviving tasks with a fixed evaluation protocol: a wall-clock time limit and a fixed compute allocation per task, so that agents are compared under matched resource constraints.

## Assumptions

- A results figure redacted from its source paper, with the surrounding text intact, is not trivially recoverable from other information in the paper (i.e., the redaction actually removes information rather than leaving it implicitly present elsewhere in the text).
- Automated localization plus a verifier repair loop is reliable enough that manual filtering only needs to catch a minority of residual errors, not perform the primary localization work.
- Task difficulty correlating with publication recency (observed in the introducing paper) reflects genuine increasing task difficulty rather than an artifact of the generation pipeline.

## Limitations

- Requires manual, per-task quality filtering even though generation is automated — the pipeline reduces but does not eliminate human review cost.
- Task difficulty is not independently calibrated beyond the observed recency correlation; there is no guarantee the resulting distribution of difficulty is representative of "replication difficulty" in general rather than an artifact of which papers and figures happen to pass the filtering step.
- Contamination risk: papers used to generate tasks may already be in an evaluated model's training data, even though the specific figure is redacted from the task instance itself — the introducing paper defers a full contamination discussion to an appendix.
- Currently validated only on ML and AI-for-science papers; portability to other empirical sciences with different figure/data conventions is untested.

## Tradeoff profile

Trades the higher per-task fidelity of hand-curated replication benchmarks for scale and low marginal cost per additional task, since the pipeline can be re-run over new papers as they are published rather than requiring bespoke task design each time. This makes it well suited to tracking whether replication difficulty rises with the literature over time (as the introducing paper does, finding difficulty increases with publication recency), at the cost of less fine-grained control over exactly what capability each individual task isolates compared to a hand-designed task suite.

## Evaluated by

- [[training-ai-scientists-replicate-research]] — the introducing paper; generated 310 figure-replication tasks (242 train / 68 held-out test) from 100 ML and AI-for-science papers (1990–2026), used to train and evaluate the Faraday agent against Claude Opus 4.8 and GPT-5.5/Codex baselines.
