---
title: "The Shift to Agentic AI: Evidence from Codex"
slug: shift-agentic-ai-evidence-codex
arxiv: ""
venue: "OpenAI / NBER-style working paper"
year: 2026
tags: [labor-market, ai-economics, agentic-ai, agentic-coding, ai-adoption, human-ai-collaboration, productivity-measurement, workforce-restructuring, ai-and-society]
importance: 4
date_added: 2026-06-26
source_type: pdf
s2_id: ""
tldr: "Large-scale telemetry from OpenAI's Codex shows agentic AI use growing >5x in H1 2026 — fastest outside developers, near-universal inside OpenAI — and shifting work from conversation toward delegated, parallel, increasingly complex production."
contribution_type: [analysis]
datasets: ["OpenAI Codex usage telemetry (individual, organizational, OpenAI-internal accounts; classifier-derived aggregates)"]
code_url: ""
cited_by: []
---

## Problem & Context

Generative-AI systems differ in how *agentic* they are: conversational tools (ChatGPT) answer questions and generate responses, while agentic tools (Codex) let users delegate multi-step tasks to systems that autonomously use tools, inspect files, run commands, and create or modify artifacts. Prior adoption research (Eloundou et al. 2024; Felten et al. 2023; Bick et al. 2026; Chatterji et al. 2025 *How People Use ChatGPT*; Handa et al. 2025 Claude conversations) measured *conversational* AI, where the unit of analysis is a conversation and where "asking" dominated "doing." As work shifts to agentic interfaces, the relevant unit becomes a *delegated workflow*, and standard measures (active users, chats, message volume) become less informative. The paper sits in the technology-diffusion / organizational-complements tradition (Brynjolfsson et al. 2019; David 1990 on electrification): productivity gains from a general-purpose technology lag until firms redesign workflows around it.

## Key idea

Use OpenAI's Codex (an agentic coding-and-work platform, released April 2025) telemetry, processed through an automated privacy-protecting classifier pipeline, to document the shift to agentic AI across three populations — external **Individual** accounts (Free/Go/Plus/Pro), external **Organizational** accounts (Business/Enterprise), and **OpenAI workers** (a frictionless frontier proxy). The headline framing: agentic AI is not merely a more capable conversational AI but a change in *how work is organized* — from asking for information toward delegating production, run in parallel, over longer horizons, with reusable codified workflows.

## Method

- **Privacy-preserving telemetry classification.** Automated classifiers extract aggregated, anonymized insights without researchers reading underlying messages. A persona classifier labels each request as Developer / General Knowledge Worker / Personal (users assigned their modal persona over 30 days; validated against HR titles: >90% of engineers → Developer, >90% of sales → General Knowledge Worker). A two-level task taxonomy (software work: code implementation, understanding, validation, engineering operations, application management; plus knowledge work: data analysis, research, knowledge artifacts, collaboration, business-function workflows). A complexity classifier estimates the human time a task would take without AI (run on a 0.1% opted-in Individual sample).
- **Core metric is the share of output tokens produced on Codex vs. ChatGPT** (intensive margin), alongside share of active users on Codex (extensive margin), because adopters use Codex far more intensively than user counts reveal.
- **Margins of agentic organization:** turn concurrency (overlapping turns across threads), long-running agents (cumulative daily active runtime), and systematization (skill/plugin invocation across five skill sources: preinstalled, curated, plugin, custom-plugin, custom).

## Experiment & Results

