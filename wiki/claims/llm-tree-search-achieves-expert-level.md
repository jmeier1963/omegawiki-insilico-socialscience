---
title: "LLM + Tree Search achieves expert-level empirical scientific software across diverse domains, outperforming human experts"
slug: llm-tree-search-achieves-expert-level
status: weakly_supported
confidence: 0.73
tags: [automated-research-pipeline, scientific-software, llm, tree-search, ai-science, expert-level]
domain: ML Systems
source_papers: [ai-system-help-scientists-write-expert]
evidence:
  - source: ai-system-help-scientists-write-expert
    type: supports
    strength: strong
    detail: "ERA system: 40 novel scRNA-seq methods outperforming human leaderboard; 14 COVID-19 forecasting models beating CDC ensemble; expert-level geospatial segmentation, neuroscience, and numerical integration. Evaluated across 6 diverse scientific domains."
conditions: "Requires tasks to be scorable with a measurable quality metric. Most competitive in domains with available research literature for idea injection. Tree search overhead may limit cost-effectiveness for simple tasks."
date_proposed: 2026-05-29
date_updated: 2026-05-29
---

## Statement

An AI system combining LLM-based code generation with Tree Search (ERA) achieves expert-level or above performance on empirical scientific software tasks across diverse domains — including genomics, epidemiology, geospatial analysis, neuroscience, and numerical methods — outperforming the best human-developed methods on standardized leaderboards.

## Evidence summary

Aygün et al. (2026, Nature) demonstrate ERA on 6 scientific benchmarks: scRNA-seq batch integration (outperforms human leaderboard top), COVID-19 forecasting (outperforms CDC ensemble), and 4 additional domains. The tree search architecture enables systematic exploration of the code space, maintaining diverse candidates and backtracking when improvement stalls. External literature injection further boosts performance.

## Conditions and scope

- Requires a measurable, optimizable quality metric
- External knowledge injection (papers, textbooks) is important for best results; automated search can be noisy
- Cost scales with tree depth; computationally intensive at scale

## Counter-evidence

None yet. Closely related to AlphaEvolve (evolutionary code optimization); similar tree/evolutionary mechanisms are emerging as a consistent pattern for AI-driven optimization.

## Linked ideas

## Open questions

- Does ERA-like performance generalize to tasks without a clear scalar metric?
- Is the key bottleneck LLM capability or search architecture?
