---
title: "AI Adoption Depth–Breadth Gap"
aliases: ["breadth-depth dissociation", "shallow AI penetration", "AI adoption depth", "wide but thin AI adoption", "task-level penetration gap"]
tags: [ai-economics, ai-adoption, labor-market, measurement, diffusion, ai-and-society]
maturity: emerging
definition: "The empirical dissociation between how widely AI has spread across occupations and activities (breadth) and how much of any given role's task set it actually touches (depth) — adoption reaching nearly all occupations while penetrating only a minority of tasks within them."
key_papers: [google-ai-economy-atlas-v1-mapping]
first_introduced: "2026"
date_updated: 2026-08-04
related_concepts: [automation-augmentation-employment-divide, genai-divide-enterprise-learning-gap, ai-science-adoption-gap, task-crossover, agentic-enterprise-operations]
---

## Definition

AI adoption has two independent dimensions that public argument routinely conflates. **Breadth** is the share of occupations, sectors or activities in which AI is used at all. **Depth** is the share of tasks *within* an adopting role that AI actually touches. The depth–breadth gap is the observation that these have come apart: breadth is close to saturation while depth remains low, so any single-number account of "AI adoption" is misleading in whichever direction it is stated.

## Intuition

A statistic like "AI is used in occupations covering 88% of US employment" invites the reading that AI has substantially reorganized those jobs. It has not. In the same data, the median adopting occupation uses AI for 21% of its tasks, and only 3% of occupations exceed 75% task coverage. Both numbers describe the same world; each alone describes it wrongly.

The gap matters because breadth and depth imply different forecasts. Wide-and-shallow adoption is consistent with AI as a general-purpose assistive layer whose economic effect shows up as diffuse small time savings — hard to measure, slow to appear in productivity statistics, and unlikely to produce sharp displacement. Deep adoption in a narrow set of roles is consistent with concentrated displacement. Measuring only breadth makes the first look like the second.

A closely related dissociation runs along the automation axis: even where AI is used for non-routine cognitive work (~65% of work-related interactions, against ~35% of professional tasks economy-wide), attempts at end-to-end task automation are under 10% of that usage. Usage concentrates in partial drafting, review and refinement, ideation, and information retrieval — collaboration, not substitution.

## Variants

- **Occupational depth gap** — breadth across occupations vs. task coverage within an occupation (the ATLAS formulation).
- **Intent gap** — presence of AI in a task vs. AI completing that task end-to-end; distinguishes assistive from automating use of the *same* capability.
- **Expertise inversion** — the observation that within adopting occupations, lower-to-middle-expertise tasks see relatively *higher* AI use than the highest-expertise tasks, even though the highest-earning workers adopt at the highest rates. Adoption intensity and task difficulty move in opposite directions.
- **Enterprise vs. consumer depth** — measurement of depth is highly sensitive to which surfaces are observed; excluding enterprise API traffic removes the surface where end-to-end automation would be most visible.

## Comparison

- Distinct from **exposure** measures (Eloundou et al. 2024; Richmond 2026), which estimate what AI *could* affect. Exposure is a capability claim about tasks; the depth–breadth gap is an observed-behavior claim about usage.
- Distinct from **employment-outcome** studies (Brynjolfsson et al.; Massenkoff & McCrory 2026), which measure what happened to jobs. The gap sits between exposure and outcomes and helps explain why the two have not reconciled: shallow penetration is exactly what one would expect to produce large exposure with small measured employment effects.
- Related to but narrower than [[genai-divide-enterprise-learning-gap]], which concerns organizational failure to convert pilots into value; the depth–breadth gap is measured at the task level and does not presuppose an organizational cause.

## Known limitations

- Established almost entirely from first-party vendor telemetry, which observes only that vendor's surfaces and typically excludes enterprise traffic. Depth may be systematically undercounted.
- Depth is measured against a fixed task taxonomy (O*NET). If AI creates task bundles the taxonomy has no slot for, they are invisible, and depth is understated by construction.
- Behavioral counts do not weight tasks by economic importance or time. Touching 21% of tasks says nothing about whether those are the 21% that matter.
- A snapshot cannot distinguish a diffusion lag from a structural ceiling.

## Open problems

- Does depth rise toward breadth over time, or does it plateau? The answer determines whether wide-and-shallow is a phase or an equilibrium.
- What sets the ceiling — model capability, verification cost, trust, or organizational process?
- Why does usage intensity fall at the highest expertise levels, and does agentic capability reverse that?
- Can depth be measured in units of time or value rather than task counts?

## Relationship to foundations

Rests on the task-based framework of labor economics (Autor, Levy & Murnane 2003; Acemoglu & Autor 2011; Acemoglu & Restrepo 2019), which treats occupations as bundles of tasks and technology as acting on tasks rather than jobs. The depth–breadth gap is only expressible in that framework: it is the observation that a technology can enter almost every bundle while displacing few of the items in any bundle.

## Realized by

- [[privacy-preserving-usage-telemetry-classification]] — the measurement apparatus that makes the gap observable: classifier pipelines over de-identified interaction logs mapped onto official occupational and time-use taxonomies.

## My understanding

This is primarily a discipline for reading adoption statistics rather than a mechanism, and its value is defensive: it names the specific equivocation that makes both AI-hype and AI-skeptic labor claims sound well-evidenced from the same dataset. Whether it becomes a lasting concept or a 2026 measurement artifact depends on whether the gap narrows. If agentic tooling closes it, the concept ages into a description of the pre-agentic period; if it persists, it is the central empirical fact about AI diffusion. The [[shift-agentic-ai-evidence-codex]] telemetry pointing the other way on a developer surface, over the same months, is the sharpest available test.
