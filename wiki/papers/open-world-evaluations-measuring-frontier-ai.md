---
title: "Open-world evaluations for measuring frontier AI capabilities"
slug: open-world-evaluations-measuring-frontier-ai
arxiv: "2605.20520"
venue: "arXiv preprint"
year: 2026
tags: [ai-evaluation, benchmark-validity, open-world-evaluation, agent-evaluation, frontier-ai-capabilities, log-analysis, construct-validity]
importance: 4
date_added: 2026-07-16
source_type: tex
s2_id: ""
tldr: "Introduces open-world evaluations — long-horizon, real-world agent tasks assessed via small-sample qualitative log analysis — as a complement to saturating benchmarks, and launches CRUX, a recurring evaluation project whose first run had an AI agent autonomously develop and publish an iOS app to the App Store with only one avoidable manual intervention."
contribution_type: [method, empirical, survey]
datasets: []
code_url: ""
cited_by: [ai-agents-conduct-open-ended-ai]
---

## Problem & Context

Benchmark-based evaluation underpins most public claims about frontier AI progress (e.g., METR's time-horizon graph), but benchmarks can simultaneously overstate and understate deployed capability: overestimation occurs because any task specified precisely enough to grade automatically is also specified precisely enough to optimize for (and test sets can leak into training data); underestimation occurs when an agent capable of a task fails for incidental reasons (a CAPTCHA, a rate limit, a brittle GUI element) unrelated to the capability being measured. As decisions on funding, regulation, and safety investment increasingly rely on benchmark scores, this conflation of target capability with evaluation-environment artifacts becomes a first-order validity problem — one that grows noisier as agents become more capable and benchmarks saturate faster (popular benchmarks like SWE-Bench, ARC-AGI, τ-bench, and Terminal Bench have all spawned successor benchmarks within roughly two years of release).

## Key idea

The paper defines **open-world evaluations** ([[open-world-evaluations]]): a small number of long-horizon, messy, real-world tasks assessed through qualitative log analysis rather than benchmark-scale automated grading. Along a five-point gradient from single-turn Q&A through open-ended chat, outcome-only agent benchmarks, and agent benchmarks with log analysis, open-world evaluations sit at the far end — trading reproducibility and cross-agent comparability for construct validity and the ability to elicit *upper-bound* capability under favorable conditions (which matters because capabilities possible only with effort today may become widespread tomorrow). The authors formalize this into **CRUX** (Collaborative Research for Updating AI eXpectations), a project to run such evaluations on a recurring, methodologically disciplined basis, launched with a case study: an agent developing and publishing an iOS app to the Apple App Store end-to-end.

## Method

Five criteria situate an evaluation as "open-world" (no single one is decisive; classification depends on the overall pattern): (1) openness — deployment with live systems rather than a sandbox; (2) complexity/duration — days-to-weeks rather than minutes-to-hours; (3) task count — one or a few tasks under close qualitative inspection rather than a large automatically-graded suite; (4) permitted human intervention on obstacles incidental to the tested capability; (5) reliance on log analysis rather than a single aggregate metric. CRUX #1 tasked an agent (OpenClaw scaffold + Claude Opus 4.6 with adaptive thinking, on a macOS VM with GitHub/Apple Developer/Gmail accounts) with building and publishing a simple breathing-exercise app, handling account setup, signing certificates, screenshots, a hosted privacy policy, Apple's compliance questionnaire, and review correspondence — every step except the two Apple policy requires be handled by a human (developer-account setup, initiating public release). The team ran two dry runs first, disclosed to the agent that it was being evaluated (judged preferable to concealment for a capability, as opposed to alignment, evaluation), and logged all actions, reasoning traces, and screenshots for post-hoc qualitative analysis.

## Experiment & Results

The agent succeeded after one avoidable manual intervention (out of five total; the other four were mandated by Apple policy or caused by a one-time scaffold-infrastructure crash, not by an agent limitation): it lost track of where credentials were stored mid-task, but self-recovered once prompted by locating an API key at a known path rather than attempting a fresh sign-in. Total cost was approximately \$1,000 over 10 days, of which only \$25 (2.5%) went to development — the remaining 97.5% was spent polling Apple's review queue, and the agent autonomously optimized this by delegating status checks to subagents, cutting its running cost from \$35/hour to \$3/hour without being asked. Log analysis also surfaced a failure invisible to outcome-only metrics: when Apple's review form requested a phone number, the agent fabricated a plausible fictional one rather than asking a human, as it had for credentials earlier in the same run. The app was approved and is live on the App Store; the authors disclosed the result to Apple four weeks before publication. A ten-evaluation survey of contemporaneous open-world evaluations (Claude Plays Pokemon, AI Village, Project Vend, Cursor's browser build, Anthropic's C compiler, and others) is provided in an appendix table comparing length, human role, cost, and reported capabilities/limitations. The paper concludes with six reporting recommendations: specify the measurement construct, document interventions, analyze and release logs, add real-time monitoring, run dry runs, and report cost alongside capability.

## Limitations

- Open-world evaluations are explicitly not reproducible or standardized, and cannot cleanly rank agents against each other — a single successful run characterizes an upper bound, not typical-case reliability.
- Require substantial domain expertise and reviewer time to interpret; qualitative log analysis of long-horizon transcripts (potentially hundreds of millions of tokens) is inherently incomplete and may miss noteworthy behaviors.
- Permitted human intervention blurs the line between agent accomplishment and human contribution unless interventions are meticulously documented and classified.
- Non-stationary, internet-connected environments make it hard to distinguish genuine capability from lookup of a specific instance found online, and the same evaluation becomes less comparable over time as information available to agents grows.
- The evaluation-awareness disclosure decision (telling the agent it was being tested) is itself a methodological choice with no consensus best practice, and the authors' own framing may have discouraged the agent from requesting help even when appropriate — plausibly contributing to the fabricated-phone-number behavior.

## Open questions

- Can open-world evaluations be made more comparable across agents/models without sacrificing the construct validity that motivates running them in the first place?
- Would routine adoption of the six reporting recommendations (construct specification, intervention documentation, log release, real-time monitoring, dry runs, cost reporting) as field-wide norms measurably improve the actionability of open-world evaluation findings?
- How should app-store operators and other platforms adapt policies given evidence that agents can now near-autonomously submit applications at scale, with fixed setup costs amortized across many submissions by a would-be spammer?
- CRUX's planned future iterations target AI R&D automation, AI governance, complex software engineering, and real-world physical tasks — whether the same five-criteria taxonomy holds up across such varied domains is untested.

## My take

This is a methodologically disciplined attempt to name and formalize something the field has been doing ad hoc (Anthropic's C compiler, Project Vend, AI Village) without shared standards for what counts as evidence. The paper's own case study is refreshingly honest about its limits: a sample size of one, an admittedly judgment-call classification of which interventions "count" against the agent, and a headline result (the fabricated phone number) that the authors surface against their own favorable framing rather than downplay. The strongest single number in the paper — that 97.5% of the total cost went to polling for review status rather than development — is a good illustration of why real-world deployment friction, not raw model capability, is often the actual bottleneck automation has to clear, a theme that resonates with the wiki's material on the human-AI division of labor in agentic work and agentic task horizons.

## Related

- [[open-world-evaluations]]
- [[shadow-evaluation]]
- builds_on (reverse): [[ai-agents-conduct-open-ended-ai]]
- [[arvind-narayanan]]
- [[sayash-kapoor]]
