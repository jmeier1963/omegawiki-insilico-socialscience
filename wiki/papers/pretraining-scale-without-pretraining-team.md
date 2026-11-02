---
title: "Pretraining at Scale Without a Pretraining Team"
slug: pretraining-scale-without-pretraining-team
arxiv: ""
venue: "Mirendil (company blog post)"
year: 2026
tags: [ai-rnd-automation, pretraining, automated-research-pipeline, scaling-laws, llm-training]
importance: 3
date_added: "2026-11-02"
source_type: pdf
s2_id: ""
tldr: "Mirendil reports pretraining a competitive 100B-500B parameter coding-specialized base model (Mirendil-Base) using a single researcher directing AI agents — which wrote over 99% of the code, ran experiments, and diagnosed failures — in 3.5 months for under $10M in all-in compute, built entirely from scratch on public data with no distillation, arguing the historical headcount bottleneck for competitive pretraining is dissolving and compute is becoming a new axis for scaling organizational output alongside hiring."
contribution_type: [system, analysis]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

Competitive foundation-model pretraining has historically required a dedicated team of specialists — architecture/scaling researchers, data engineers curating trillions of tokens, and infrastructure engineers managing thousands to hundreds of thousands of chips. Mirendil, a company built around AI tooling for scientists and small teams tackling ambitious problems, set out to test an extreme version of a trend both Anthropic and OpenAI have reportedly measured internally (agents taking on a growing share of frontier-lab AI-development work): could a single researcher, working with agents, pretrain a model competitive with frontier coding models?

## Key idea

As agentic AI capability improves, the traditional headcount bottleneck for competitive pretraining — needing a multi-specialist team — dissolves, and the bottleneck shifts instead to compute, data, and the judgment of whoever directs the agents. Mirendil-Base is offered as evidence this shift has already happened: built by one researcher with AI agents performing over 99% of the code-writing, experiment-running, and failure-diagnosis, while the human decided what to try and what to trust and intervened as needed.

## Method

A single-researcher-plus-agents team built training infrastructure, model architecture, training algorithm, and data pipelines entirely from an empty repository, using only generic libraries (PyTorch, JAX) and public open-source projects as references — no proprietary frameworks, no purchased or licensed data, no distillation or synthetic data, and no reuse of an existing base model. Training data came exclusively from GitHub and other publicly available code, web pages, and public datasets. Efficiency gains are attributed to an improved architecture, data-mixture tuning plus other data improvements, and kernel optimization — three workstreams a conventional pretraining team would split across specialists, here handled by the single researcher-agent unit. The resulting model family spans three scales: Mirendil-Base (100B-500B parameters), Mirendil-Base-Large (500B-2T, ~80% through training at time of writing), and Mirendil-Base-XL (2T-10T, ~19% through training) — all reported as mixture-of-experts models, with the larger models' partial-training trajectories said to be tracking the same scaling trend as the base model.

## Experiment & Results

Evaluated via cross-entropy (bits per byte) on held-out code, a tokenizer-agnostic comparison metric, against five strong external coding base/post-trained models (Kimi-K3, GLM-5.3, Nemotron-550B-Base, DeepSeek-V4-Pro-Base, Inkling). On held-out code from Mirendil's own repositories, Mirendil-Base scores 0.2803 bits/byte — worse than Kimi-K3 (0.2387) but better than Nemotron-550B-Base (0.2918), GLM-5.3 (0.2926), DeepSeek-V4-Pro-Base (0.3013), and Inkling (0.3467); the partially-trained Mirendil-Base-Large (80% done) already surpasses all five comparison models at 0.2177, as does the 19%-trained Mirendil-Base-XL at 0.2181. On seven external repositories published after all models were trained (avoiding any training-data leakage concern for the comparison set), Mirendil-Base averages 0.222 bits/byte across repositories, second only to Kimi-K3's 0.193, and ahead of Nemotron (0.247), GLM-5.3 (0.242), and DeepSeek-V4-Pro-Base (0.243) — with Mirendil-Base actually tying or beating Kimi-K3 on two of the seven individual repositories (json-render: tied at 0.127; and narrowly on others).

