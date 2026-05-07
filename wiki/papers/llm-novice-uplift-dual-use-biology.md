---
title: "LLM Novice Uplift on Dual-Use, In Silico Biology Tasks"
slug: llm-novice-uplift-dual-use-biology
arxiv: "2602.23329"
venue: "arXiv preprint"
year: 2026
tags: [biosecurity, dual-use, llm-evaluation, uplift, ai-safety, biology]
importance: 4
date_added: 2026-05-06
source_type: pdf
s2_id: "9543f01f469544ea8644d4b6d7a97f78ff55003e"
keywords: [novice uplift, dual-use biology, biosecurity, LLM evaluation, human-AI interaction, expertise barrier]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Do LLMs enable novice users to perform expert-level work on dual-use biology tasks? Prior biosecurity benchmarks tested LLMs in single-shot settings, likely misestimating the real-world risk from sustained human–LLM interaction. This uncertainty is central to understanding both scientific acceleration and dual-use risk.

## Key idea

**LLMs provide 4.16× uplift to novices on biosecurity-relevant biology tasks**: Novices with LLM access were 4.16× more accurate (95% CI [2.63, 6.87]) than controls using internet only, across eight biosecurity-relevant benchmark task sets. On three of four benchmarks with available expert baselines, LLM-assisted novices outperformed human experts. 89.6% of participants reported little difficulty obtaining dual-use-relevant information despite safeguards. Standalone LLMs often exceeded LLM-assisted novices, indicating users were not fully eliciting model capabilities.

## Method

- Multi-model, multi-benchmark human uplift study: Treatment (LLM access) vs. Control (internet only)
- 8 biosecurity-relevant benchmark sets: VCT (Virology Capabilities Test), WCB (World Class Biology), MBCT, HPCT, LAB-Bench, HLE, LFV (Long-Form Virology), ABC-Bench
- Extended time horizons (up to 13 hours for the most involved tasks) to simulate real-world sustained interaction
- Qualitative analysis of human–LLM interaction patterns (52-code scheme)
- Authors: Scale AI, SecureBio, University of Oxford, UC Berkeley

## Results

- Treatment accuracy 4.16× higher than Control (95% CI [2.63, 6.87])
- LLM-assisted novices exceeded expert baselines on HPCT and VCT; experts retained advantage on MBCT
- Standalone LLMs outperformed LLM-assisted novices on most benchmarks (HLE exception: iterative human–LLM interaction valuable for open-ended tasks)
- Performance trajectories improved over time for Treatment, remained static for Control
- Outright refusals to answer dual-use queries often less effective than plausible-but-misleading responses as a deterrent

## Limitations

- Confined to in silico (digital) tasks; translation to wet-lab environments is an open question
- Small sample vs. intended population of adversarial actors (motivated, trained)
- Focuses on existing LLMs; future models may change the uplift magnitude
- Safeguard circumvention could be further studied with red-teaming methodologies

## Open questions

- How do these dynamics translate to physical wet-lab environments?
- Can ensembles of LLMs effectively evaluate and constrain one another's outputs for biosafety?
- What is the minimum AI capability level at which novice uplift reaches dangerous thresholds?
- Are misleading-response safeguards more effective than refusals in practice?

## My take

The strongest empirical evidence to date that LLMs meaningfully lower the expertise barrier for dual-use biology. The 4.16× accuracy uplift — with novices beating experts on 3 of 4 benchmarks — is striking and directly relevant to biosecurity policy. Importance 4 — influential empirical result from Scale AI + SecureBio; arXiv-only but with high policy salience.

## Related

- supports: [[ai-removes-expertise-barrier-for-catastrophic-capabilities-creating-democratized-wmd-risk]]
- [[llm-uplift-evaluation]]
