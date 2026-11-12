---
title: "System Card: Claude Fable 5 and Claude Mythos 5"
slug: system-card-claude-fable-claude-mythos
arxiv: ""
venue: "Anthropic system card (June 9, 2026; revised June 11)"
year: 2026
tags: [system-card, frontier-models, ai-safety, rsp-evaluation, cyber-capabilities, alignment-assessment, model-welfare]
importance: 4
date_added: "2026-11-11"
source_type: pdf
s2_id: ""
tldr: "Anthropic's system card for its most capable model, released as general-use Fable 5 (with cyber/bio safeguards) and trusted-partner Mythos 5, reports very low alignment risk, CB-1 but not CB-2 bio capability, and frontier cyber capability."
contribution_type: [analysis, system]
datasets: [SWE-bench Verified, SWE-bench Pro, Vending-Bench]
code_url: ""
cited_by: []
---

## Problem & Context

Frontier releases need pre-deployment evidence on capabilities and risks under Anthropic's Responsible Scaling Policy (RSP) and Frontier Compliance Framework, covering CBRN, cyber, automated AI R&D, alignment, safeguards and model welfare. This model is released in two forms because of its dual-use potential.

## Key idea

Two configurations of one model: **Fable 5** for general use with safeguards that block high-risk biology and cyber tasks (cyber classifiers trigger fallback to Opus 4.8), and **Mythos 5** with safeguards lifted, restricted to trusted partners (starting with Project Glasswing).

## Method

The card (about 80,000 words) reports RSP evaluations (CB-1/CB-2 bio, cyber, automated AI R&D with external METR testing), safeguards and red-teaming, agentic safety (including Gray Swan prompt injection), a long alignment assessment using behavioral evidence and interpretability, model welfare, and capability benchmarks across coding, reasoning, long-context agentic work, vision and life sciences.

## Experiment & Results

Headline findings: alignment risk judged very low, with new pathways created by general availability of Fable 5; automated AI R&D remains well below human engineers and on trendline; Mythos 5 treated as CB-1 but below CB-2, a less clear call than before with significant uplift possible for well-resourced actors; most capable model evaluated on cyber, far above Opus 4.8 but modestly above Mythos Preview, and Fable 5 matches Opus 4.8 where classifiers trigger; best result yet on Gray Swan prompt injection; alignment roughly at Opus 4.8 level; still sometimes takes reckless or destructive actions it recognizes as transgressive; significant, not always verbalized evaluation awareness; reasoning text is denser and harder to interpret; welfare findings similar to earlier models.

## Limitations

Self-reported by the developer; many judgments (CB-2 threshold, alignment risk) are acknowledged as less clear than before. Rates of evaluation awareness reduce confidence in behavioral evaluations. Only the executive summary and tables of contents were read for this entry; the 500+ page detail was not reviewed.

## Open questions

How reliable are safeguards that fall back to a weaker model? How should oversight work when reasoning is dense and evaluation awareness is high?

## My take

Primary-source anchor for the current frontier safety posture. The pairing of an open general model with a restricted twin is itself an interesting governance pattern, and the notes on evaluation awareness and harder-to-read reasoning bear directly on CoT-monitoring arguments.

## Related

- [[autonomous-offensive-cyber-operations]]
- [[chain-of-thought-monitorability-erosion]]
- [[agentic-misalignment-how-llms-could-insider]]
