---
title: Quality-adjusted AI output grows >2,000% per year but is nearly invisible in conventional GDP statistics
slug: ai-economy-quality-adjusted-growth-invisible
status: proposed
origin: 'Migrated from research claim (original status: weakly_supported, confidence: 0.7); proposed in: where-ai-gdp-statistics-filling-measurement'
origin_gaps: []
tags:
- ai-economics
- gdp
- measurement
- macroeconomics
- quality-adjusted-output
domain: Economics
priority: 3
pilot_result: ''
failure_reason: ''
linked_experiments: []
date_proposed: 2026-06-04
date_resolved: ''
---

> **Migrated from a research claim** (`wiki/claims/ai-economy-quality-adjusted-growth-invisible.md`) on 2026-06-20. Original claim status `weakly_supported` (confidence 0.7) mapped to idea status `proposed`. The claim's structured `evidence`/`confidence`/`conditions` are preserved verbatim in the body sections and in the provenance block at the end of this file.
## Statement

The US AI economy's quality-adjusted productive capacity is growing at over 2,000% per year (2024-2025), yet this growth leaves only a small mark in conventional GDP statistics. The structural reason is that quality-adjusted gains are largely offset by collapsing per-unit prices (inference prices fell ~94%/year), making nominal AI revenues grow only moderately. AI's measurement gap may eventually exceed prior fast-tech mismeasurement episodes (internet, semiconductors) because AI is a potential labor substitute — prior gaps were bounded by human bottlenecks, AI's is not.

## Evidence summary

Korinek and McKelvey (2026) construct direct estimates combining GPU rental rates, chip-stock data, electricity usage, and AI inference price indices. Nominal compute spending: $37B → $90B → $219B (2023-2025, ~145%/yr). Quality-adjusted output using chained Fisher price index: ~2,290% in 2024. These estimates are not visible in headline GDP because AI activity is dispersed across industry codes and conventional hedonic adjustment methods understate quality improvement pace.

## Conditions and scope

- Based on US data 2023-2025; may generalize to other advanced economies
- Quality-adjusted estimates anchored to benchmark performance, not direct economic value
- The argument that AI mismeasurement exceeds internet/semiconductor cases is forward-looking and conditional on AI becoming a labor substitute
- Consumer surplus effects are not captured

## Counter-evidence

- Byrne et al. (2016) and Syverson (2017) found internet/digital mismeasurement was real but too small to explain the productivity slowdown; authors acknowledge this and argue AI case is structurally different
- The AI GDP framework (~$250B nominal in 2025) is explicitly labeled preliminary and speculative

## Linked ideas

## Open questions

- When does the "phase change" occur where AI's invisible productive capacity starts registering in nominal GDP (as AI-as-labor-substitute prices stop collapsing)?
- How large is the consumer surplus from AI services that is not captured by any of these measures?
- Can international statistical agencies coordinate AI satellite accounts before the measurement gap becomes a policy crisis?


<!-- PROVENANCE: original claim frontmatter (preserved for recovery / re-derivation)
title: "Quality-adjusted AI output grows >2,000% per year but is nearly invisible in conventional GDP statistics"
slug: ai-economy-quality-adjusted-growth-invisible
status: weakly_supported
confidence: 0.70
tags: [ai-economics, gdp, measurement, macroeconomics, quality-adjusted-output]
domain: "Economics"
source_papers: [where-ai-gdp-statistics-filling-measurement]
evidence:
  - source: where-ai-gdp-statistics-filling-measurement
    type: supports
    strength: moderate
    detail: "Direct estimates: inference prices fell ~94%/year at fixed benchmark performance 2023-2026; nominal compute spending grew ~145%/year; quality-adjusted AI output ~2,290% in 2024, ~2,271% in 2025. Nominal growth is modest because rapidly growing quality is offset by collapsing per-unit prices."
conditions: "Holds for quality-adjusted AI output as measured by benchmark-performance-anchored inference price indices. Weaker for GDP headline impact — AI inference is mostly intermediate input and the production function mapping quality gains to final output is uncertain. Primarily based on US data 2023-2025."
date_proposed: 2026-06-04
date_updated: 2026-06-04
-->
