---
title: "Evaluating AI Agents Live at the Grounded Reasoning Cup"
slug: evaluating-ai-agents-live-grounded-reasoning
arxiv: ""
venue: "Databricks Blog"
year: 2026
tags: [agent-evaluation, benchmark, enterprise-ai, grounded-reasoning, llm-agents, retrieval-augmented-generation, generalization]
importance: 2
date_added: "2026-09-22"
source_type: pdf
s2_id: ""
tldr: "Databricks recaps its inaugural Grounded Reasoning Cup, in which 11 academic teams applied agents tuned on the OfficeQA benchmark to a freshly released, unseen 120,000-page corpus (OfficeQA Pro V2) under live competition conditions, finding that out-of-the-box frontier agents average under 30% accuracy, the winning team (Stanford) reached 63.3%, and agent performance depends far more on the surrounding system (parsing, retrieval, verification) than on the underlying model."
contribution_type: [benchmark, analysis]
datasets: [OfficeQA, OfficeQA Pro V2]
code_url: ""
cited_by: []
---

## Problem & Context

Benchmark scores are routinely gamed or overfit by methods tuned against a fixed, familiar test set, so "how well do performance improvements on a benchmark generalize to similar, real-world tasks" is, in the authors' framing, one of the hardest open questions in AI evaluation, and one enterprise deployments depend on directly: agents that look strong on a vendor's public benchmark may not hold up on a customer's actual, previously-unseen document collection.

## Key idea

Test generalization empirically rather than assume it, by running a live competition in which teams cannot iterate against the evaluation set: teams spent two months optimizing agents against Databricks's public OfficeQA benchmark, then had that frozen system applied in real time, under a round-based clock, to a corpus released only 36 hours beforehand (OfficeQA Pro V2, built from ~120,000 pages of U.S. Treasury Accounts of Receipts and Expenditures documents supplied via a USAFacts/U.S. Treasury partnership). The live, clocked, resubmission-limited format is itself part of the method: it is meant to approximate how an enterprise agent actually gets thrown at a new corpus, rather than the frozen-run offline evaluation Databricks normally uses for its own baselines.

## Method

Competition design: 11 academic teams (US and Canada, 2–4 people each) were each paired with one industry partner lab (OpenAI, Anthropic, or Google DeepMind) and required to use only that lab's model family. Two-month development phase on the public OfficeQA benchmark; competition day consisted of six 15-minute rounds of 15 questions each, progressively harder, with 1 point per correct answer, a 0.25-point speed bonus for first correct answer, 2x scoring in the final round, and 3 allowed resubmissions per team across the whole event. Databricks separately ran "offline" baseline evaluations of frontier agents (frozen configuration, no round structure, single pass) on the same corpus for comparison, explicitly flagged as not directly comparable to the live competition setting.

The write-up profiles the three winning architectures in detail: Stanford (1st, 63.3%) built ~100+ reusable "skills" (table localization, answer formatting, financial-wording clarifications) derived from tracing their own agent's failure modes during development, ran an LLM-based verifier pass in early rounds, dropped it for speed in the middle rounds, then re-enabled it decisively in the final round. UMass Amherst (2nd) optimized for speed with a faster model variant, a preprocessed metadata catalog, and three parallel agents per question followed by a single verification call, achieving the fastest average correct-answer time (4 min vs. an 8.5 min team average) and the most speed bonuses (36, more than double Stanford's 16). Yale (3rd, 49/90 correct) built a four-arm parallel harness spanning two agent architectures (ReAct agents and a structured planner-verifier pipeline) reconciled by a meta-verifier restricted to selecting among the arms' own proposed answers, falling back to majority vote otherwise.

## Experiment & Results

