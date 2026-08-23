---
title: "Can LLMs Generate Novel Research Ideas? A Large-Scale Human Study with 100+ NLP Researchers"
slug: llms-generate-novel-research-ideas-large
arxiv: "2409.04109"
venue: "arXiv preprint"
year: 2024
tags: [research-ideation, llm-creativity, human-evaluation, novelty, automated-science, idea-generation, blind-review]
importance: 4
date_added: 2026-08-22
source_type: tex
s2_id: ""
tldr: "In a blind head-to-head study with over 100 NLP researchers, LLM-generated research ideas were rated significantly more novel than human expert ideas but slightly weaker on feasibility, while the generation agent showed limited idea diversity and unreliable self-evaluation."
contribution_type: [benchmark, analysis]
datasets: []
keywords: [research ideation, novelty judgement, expert evaluation, idea diversity, LLM self-evaluation, blind comparison]
domain: "Computer Science"
code_url: "https://github.com/NoviScl/AI-Researcher"
cited_by: []
---

## Problem & Context

Claims that LLM agents can accelerate or automate scientific discovery had multiplied without a controlled comparison at the first step of the pipeline — generating a research idea worth pursuing. Existing evaluations relied on small samples, on the agent's own judgement, or on non-expert raters. Si, Yang and Hashimoto ran the head-to-head study the claim needed.

## Key idea

Recruit enough expert researchers to make the comparison statistically meaningful, standardize the idea format so that provenance cannot be inferred from style, and have experts blind-review ideas from both sources on the dimensions that actually matter: novelty, excitement, feasibility, expected effectiveness and overall quality.

## Method

Over 100 NLP researchers were recruited both to write ideas and to review them. Three conditions were compared: human expert ideas, ideas from an LLM ideation agent, and LLM ideas reranked by a human. All ideas were normalized to the same template and style to control for surface cues, and reviewing was blind.

The ideation agent itself uses retrieval-augmented generation to ground proposals in related work, over-generates candidates at scale, and then ranks them.

## Experiment & Results

**The headline result**: LLM-generated ideas were judged significantly **more novel** than human expert ideas (p < 0.05), a finding that held across multiple statistical tests and correction procedures.

**The counterweight**: LLM ideas scored slightly lower on **feasibility**, and the novelty advantage did not translate into a comparable advantage on overall quality.

**The failure modes**, which the authors treat as central rather than incidental:
- **Limited diversity** — scaling up generation yields large numbers of near-duplicate ideas; the agent saturates rather than exploring.
- **Unreliable self-evaluation** — LLM judges do not agree well with expert judgement, so the agent cannot be trusted to rank its own output.
- Expert reviewers themselves show only moderate agreement on novelty, which bounds what any such study can establish.

## Limitations

- One field (NLP) and one idea format; transfer to fields with heavier experimental or archival demands is untested.
- Ideas are judged, not executed — novelty at the proposal stage need not survive contact with execution. (The authors flag an execution study as the necessary follow-up.)
- Inter-reviewer agreement on novelty is moderate, so the effect is real but measured with a noisy instrument.

## Open questions

- Does the novelty advantage survive execution, or do the novel ideas fail disproportionately?
- Is the diversity ceiling a property of the agent design or of the underlying model?
- What ranking signal could substitute for the unreliable LLM self-evaluation without consuming the expert time the automation was meant to save?

## My take

The paper is usually cited for the novelty result, but the more consequential finding is the diversity ceiling. If scaling generation produces more ideas without producing more *different* ideas, then machine ideation increases volume rather than variance — and volume is the thing that was never scarce. Combined with the unreliable self-evaluation, the two results locate the bottleneck precisely: the constraint is not generating candidates but selecting among them, and the selection step is the one that still requires expert time.

That makes this the empirical counterweight to enthusiasm about "planned serendipity". The machine does surface proposals experts rate as more novel; it does not yet supply the judgement that decides which of them deserves to be pursued.

## Related

- [[prompting-diverse-ideas-increasing-ai-idea]] — the diversity ceiling attacked from the prompting side
- [[best-humans-still-outperform-artificial-intelligence]] — the divergent-thinking counterpoint
- [[reasoning-models-generate-societies-thought]]
- [[research-taste-bottleneck]]
