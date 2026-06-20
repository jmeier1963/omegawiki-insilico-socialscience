---
title: LLM-based agentic forecasters can match human superforecaster accuracy on open-ended questions
slug: llm-agentic-forecaster-achieves-superforecaster-level-accuracy
status: proposed
origin: 'Migrated from research claim (original status: weakly_supported, confidence: 0.55); proposed in: aia-forecaster'
origin_gaps: []
tags:
- forecasting
- llm
- agentic-ai
- superforecasting
- calibration
domain: NLP
priority: 3
pilot_result: ''
failure_reason: ''
linked_experiments: []
date_proposed: 2026-05-04
date_resolved: ''
---

> **Migrated from a research claim** (`wiki/claims/llm-agentic-forecaster-achieves-superforecaster-level-accuracy.md`) on 2026-06-20. Original claim status `weakly_supported` (confidence 0.55) mapped to idea status `proposed`. The claim's structured `evidence`/`confidence`/`conditions` are preserved verbatim in the body sections and in the provenance block at the end of this file.
## Statement

LLM-based forecasting systems that combine agentic search, multi-agent aggregation, and statistical calibration can achieve accuracy levels statistically indistinguishable from human superforecasters on open-ended judgmental forecasting benchmarks.

## Evidence summary

One industry technical report (Alur et al. 2025, Bridgewater AIA Labs) shows ForecastBench parity with superforecasters. On harder prediction market questions (MarketLiquid), the system underperforms consensus but adds value in an ensemble. Confidence set to 0.55 due to non-peer-reviewed source and benchmark difficulty concerns.

## Conditions and scope

- Applies to open-ended judgmental forecasting (unstructured data aggregation)
- Requires: high-quality news source access, agentic search with foreknowledge bias filtering, Platt scaling calibration
- ForecastBench may not represent the hardest real-world forecasting challenges

## Counter-evidence

On more difficult prediction market questions, the system underperforms market consensus — suggesting superforecaster parity does not extend to all forecasting domains.

## Linked ideas

## Open questions

- Does this result replicate in peer-reviewed settings with harder benchmarks?
- What is the irreducible gap between LLM forecasters and market consensus on liquid prediction questions?


<!-- PROVENANCE: original claim frontmatter (preserved for recovery / re-derivation)
title: "LLM-based agentic forecasters can match human superforecaster accuracy on open-ended questions"
slug: llm-agentic-forecaster-achieves-superforecaster-level-accuracy
status: weakly_supported
confidence: 0.55
tags: [forecasting, llm, agentic-ai, superforecasting, calibration]
domain: "NLP"
source_papers: [aia-forecaster]
evidence:
  - source: aia-forecaster
    type: supports
    strength: moderate
    detail: "AIA Forecaster achieves ForecastBench performance statistically indistinguishable from human superforecasters; uses agentic search + supervisor agent + Platt scaling calibration"
conditions: "Demonstrated on ForecastBench (standard academic benchmark); performance lags market consensus on harder prediction market questions; requires agentic search, supervisor aggregation, and statistical calibration"
date_proposed: 2026-05-04
date_updated: 2026-05-04
-->
