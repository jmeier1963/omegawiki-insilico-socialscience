---
title: "Experimental Mathematics as Population Surveys"
aliases: ["mathematical population survey", "large-scale crowdsourced mathematics project", "new difficulty landscape mapping"]
tags: [ai-math, experimental-mathematics, crowdsourced-research, formal-verification, theorem-proving]
maturity: emerging
definition: "A mode of mathematical research, newly enabled by AI tools and large-scale digital collaboration, that collects and analyzes large datasets spanning an entire class of mathematical statements or objects ('population surveys') rather than deep investigation of one problem at a time ('case studies'), mapping the difficulty landscape of a research frontier at scale."
key_papers: [math-terence-tao-caltech-talk-proof]
first_introduced: "2026"
date_updated: "2026-11-02"
related_concepts: [proof-abundance-era, ai-mathematical-discovery]
---

## Definition

Traditional mathematical research proceeds largely as a sequence of **case studies**: a researcher or small team investigates one conjecture or problem in depth. **Population-survey** mathematics instead collects large-scale datasets of related statements, objects, or problem instances — using crowdsourced human effort, automated arguments, or both — to characterize an entire class at once, revealing the shape of a research frontier's "difficulty landscape" rather than a single point on it.

## Intuition

AI tools and formal proof assistants make it newly feasible to check or partially resolve very large numbers of related mathematical statements in parallel, turning what used to be isolated case-by-case effort into something closer to a large-N empirical survey. This is a methodological shift as much as a capability one: it changes what counts as a publishable or useful mathematical research output, from "a proof of statement X" to "a map of which members of family {X} are true, false, open, or hard, and why."

## Variants

- **Equational Theories Project (2024–2025)** — crowdsourced human and automated arguments settling over 22 million true/false statements in universal algebra.
- **Inverse Galois Problem challenge / IGP24 (2026)** — a crowdsourced competition to locate degree-24 polynomials realizing each of 25,000 possible Galois groups, with a planned extension to degree 31.
- **Integrated Explicit Analytic Number Theory Network (IEANTN)** — a living, continuously updatable network ("spreadsheet") of interconnected results in explicit analytic number theory, rather than a static literature.

## Known limitations

These are early, domain-specific prototypes (universal algebra, Galois theory, analytic number theory); it is untested whether the approach generalizes to areas of mathematics with less combinatorially enumerable structure. The approach also depends on crowdsourced and automated-argument infrastructure that is itself new and unproven at scale.

## Open problems

How to design and validate population-survey methodologies for new mathematical domains; how such surveys should be credited and incentivized within a research culture still organized around individual problem-solving (see [[proof-abundance-era]]); and whether the resulting "difficulty landscape" maps generalize or transfer insight back to case-study-style deep investigation.

## My understanding

This is a concrete methodological counterpart to the [[proof-abundance-era]] argument: rather than just asserting that mathematical culture should change, these three projects are existing attempts to build the kind of large-scale, AI-enabled research infrastructure that a "Math 2.0" culture would actually run on.
