---
title: "Capability-Speed Projection Framework"
aliases: ["single-axis AI projection", "capability-speed scenario", "pace-differentiated projections", "speed-only foresight"]
tags: [ai-forecasting, ai-policy, methodology, foresight, capability-projection]
maturity: emerging
definition: "A foresight method that replaces branching multi-axis scenario matrices with a single axis — the speed of AI capability advancement — assigning updatable point-probabilities to a small number of speed regimes via driver-based structured judgment, with pre-committed re-estimation triggers."
key_papers: [preparing-age-ai-living-outlook-decision]
first_introduced: "2026"
date_updated: "2026-09-22"
related_concepts: [ai-policy-pacing-problem]
---

## Definition

A capability-speed projection framework fixes every dimension of a foresight exercise except one — how fast AI capability improves — and defines a small number of named projections (e.g., Plateau / Continued Pace / Accelerated) that differ *only* along that axis. Societal response, regulatory choice, and adoption behavior are treated as downstream variables that play out differently *within* each speed regime rather than as defining features of separate named worlds, as they would be in a classic branching scenario matrix (e.g., a 2×2 crossing "capability" against "regulatory stance").

## Intuition

Standard scenario planning bundles several uncertain axes (capability, regulation, adoption, geopolitics) into named composite worlds, which makes the scenarios vivid but structurally resistant to updating: if new evidence shifts your view of capability growth, it is unclear which composite scenario's probability should move, or by how much, because capability is entangled with everything else in the story.

By holding every axis but speed fixed, this framework can instead assign a single, explicit, updatable probability distribution over a small number of speed regimes — the founding instance uses three (5% / 50% / 45%) derived from scoring named technical drivers (architectures, agentic autonomy, R&D automation, robotics) against concrete benchmark evidence and named-expert timeline claims. Because the axis is narrow and the drivers are named, the framework can also specify concrete **re-estimation triggers** in advance (e.g., a named benchmark crossing 90%, a task-horizon metric exceeding 24 hours) and commit to publishing revised probabilities within a fixed window after a trigger fires — something a branching multi-axis scenario, whose "worlds" are holistic narratives, cannot easily do.

The tradeoff is that everything the framework doesn't put on its single axis — how institutions and societies actually respond — has to be reintroduced later as within-projection narrative vignettes, which reduces some of the branching richness that multi-axis scenarios are built to capture.

## Variants

- **Driver-weighted** (the founding instance) — a fixed small set of named technical drivers, each scored against benchmark evidence, combined by "structured judgment" (explicitly not a formal model) into a probability over speed regimes.
- **Trigger-committed** — the re-estimation-protocol variant, where concrete named events pre-commit the forecaster to revising probabilities within a stated window, making the projection falsifiable/updatable in a documented way.
- **Severity-gradient companion** — pairing the speed projections with an impact-mapping layer where severity is defined as monotonically increasing with speed (as in the founding instance's Chapter 3); this makes the impact ratings close to tautological rather than an independent finding, a known limitation of the variant rather than of the framework itself.

## Comparison

- Distinct from classic **multi-axis scenario planning** (2×2 or larger matrices), which the framework is explicitly defined in opposition to — multi-axis approaches capture branching institutional/societal responses as separate named worlds; this framework treats those responses as a within-projection detail.
- Distinct from [[ai-policy-pacing-problem]], which is about the *structural mismatch* between exponential capability growth and slow policy response — a governance-capacity claim. This concept is about a *forecasting methodology* for representing capability-growth uncertainty itself. The two are complementary: a capability-speed projection framework could be used to quantify exactly how large the pacing-problem gap is expected to become under each speed regime.
- Compare directly against other institutional capability forecasts sharing the wiki (e.g., [[ai-2027-scenario]], [[international-ai-safety-report-2026]]) to check whether this single-axis approach converges with or diverges from more narrative/branching forecasts on the same underlying uncertainty.

## Known limitations

- **Point estimates from "structured judgment."** The founding instance's probabilities come from expert judgment presented with decimal-level precision on individual driver weights, with no stated inter-rater process, sensitivity analysis, or disagreement range — the appearance of rigor may exceed the actual epistemic grounding.
- **Evidence source conflation.** Driver scoring can lean on self-reported capability claims from parties (frontier labs, their executives) with a direct commercial interest in the capability narrative, without the framework itself providing a mechanism to flag or discount that conflict of interest.
- **Author non-neutrality is external to the framework but easy to smuggle in**: whoever selects the drivers, the benchmarks, and the "expert" voices consulted shapes the resulting probabilities as much as any explicit weighting does.
- **Monotonic-severity risk.** If a companion impact-mapping layer defines severity as scaling with speed, the resulting "high/severe" gradient across projections is close to tautological rather than an independently validated finding — a trap the framework does not itself prevent.

## Open problems

- Does the re-estimation-trigger mechanism actually get exercised in practice, or do point estimates go stale without revision once a report is published?
- How sensitive are the resulting probabilities to which experts/drivers were consulted, and can that sensitivity be measured rather than asserted?
- Can this framework be formally reconciled with multi-axis scenario planning — e.g., as a first-stage capability-speed prior that a second stage then crosses with a societal-response axis — rather than treated as a replacement for it?
- Does a single-axis framework understate genuinely correlated uncertainty (e.g., faster capability growth plausibly changes the probability of a given regulatory response, not just its severity)?

## Relationship to foundations

Draws on standard structured-expert-judgment forecasting practice (comparable to Delphi-style elicitation) and on scenario-planning methodology generally, but narrows the scope from full branching scenarios to a single explicit axis — closer in spirit to a probabilistic nowcasting exercise than to classical Schwartz-style scenario planning.

## Realized by

*No method page yet — the concept is currently instantiated only in the founding report's own procedure rather than as a documented, reusable protocol.*

## My understanding

The genuine contribution is a discipline, not a result: separating "how fast will this go" from "how will everyone react" into different stages of the analysis, so that the first stage's probabilities can be revised on evidence without having to relitigate an entire named scenario. The pre-committed re-estimation triggers are the single best practice here and are worth borrowing regardless of whether one trusts the specific numbers a given report produces with this framework.

The framework does not, by itself, guard against the most common failure mode of any expert-elicitation exercise: whoever is consulted determines the answer. A capability-speed projection framework can look more rigorous than a narrative scenario purely because it outputs decimal probabilities, while carrying exactly the same amount of selection bias in who and what got weighted. Treat the methodology as sound and the specific probabilities it produces as only as good as the inputs disclosed.
