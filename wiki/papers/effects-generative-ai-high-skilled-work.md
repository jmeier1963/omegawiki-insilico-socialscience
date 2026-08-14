---
title: "The Effects of Generative AI on High-Skilled Work: Evidence from Three Field Experiments with Software Developers"
slug: effects-generative-ai-high-skilled-work
arxiv: ""
venue: "Working paper (AEA RCT Registry)"
year: 2025
tags: [ai-and-work, productivity, software-development, field-experiment, ai-economics, copilot]
importance: 4
date_added: 2026-07-05
source_type: pdf
s2_id: ""
tldr: "Combining three RCTs at Microsoft, Accenture, and a Fortune 100 firm (4,867 developers given GitHub Copilot), Cui and colleagues find a 26.08% increase in completed tasks, with less-experienced developers adopting more and gaining more."
contribution_type: [analysis]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

Economists disagree sharply on whether generative AI will deliver large productivity gains, and firm-level adoption uncertainty makes it hard to test empirically. Software development is a domain where AI coding assistants have already matured and diffused, offering a real-world testbed. Cui, Demirer, Jaffe, Musolff, Peng, and Salz use three company-run RCTs to measure the effect.

## Key idea

Randomized access to an AI coding assistant (GitHub Copilot) causally raises knowledge-worker productivity, and the gains are larger for less-experienced workers — a leveling pattern for this class of tool.

## Method

Meta-analysis of three large field RCTs run as ordinary business decisions at Microsoft, Accenture, and an anonymous Fortune 100 electronics manufacturer, randomly assigning Copilot access to just under 5,000 developers (post-registered AEARCTR-0014530). Primary outcome: completed tasks; heterogeneity by developer experience and adoption.

## Experiment & Results

- Pooled across 4,867 developers, a **26.08% increase in completed tasks** (SE 10.3%) among those with the AI tool.
- Each individual experiment is noisy; the effect emerges clearly only when combined.
- **Less-experienced developers** had higher adoption rates and greater productivity gains.

## Limitations

- Each RCT is individually underpowered/noisy; the headline rests on pooling.
- "Completed tasks" is a quantity metric; quality effects are not the focus.
- Copilot (autocomplete-style assistant), not agentic coding; results may not transfer to agentic tools.
- Company-run experiments with the firms' own instrumentation.

## Open questions

- Does the junior-skews-higher pattern reverse for agentic coding tools (vs. autocomplete)?
- Are task-completion gains matched by quality, or offset by review burden?
- How persistent are gains as tasks and tooling evolve?

## My take

The credible, pooled +26% is the most solid causal estimate of coding-assistant productivity, and the experience gradient is the interesting part: for autocomplete-style Copilot, juniors gain more, which *contrasts* with the agentic-coding finding that returns accrue to expertise. That tension is not a contradiction but a tool-generation distinction — completion-style assistants level, agentic tools may amplify expertise — and it's exactly the comparison worth tracking as tooling shifts.

## Related

- [[human-ai-division-labor-agentic-work]]
- [[firm-level-ai-complementarities]]
- [[agentic-coding-persistent-returns-expertise]]
