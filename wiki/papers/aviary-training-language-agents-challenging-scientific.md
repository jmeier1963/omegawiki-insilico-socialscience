---
title: "Aviary: training language agents on challenging scientific tasks"
slug: aviary-training-language-agents-challenging-scientific
arxiv: "2412.21154"
venue: "arXiv preprint"
year: 2024
tags: [language-agents, scientific-tasks, expert-iteration, llm-training, gymnasium, pomdp, dna-cloning, protein-design, literature-qa, inference-time-scaling]
importance: 3
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [language decision process, stochastic computation graphs, multi-step scientific reasoning, agent training, expert iteration, PaperQA2, DNA cloning, protein stability]
domain: "NLP"
code_url: "https://github.com/Future-House/aviary"
cited_by: []
---

## Problem

Language agents are promising for automating multi-step intellectual tasks in science, but lack a formal theoretical foundation and systematic training methodology. Without a principled framework, agent implementations are ad-hoc (non-standard memory, planning, tool use), making training and evaluation difficult and fragmented across implementations.

## Key idea

Aviary formalizes language agents as policies solving **Language Decision Processes (LDPs)** — language-grounded partially observable Markov decision processes represented as stochastic computation graphs. This formalism enables modular, gradient-free training of agents with components like memory, planning, and tool use. Open-source agents (Llama-3.1-8B) trained with expert iteration match or exceed frontier LLMs (Claude 3.5 Sonnet) and human experts on three scientific tasks at 100× lower inference cost.

## Method

- Formalizes LDP as a POMDP with natural language actions/observations; agents represented as stochastic computation graphs
- Implements five environments (two benchmark + three scientific): GSM8K (math), HotpotQA (open QA), PaperQA2 Local (literature research), molecular cloning (DNA manipulation), protein stability engineering
- Training: behavior cloning (BC) and expert iteration (EI = BC + online exploration)
- Inference-time scaling: majority vote sampling (pass@16)
- Backbone: Llama-3.1-8B-Instruct fine-tuned via LoRA

## Results

- Expert iteration + majority voting: Llama-3.1-8B agents match/exceed Claude 3.5 Sonnet on PaperQA2 Local (literature QA) and protein stability tasks
- Performance on DNA cloning and math tasks also improves substantially over zero-shot baselines
- 100× lower inference cost than frontier LLM APIs
- Modular architecture enables component-level ablation (removing memory or planning modules)

## Limitations

- Evaluated on environments constructed by the authors; generalization to unseen scientific domains untested
- Expert iteration requires an initial oracle or rollout policy; cold-start is non-trivial
- Scientific environments are simulated (not wet-lab validated); protein stability predictions are computational
- Code/training evaluation may reflect task-specific brittleness rather than genuine scientific reasoning

## Open questions

- Can Aviary-trained agents generalize across scientific domains (biology → chemistry → physics)?
- Does the LDP formalism capture all relevant language agent behaviors, or are there important exceptions?
- How sensitive is expert iteration to the quality of the initial demonstration data?
- Can online training with PaperQA2 improve retrieval-augmented scientific literature QA at scale?

## My take

The LDP formalism is the key contribution: it provides a theoretically grounded language for describing and training language agents that was previously missing. The empirical results (small open-source model beating frontier LLMs on scientific tasks at 100x cost) are striking and will be cited broadly. The FutureHouse connection positions this as infrastructure for AI-driven biology specifically. The three scientific environments (cloning, literature QA, protein stability) are well-chosen for biological research relevance.

## Related

- [[language-decision-process]]
- [[llm-powered-agent-architecture]]
- [[automated-research-pipeline]]
- supports: [[language-agents-online-training-match-frontier]]
