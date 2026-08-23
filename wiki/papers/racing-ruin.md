---
title: "Racing to Ruin"
slug: racing-ruin
arxiv: "2607.27638"
venue: "arXiv preprint (econ.TH)"
year: 2026
tags: [ai-race-dynamics, existential-risk, game-theory, coordination-failure, transparency, ai-governance, rnd-competition, war-of-attrition]
importance: 3
date_added: 2026-08-22
source_type: tex
s2_id: ""
tldr: "A duopoly model of R&D competition where advancing the frontier raises a common disaster hazard, showing that low transparency and low mutual trust in rivals' rationality make racing to certain ruin a self-enforcing equilibrium."
contribution_type: [theory]
datasets: []
keywords: [R&D race, disaster hazard, optimal stopping, imperfect monitoring, war of attrition, crazy types, AI pause]
domain: "Economics"
code_url: ""
cited_by: []
---

## Problem & Context

The paper opens on a concrete puzzle from Davos, January 2026: asked whether they would pause if every competitor paused too, Demis Hassabis said "I think so" and Dario Amodei concurred — while adding that an enforceable agreement to slow down is very hard to reach. Both prefer the cautious outcome and neither can get there. Fudenberg and Koh ask what exactly makes that coordination hard.

The existing R&D-race literature (Loury, Reinganum, Fudenberg–Tirole preemption models) studies how competition sets the *speed* of development. Here the object of interest is different: how far the frontier is carried before anyone stops, when advancing it creates a hazard that ends everyone's payoffs permanently.

## Key idea

Model the race as competition in the shadow of disaster. Scaling the technology raises the hazard of an irreversible event that drives all firms' flow payoffs to zero; the hazard comes from *developing* the technology, not from using it, so stopping eliminates future risk while preserving what has already been built. Only the leader's state governs whether the threshold is crossed.

The central result is a pair of bounds. Under perfect monitoring and common knowledge of rationality the equilibrium frontier lies between the monopolist's optimal stopping time and τ_R — the stopping time of a representative firm that persistently but mistakenly believes its rival is about to stop, and is therefore systematically overoptimistic about the profits from scaling.

## Method

Continuous-time stopping game between duopolists. Flow profit rises in own technology and falls in the rival's; a known hazard function maps the leader's technology level to disaster risk. Two relaxations are then analysed:

1. **Transparency**: a stop is observed only after an exponentially distributed detection lag with rate ω.
2. **Trust**: firms are uncertain whether the rival is rational or a "crazy type" that never stops, in the reputation tradition of Kreps and Wilson (1982).

The high-risk regime turns the game into a war of attrition, which is where the imperfect-monitoring analysis bites.

## Experiment & Results

Analytical results, no simulation.

**Bounds.** Under perfect observability τ_R is an upper bound on the frontier firm's technology, because a firm contemplating a stop knows the rival will see it. A matching lower bound holds across all equilibria, and the two bounds are close in several parametric models.

**Transparency.** With very noisy monitoring, news of a unilateral stop travels too slowly to be reciprocated in time, so racing forever becomes self-enforcing: equilibria exist in which neither firm ever stops and disaster arrives with probability one — none of which survive under perfect transparency. With sufficiently precise monitoring every equilibrium stops in finite time, but a second-mover temptation appears (each firm prefers to stop *second*, on confirmation). Under a regularity condition on tail payoffs, the frontier overshoots τ_R by at most O(1/ω) in expectation.

**Trust.** In a stationary environment with τ_R = 0, belief in the rival's rationality partitions into three zones: at low trust every equilibrium races to ruin (disaster with probability one); at intermediate trust both immediate stopping and racing to ruin are equilibria; at high trust the probability that two rational firms race forever vanishes quadratically in the prior odds ratio of rationality.

**The double edge.** Faster detection makes waiting for confirmation cheaper than stopping unconditionally. So at intermediate trust, increasing transparency can first *destroy* the early-stopping equilibrium by making free-riding attractive, and only restore it once detection is fast enough to make unconditional stopping self-enforcing. Transparency is therefore non-monotone in its effect on safety.

## Limitations

- Duopoly with symmetric firms; the extension to many heterogeneous labs and to state actors is asserted (a footnote raises US–China) rather than developed.
- The hazard is a known function of technology level — precisely the object that is unknown in the real case.
- Disaster is modelled as total and permanent payoff loss, which collapses the entire risk spectrum into one absorbing state.
- Payoffs are firm profits; externalities on non-participants do not enter.

## Open questions

- How do the three trust zones change with more than two players, where reputation must be maintained against several rivals?
- Does the non-monotonicity of transparency survive when monitoring is endogenous (firms choose their own opacity)?
- What real institutions move a field from the low-trust to the high-trust zone, given that the model makes trust in *rationality*, not in good faith, the operative variable?

## My take

The genuinely useful result is the non-monotonicity of transparency. The policy instinct in AI governance is that more visibility into what labs are doing is unambiguously good; this model gives a precise regime in which better monitoring makes the cautious equilibrium *harder* to sustain, because it converts "stop" into "wait to see whether they stopped." That is a counterintuitive claim with a clean mechanism behind it, and it is falsifiable in principle.

The trust partition is the weaker half. It rests on a reputational device (the "crazy type" who never stops) that does a lot of work, and the model's stationary specialization τ_R = 0 removes exactly the dynamics that make the general case interesting.

## Related

- [[ai-race-dynamics]]