- **Aggregate growth:** weekly active Codex users rose >5x (more than fivefold) between Jan 1 and Jun 1, 2026; fastest growth is among **Non-developers**, not the initial developer base.
- **Uneven adoption (28-day, ~June 2026):** active-users-on-Codex = 97.9% (OpenAI), 17.3% (Organizational), 0.7% (Individual). Codex share of output tokens = 99.8% (OpenAI — Codex has largely replaced ChatGPT for work), 63.3% (Organizational), 16.5% (Individual). Adopters are intensive: Organizational engineers generate 26.8% of *their* tokens on Codex on average, but Codex accounts for 88.3% of total output tokens among engineers; legal teams average only 1.9% but Codex is 17.6% of total legal tokens.
- **Role/seniority spread:** technical roles adopt first (Org engineer 27%, data/analytics 15%, vs legal/recruiting ~2% average-user share), but within OpenAI the later-adopting functions converged fast — legal/recruiting went from ~0 in Jan 2026 to ~20% by early April to ~75% within a month; by June 2026 Codex share ≈ Engineering 99%, Data 98%, Recruiting 89%, Legal 88%. Adoption rises across the full seniority distribution.
- **Task complexity:** share of Individual users sending ≥1 prompt estimated to take an experienced human ≥1 hour rose from 35.4% (Dec 2025) to 70.2% (May 2026); the ≥8-hour share rose from 2.1% to 25.6% — roughly a tenfold increase in the >8-human-hour task share since the start of the year. The most complex queries cluster at the start of a thread (turn 1 is >2x as likely as turn 4 to require >1 human-hour).
- **Concurrency (week before Jun 11, 2026):** among OpenAI users, only 10.7% peak at a single concurrent workflow and ~28.6% managed 5+ concurrent agents; >10% of users manage 3+ concurrent Codex agents (Fig. 9 shows ~21% in the 5–9 band plus a 10+ band for OpenAI). External users are far less parallel (~67.4% of Organizational and ~63.9% of Individual users use no concurrent turns).
- **Long-running agents:** median OpenAI employee had Codex turns running 2.5 hours on Jun 11, 2026; 99th-percentile OpenAI users ran ~71 hours of agent turns within an average day (99p daily runtime up ~88% since Apr 7, 2026). External 99p daily runtime rose ~25% (Organizational) and ~50% (Individual).
- **Systematization (skills):** share of active Codex users invoking any skill rose from 5.4% (Mar 1) to 26.6% (Jun 11, 2026). By account type: 25.7% Individual, 30.4% Organizational, 96.2% OpenAI invoked ≥1 skill. Growth driven by plugins (14.5%) and custom skills (13.0%).
- **Output growth:** between Nov 1, 2025 and Jun 11, 2026 the median active OpenAI worker's output tokens rose ≥10x in *every* job function; median Legal-role worker 13x, median Researcher 56x (Customer Support 32x, Engineering 27x).

## Limitations

- OpenAI-internal usage is explicitly **not representative** of a typical organization (cheap marginal usage, high familiarity, organizational buy-in, workflows adjacent to the systems being built) — it is a frictionless-frontier proxy, not a forecast.
- Output tokens and "tool use" are imperfect proxies for productivity and for agency (some ChatGPT turns invoke tools; some Codex turns are purely conversational).
- Classifier-derived measures (persona, task, complexity, seniority, job title) carry classification error; complexity is estimated human-time, not measured outcome quality.
- Single-vendor, single-tool data; descriptive — no causal identification of effects on wages, employment, or firm output.
- Selection: who adopts Codex (and which firms have job-title coverage) is non-random.

## Open questions

- Do these frontier (OpenAI-internal) patterns — near-universal adoption, heavy parallelism, long-running agents — diffuse to typical organizations, and on what timescale once frictions fall?
- How much of the >10x output-token growth translates into realized productivity vs. inflated intermediate output (cf. Demirer et al. 2026b on downstream human bottlenecks)?
- How will the shift to delegation/supervision/coordination reshape team composition, hiring, career ladders, and the distribution of work across skill levels?
- Does the rising importance of domain expertise in supervising delegated work (Tambe 2026; Hitzig et al. 2026) widen or compress wage inequality?

## My take

The most valuable thing here is the OpenAI-internal series as a *frictionless frontier*: it shows where external organizations may be heading once adoption costs fall, and the contrast (99.8% vs 63.3% vs 16.5% token share) cleanly separates capability from organizational complements — same model, wildly different use. The token-share metric is a genuinely better instrument than active users for agentic tools, and the concurrency / long-running / systematization triad operationalizes "organizing work around AI" rather than just "using AI." It pairs naturally with Hitzig et al.'s persistent-returns-to-expertise finding (delegation raises the premium on supervision and judgment) and with the "wrong question" / normal-technology labor essays (the margin that matters is *what is delegated*, not whether a job is automatable). The headline numbers are striking but descriptive; the causal labor-market story is left open.

## Related

- [[agentic-ai-delegated-production]]
- [[systematization-agentic-work]]
- [[parallel-agent-supervision]]
- [[privacy-preserving-usage-telemetry-classification]]
- [[agentic-coding-persistent-returns-expertise]]
- [[machine-job-wrong-question]]
- [[ai-wont-make-legal-services-cheaper]]
- [[deep-agents-langchain]]
- same_problem_as: [[google-ai-economy-atlas-v1-mapping]]

Authors: [[drew-johnston]], [[david-holtz]], [[prasanna-tambe]], [[aaron-chatterji]] (plus Alex Martin Richmond and Christopher Ong, OpenAI).
