---
title: "Preparing for the Age of AI: A Living Outlook for Decision-Makers — Technological Trajectories in AI: What's Next"
slug: preparing-age-ai-living-outlook-decision
arxiv: ""
venue: "appliedAI Institute for Europe (Whitepaper)"
year: 2026
tags: [ai-forecasting, ai-policy, europe, capability-projection, labour-market, ai-governance, agentic-ai, robotics, ai-safety-policy, digital-sovereignty]
importance: 3
date_added: "2026-09-22"
source_type: pdf
s2_id: ""
tldr: "A 111-page appliedAI Institute whitepaper that explicitly declines to build branching scenarios and instead offers three capability-speed projections (Plateau 5%, Continued Pace 50%, Accelerated 45%) for the next 36 months, maps their opportunities/risks across ten impact categories, and derives a 19-item no-regret policy measure set plus appliedAI's own portfolio response."
contribution_type: [position, analysis]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

European decision-makers face a 36-month planning horizon under deep uncertainty about AI capability trajectories, and the report's authors argue existing scenario exercises conflate two separable questions: how fast will capabilities advance, and how will institutions/markets respond. The whitepaper's stated purpose is to separate these — Chapter 1 fixes only the speed axis; Chapters 2–4 layer probability, impact, and policy response on top.

Framing numbers from the executive summary set the stakes: EU controls only 4.8–5% of global high-end AI compute; enterprise AI adoption sits at 13.48% in Europe vs. 41% for large firms elsewhere; only 6% of local governments prioritise AI while 77% of citizens distrust government AI use; 52% of internet content is now assessed as machine-generated with deepfakes reportedly doubling every six months. These are presented as pre-existing conditions that hold across all three projections, not projection-specific claims.

The document is explicit about its own scope limits (Section 1.6): it does not assign projection probabilities in Chapter 1 (deferred to Chapter 2), does not rank projections as good/bad, does not detail sector impacts (Chapter 3), and does not prescribe measures (Chapter 4). It also explicitly scopes out sustainability/climate impacts as a standalone category, treating them as cross-cutting rather than a discrete tenth-plus category (Section 3.2 note).

## Key idea

**Reframe "scenario planning" as single-axis capability projection.** Where classic foresight exercises (e.g., 2×2 matrices crossing "capability" against "societal response" or "regulatory stance") bundle multiple uncertain axes into named worlds, this report holds every axis but one fixed: the three projections (P1 Plateau, P2 Continued Pace, P3 Accelerated) differ *only* in how fast AI capability improves. Societal response, adoption behavior, and policy choices are treated as downstream variables that play out differently *within* each projection, not as defining features of it (Section 1.1: "distinguished solely by the speed of AI capability progress—not by the direction of societal response, regulatory choices, or adoption patterns").

This lets the authors do something branching 2×2 scenario matrices structurally cannot: assign a single, updatable probability distribution across the three worlds (P1 5% / P2 50% / P3 45%, Section 2.10.2) derived from four technical "drivers" (architectures & training paradigms; agentic autonomy & orchestration; R&D/software-engineering automation; robotics & embodied AI) tracked against named benchmarks (SWE-bench, OSWorld, GAIA, METR task-horizon). The near-parity between P2 and P3 (50% vs. 45%) is presented as the load-bearing uncertainty of the whole document — "there is a 95% probability that either P2 or P3 will happen" (Section 2.10.4) — with R&D automation flagged as the single swing factor between them (Anthropic's Claude Code reportedly writing ~90% of the company's internal code is cited repeatedly as the concrete evidence tipping weight toward P3).

The second organizing idea is the **probability × time-criticality prioritization logic** used to derive policy measures in Chapter 4: impacts that are "no-regret" (already materializing regardless of which projection obtains — entry-level labour displacement, AI literacy gaps, information-integrity infrastructure, governance capacity, digital equity, innovation-ecosystem adaptation) get 19 unconditional measures; impacts contingent on P2/P3 materializing get 12 conditional measures; and a further filter (purpose fit, feasibility, comparative advantage, urgency×tractability) selects which of those appliedAI itself will pursue via 5 "opportunity fields" (Section 4.4.1).

## Method

Four-chapter structured-judgment pipeline, explicitly not a mechanical model:

