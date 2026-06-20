---
title: "AI Satellite Accounts"
aliases: ["AI satellite account", "AI GDP", "AI economy accounts", "AI national accounts", "AI sector statistics"]
tags: [ai-economics, gdp, macroeconomics, measurement, national-accounts, policy]
maturity: emerging
key_papers: [where-ai-gdp-statistics-filling-measurement, machine-job-wrong-question]
first_introduced: "2026"
date_updated: 2026-06-20
related_concepts: []
---

## Definition

AI satellite accounts are focused subsets of national economic statistical accounts that track AI-specific production, spending, and output separately from headline GDP, analogous to existing digital economy satellite accounts or energy-sector accounts. They would aggregate AI activity across dispersed industry codes (cloud services, software publishing, data processing, etc.) into coherent metrics capturing nominal compute spending, raw compute capacity, and quality-adjusted AI output.

## Intuition

Current national accounts were designed for a manufacturing-era economy and assume gradual quality improvement in any sector. AI strains this: quality-adjusted output is improving >2,000%/year while nominal prices collapse, so conventional deflators dramatically understate growth and AI activity is nearly invisible in headline GDP. Satellite accounts solve this not by changing GDP methodology, but by maintaining a parallel measurement framework for the AI sector — the same approach already used for the digital economy.

## Formal notation

A satellite account produces:
- `S_nominal` = nominal compute spending (GPU rental rates × chip stock)  
- `S_capacity` = raw compute capacity (H100-equivalent units)  
- `S_quality` = quality-adjusted output (chained Fisher index at fixed benchmark performance)  
- `S_AI_GDP` = AI sector GDP (partitioning value between AI computation and human inputs)

## Variants

- **Within-existing-framework**: Aggregate dispersed AI industry codes + apply aggressive hedonic adjustment (continuous with current practice, no headline GDP change required)
- **AI GDP framework**: Treat the AI sector as a quasi-economic entity, partitioning value creation between AI and human factors; more speculative, requires further development
- **Digital Economy Satellite Account** (precedent): US Bureau of Economic Analysis already tracks digital services this way

## Comparison

| Approach | Requires GDP change | Captures quality growth | Policy-ready |
|----------|--------------------|-----------------------|--------------|
| Conventional GDP | No | Partially | Yes (now) |
| AI satellite account | No | Yes (quality-adjusted) | Near-term |
| AI GDP framework | Conceptually | Yes | Medium-term |

## When to use

For fiscal and monetary policy analysis requiring estimates of AI productive capacity growth; stress-testing labor tax base projections; scenario analysis for potential economic "phase changes" when AI becomes a close labor substitute. Most urgent before the measurement gap becomes a policy gap — satellite accounts take years to build.

## Known limitations

- Quality-adjusted estimates depend on benchmark performance as proxy for economic value; mapping from capability to value delivered is uncertain
- AI inference is mostly intermediate input, not final good — quality gains may not translate proportionally to final output
- Consumer surplus from AI services not captured
- Requires industry disclosure cooperation; current data gaps cannot be closed by external estimation alone

## Open problems

- What benchmark(s) best anchor quality-adjusted inference price indices?
- How do we capture the AI sector's gross margins (training vs. inference split) without industry disclosure?
- How should satellite accounts handle the transition from AI-as-complement to AI-as-labor-substitute?

## Key papers

- [[where-ai-gdp-statistics-filling-measurement]] — proposes AI satellite accounts as the primary policy recommendation; provides prototype methodology using compute spending + quality-adjusted output indices

## My understanding

The core insight is that the measurement problem is structural, not incidental. You cannot fix it by working harder with existing methods — you need a new accounting category. The precedent of digital economy satellite accounts suggests this is achievable; the open question is whether statistical agencies will move fast enough given the 2,000%/year growth rate.
