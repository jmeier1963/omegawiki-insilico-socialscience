---
title: "Information-Throughput Persuasion Mechanism"
aliases: ["fact-density persuasion", "throughput-driven persuasion", "information-first persuasion", "fact-checkable-claim density"]
tags: [ai-persuasion, persuasion-mechanism, information-provision, large-language-models, conversational-ai]
maturity: emerging
definition: "An account in which a conversational persuader's edge derives chiefly from the rate and volume of fact-checkable information it can deliver per conversation rather than from superior rhetoric, rapport, or empathy."
key_papers: [ai-systems-out-persuade-expert-humans]
first_introduced: "2026"
date_updated: 2026-06-26
related_concepts: [superhuman-conversational-persuasion]
---

## Definition

The information-throughput persuasion mechanism is an account in which a conversational persuader's effectiveness derives chiefly from *throughput* — the rate and volume of fact-checkable claims it can deliver per conversation — rather than from superior rhetoric, warmth, rapport, or perceived humanness. AI out-persuades humans largely because it can pack far more information into the same dialogue.

## Intuition

Elite debaters wrote ~54 words per reply over ~95 seconds; unconstrained AI wrote ~294 words with sub-second latency. Information provision, and specifically the number of fact-checkable claims deployed, is a known driver of attitude change. The throughput account predicts two things: (i) throttling AI to human message length and speed should selectively degrade the *informational* qualities persuadees perceive (argument strength, "I learned a lot") while leaving warmth and human-likeness intact, and (ii) fact density should predict persuasive impact across both human and AI conditions on the same curve — which is exactly what is observed.

## Variants

- **Throughput constraint** — capping AI message length and writing speed to human levels; collapses AI's advantage to non-significance.
- **Fact-density regression** — modeling persuasive impact as a function of log fact-checkable claims per conversation, pooling humans and AI.
- **Information-first prompting** — eliciting high information throughput from AI persuaders via prompt strategy (drawn from prior work).

## Comparison

| Candidate mechanism | Evidence in source paper |
|---|---|
| Information throughput / fact density | R² = 0.89 overall (0.89 humans, 0.90 AI); AI-vs-human coefficient ≈ 0 after controlling for log facts |
| Rhetorical/argument quality independent of volume | Not separable from throughput once facts are controlled |
| Warmth / rapport / empathy | Constraint barely moved these; human-likeness actually rose |
| Perceived humanness | Moved opposite to persuasiveness (+7.5 pp under constraint) |

## Known limitations

- Demonstrated for text dialogue on policy attitudes and one low-stakes behavior; the mechanism's dominance in other modalities or high-stakes settings is untested.
- "Fact-checkable claims" counts volume, not accuracy; truthfulness of the delivered information varied widely across models.
- The account explains the human–AI gap but does not by itself bound real-world impact, which also depends on exposure and reach.

## Open problems

- Does fact-density dominance hold for audio/video/face-to-face persuasion, where bandwidth and rapport trade off differently?
- How does the accuracy (not just quantity) of delivered facts modulate durable, real-world persuasion?
- Can humans or tools raise human throughput enough to matter, given that coaching raised debaters' claim counts (+54%) without raising persuasiveness?

## Relationship to foundations

## Realized by

## My understanding

The mechanistic core of the paper and, arguably, its most transferable contribution: it converts "AI is more persuasive" into a measurable, falsifiable quantity (fact-checkable claims per conversation) and shows that this single variable largely explains the human–AI gap. It usefully predicts where superhuman persuasion will and will not appear — wherever a channel limits information throughput (short messages, slow turn-taking, exposure caps), the AI advantage should shrink toward zero.