1. **Chapter 1 — Projection definition.** Three capability-speed projections defined qualitatively (what improves, what stays hard) with no probabilities attached yet.
2. **Chapter 2 — Driver-based probability estimation.** Four drivers (architectures/training; agentic autonomy/orchestration; R&D/SWE automation; robotics/embodied AI) each scored against current benchmark evidence (e.g., OSWorld 12%→73%, SWE-bench 77–80% "human parity," GAIA 74.55% vs. 92% human, robotics production success rates >99%) and against named-expert timeline claims (Amodei, Altman, Hassabis, Schmidt, Legg, Sutskever, Bengio, LeCun, Jones — collected in a comparison table, Section 1.5/2.10.2). Drivers are "weighted roughly equally" by explicit statement, with R&D automation flagged as the swing factor; the stated consolidation method is "structured judgment—not a mechanical formula" (Section 2.10.1). A re-estimation protocol (Section 2.11) lists concrete trigger events (e.g., SWE-bench/OSWorld/GAIA >90%, METR task horizon >24h, verified AGI-level claims) and commits to publishing revised probabilities within two weeks of a trigger if the shift exceeds 5 percentage points.
3. **Chapter 3 — Impact mapping.** Ten impact categories (labour market & skills; public finance & social systems; industry & competitiveness; innovation & startups; science system; security & resilience; digital public sphere & democracy; health & care; education system; local institutions & liveability), each broken into first-order/second-order impacts, per-projection severity, a "what this looks like in each projection" narrative vignette, and a "what if done right" positive-counterfactual paragraph.
4. **Chapter 4 — Measure derivation.** Impacts are weighted by projection probability (from Ch. 2) and time-criticality (from Ch. 3's "no-regret impact patterns," Section 3.13.3) to produce Part A (full measures inventory, any implementer) and Part B (appliedAI's own portfolio, filtered by purpose fit/feasibility/comparative advantage).

No primary data collection; the evidentiary base is secondary — benchmark leaderboards, named-expert public statements, and cited empirical studies (labour-displacement figures attributed to sources [85]–[91] in-text, e.g., 12% of labour-market tasks already automatable, 6–20% employment decline in high-exposure entry-level cohorts since late 2022, 20% decline specifically for junior software developers, 6–15% documented productivity gains across software/consulting/customer service).

## Experiment & Results

Not an experiment; the "results" are the projection probability table and the impact/measure inventories.

- **Projection probabilities (best-guess, Section 2.10.2):** P1 Plateau = 5%, P2 Continued Pace = 50%, P3 Accelerated = 45%. P1 is downweighted almost to a null case — the authors argue it "would require unforeseen fundamental barriers or major disruptions" given that all four drivers currently show benchmark progress inconsistent with stagnation.
- **Impact severity summary (Section 3.14):** every one of the ten categories is rated "moderate/manageable" under P1, "high" under P2, and "severe" (or "potentially catastrophic," for digital public sphere) under P3 — a monotonic severity gradient by construction, since severity is defined as scaling with capability speed.
- **Concrete labour figures (Section 3.3.2):** 12% of labour-market tasks already cost-effectively automatable; entry-level (age 20–30) employment in high-exposure roles down 6–20% since late 2022; junior software developers specifically down 20%; junior customer-support workers down 11%; AI-adopting firms show +6% employment growth and +9.5% sales growth over 5 years but gains concentrate in senior/AI-augmented roles.
- **Measures inventory:** 19 no-regret measures (probability = 1, apply across all projections), 12 projection-conditional measures (mostly P2/P3-triggered, several tagged "95% probability" or "Primarily P3 (45%)" in the underlying table), and 5 appliedAI opportunity fields (e.g., an appliedAI Skills Framework/Academy for workforce AI literacy).
- Sample P2/P3-conditional measures from the inventory include an EU "early warning system" for technological leaps and misuse risks, a "verified and decoupled economic internet" for critical infrastructure, preparation for AI-agent-conducted cyberattacks on undetected vulnerabilities, massive expansion of European compute/energy capacity to reduce dependency, and rapid-intervention mechanisms for disruptive capability jumps — all explicitly scoped to national governments, EU institutions, or sector agencies rather than to appliedAI itself (Section 4, end-of-document tables).

## Limitations