- Out-of-the-box frontier agents (offline baseline) averaged **under 30% accuracy** on OfficeQA Pro V2.
- Average competing team score was **~41%**; the **top three teams exceeded 50%**; Stanford won at **63.3%**, about **+22 points** over the average team and **+35 points** over the offline frontier-agent baseline.
- **18.8% of questions went unsolved by every team.**
- The average gap between the top- and lowest-scoring teams **using the same underlying model** was **30.4 points** — the paper's central empirical claim that system engineering (parsing, retrieval, tool use, verification, parallelism, infrastructure), not model choice, is the dominant driver of end-to-end agent performance on this task.
- Databricks's own agent (Genie), using pre-parsing via a tool called `ai_parse`, is reported to outperform baseline frontier agents by **24.0 points** on OfficeQA Pro V2 from parsing alone.
- Design levers common to the top teams: pre-parsed document representations augmented with metadata (chart descriptions, page-level metadata) with fallback paths to source PDFs; hybrid lexical (e.g., grep) plus dense retrieval rather than generic top-k chunk search; delegating calculation/comparison/submission to specialized tools; explicit verification passes; and operationally robust harnesses (retry logic, parallelism, submission scaffolding) to survive live deadline pressure.

## Limitations

- **Corporate blog post, not peer-reviewed research.** No methodology section beyond what is summarized here, no released raw per-question data in this document, and the sponsor (Databricks) markets a commercial product (Genie, `ai_parse`) that is reported to benefit from the same design levers the post recommends — a direct commercial interest in the conclusions.
- **N=11 teams, single competition, single corpus domain** (U.S. Treasury financial/accounting documents). Generalization of the "system matters more than model" finding to other document domains is asserted, not tested here.
- The offline-vs-live baseline comparison is explicitly flagged by the authors themselves as not apples-to-apples (different pacing, no round structure, no chance to react to intermediate failures for the offline baseline), which somewhat undercuts the size of the reported "offline baseline" gap.
- Teams were constrained to a single lab's model family, which is a competition design choice for sponsorship/fairness reasons, not a realistic enterprise deployment constraint (real deployments can mix models).
- Full author list is truncated in the extracted PDF text; attribution here should be treated as incomplete.

## Open questions

- Does the "system, not model" finding replicate on non-financial, non-English, or lower-resource-language enterprise corpora?
- What is the actual cost (compute, latency, engineering effort) of the winning architectures relative to their accuracy gains — the write-up reports accuracy and speed bonuses but not $/query or engineering-hours invested?
- Would the ranking of teams have changed with a longer live window (the round format rewards latency-optimized systems like UMass's parallel-verification approach; a non-timed evaluation might favor Stanford's heavier-verification approach even more, or Yale's four-arm redundancy)?
- The 18.8%-unsolved-by-everyone questions are not characterized here — are they a specific failure category (numeric precision, cross-document reasoning, ambiguous phrasing) that would point to the actual current ceiling of grounded reasoning?

## My take

This is a solid, honest vendor blog post about a real methodological problem (benchmark overfitting / generalization gap) rather than an attempt to dress up a product announcement as research — it reports an inconvenient result for AI vendors generally (frontier agents under 30% out of the box on a new but structurally similar corpus) and does not hide the corporate stake in the conclusion (Genie is mentioned, but the reported 24-point `ai_parse` gain is one data point among several, not the centerpiece). The most durable claim — a 30-point spread between best and worst team on the *same underlying model* — is a genuinely useful, concrete number for anyone arguing that "just use a better frontier model" is not sufficient in enterprise agent deployment; it belongs alongside [[act-real-researcher-benchmark-llm-research]]'s "scaffolding sophistication alone does not close the gap" finding as convergent evidence for the same underlying claim from a different domain (research-agent tasks vs. enterprise document QA).

Treat the specific percentages as a snapshot of a single competition at a single point in the capability curve, not a durable benchmark number — exactly the kind of number the AARR-bench page in this wiki already flags as "ephemeral" for the same reason.

## Related

- [[act-real-researcher-benchmark-llm-research]] — same underlying thesis (agentic execution is bottlenecked on system/behavior quality, not raw model capability) applied in a different domain (research-agent tasks vs. enterprise grounded document reasoning); both converge on "scaffolding/system engineering dominates."
- [[open-world-evaluations]] — this competition is an instance of held-out, live, non-overfittable evaluation design, which is exactly what that method concerns.
