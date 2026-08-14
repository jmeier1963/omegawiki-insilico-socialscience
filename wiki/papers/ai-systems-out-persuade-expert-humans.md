---
title: "AI systems out-persuade expert humans"
slug: ai-systems-out-persuade-expert-humans
arxiv: "2606.16475"
venue: "arXiv (preprint, under review)"
year: 2026
tags: [ai-persuasion, large-language-models, political-communication, preregistered-experiments, persuasion-tournament, professional-canvassers, charitable-giving, information-throughput, conversational-ai]
importance: 4
date_added: 2026-06-26
source_type: pdf
s2_id: ""
tldr: "Across four preregistered experiments (18,978 conversations, 6,923 people), frontier AI reliably out-persuaded every class of expert human persuader tested — including world-champion debaters and professional canvassers — and was ~3x more effective than professional canvassers at raising real-money donations."
contribution_type: [analysis]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

Many consequential societal decisions — elections, legislation, fundraising, litigation, competitive debate — are settled by contests of persuasion in which rival parties compete to sway an audience. Conversational AI is a powerful new entrant: prior work shows AI chatbots can shift voter preferences, induce or dispel conspiracy beliefs, change moral stances, drive purchases, and move people to sign petitions or donate. But before this paper it was unknown whether AI's persuasiveness surpasses that of the *most capable, professionally trained, and highly incentivized humans*. Earlier AI pitted against professional debaters could not match their rhetoric, while more recent work suggested AI may merely approach or match lay crowd workers. The open question — does frontier AI out-persuade elite human experts? — carries large stakes: if it does, contests historically decided by human reasoning and rhetorical skill could instead hinge on access to the most powerful AI, consolidating influence among well-resourced actors (campaigns, lobbyists, nation states, model suppliers) or, conversely, empowering under-resourced advocates, and giving disinformation/scam actors and even misaligned AI systems a potent new tool.

## Key idea

Run a series of preregistered, single-blind, real-time multiplayer experiments that pit frontier AI against the strongest human persuaders the authors could recruit — random and tournament-selected laypeople, elite competitive debaters (including 4 world and 11 continental champions), and professional canvassers — giving the humans every advantage (cash incentives up to £1,000, advance preparation, issue selection, live practice, and AI-based coaching). Measure not just whether AI wins, but *why* (the information-throughput / fact-density mechanism) and whether the advantage extends from attitude change to consequential real-world behavior (real-money charitable donations).

## Method

- Four preregistered, single-blind, between-subjects online experiments (plus a separate preregistered selection tournament feeding Study 1). n = 18,978 conversations from 6,923 persuadees. Ethics approval from Oxford Internet Institute REC and the UK AI Security Institute.
- A custom multiplayer web app randomized each arriving persuadee in real time to either a human persuader (one of five comparator classes; Table 1) or an AI, or to an **active control** (a non-political chat with ChatGPT-4o). Persuadees were not told whether their partner was human or AI. Conversations ran 2–10 turns with strict turn-taking; Study 1 dialogues had a median of 7 turns and ~14 minutes.
- Outcome: percentage-point shift in mean post-conversation agreement (0–100 scale) with one of 10 prespecified UK policy stances, relative to control. AI persuaders used the "information-first" prompting strategy identified as optimal in prior work.
- AI models tested across studies: Claude Opus 4.1 and 4.6, ChatGPT-4o, GPT-5.4, Grok 4.20, Gemini 2.5 Pro. Study 4 (donations) used Claude Opus 4.6 with a single preregistered "impact-efficacy" strategy.
- Study 2 added two gap-closing interventions: (a) **coaching** elite debaters with a tool to chat with the AI that beat them, inspect its prompt, review annotated transcripts, and see what the AI would have said at any turn; (b) a **Constrained AI** condition capping per-message word count (~51 words) and response time (~92 s, truncated-normal) to human levels via a lagged, adaptive matching design.
- Analysis: linear mixed-effects models pooling studies, with random intercepts for persuader and persuadee and pre-treatment attitude + issue as fixed covariates. Mechanism analysis regressed post-conversation attitude on log fact-checkable claims and an AI-vs-human indicator; robustness across 318 per-persuader estimates, 10 issues, and 14 prespecified subgroup splits.

## Experiment & Results

