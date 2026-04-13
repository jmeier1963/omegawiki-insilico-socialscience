---
title: "Interview-grounded generative agents replicate individual attitudes and behaviors at near-human self-consistency"
slug: interview-grounded-generative-agents-replicate-individual
status: weakly_supported
confidence: 0.7
tags: [generative-agents, human-simulation, interview, individual-level, behavioral-prediction, llm-agents]
domain: "NLP"
source_papers: [generative-agent-simulations-000-people]
evidence:
  - source: generative-agent-simulations-000-people
    type: supports
    strength: strong
    detail: "Generative agents created from 2-hour interview transcripts of 1,052 real individuals replicate GSS responses at 85% normalized accuracy (raw 68.85% / self-consistency 81.25%), Big Five at 80% normalized correlation, economic game decisions at 66% normalized correlation, and experimental treatment effects at r=0.98 correlation with human replications."
conditions: "Validated for U.S. English-speaking adults using GPT-4o; requires 2-hour qualitative interview per individual; evaluation limited to established social science instruments (GSS, BFI-44, economic games, behavioral experiments)."
date_proposed: 2026-04-13
date_updated: 2026-04-13
---

## Statement

Generative agents grounded in two-hour qualitative interviews with real individuals can replicate those individuals' attitudes (survey responses), personality traits, economic behaviors, and experimental treatment effects at accuracy levels approaching the individuals' own two-week test-retest consistency — substantially outperforming agents conditioned on demographic descriptions or self-written persona paragraphs.

## Evidence summary

Park et al. (2024) demonstrate this across four evaluation domains with 1,052 participants: (1) GSS: 85% normalized accuracy vs. 71% demographic and 70% persona baselines; (2) Big Five: 80% normalized correlation vs. 55% demographic and 75% persona; (3) Economic games: 66% normalized correlation; (4) Experimental replications: 4/5 studies replicated with effect size r = 0.98 vs. human. The architecture uses full interview transcript injection plus expert reflections from four domain-expert personas. Ablation shows even 80% transcript removal still outperforms composite agents built from direct survey responses.

## Conditions and scope

- Single LLM (GPT-4o); generalizability to other models untested
- U.S. population only; cross-cultural validity unknown
- Requires resource-intensive 2-hour interviews per individual
- Self-consistency normalization is a strength but limits interpretation: raw accuracy (68.85%) is moderate
- Economic games showed weakest results and no agent-type differentiation

## Counter-evidence

- Training data contamination: GPT-4o may have seen GSS items and behavioral economics paradigms
- Single study; no independent replication exists
- Agent bank access restricted, limiting third-party verification

## Linked ideas

## Open questions

- What is the minimum interview duration for adequate fidelity?
- Does agent accuracy degrade as individuals' attitudes evolve over months/years?
- Can open-source LLMs achieve comparable individual-level fidelity?
- How would agents perform on instruments not present in LLM training data?
