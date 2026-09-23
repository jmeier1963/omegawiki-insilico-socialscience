---
title: "Pretraining Progress Is Mostly Coming From Data"
slug: pretraining-progress-mostly-coming-data
arxiv: ""
venue: "Substack (Dwarkesh Patel's blog)"
year: 2026
tags: [scaling-laws, pretraining, data-quality, ai-progress, llm-training, empirical-study]
importance: 3
date_added: "2026-09-23"
source_type: pdf
s2_id: ""
tldr: "A small-scale empirical study (2019-2025 model recipes × data corpuses, up to 1e19 FLOPs) finds pretraining compute-efficiency gains have come roughly 3.24x more from data improvements than from model/architecture improvements, and that the two sources of gain are largely additive and independent."
contribution_type: [analysis]
datasets: [OpenWebText, The Pile, FineWeb-Edu, UltraFineWeb, OLMES]
code_url: ""
cited_by: []
---

## Problem & Context

How much of the rapid AI progress of the last several years has come from better data versus better models (architecture, optimizers, initialization, learning-rate schedules)? The question matters for the economics of frontier labs (where should compute/researcher effort go?) and for forecasting the pace of future progress (is pretraining progress running out of runway as internet data is exhausted, or is there still headroom on the model side?). Prior discussion of this question has been almost entirely qualitative — practitioners have priors about "data vs. architecture" but no controlled decomposition existed before this piece.

## Key idea

Hold data and model recipe as two independently-variable factors, reconstruct one representative "recipe" and one representative "data corpus" per year from 2019 to 2025, then train the full cross-product of recipes × corpuses across a range of compute budgets. This isolates each factor's independent contribution to compute efficiency (capability achieved per FLOP) and tests whether the two factors interact.

## Method

Six year-representative model recipes (GPT-2 → OLMo-2, encoding each year's publicly known architecture/optimizer/hyperparameter tweaks) are crossed with six year-representative public data corpuses (OpenWebText 2019, ..., UltraFineWeb 2025), trained from scratch at five compute budgets (1e17 to 1e19 FLOPs) with a shared tokenizer (GPT-2 BPE, 50,257 vocab), fixed context length (T=2048) and batch size (262,144 tokens), and multiple random seeds. At each compute budget the compute-optimal parameter/token split is found via held-out loss, then models are evaluated on end capability (OLMES: an aggregate of 10 mostly-multiple-choice QA benchmarks) rather than pretraining loss, since loss isn't comparable across different training data. Peak learning rate is treated as the main hyperparameter to control, fit via a parametric form swept at anchor points (except OLMo-2, which uses Ai2's published small-model-ladder learning rates).

## Experiment & Results

At the 1e19 FLOPs budget, data improvements from 2019 to 2025 contributed a 12.0x compute-efficiency multiplier versus a 3.7x multiplier from model improvements — data improvements outweighed model improvements by 3.24x. An additive linear model (data effect + model effect, no interaction term) explains 88% of the variance in OLMES score across the full recipe × corpus grid, indicating the two sources of gain are largely independent: realizing a model improvement's gains does not require a specific data corpus, or vice versa. Notable anomalies: NeoX underperforms GPT-2 at the largest budget despite being ahead at smaller budgets (attributed to OLMES evaluation noise, since NeoX beats GPT-2 on held-out pretraining loss); and The Pile underperforms OpenWebText despite being larger and more diverse, attributed to The Pile's cross-domain mixture (PubMed, arXiv, legal text, code) transferring poorly to OLMES's English web-prose multiple-choice format at small scale.

## Limitations

- Small scale throughout (up to 1e19 FLOPs — orders of magnitude below frontier training runs); the authors explicitly flag that data-vs-model contributions could shift at larger scale.
- End-capability evaluation (OLMES) rather than pretraining loss adds evaluation noise, visible in the NeoX anomaly.
- Model improvements are argued to matter most for making larger compute budgets usable at all (numerical stability, MoE, sparse attention, FlashAttention-style systems work) rather than for raw compute efficiency — a contribution the compute-efficiency-multiplier framing structurally cannot capture, since it only rewards efficiency gains within budgets the recipe can already train stably at.
- Small models plausibly overstate the value of data-quality curation relative to large models, which have enough excess capacity that aggressive filtering (which forces more epochs, which underperforms lower-average-quality but larger, less-filtered data) becomes actively counterproductive — the paper's own "sailboat vs. container ship" analogy.
- Does not investigate synthetic data's ability to substitute for exhaustible internet data, despite flagging this as the key question for whether pretraining progress can continue.

## Open questions

- Does the data-vs-model balance shift with scale (i.e., is data quality more or less important at the frontier than at the 1e19 FLOPs scale tested here)?
- What is the marginal value of novel high-quality data for pre- and post-training, measured by end capability?
- How effectively can synthetic data substitute for or amplify a fixed high-quality corpus, relative to just training more epochs on it?
- Could lab spending on data brokers, environment producers, and human data-labeling (relative to compute and researcher spend) reveal data's implied economic value?
- Would automating AI R&D itself accelerate the historical pace of data-engineering progress, since (per Ryan Greenblatt, credited in the piece) much of that progress looks like the kind of ablation an automated researcher could run directly?

## My take

The paper's real contribution is methodological rigor applied to a question usually settled by anecdote: an additive, largely-independent decomposition is a stronger and more falsifiable claim than "data seems to matter a lot," and the 88%-variance-explained figure gives it teeth. The interpretive framing — that model-side work mostly buys usable scale rather than efficiency per se — is the more durable insight, since it resolves the apparent tension between "data dominates the efficiency multiplier" and "obviously architecture innovations like the Transformer and MoE mattered enormously." The open question the authors flag as most consequential (data exhaustion / synthetic data's effectiveness) is left almost entirely untouched, which is reasonable given scope but means the piece's implications for "is pretraining running out of runway" remain speculative pending that follow-up work. This connects directly to [[data-bottlenecks-won-prevent-intelligence-explosion]]'s taxonomy of data-quantity/quality/coverage bottlenecks — Davidson's essay is in effect the theoretical companion piece asking what happens once the empirical trend this paper documents (data improvements compounding cheaply) runs into the human-derived-data ceiling.

## Related

- [[pretraining-data-vs-model-compute-efficiency]]
- [[data-bottlenecks-won-prevent-intelligence-explosion]] — same_problem_as: both address how much further pretraining-era compute-efficiency gains have left to run, from complementary empirical and theoretical angles.
- [[scaling-law-data-compensation]] — this paper's empirical estimate of data's contribution to compute efficiency bears on how much of a trained model's value should be attributed to its data sources.
- [[software-intelligence-explosion]] — the paper's discussion of automated-AI-R&D accelerating data-engineering progress bears directly on SIE feasibility.
