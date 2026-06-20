---
title: "Frontier AI Compute Governance"
aliases: ["compute governance", "frontier AI governance", "compute thresholds", "FLOP thresholds", "compute-based AI safety"]
tags: [frontier-ai, compute, ai-safety, ai-governance, regulation, scaling-laws]
maturity: active
key_papers: [future-proofing-frontier-ai-regulation, large-language-models-generative-ai-house, policy-ai-exponential]
first_introduced: "2023"
date_updated: 2026-06-20
related_concepts: [ai-race-dynamics, software-intelligence-explosion]
---

## Definition

Frontier AI compute governance refers to regulatory approaches that use training compute (measured in floating point operations, FLOPs) as a tractable proxy for identifying potentially dangerous frontier AI models. Models trained above a threshold (e.g., 10^25 FLOPs in the EU AI Act) are subject to additional safety and transparency requirements.

## Intuition

Compute is the one input to frontier AI development that is (1) measurable, (2) observable externally (via chip procurement, energy use), and (3) strongly correlated with capability at the frontier. This makes it a more governable lever than model capability evaluation (which requires model access) or application restrictions (which are downstream).

## Formal notation

FLOPs = FLOP threshold. EU AI Act: 10^25 FLOPs defines "general-purpose AI models with systemic risk." EO 14110: 10^26 FLOPs threshold for reporting requirements.

## Variants

- **Fixed compute thresholds**: regulatory cutoffs set at specific FLOP counts (EU AI Act, EO 14110)
- **Dynamic thresholds**: mechanisms to adjust thresholds as the field advances (proposed by CNAS, others)
- **Capability-based governance**: using benchmark performance rather than compute as the trigger
- **Compute cluster registration**: requiring registration of large compute clusters regardless of training size

## Comparison

| Approach | Tractability | Gaming risk | Future-proofing |
|---|---|---|---|
| Fixed FLOPs | High | Moderate (models can be distilled) | Low (threshold becomes obsolete) |
| Dynamic FLOPs | Medium | Moderate | High |
| Capability benchmarks | Low | High | Medium |
| Cluster registration | High | Low | Medium |

## When to use

When analyzing: EU AI Act scope, US AI executive order compliance, export control policy for AI chips, international AI governance negotiations.

## Known limitations

- Compute-capability relationship may change with efficiency breakthroughs (DeepSeek-style training)
- Fixed thresholds become obsolete rapidly as frontier advances
- Compute is a poor proxy for deployment risks in specific applications

## Open problems

- How should threshold adjustment mechanisms be designed politically?
- How to internationalize compute governance given US-China chip competition?
- What is the appropriate governance response to distillation (smaller models that inherit frontier capability)?

## Key papers

- [[future-proofing-frontier-ai-regulation]]
- [[large-language-models-generative-ai-house]]

## My understanding

Compute governance is the most tractable pre-deployment AI safety lever currently available. The main challenge is making it future-proof. The CNAS analysis on projecting compute growth is the clearest technical treatment of this problem.