## Limitations

- Entirely self-reported by the company whose commercial interest is directly served by this claim (Mirendil sells AI tooling for ambitious small-team research); no independent replication, third-party audit, or peer review is available.
- Comparison models (Kimi-K3, GLM-5.3, Nemotron-550B-Base, DeepSeek-V4-Pro-Base, Inkling) are evaluated only on held-out-code and bits-per-byte metrics specific to coding-domain language modeling; no broader capability evaluation (reasoning, instruction-following, safety) is reported for Mirendil-Base, so "competitive" is established only on this narrow axis.
- "One researcher" and "<$10M" are presented without a detailed cost or labor breakdown (e.g., exact agent token spend, how much of the $10M figure reflects compute that would otherwise be idle company infrastructure versus marginal cost) that would let an outside reader audit the headline claim.
- The claim that the larger in-progress models (Large, XL) are "tracking" the same scaling trend is based on partial training runs (80% and 19% complete respectively) rather than completed, independently verifiable final results.
- As with any single data point, it is unclear how much of the result depends on this particular researcher's unusually strong pretraining expertise (described as "experienced") versus being broadly reproducible by a typical researcher with comparable agentic tooling.

## Open questions

- Would this result replicate with a less experienced researcher, or does it depend heavily on deep pretraining expertise that most "small teams" in other fields (the blog's own stated target audience — chip design, robotics, hospitals) would not have?
- How does the true all-in cost compare once agent inference costs are priced at market rates rather than any internal/discounted compute Mirendil may have used?
- Does the "ambition per person" scaling claim (compute substituting for headcount) hold as model scale increases toward frontier-class XL models, or does some other bottleneck (e.g., data availability, verification/judgment throughput) reassert itself at larger scale?
- What specific agent capabilities (tool use, long-horizon planning, autonomous debugging) were load-bearing for this result, and how much of the claimed shift reflects genuine new agentic capability versus simply applying existing coding-agent tools more aggressively to a familiar pretraining recipe?

## My take

As a single vendor-reported case study without independent verification, this is best read as a directional data point rather than established fact — but it is a directly relevant one to this wiki's existing software-intelligence-explosion and automated-research-pipeline literature (cf. [[when-ai-builds-itself]], [[research-acceleration-view-inside-openai]]), adding a specific, quantified claim (one researcher, 3.5 months, <$10M, competitive coding-model bits-per-byte) to a genre of self-reported RSI-adjacent progress telemetry this wiki has tracked from larger labs. The externally-published-repository evaluation (Figure 2) is methodologically the more credible half of the result, since it at least avoids the most obvious form of training-data leakage; the claim that Mirendil-Base-Large and -XL are already beating all five comparison baselines mid-training is the more speculative half, resting on partial, non-final runs. The piece's most consequential framing, independent of whether Mirendil-Base specifically holds up, is the claim that compute is becoming a genuine alternative axis to headcount for organizational scaling — directly bearing on how concentrated or distributed future frontier-model-adjacent capability becomes.

## Related

- [[compute-scaling-axis-organizations]]
- [[software-intelligence-explosion]] — same_problem_as: reports a concrete, self-measured instance of the AI-R&D-acceleration dynamics this concept models, specifically collapsing the headcount required for competitive pretraining.
- [[when-ai-builds-itself]] — compares: both are self-reported lab/company telemetry on agentic AI accelerating AI development itself, from a frontier lab (Anthropic) and a smaller company (Mirendil) respectively, at very different organizational scales.
- [[research-acceleration-view-inside-openai]] — same_problem_as: closely analogous genre of first-party, self-reported internal RSI-adjacent progress telemetry, here specifically for the pretraining stage rather than general AI R&D.
- [[automated-research-pipeline]] — uses: the single-researcher-plus-agents workflow (agents handling code/experiments/diagnosis, human directing and judging) is a concrete instance of this concept's automated research pipeline pattern, applied specifically to pretraining rather than end-to-end scientific research.
- [[mirendil]]
