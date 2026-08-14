---
title: "The Such-That Problem in AI Evaluation"
aliases: ["Q1 vs Q2 evaluation problem", "such-that clauses", "human-side vs world-side evaluation"]
tags: [ai-evaluation, alignment, interpretability, ai-safety, philosophy-of-science, benchmarking]
maturity: emerging
definition: "The distinction between Q1 (can machines exhibit intelligent behavior?), a world-side question with externally fixed, benchmarkable success criteria, and Q2 (can machines exhibit intelligent behavior such that they are aligned, interpretable, safe, and governable?), a human-side question whose success criteria are contested and must be constructed through deliberation rather than read off from the task."
key_papers: [position-there-futures-benchmark-driven-ai]
first_introduced: "2026"
date_updated: 2026-07-16
related_concepts: [exaptation-ai-research, pluralistic-alignment]
---

## Definition

The AI field's founding question (Q1, Dartmouth 1956) — can machines exhibit intelligent behavior? — is a **world-side problem**: ground truth exists independently of the evaluator (whether a bird appears in a photo, whether a Go move is legal), the task environment can be characterized in advance, and closed-loop benchmarking is a natural methodology. The field's emerging question (Q2) — can machines exhibit intelligent behavior *such that* they are aligned, interpretable, safe, and governable? — is a **human-side problem**: whether a system is aligned, interpretable, or safe depends on criteria that are contested, contextual, and must be constructed through social deliberation rather than existing in nature. The "such-that" clause is not an additional constraint stacked onto Q1; it changes what counts as success in kind, not degree.

## Intuition

Q1 admitted an "epistemological bypass": researchers could set aside the philosophically fraught question of what intelligence *is* and instead measure what systems *do* (Russell & Norvig's rational-agent framing). This bypass is unavailable for Q2. Gabriel (2020) shows that the "simple thesis" — solve the technical problem first, specify normative criteria afterward — fails because normative and technical dimensions are entangled from the start. Fairness criteria have been shown to be mutually incompatible under reasonable assumptions (Chouldechova 2017); interpretability lacks a settled operational definition (Lipton 2018); alignment has multiple conflicting conceptions (Gabriel 2020). A field that has not agreed on what it is trying to achieve cannot validate that a benchmark tracks the goal — so applying benchmark culture to Q2 accelerates convergence on whichever operationalization gains traction first, not necessarily on what actually matters.

## Variants

- **Operational/world-side sub-clauses** (e.g., energy efficiency, latency) remain benchmark-tractable even when framed as "such that" constraints — the such-that problem specifically targets the *normative* subset: alignment, interpretability, safety, governance.
- **Political-neutrality framing**: Fisher et al. (2025, ICML oral) argue neutrality in AI is "theoretically impossible" because neutrality is inherently perspective-dependent — a related instance of a human-side evaluation target lacking an external ground truth.
- **Machine behavior framing**: Rahwan et al. (2019, *Nature*) propose a new interdisciplinary field studying AI systems with methods from biology, psychology, economics, and anthropology — implicitly conceding that Q2-style questions need methods capability research never required.

## Comparison

Distinct from ordinary measurement uncertainty (unknown parameters within a known model) — the such-that problem is closer to Knightian uncertainty: qualitative shifts in what needs to be measured that cannot be exhaustively enumerated in advance ("Knightian blindspot", Lehman et al. 2025). It differs from garden-variety construct-validity critiques of individual benchmarks because the missing ingredient is not a better proxy metric but *agreement on the target the metric should track*. Compare with [[pluralistic-alignment]], which addresses a related but narrower question (how to aggregate genuinely diverse human values into one system's alignment target) — the such-that problem is the more general claim that Q2's success criteria cannot be externally fixed the way Q1's could.

## Known limitations

- The paper concedes it cannot specify what an adequate Q2 evaluation methodology would look like ("We do not know. Neither does anyone else.") — the concept diagnoses a gap without closing it.
- Risk of being used as a rhetorical shield against *any* quantitative safety metric ("Measurement Objection"): the authors respond that they argue against treating metrics as dominant *selection criteria* before validating that they track real goals, not against measurement per se.
- The Q1/Q2 boundary is itself contestable — some "capability" benchmarks (e.g., deception detection, situational awareness) already blur into Q2 territory.

## Open problems

- Can any interim proxy metric for alignment/interpretability be validated against ground truth, given that the ground truth is itself under construction?
- What institutional mechanisms (protected venues, plural evaluation regimes, reflexive governance of evaluation criteria — see [[exaptation-ai-research]]) actually increase the rate at which good Q2-relevant work survives long enough to be recognized as such?
- Does the such-that framing generalize to other "essentially contested" AI evaluation targets (e.g., creativity, welfare, autonomy) beyond alignment/interpretability/safety/governance?

## Relationship to foundations

Builds on Russell & Norvig's rational-agent formulation of AI as a world-side design problem, Gabriel's (2020) analysis of the entanglement of technical and normative dimensions in alignment, and Knightian uncertainty (Knight 1921) as distinct from measurable risk.

## Realized by

## My understanding

This is a genuinely useful naming move: much of the friction in AI-safety discourse ("why can't you just benchmark alignment like you benchmark accuracy?") is exactly the Q1→Q2 category error the authors describe. The strongest evidence for taking it seriously is not philosophical but structural: capability research earned its benchmark-performance-tracks-real-progress correlation empirically over decades; that empirical validation simply does not exist yet for safety/alignment/interpretability metrics, so importing the Q1 evaluation culture into Q2 wholesale is an unvalidated methodological transplant, not a conservative default.