- **Self-declared non-scenario.** The document repeatedly disclaims that it is offering scenarios in the classical multi-axis sense; a reader expecting branching narratives about differing regulatory/societal responses will not find them — response variation is folded into per-projection "what this looks like" vignettes, not separate axes.
- **Point-estimate probabilities from "structured judgment."** The 5/50/45 split is explicitly not derived from a formal model ("not a mechanical formula") — it is expert judgment presented with false-precision-looking decimal weighting on individual drivers, with no stated inter-rater process, sensitivity analysis, or disagreement range among the report's own authors.
- **Evidence conflation of frontier-lab marketing claims with independent evidence.** Several of the load-bearing data points for weighting toward P3 — "Claude Code writes ~90% of Anthropic's code," Altman's "we know how to build AGI" — are self-reported claims by parties (frontier labs, their CEOs) with a direct commercial interest in the capability narrative; the report cites them as evidence inputs without flagging the conflict of interest.
- **Author is not a neutral party either.** appliedAI Institute for Europe is itself a training/consulting-adjacent nonprofit whose Chapter 4 "portfolio" section recommends measures (AI literacy training, skills academies) that substantially overlap with services appliedAI already provides — a structural incentive to find "no-regret" AI-literacy/skills gaps large and urgent.
- **Monotonic severity-by-construction.** Because impact severity in Chapter 3 is defined relative to capability speed, the "high/severe" gradient across P1→P2→P3 is close to tautological rather than an independent finding.
- **No treatment of sustainability/climate** as a standalone impact category — acknowledged explicitly by the authors as a scoping gap, not resolved.
- **Living document, snapshot-dated.** Benchmark figures (SWE-bench, OSWorld, GAIA) are dated "February 2026" per section headers; given the report's own re-estimation protocol, several of its cited numbers may already be stale.

## Open questions

- Given the report's own re-estimation trigger table (Section 2.11), which of the listed triggers (e.g., SWE-bench/OSWorld/GAIA crossing 90%, METR horizon >24h) have already fired since April 2026, and has appliedAI published a revised probability estimate?
- Does the probability-weighting methodology generalize, or is "structured judgment... not a mechanical formula" simply a description of unreplicable expert intuition dressed in a table?
- How does the P2/P3 near-parity (50/45) compare to other institutional forecasts in the wiki ([[ai-2027-scenario]], [[international-ai-safety-report-2026]]) — do they converge on similar splits, or does this appear to be an outlier calibration?
- The report frames P1 (5%) as "the generally accepted lower boundary" — is that a genuine expert consensus claim, or an artifact of appliedAI selectively citing accelerationist-leaning frontier-lab voices (Amodei, Altman, Hassabis) over skeptics (LeCun, who gets one dissenting row in the expert table)?
- To what extent do the 19 "no-regret" measures survive if P3's 45% probability turns out to be substantially overstated in hindsight?

## My take

The most useful thing this document does is a naming discipline: separating "how fast will capability grow" from "how will institutions respond" into two different chapters, rather than baking both into named composite scenarios the way most foresight exercises do. That structural choice is more legible than a typical 2×2 matrix and makes the report's own probability estimates falsifiable/updatable in a way branching scenarios usually aren't (Section 2.11's re-estimation protocol is a genuinely good practice other AI-policy foresight work should copy).

The probabilities themselves deserve real skepticism. A 5/50/45 split that leans almost entirely on frontier-lab CEOs' own public timeline claims (Amodei, Altman, Hassabis are all cited as primary evidence for weighting toward P3) imports exactly the promotional bias those actors have every commercial incentive to produce — the report does not flag this, and LeCun's dissent is included as one row in a table rather than engaged with substantively. Readers should treat the specific 45%/50%/5% numbers as an artifact of who was asked, not a calibrated forecast.

The Chapter 4 measures are worth reading against [[agentische-ki-eine-demokratisch-rechtsstaatliche-verwaltung]]: both are German-institutional-context documents converging on the idea that governance/adoption capacity — not raw capability — is the actual bottleneck, but this appliedAI report is far more willing to treat "who will do this" as a tractable question (it names appliedAI's own 5 opportunity fields) where the Agora study insists responsibility cannot be delegated at all. Also worth flagging: appliedAI is not a disinterested observer of its own Chapter 4 recommendations — several "no-regret" measures (AI-literacy training, skills academies) map closely onto appliedAI's existing commercial/programmatic offerings, which does not make the recommendations wrong but does mean they should not be read as an independent policy audit.

## Related

- [[capability-speed-projection-framework]]
- [[ai-2027-scenario]]
- [[international-ai-safety-report-2026]]
- [[europe-2031-what-getting-ai-wrong]]
- [[eurostack-european-alternative-digital-sovereignty]]
- [[digital-sovereignty-special-studies-project-europe]]
- [[ai-disadvantaged-communities-germany-risks-opportunities]]
- [[ai-policy-pacing-problem]]
- [[post-labor-economy]]
- [[self-service-labour-displacement]]
- same_problem_as: [[agentische-ki-eine-demokratisch-rechtsstaatliche-verwaltung]]
