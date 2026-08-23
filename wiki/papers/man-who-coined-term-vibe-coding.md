---
title: "The Man Who Coined the Term 'Vibe Coding' Says Code Written by AI Can Still Be 'Awkward' and 'Gross'"
slug: man-who-coined-term-vibe-coding
arxiv: ""
venue: "Business Insider"
year: 2026
tags: [vibe-coding, agentic-coding, human-oversight, taste, code-quality, karpathy, software-engineering]
importance: 2
date_added: 2026-08-22
source_type: pdf
s2_id: ""
tldr: "Reporting on an April 2026 Sequoia Capital talk in which Andrej Karpathy, who coined 'vibe coding', describes AI-written code as bloated and brittle and says humans must stay in charge of aesthetics, judgment, taste and oversight."
contribution_type: [position]
datasets: []
keywords: [vibe coding, Andrej Karpathy, taste, judgment, agentic coding, code quality, human oversight]
domain: "Computer Science"
code_url: ""
cited_by: []
---

## Problem & Context

Karpathy introduced "vibe coding" in a February 2025 post on X — a highly AI-assisted style of development in which the builder barely touches the code. Collins Dictionary made it word of the year for 2025. The term became the shorthand for the claim that code authorship is solved. This report, on a talk released by Sequoia Capital on 29 April 2026, records the originator of the term qualifying it.

## Key idea

The agents are "like these intern entities": productive, but requiring supervision. Karpathy's formulation of what remains human is the quotable one — "You basically still have to be in charge of the aesthetics, the judgment, the taste, and a little bit of oversight."

His assessment of the output is blunter: "Sometimes I get a little bit of a heart attack because it's not like super amazing code necessarily all the time. It's very bloaty, and there's a lot of copy-paste, and there's awkward abstractions that are brittle, and it works, but it's just really gross."

## Method

Journalism. Shubhangi Goel reports on a recorded talk; the Karpathy quotations are verbatim from the article.

## Experiment & Results

No results. The reported claims: AI-written code works but is bloated, repetitive and built on brittle abstractions; humans remain in charge of high-level development decisions while AI does much "under the hood"; and nothing "fundamental" prevents AI from writing clean code — labs simply have not targeted the problem during training.

The article also notes the surrounding context: security incidents at vibe-coding platforms (a Lovable permissions error exposing chats on public projects), professional developers cautioning against overreliance, and billion-dollar valuations for Lovable, Cursor and Replit.

## Limitations

- Secondary reporting on a talk, partly behind a paywall; no transcript is provided.
- One practitioner's impression, not a code-quality study.
- The claim that clean code is merely an untargeted training objective is an assertion with no evidence offered.

## Open questions

- Is "taste" decomposable into trainable objectives, as Karpathy's "nothing fundamental" suggests, or is it the residual that resists specification?
- What is the measured quality delta between agent-written and human-written code at comparable functionality?

## My take

The value of this source is terminological. "Taste" is doing heavy lifting in current arguments about what remains human once execution is cheap, and it is worth noting that the word arrives from software engineering as an admittedly imprecise placeholder — Karpathy lists it alongside aesthetics, judgment and oversight without distinguishing them. That imprecision is informative: the shift being described is from countable output (lines of code) to a property of the whole that practitioners can recognize but not yet define. The same shift is under way in research assessment, where publication counts give way to relevance, coherence and explanatory depth — equally recognizable, equally hard to count.

## Related

- [[research-taste-bottleneck]]
- [[some-simple-economics-agi]]
- [[augmented-coding-design-genie-eats-seed]] — Kent Beck's version: the agent only inhales, never refactors
