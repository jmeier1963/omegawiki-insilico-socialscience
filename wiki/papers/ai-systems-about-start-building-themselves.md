---
title: "Import AI 455: AI Systems Are About to Start Building Themselves"
slug: ai-systems-about-start-building-themselves
arxiv: ""
venue: "Import AI newsletter (Substack)"
year: 2026
tags: [ai-rd-automation, recursive-self-improvement, capability-benchmarks, metr, swe-bench, agentic-ai, forecasting, posttrain-bench]
importance: 4
date_added: 2026-05-05
source_type: pdf
s2_id: ""
keywords: [recursive self-improvement, automated AI R&D, METR time horizons, SWE-Bench, PostTrainBench, CORE-Bench, kernel optimization, LLM training optimization]
domain: "ML Systems"
code_url: ""
cited_by: []
---

## Problem

Are AI systems approaching the capability threshold at which they could autonomously perform most or all components of AI R&D — including training their own successors — without human involvement?

## Key idea

Jack Clark (co-founder of Anthropic) assembles a "mosaic" of publicly available benchmark progress to argue that all engineering components of AI development are now within AI capability, and that fully automated AI R&D is likely (60%+ probability) by the end of 2028. The argument does not require AI to be creative; most AI R&D is methodical "meat and potatoes" engineering that AI systems can already do.

## Method

Essay-style synthesis of benchmark data from publicly available papers and products:
- **SWE-Bench**: real-world GitHub issue resolution (Claude 2 ~2% in 2023 → Claude Mythos Preview 93.9% in 2026)
- **METR Task Horizons**: autonomous task duration at 50% success (30 sec in 2022 → 12 hours with Opus 4.6 in 2026; Ajeya Cotra projects ~100 hours by end of 2026)
- **CORE-Bench**: computational reproducibility (GPT-4o 21% at launch → Opus 4.5 95.5% "solved" December 2025)
- **MLE-Bench**: Kaggle ML engineering (o1 16.9% in 2024 → Gemini3-harness 64.4% February 2026)
- **PostTrainBench**: AI fine-tuning vs. human baseline (best AI systems 25-28% vs. human 51% as of April 2026)
- **LLM training optimization**: Anthropic internal benchmark — speedup over unmodified code (Opus 4 2.9× → Mythos Preview 52× by April 2026)
- **Automated alignment research**: Anthropic proof-of-concept; AI agents beat human baseline on scalable oversight task

## Results

Key conclusions:
1. AI systems can now reliably perform most core engineering components of AI development (coding, experiment execution, reproducibility, ML system construction, kernel optimization)
2. AI management of AI sub-agents (Claude Code, OpenCode) enables complex parallel task completion
3. There is limited but growing evidence of AI creativity in research (Erdős-1051 problem, centaur math proofs)
4. PostTrainBench shows AI at ~50% of human fine-tuning quality — meaningful but a gap remains
5. 60%+ probability of automated AI R&D (frontier model autonomously training its own successor) by end of 2028; 30% by end of 2027

Societal implications enumerated:
- Alignment must be robust under recursive self-improvement (compounding error risk: 99.9% accuracy degrades to 60.5% after 500 generations)
- Productivity multiplier for all AI-touched sectors; inequality of access problem
- Capital-heavy, human-light economy; emergence of fully autonomous corporations

## Limitations

- Mosaic argument: each individual benchmark has idiosyncratic flaws; aggregate trend is the intended takeaway
- Creativity question unresolved: whether AI can advance the research frontier via genuinely novel insights remains open (math examples are suggestive but not conclusive)
- Forecasting under uncertainty: 60% probability estimate is calibrated judgment, not a mechanistic prediction
- Frontier model training is more expensive and complex than non-frontier; proof-of-concept may not scale immediately

## Open questions

- Can AI systems generate genuinely novel research directions (not just iterate on existing ones)?
- What is the right alignment framework for recursively self-improving systems?
- How should AI compute be allocated when supply is limited and the productivity multiplier is asymmetric?
- What governance structures can prevent formation of fully autonomous corporate entities operating outside human oversight?
- Does the 12-hour METR horizon scale to 100 hours by end of 2026 as projected?

## My take

A striking synthesis by one of the most credentialed observers of AI development (co-founder of Anthropic, former OpenAI Policy Director). The "mosaic" approach is honest about the limitations of individual benchmarks while building a compelling aggregate case. The 60% probability estimate for automated AI R&D by 2028 is the most concrete public forecast from an insider. The essay correctly identifies that the creativity question is the remaining uncertainty — and that even without creativity, the engineering automation case is nearly closed.

The PostTrainBench data is especially important: AI at 50% of human fine-tuning quality means humans are still necessary for quality frontier model training, but the gap is shrinking fast. The alignment risk from compounding errors under recursive self-improvement deserves more attention than it receives.

## Related

- [[automated-research-pipeline]] — the concept covering AI research pipeline automation; this essay provides 2025–2026 benchmark evidence
- [[agent-autonomous-task-horizon]] — the METR time horizon metric tracking autonomous task duration
- [[towards-end-end-automation-ai-research]] — The AI Scientist; related work on end-to-end research automation
- [[core-bench-fostering-credibility-published-research]] — CORE-Bench introduced in 2024; this essay reports it was "solved" by December 2025
- [[agent0-unleashing-self-evolving-agents-zero]] — self-evolving agent systems related to recursive self-improvement
- [[agentic-ai-next-intelligence-explosion]] — position paper on agentic AI systems and intelligence explosion
- supports: [[automated-ai-frontier-model-self-training]]
