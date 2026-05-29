---
title: "An AI system to help scientists write expert-level empirical software"
slug: ai-system-help-scientists-write-expert
arxiv: ""
venue: Nature
year: 2026
tags: [automated-research-pipeline, scientific-software, llm, tree-search, ai-science, bioinformatics, epidemiology]
importance: 4
date_added: 2026-05-29
source_type: pdf
s2_id: ""
keywords: [empirical research assistance, tree search, LLM code generation, scientific software, scorable tasks, ERA]
domain: ML Systems
code_url: ""
cited_by: []
---

## Problem

Creating empirical software for computational science is slow, domain-expert-intensive, and systematically under-explores the solution space. Scientists spend years writing software for experiments, often driven by intuition rather than exhaustive search. This bottleneck limits the rate of scientific discovery.

## Key idea

ERA (Empirical Research Assistance) combines an LLM for code generation with Tree Search to systematically explore and improve software quality toward a measurable quality metric. Rather than a single LLM call, ERA maintains a diverse tree of candidate solutions, backtracks when improvement plateaus, and integrates research ideas from external literature (papers, textbooks, search results) into code. This produces expert-level or better empirical software across diverse scientific domains.

## Method

- **LLM**: rewrites/mutates code to improve a measurable quality metric (submission score, benchmark performance)
- **Tree Search**: decides which candidates merit further exploration; maintains diversity to avoid local optima; enables backtracking
- **Research idea injection**: domain knowledge from scientific papers, textbooks, and search engine results injected as prompts; can be user-supplied or automated
- **Evaluation**: Kaggle competitions (16 playground competitions, 2023 season) for calibration; then 6 domain-specific scientific benchmarks

## Results

- **scRNA-seq batch integration**: discovered 40 novel methods outperforming top human-developed methods on OpenProblems v2 leaderboard
- **COVID-19 forecasting**: 14 ERA models outperform the CDC ensemble and all individual human models
- **Geospatial segmentation, ZAPBench (zebrafish neuroscience), numerical integration**: expert-level performance in all domains
- **Novel algorithmic discovery**: time series forecasting using a novel rule-based construction not present in existing literature
- **Kaggle benchmark**: substantially beats single LLM call, best-of-1000 LLM calls, and AIDE (a competing system); attributed to tree search's ability to maintain candidate diversity

## Limitations

- Requires a *scorable* task with a measurable quality metric — inapplicable to open-ended scientific exploration without clear success criteria.
- Computational cost of tree search can be substantial; per-node costs shown in supplementary tables.
- Research idea injection quality depends on the relevance and accessibility of cited literature; automatic search may surface noisy sources.
- Evaluation focuses on domains with existing Kaggle or benchmark infrastructure; harder to generalize.

## Open questions

- Can ERA be extended to tasks without an explicit scalar quality metric (e.g., open-ended scientific hypothesis generation)?
- How does performance scale with LLM capability improvements vs. tree search depth?
- Can ERA discover genuinely new scientific principles, or does it primarily recombine existing ideas from literature?

## My take

A significant step toward AI-accelerated empirical science. The tree search architecture is the key differentiator — most prior work uses single LLM calls or simple sampling. Demonstrating expert-level results across bioinformatics, epidemiology, neuroscience, and geospatial analysis in a single system is impressive breadth. The requirement for a scorable task is a real constraint but covers a large fraction of computational science. Complementary to AlphaProof Nexus (formal proof) and autonomous lab systems (wet lab) — all are pushing toward AI-assisted scientific discovery from different angles.

## Related

- [[automated-research-pipeline]]
- [[llm-tree-search-achieves-expert-level]]
- [[agent-laboratory-using-llm-agents-research]]
- [[ai-co-mathematician-accelerating-mathematicians-agentic]]
