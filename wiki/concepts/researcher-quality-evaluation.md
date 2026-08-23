---
title: "Researcher-Quality Evaluation"
aliases: ["research-quality benchmark", "human-easy agent-hard evaluation", "researcher-like AI evaluation", "AARR benchmark"]
tags: [agent-evaluation, ai-research-automation, benchmark, research-agents]
maturity: emerging
key_papers: [bei-der-bewertung-von-forschungsqualit-vielleicht, act-real-researcher-benchmark-llm-research, genebench-pro-evaluating-multistage-statistical-reasoning, ai-agents-conduct-open-ended-ai]
first_introduced: "2026"
date_updated: 2026-06-20
related_concepts: [automated-research-pipeline]
---

## Definition

A class of agent evaluation that measures whether AI research agents emulate the *qualities* of a human researcher — integrity, awareness of uncertainty, careful verification, responsible scientific reasoning — rather than only whether they complete a task or produce correct final outputs.

## Intuition

Execution benchmarks reward getting to an answer. Researcher-quality evaluation rewards getting there *the way a good researcher would*: noticing a contaminated dataset, flagging an over-claimed result, double-checking a suspicious number. A system can pass execution benchmarks while failing basic research hygiene.

## Formal notation

Not a formal metric; operationalized as task suites scored against rubrics for researcher behaviors (verification performed, uncertainty acknowledged, ethical issues caught) alongside outcome success rate.

## Variants

- **Human-easy / agent-hard tasks** — deliberately selecting tasks trivial for human researchers but where agents reliably err, inverting the usual "human-hard" benchmark design (AARRI-Bench).
- **Lifecycle-staged evaluation** — separate scoring across literature analysis, experiment setup, verification, and reporting stages.

## Comparison

Complements execution-oriented research-agent benchmarks (idea generation, code implementation, experiment reproduction) by adding a behavior/quality axis they omit.

## When to use

When assessing whether an autonomous research agent is trustworthy enough to act unsupervised, not just whether it can finish a pipeline.

## Known limitations

Rubrics for "integrity" and "judgment" are subjective; absolute scores date quickly as frontier models improve.

## Open problems

How to score researcher qualities automatically and reproducibly; whether such qualities can be trained directly rather than scaffolded.

## Key papers

- [[act-real-researcher-benchmark-llm-research]] — proposes the AARR series and AARRI-Bench.
- [[bei-der-bewertung-von-forschungsqualit-vielleicht]] — argues quality standards are constituted inside disciplinary cultures and cannot be replaced by generic indicators

## My understanding

The lasting idea is the evaluation *axis* (behavior/quality, human-easy-agent-hard), not any specific benchmark instance. It reframes the bottleneck for research automation as judgment rather than capability.
