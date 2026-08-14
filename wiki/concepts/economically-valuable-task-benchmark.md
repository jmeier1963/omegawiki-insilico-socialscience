---
title: "Economically Valuable Task Benchmark"
aliases: ["GDPval", "occupational deliverable evaluation", "real-world work benchmark", "economic capability evaluation"]
tags: [ai-evaluation, benchmark, ai-economics, labor-market, capability-measurement]
maturity: emerging
definition: "A benchmark that measures AI capability on representative real-world deliverables drawn from actual occupational work, used as a leading indicator of AI's potential economic impact ahead of adoption."
key_papers: [gdpval-evaluating-ai-model-performance-real]
first_introduced: "2025"
date_updated: 2026-07-05
related_concepts: [sociotechnical-ai-evaluation, automation-augmentation-employment-divide, marginal-returns-to-intelligence]
---

## Definition

A benchmark that evaluates AI models on representative real-world deliverables constructed from the actual work of experienced professionals across many occupations and economic sectors, graded on deliverable quality against expert work — used as a *leading* indicator of AI's potential economic impact, in contrast to lagging indicators like adoption rates or GDP growth.

## Intuition

Adoption and productivity statistics lag capability by years or decades because diffusion requires regulatory, cultural, and procedural change. Measuring what models *can* do on real occupational tasks gives earlier, more attributable evidence of economic relevance than waiting for the effects to show up in the economy. Grounding tasks in BLS work activities and real professional deliverables makes the measure economically interpretable.

## Variants

- **Coverage:** by occupation and GDP sector (e.g. GDPval: 44 occupations, top 9 GDP sectors).
- **Grading:** expert comparison vs. automated graders; full set vs. curated gold subset.
- **Conditions:** effect of reasoning effort, task context, and scaffolding; unaided model vs. human-in-the-loop cost/speed.

## Comparison

A capability-side, leading-indicator complement to the labor-side, lagging-indicator [[automation-augmentation-employment-divide]] (payroll evidence): one measures what models can do, the other what firms have done. A concrete instance of [[sociotechnical-ai-evaluation]] anchored in economic value rather than abstract task difficulty. Distinct from generic capability benchmarks (coding, reasoning) by its occupational-deliverable grounding.

## Known limitations

- Deliverable-quality grading is hard and partly comparison-based; "approaching experts" is rubric-dependent.
- Capability ≠ deployment: closing the eval gap does not imply economy-wide automation (adoption lags).
- Occupation/sector coverage is selected for GDP contribution and measurability, not exhaustive.

## Open problems

- How well does deliverable-quality performance predict actual labor-market and productivity outcomes?
- Does the (roughly linear) improvement continue, saturate, or accelerate?
- How much of the human-oversight cost advantage survives real deployment friction?

## Realized by

- [[gdpval-evaluating-ai-model-performance-real]] — introduces GDPval across 44 occupations and 9 GDP sectors with an open gold subset and public grader.

## My understanding

The right framing is leading vs. lagging: an economically-grounded capability benchmark is a warning system that fires years before payroll data would. Its value depends on the deliverable-grading rubric holding up and on people reading an expert-level score as "capable," not "already automating the economy" — capability leads adoption by a long, friction-filled interval. Pairs naturally with payroll-based displacement evidence to bracket the gap between what models can do and what firms have done.
