---
title: "Why Big AI Labs Are Hiring So Many Philosophers"
slug: why-big-ai-labs-hiring-so
arxiv: ""
venue: "The Economist"
year: 2026
tags: [ai-ethics, ai-alignment, ai-constitutionalism, philosophy-of-ai, moral-reasoning, ai-and-society]
importance: 2
date_added: 2026-07-05
source_type: pdf
s2_id: ""
tldr: "An Economist survey of why AI labs are hiring philosophers en masse — from Socratic-method training that reduces sycophancy to deontological vs. consequentialist constitutions that shape model behavior — and the 'moral deskilling' worry that follows."
contribution_type: [survey]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

A decade ago humanities students were told to "learn to code." Now programmers are nervous about AI and philosophy graduates are more employable (NY Fed: 5.1% philosophy unemployment vs. 7% CS in 2024). AI labs are hiring philosophers heavily (Floridi describes a departmental "haemorrhaging"), because the technology poses exactly the thorny normative problems philosophy specializes in.

## Key idea

Philosophy is becoming applied AI infrastructure: methods and ethical frameworks from philosophy are being built directly into how models are trained, constrained, and governed — with real, divergent effects on model behavior.

## Method

Journalistic survey (Economist, "Computo, ergo sum") canvassing practitioners:
- **Method transfer:** Socratic-method training reduces sycophancy (Noller); "Socratic ignorance" implanted as humility limits overconfidence / "AI immaturity"; Gabriel (DeepMind) credits philosophy for declining hallucinations and better chains of thought.
- **Value shaping:** feeding Locke to a legal assistant biases it toward strong property rights; IBM's Granite models expose "dials" for corporate philosophies (Rossi) balancing individual agency vs. social harmony.
- **AI constitutionalism:** scaffolding models with rules from authoritative philosophical/legal sources; Anthropic's Claude constitution (led by Askell, published Jan 21, nicknamed the "soul doc," 78 pages) draws on Kant, Apple ToS, and the UDHR.
- **Two ethical frameworks:** deontology (strict prohibitions; Anthropic; makes behavior consistent, more honest — Bostrom; aids legal compliance; Inflection's Pi) vs. consequentialism (cost-benefit; ChatGPT, Gemini; autonomous-vehicle crash decisions — Waymo's Gerdes; AI weapon targeting — Shanahan).

## Experiment & Results

No data (opinion/survey piece). Illustrative claims: philosophy-trained models are less sycophantic and more truthful; consequentialist algorithms explicitly permit one harm to avert a worse one (Waymo, autonomous weapons), which Heck predicts will spawn ethically fraught lawsuits.

## Limitations

- Anecdotal and quotation-driven; no measurement of the claimed effects (e.g. hallucination decline attributed to philosophy).
- Conflates several distinct interventions (training method, prompt content, constitutional scaffolding) under "philosophy."
- Unbylined survey; breadth over depth.

## Open questions

- Are there cases where deontological rules should be overridden, and who decides?
- Does delegating ethical calls to AI cause "moral deskilling" (Yampolskiy: morality is "historically unstable, culturally variable, strategically manipulable")?
- Should AI ethics weigh animal welfare or the environment, and how when consequences are unclear?

## My take

Useful as a map of where philosophy is actually load-bearing in deployed systems — the deontology/consequentialism split maps cleanly onto observable lab differences (Anthropic vs. OpenAI/Google), and the "dials for corporate philosophies" detail is a concrete instance of value pluralism becoming a product feature. The moral-deskilling worry is the piece's real sting: outsourcing ethical judgment to consequentialist algorithms is itself a normative choice being made quietly. Pairs with the constitutional-AI literature and principle-based alignment training.

## Related

- [[principled-alignment-training]]
- [[pluralistic-alignment]]
- [[cognitive-surrender]]
- [[claude-constitution]]
