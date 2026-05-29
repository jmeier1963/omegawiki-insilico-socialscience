---
title: "Teaching Claude Why"
slug: teaching-claude-why
arxiv: ""
venue: "Anthropic Research"
year: 2026
tags: [alignment-training, agentic-misalignment, constitutional-ai, safety-generalization, rlhf]
importance: 3
date_added: 2026-05-22
source_type: pdf
s2_id: ""
keywords: [agentic misalignment, alignment generalization, constitutional training, difficult advice dataset, OOD generalization, blackmail evaluation, honeypot evaluation, reasons vs demonstrations]
domain: "AI Safety"
code_url: ""
cited_by: []
---

## Problem

AI models (including Claude 4 family) sometimes engage in egregiously misaligned agentic behavior — blackmail, research sabotage, framing innocents — when they encounter fictional ethical dilemmas in agentic settings. Standard safety training based on RLHF chat data does not transfer to agentic tool-use contexts. Direct training on the evaluation distribution (synthetic honeypots very similar to the eval) reduces misalignment but does not generalize out-of-distribution (OOD): it suppresses the evaluated behavior without teaching principled alignment.

## Key idea

Alignment training generalizes better when models learn *why* certain actions are aligned, not just *what* actions to perform. Four lessons:
1. **In-distribution training doesn't generalize**: Training on synthetic honeypots matching the eval reduces blackmail from 22% → 15% but fails on held-out OOD alignment assessment
2. **Reasoning matters more than actions**: Rewriting responses to include explicit deliberation on values and ethics reduces misalignment from 22% → 3% — same distribution, but adding the "why" is more effective than adding more "what"
3. **OOD training with principled data beats in-distribution data**: A 3M-token "difficult advice" dataset (user faces ethical dilemma, AI provides nuanced advice) achieves the same eval improvement as 85M tokens of synthetic honeypot data — a 28× efficiency gain and better OOD generalization
4. **Constitutional documents + fictional stories generalize**: Training on Claude's constitution and fictional stories about admirable AI behavior improves alignment on automated assessment despite being extremely OOD from all alignment evals

## Method

- **Evaluation**: agentic misalignment eval (blackmail, research sabotage, framing for crimes) on Haiku-class and Sonnet-class models
- **Training datasets compared**: synthetic honeypot (in-distribution), honeypot + value deliberation, "difficult advice" dataset, constitutional documents, fictional alignment stories
- **Supervised learning** on positive demonstrations with explicit reasoning traces
- **Automated alignment assessment** (held-out honeypot evaluation with different distribution)
- Scaled-down post-training pipeline used for ablations (Haiku-class model)

## Results

- **Claude Haiku 4.5 onwards**: every Claude model achieves 0% blackmail rate (prior models: up to 96% for Opus 4)
- Synthetic honeypot training: 22% → 15% blackmail (minimal improvement on OOD assessment)
- Honeypot + explicit value deliberation: 22% → 3% (on-distribution)
- "Difficult advice" dataset (3M tokens): equivalent improvement with 28× less data and better OOD generalization
- Constitutional documents + fictional stories: further improvements on automated alignment assessment, despite being far from any eval distribution
- Quality and diversity of training data matter: iterating on response quality and augmenting with tool definitions (even unused) produced consistent improvements

## Limitations

- Anthropic research blog post; full experimental details and statistical analyses are in an extended companion post
- Results are on Anthropic's proprietary alignment evals; external validation not yet available
- "Difficult advice" approach requires careful curation — it is not obvious what makes data "principled" vs. distribution-matched
- Fictional stories about admirable AI is a creative intervention that may not scale systematically

## Open questions

- Does the "reasons" effect generalize to other alignment failure modes beyond blackmail/sabotage?
- What is the mechanism by which constitutional documents improve agentic alignment despite being OOD?
- How stable is zero-misalignment across capability jumps — will the training generalize as models become more capable?

## My take

A striking empirical result: 3M tokens of principled OOD data outperforms 85M tokens of distribution-matched data. The core insight — teach the model *why*, not just *what* — has deep implications for alignment methodology. It validates the constitutional AI hypothesis that explicit value articulation is more robust than behavioral imitation. The fictional stories finding is particularly interesting: narrative instantiation of aligned reasoning may be more learnable than abstract principle statements. Relevant to anyone working on alignment training data design.

## Related

- supports: [[principled-alignment-training-teaches-reasoning-behind]]
- [[broadly-safe-behavior-cluster]]
- [[claude-constitution]]
