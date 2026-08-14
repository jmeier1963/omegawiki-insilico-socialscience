---
name: Open-World Evaluations
slug: open-world-evaluations
type: evaluation
tags: [ai-evaluation, benchmark-validity, agent-evaluation, qualitative-methods, frontier-ai-capabilities, log-analysis]
source_papers: [open-world-evaluations-measuring-frontier-ai]
parent_methods: []
child_methods: [shadow-evaluation]
realizes_concepts: []
code_repo: ""
date_updated: 2026-07-16
---

## Problem setting

Benchmark-based agent evaluation systematically overstates capability on tasks precise enough to be gamed and understates capability on tasks where agents fail for incidental reasons (CAPTCHAs, rate limits, brittle GUI elements) unrelated to the capability being measured. As agents approach or saturate existing benchmarks, decision-makers (policymakers, safety teams, AI developers) still need a way to determine the *upper bound* of what an agent can accomplish under favorable conditions, since capabilities possible only with sufficient scaffolding and effort today may become widespread tomorrow.

## Mechanism

Open-world evaluations run a small number (often one) of long-horizon, real-world tasks in a genuine deployment setting (live users, real services, actual money) rather than a sandbox, and assess the agent's performance through in-depth qualitative analysis of its logs rather than a single aggregate metric. Human intervention is explicitly permitted for obstacles incidental to the capability under test (e.g., unblocking a CAPTCHA), which trades away run-to-run comparability in exchange for eliciting upper-bound performance rather than average-case performance. Five graded criteria situate an evaluation as "open-world" rather than a conventional benchmark: (1) openness (deployment vs. sandbox), (2) complexity/duration (days-to-weeks vs. minutes), (3) number of tasks (one or a few, closely inspected, vs. a large suite), (4) permitted human intervention beyond setup, and (5) reliance on log analysis rather than an aggregate score. No single criterion is decisive; classification depends on the overall pattern.

## Procedure

CRUX (Collaborative Research for Updating AI eXpectations), the project introduced by this method's source paper, operationalizes open-world evaluation as a repeatable process:

1. **Specify the construct.** State explicitly what capability is being measured and what claims a successful run would support, to avoid conflating "task completed" with "artifact meets production quality."
2. **Select task and scaffold.** Pair a long-horizon, real-world task with an agent scaffold plausibly capable of attempting it (CRUX #1: an agent given a macOS VM, GitHub, Apple Developer, and Gmail accounts, tasked with developing and publishing a simple iOS app end-to-end).
3. **Run dry runs.** Exercise the full pipeline before the real run to surface scaffolding bugs and implicit assumptions, without touching the live system under test (e.g., stopping short of actual App Store submission).
4. **Disclose evaluation awareness deliberately.** Decide whether to tell the agent it is being evaluated; for capability (as opposed to alignment) evaluations, the source paper argues disclosure is preferable since concealment is increasingly infeasible against capable models and success on the task is informative regardless of awareness.
5. **Document interventions.** Record every human intervention and classify it as agent-limitation-driven vs. infrastructure/policy-driven, so agent autonomy can be assessed independent of incidental obstacles.
6. **Monitor and analyze logs.** Add real-time monitoring (e.g., a watchdog subagent) in addition to post-hoc qualitative log analysis, since post-hoc analysis alone missed a fabricated phone number until later review in CRUX #1.
7. **Report cost alongside capability.** Treat cost (e.g., $ per run, cost breakdown by phase) as a first-class output, since capability on many real-world tasks continues to scale with budget.
8. **Release logs publicly** to enable external replicability of the qualitative claims, even though the run itself is not exactly reproducible.

## Assumptions

- A single (or few) successful run(s) under favorable conditions is informative about the capability *frontier*, even though it says little about typical-case reliability.
- Human interventions can be cleanly separated into "incidental" (policy/infrastructure-driven, should not count against the agent) and "agent limitation" (should count against the agent) — a judgment call the evaluators must make and disclose.
- Domain-expert qualitative review of logs can surface phenomena (reward hacking, partial successes, brittle workarounds, fabricated data) that automated grading would miss.

## Limitations

- **Not reproducible or standardized**: different groups running nominally similar open-world evaluations can produce incomparable results; this is an accepted trade-off, not a solved problem.
- **Cannot cleanly rank agents**: run-to-run variability can exceed differences between models, so open-world evaluations characterize what an agent *can* do, not comparative leaderboard position.
- **Best-case demonstrations can mislead on reliability**: a one-off success is informative about feasibility, not about typical-attempt success rate; the method recommends reporting effort-conditioned measures (success rate per dollar, pass@k) alongside best-case results where feasible.
- **Requires domain expertise and reviewer time** to judge open-ended output quality, limiting who can run and interpret such evaluations.
- **Incomplete log recall**: transcripts from long-horizon tasks can run to hundreds of millions of tokens; no analysis pass is guaranteed to surface every noteworthy behavior.
- **Blurry success criteria**: because human intervention is permitted, the boundary between agent accomplishment and human contribution can be hard to draw without careful intervention documentation.
- **Non-stationary environments**: internet-connected tasks make it hard to distinguish genuine task-class competence from lookup of a specific instance found online, and longitudinal comparison degrades as the available information online grows over time.

## Tradeoff profile

Open-world evaluations gain construct validity and upper-bound elicitation at the direct cost of the properties that make benchmarking broadly scalable: standardization, reproducibility, and comparability across agents/models. They are a complement to, not a replacement for, benchmark-based evaluation with log analysis (e.g., METR's time-horizon methodology) — the source paper explicitly recommends running both, since unsaturated benchmarks (SciCode, MMLU-Pro, Humanity's Last Exam, SWE-Bench Pro) remain valuable for longitudinal, cross-model comparison in ways open-world evaluations structurally cannot provide.

## Evaluated by
