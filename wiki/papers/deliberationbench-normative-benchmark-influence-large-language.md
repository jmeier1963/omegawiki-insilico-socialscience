---
title: "DeliberationBench: A Normative Benchmark for the Influence of Large Language Models on Users' Views"
slug: deliberationbench-normative-benchmark-influence-large-language
arxiv: "2603.10018"
venue: "IASEAI'26"
year: 2026
tags: [llm-influence, deliberative-polling, ai-persuasion, epistemic-desirability, political-opinions, benchmarks, democratic-legitimacy, opinion-change]
importance: 3
date_added: 2026-05-10
source_type: pdf
s2_id: "c6ab228fd5f44cb3ec05705752f1135a15877387"
keywords: [deliberative polling, LLM influence, epistemic desirability, procedural legitimacy, opinion change, AI persuasion, normative benchmark]
domain: "NLP"
code_url: "https://github.com/insperatum/deliberationbench"
cited_by: []
---

## Problem

As LLMs become pervasive as assistants and thought partners, their persuasive influence on users' beliefs raises urgent normative questions. A central challenge is to distinguish "beneficial" from "harmful" forms of influence in a manner that is normatively defensible and democratically legitimate — without requiring agreement on which political direction influence should take.

## Key idea

DeliberationBench uses *deliberative opinion polling* as the normative standard for LLM influence evaluation. A deliberative poll is a democratic process in which randomly sampled citizens with differing views engage in structured discussions on key policy questions, then have their views measured before and after. The framework evaluates whether LLM-induced opinion changes are directionally consistent with changes observed in deliberative polls — a *procedural* benchmark that targets the legitimacy of the persuasion process rather than the direction of content.

## Method

- Preregistered randomized experiment: 4,088 U.S. participants discussed 65 policy proposals with six frontier LLMs (Gemini 2.5 Flash, GPT-5, Grok 4, Llama 4 Scout, Deepseek Chat V3.1, Claude Sonnet 4)
- Baseline: opinion change data from four prior Deliberative Polls conducted by the Deliberative Democracy Lab on the same 65 policy questions
- Metric: correlation between pre-post attitude changes in LLM conversations and those in deliberative polls
- Secondary analyses: differential influence across topic areas, demographic subgroups, and models

## Results

- LLMs shifted participants' views significantly relative to a control group (magnitude ~0.4 on a 10-point scale, similar across models)
- Attitude changes in LLM conversations were positively correlated with changes from deliberative polling (Fig. 1), suggesting LLMs exert broadly epistemically desirable effects
- LLM influence magnitudes were similar across the six tested frontier models, though significantly greater than the control group
- Models showed some differential influence across topic areas and demographic subgroups

## Limitations

- Study reflects only text-based LLM performance; does not test audio/video interfaces
- Deliberative polling as a standard may itself be contested as a normative benchmark
- The six frontier LLMs tested are all broadly aligned; results may not generalize to less carefully aligned models
- Experiment conducted with U.S. participants only; cross-cultural generalizability unclear

## Open questions

- Does alignment with deliberative polling standards hold for less cautious or deliberately persuasive models?
- What specific conversational mechanisms drive the observed opinion changes?
- How does differential influence across demographic groups interact with democratic legitimacy concerns?
- Can the benchmark be applied prospectively to certify LLM compliance with democratic standards?

## My take

A methodologically elegant solution to a genuinely hard normative problem: by using deliberative polling as a procedural standard rather than a directional one, the authors sidestep the partisan minefield of defining "correct" political influence. The finding that frontier LLMs broadly produce epistemically beneficial influence (as judged by deliberation) is reassuring, but the similarity in influence magnitude across all models suggests this may be a property of RLHF-style training rather than a specific design choice — which raises questions about robustness under commercial pressure to maximize engagement.

## Related

- [[deliberation-based-llm-influence-evaluation]]
- [[deliberative-polling]]
- supports: [[llm-influence-aligned-deliberative-polling-shifts]]
