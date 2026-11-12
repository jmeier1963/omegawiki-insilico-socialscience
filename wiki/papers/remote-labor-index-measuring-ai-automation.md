---
title: "Remote Labor Index: Measuring AI Automation of Remote Work"
slug: remote-labor-index-measuring-ai-automation
arxiv: "2510.26787"
venue: "arXiv preprint (Center for AI Safety, Scale AI)"
year: 2025
tags: [benchmark, labor-automation, agent-evaluation, economic-value, remote-work, freelance]
importance: 4
date_added: "2026-11-11"
source_type: pdf
s2_id: ""
tldr: "A benchmark of 240 real freelance projects (over 6,000 human hours, more than $140,000) shows the best agent automates only 2.5% of projects end to end."
contribution_type: [benchmark]
datasets: [Remote Labor Index (RLI)]
code_url: ""
cited_by: []
---

## Problem & Context

AI is rapidly improving on knowledge and reasoning benchmarks, but benchmarks focus on isolated skills (software engineering, computer use, simple shared tasks), so their link to economically valuable automation is unclear.

## Key idea

Build a benchmark from complete real projects done by human professionals on freelance platforms, with the original brief, inputs and the human deliverable as the gold standard. An agent only counts as automating a project if its output would be accepted by a reasonable client.

## Method

240 projects across many sectors (game development, product design, architecture, data analysis, scientific document preparation, video and others) with total human cost above $140,000 and over 6,000 hours; single projects reach costs above $10,000 and 100+ human hours. Agents (Manus, Grok 4, Sonnet 4.5, GPT-5, ChatGPT agent, Gemini) are evaluated by human evaluators comparing to the human deliverable; the automation rate is the share accepted, and an Elo-style pairwise comparison measures progress below the acceptance threshold.

## Experiment & Results

The highest automation rate is **2.5%**; all agents sit near the floor, though Elo scores show relative improvement between models. Failures include incomplete or corrupt deliverables, low quality and inconsistency across files.

## Limitations

Projects from freelance platforms skew toward well-specified, digitally deliverable work; human judging is costly; the benchmark is a snapshot and the floor effect limits discrimination between agents.

## Open questions

How quickly will the automation rate climb? Which project types move first? How should partial automation or human-in-the-loop value be scored?

## My take

A useful counterweight to capability headlines: whole-project automation is still rare even when component skills are strong. It is the type of evidence that supports task-level, not job-level, reasoning about automation.

## Related

- [[economically-valuable-task-benchmark]]
- [[agent-evaluation-paradigm-shift]]
- [[gdpval-evaluating-ai-model-performance-real]] — sibling benchmark of professional tasks
