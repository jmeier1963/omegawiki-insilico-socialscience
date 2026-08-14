---
title: "Loop Engineering"
slug: loop-engineering
arxiv: ""
venue: "The Batch (DeepLearning.AI)"
year: 2026
tags: [agentic-coding, ai-native-development, human-in-the-loop, coding-agents, product-development]
importance: 2
date_added: 2026-07-05
source_type: pdf
s2_id: ""
tldr: "Andrew Ng frames modern AI-native product building as three nested feedback loops of increasing period — a fast agentic coding loop, a slower developer-feedback loop, and a slow external-feedback loop — with the human's irreplaceable role being a 'context advantage' rather than 'taste'."
contribution_type: [position]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

"Loop engineering" became a buzzphrase after Boris Cherny (Claude Code) and Peter Steinberger (OpenClaw) discussed it publicly. As coding agents can now iterate autonomously for long stretches (test their own code, use a browser to check their work), the question shifts from "how do I write code" to "how do I structure the loops that let agents build software without constant human intervention" — and what, if anything, the human must still do.

## Key idea

Building 0-to-1 products with coding agents is organized as three nested feedback loops operating at different time scales, and the human's contribution is best understood as a *context advantage* (knowing things about users and deployment the AI does not) rather than the vaguer notion of "taste."

## Method

Practitioner essay describing three loops:
- **Agentic coding loop** (minutes): the agent writes code, tests it, and iterates against a spec (and optionally evals) until bug-free — an active area of invention; agents can now run ~an hour unattended.
- **Developer feedback loop** (tens of minutes to hours): the developer reviews the product and steers the agent, freed from manual QA (agents self-test) to make higher-level product decisions; translating vision into a spec, and building evals when the agent repeatedly hits the same problem, are the hard parts.
- **External feedback loop** (hours to weeks): friends, alpha testers, A/B tests in production feed data back into the developer's vision, which drives the spec, which drives the agent.

## Experiment & Results

No evaluation. Illustrated by Ng's weekend example: building a typing-practice app for his daughter where the coding agent worked ~an hour unattended (browser-checking its own work), while Ng iterated on visual design, unlockable cat costumes, and the grown-up login flow.

## Limitations

- Anecdotal, single-author practitioner reflection; no data.
- "Context advantage" is asserted as the durable human moat but not operationalized or measured.
- Scope limited to 0-to-1 product building by a technical founder; unclear how the loop structure scales to large teams or maintenance.

## Open questions

- As agents acquire more user/deployment context, does the human "context advantage" shrink — and how fast?
- Which parts of the developer-feedback loop (spec-writing, eval construction) are next to be automated?
- Can external-feedback-loop analysis (usage data, customer feedback synthesis) be closed by AI without losing signal?

## My take

A clean, low-theory articulation of what the human-AI division of labor looks like in agentic coding: humans hold the slow, context-rich loops; agents own the fast execution loop. The "context advantage over taste" reframing is the substantive point — it makes the human contribution a knowledge gap that can (in principle) be closed rather than an ineffable quality, which is both more honest and more unsettling. Pairs directly with the returns-to-expertise argument in agentic coding.

## Related

- [[human-ai-division-labor-agentic-work]]
- [[agentic-coding-persistent-returns-expertise]]
