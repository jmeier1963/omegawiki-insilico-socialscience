---
title: "Mixture-of-Agents Enhances Large Language Model Capabilities"
slug: mixture-agents-enhances-large-language-model
arxiv: "2406.04692"
venue: "ICLR 2025"
year: 2025
tags: [multi-agent, llm-ensembles, model-collaboration, agent-architecture, benchmark-sota]
importance: 4
date_added: "2026-11-11"
source_type: pdf
s2_id: ""
tldr: "A layered architecture in which each layer of LLM agents conditions on all outputs of the previous layer lets an ensemble of open-source models beat GPT-4 Omni on AlpacaEval 2.0 (65.1% vs 57.5%)."
contribution_type: [method]
datasets: [AlpacaEval 2.0, Arena-Hard, MT-Bench, FLASK]
code_url: ""
cited_by: []
---

## Problem & Context

Individual LLMs are bounded by model size and training data, and further scaling needs costly retraining. Different models have different strengths, but there was no systematic way to combine them: prior ensembling work mostly ranked or fused outputs without letting models read each other's answers.

## Key idea

LLMs show a *collaborativeness* property: a model produces a better answer when shown other models' answers, even weaker ones. Mixture-of-Agents (MoA) exploits this by stacking layers of agents, where each agent in layer *i* receives all outputs of layer *i-1* as auxiliary context and the last layer's aggregator emits the final answer.

## Method

Two roles: **proposers** generate diverse reference answers; **aggregators** synthesize them into one output. A layer holds several LLMs (or one LLM sampled repeatedly, the single-proposer variant), and aggregation uses a fixed prompt template asking the model to critically synthesize the references. Depth and width are hyperparameters. The authors contrast it with sparse Mixture-of-Experts, which routes inside one network, whereas MoA composes full, independently trained LLMs at the prompt level, so no fine-tuning is needed.

## Experiment & Results

Evaluated on AlpacaEval 2.0 (length-controlled win rate), Arena-Hard, MT-Bench and FLASK. An MoA built only from open-source models reaches **65.1%** on AlpacaEval 2.0 versus **57.5%** for GPT-4 Omni, and also leads on Arena-Hard, MT-Bench and FLASK. Ablations show quality improves with more layers and more proposers, that proposer diversity matters (multi-model beats single-proposer), and that some models are strong proposers but poor aggregators and vice versa.

## Limitations

Latency and cost grow with layers because layers run sequentially and every aggregator reads all prior outputs. Gains are measured with LLM-judge benchmarks (AlpacaEval, Arena-Hard) that carry judge bias, not with ground-truth tasks. The paper does not analyze when aggregation can propagate shared errors.

## Open questions

How far does the gain persist for tasks with verifiable answers (math, code)? Does heterogeneity of proposers or sheer count drive the effect? How should aggregators be trained rather than prompted?

## My take

MoA is the cleanest early evidence that *orchestrated multiplicity* beats a single frontier model, which is the empirical backbone for architectures that delegate to many specialised agents. It is a prompt-level architecture, so it is cheap to adopt but inherits the cost-latency penalty that later multi-agent systems also face (compare [[how-built-multi-agent-research-system]]).

## Related

- [[multi-agent-scaling-laws]]
- [[llm-powered-agent-architecture]]
- [[how-built-multi-agent-research-system]] — production multi-agent system with orchestrator and workers