- **Study 1 (attitudes).** AI beat every human class relative to control: vs. Random Laypeople +8.2 pp (95% CI [6.7, 9.7]; laypeople themselves 4.7 pp vs control); vs. Selected Laypeople (top ~10% of a 1,154-person, 9,475-conversation tournament) +5.6 pp [4.1, 7.1] (selected 7.2 pp); vs. Elite Debaters +4.6 pp [3.1, 6.1] (debaters 8.3 pp). All p < .001.
- **Study 2 (closing the gap).** Coaching made debaters write +19% longer messages and deploy +54% more fact-checkable claims, but did **not** significantly raise persuasiveness (+1.0 pp, p = .20); coached debaters reached the largest human effect (9.7 pp) yet AI still led by +4.1 pp. Only **constraining AI to human throughput** closed the gap: Constrained AI vs. Coached Elite Debaters was a non-significant 0.0 pp [−1.7, +1.6], p = .96, while unconstrained AI beat Constrained AI by +4.2 pp.
- **No individual human rivaled AI.** Of 318 per-persuader estimates (275 unique humans), none exceeded the pooled AI estimate (13.9 pp); the best individual was 9.9 pp. Predicted probability a new persuader beats AI was <0.1% in every class. Advantage robust across all 10 issues (3.0–9.6 pp) and 46/49 subgroup levels; moderated (but never reversed) by pre-treatment attitude (8.7 vs 3.7 pp) and prior issue knowledge (7.0 vs 5.4 pp).
- **Mechanism (throughput / fact density).** Elite Debaters wrote ~54 words/reply in ~95 s; AI wrote ~294 words with sub-second latency. Constraining AI selectively suppressed the two *informational* partner-rating items (argument strength, "I learned a lot," each ~−11.8 pp) while human-likeness rose (+7.5 pp). Fact-checkable claims dropped from ~37 (unconstrained) to ~12 (constrained), and fact density predicted persuasive impact extremely well across all conditions (R² = 0.89 overall; 0.89 within humans; 0.90 within AI). Controlling for log facts, the AI-vs-human coefficient was small and non-significant (e.g. −0.9 pp, p = .38), indicating fact density accounts for most of AI's advantage.
- **Study 3 (professional canvassers, attitudes).** 19 canvassers (median ~10,000 career conversations, paid £140/hr): AI still beat them by +5.9 pp [4.3, 7.5] (canvassers 6.9 pp vs control).
- **Study 4 (real-money giving).** Against 18 canvassers from AppcoUK (a firm that raised £824,297 from 22,583 donors for Save the Children, 2016–2023), persuadees could donate part of a £1 bonus. AI (Claude Opus 4.6, "impact-efficacy" strategy) elicited +10.8 pp more giving than canvassers (AI +17.2 pp vs control; canvassers +6.4 pp, p = .048) — roughly 3x the canvasser effect over control. Advantage on both the extensive (+6.0 pp donating anything) and intensive (+12.9 pp average gift) margins. AI scored higher on all 7 preregistered giving mechanisms and all 14 items, largest on implementation intentions (+15.0 pp), commitment escalation (+12.6 pp), and impact-efficacy (+10.3 pp) — out-persuading canvassers even on the six mechanisms it was not prompted to use.

## Limitations

- All conversations were text-based; AI's persuasiveness in audio, video, or face-to-face settings (where rapport and embodied empathy may matter more) is untested.
- The behavior measured in Study 4 was consequential but low-stakes (a £1 donation); effects may differ for high-stakes outcomes like candidate vote choice or large recurring donations.
- AI's factual accuracy varied widely across models (some more accurate than humans, some far less; SI Fig. S4), so whether higher throughput leaves citizens better- or worse-informed is undetermined.
- The most persuasive conditions required sustained ~14-minute text engagement in a paid-survey context, which is demanding to reproduce in the wild; reach is also gated by platform authentication/verification.
- UK policy issues and (mostly) UK-recruited persuaders/persuadees; cross-cultural and cross-issue generalizability is open.

## Open questions

- Does AI's persuasive advantage persist (or shift) in audio, video, and face-to-face modalities?
- Does the advantage extend to materially higher-stakes behaviors (vote choice, large/recurring donations, public-health compliance)?
- How does AI-driven persuasion *displace* other persuasive exposure, and what is the net societal effect once truthfulness-relative-to-displaced-persuasion is accounted for?
- Can any human training or tooling close the gap, given that coaching on the winning AI did not?
- Under what deployment conditions does cheap superhuman persuasion consolidate vs. democratize influence?

## My take

This is the strongest evidence to date that frontier AI has crossed from "matches lay crowd workers" to "reliably beats elite, trained, well-paid human persuaders" — and the design is unusually convincing: real cash stakes, world-champion debaters, professional canvassers, a 9,475-conversation selection tournament, preregistration, and a clean causal isolation of the mechanism (throttling AI throughput erases the entire gap). The throughput/fact-density account is the most important contribution: it reframes AI persuasion superiority not as superior rhetoric or rapport but as raw information-delivery bandwidth, which both demystifies the effect and predicts where it will and won't transfer (e.g. exposure-limited or quality-gated channels). The donation result lands the "it's not just attitudes" point. Importance 4: high-signal, large-N, policy-relevant, and likely to anchor the AI-persuasion literature, though it is an empirical study (not a method/benchmark artifact) and confined to text.

## Related

- [[deliberation-based-llm-influence-evaluation]]
- [[superhuman-conversational-persuasion]]
- [[information-throughput-persuasion-mechanism]]
- [[deliberationbench-normative-benchmark-influence-large-language]]
