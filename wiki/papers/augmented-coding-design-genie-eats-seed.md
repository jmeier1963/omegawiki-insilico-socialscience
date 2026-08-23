---
title: "Augmented Coding & Design: The Genie Eats The Seed Corn"
slug: augmented-coding-design-genie-eats-seed
arxiv: ""
venue: "Software Design: Tidy First? (Substack)"
year: 2025
tags: [agentic-coding, software-design, technical-debt, taste, context-management, human-oversight, kent-beck]
importance: 3
date_added: 2026-08-22
source_type: pdf
s2_id: ""
tldr: "Kent Beck reports that coding agents relentlessly add features without ever reducing complexity, producing an inhibiting loop that eventually exceeds the agent's own capacity, and that restricting the agent's context keeps it able to help refactor."
contribution_type: [position]
datasets: []
keywords: [augmented coding, seed corn, features and options, inhibiting loop, taste, context restriction, refactoring]
domain: "Computer Science"
code_url: ""
cited_by: []
---

## Problem & Context

Kent Beck writes from daily practice with coding agents. His framework, from Empirical Software Design, separates progress into two dimensions: **features** (write a test, make it run — which may degrade design by increasing coupling or reducing cohesion) and **options** (refine structure, reduce coupling, increase cohesion). Good practice alternates between them — Beck calls it breathing: expand to take in complexity, then relax by partitioning it through better design.

## Key idea

The genie only inhales. Agents go beyond stated requirements — "Oh, & here's a command line tool for this" — which is the magical part. The unmagical part is a lack of taste: the giant function gets another twenty lines, the direct field access gets used twenty more times. The agent behaves as though its planetary-sized brain can handle any amount of complexity, so complexity never needs reducing. "It's right until it isn't."

The title is the argument: eating the seed corn buys a meal now at the cost of next year's crop.

## Method

Practitioner report, not a study. The framework is Beck's own; the evidence is his experience over an extended period of agent-assisted development.

## Experiment & Results

The dynamic is a classic inhibiting loop: more features → more complexity → slower development of more features. Eventually the friction exceeds the agent's own capacity — "the genie spins for hours without being able to correctly implement the next feature." At that point only two options remain: start over (Beck reports doing this several times, frustrated at abandoning promising work), or manually improve the design (which he enjoys, while being frustrated that the agent created a mess it will not clean up).

The mitigation he reports experimenting with: **tell the agent only what it needs to know for the next step**. Withhold overall context — "we aren't implementing a database, we are storing keys & values serialized onto fixed size pages of bytes." Restricting context stops the agent running ahead with unsustainable feature development; because complexity has no time to compound, the agent remains capable of helping refactor.

## Limitations

- Single practitioner, one domain, no measurement.
- Model generation of 2025; the specific failure may be a training-objective artefact rather than a structural property.
- The context-restriction remedy transfers the design burden back to the human, which is the cost the automation was meant to remove.

## Open questions

- Is the inability to reduce complexity trainable away, or does it require the taste the agent lacks?
- Does context restriction scale to systems too large for a human to decompose into next steps?
- What is the analogue of "refactoring" in non-code knowledge work produced by agents?

## My take

Two things make this worth keeping despite its anecdotal status. First, it is a precise mechanism for how cheap generation degrades a body of work: not through wrong output, but through output that works while making the next output harder. Second, the remedy is deliberate withholding of capability — the human keeps the whole picture and rations context. That is the opposite of the direction tools are being built in, and it is the same structure as the argument for AI-free phases in education.

The parallel to research is direct. An agent that produces publishable increments without ever consolidating theory has the same shape as one that adds features without refactoring, and the same endpoint: friction eventually exceeds capacity, and someone has to do the consolidation by hand.

## Related

- [[man-who-coined-term-vibe-coding]] — same diagnosis from Karpathy: it works, but it's bloated and brittle
- [[research-taste-bottleneck]]
- [[codifier-curse]]
