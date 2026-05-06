---
title: "RLHF-trained LLMs can morally self-correct when instructed, with capability emerging at ~22B parameters and strengthening with scale"
slug: rlhf-scale-enables-moral-self-correction
status: weakly_supported
confidence: 0.72
tags: [alignment, rlhf, moral-self-correction, bias, emergent-capability, instruction-following]
domain: NLP
source_papers: [capacity-moral-self-correction-large-language]
evidence:
  - source: capacity-moral-self-correction-large-language
    type: supports
    strength: strong
    detail: "3 benchmarks (BBQ, Winogender, admissions), 810M–175B models; emergence at ~22B; Q+IF+CoT reduces BBQ bias 84% at 175B; more RLHF monotonically improves correction"
conditions: "RLHF-trained dialogue models; stylized social bias benchmarks; instruction-based interventions; threshold is approximate and dataset-specific"
date_proposed: 2026-05-06
date_updated: 2026-05-06
---

## Statement

RLHF-trained large language models possess the capacity to reduce harmful, biased, or discriminatory outputs when explicitly instructed via natural language. This capability is emergent: it does not appear below approximately 22B parameters, then strengthens monotonically with both model size and the amount of RLHF training. Chain-of-thought augmentation of the instruction produces the strongest bias reduction (up to 84% on BBQ).

## Evidence summary

Ganguli et al. (2023, Anthropic) tested Claude models at 810M–175B across three social bias benchmarks using stacked prompting interventions. The emergent threshold at ~22B and monotonic improvement with scale and RLHF steps held consistently across all three benchmarks.

## Conditions and scope

Results from RLHF-trained models only; tested on academic benchmarks (BBQ, Winogender, custom admissions dataset); US-English prompts; short question-answer format. The 22B threshold is approximate and may vary by benchmark and training details.

## Counter-evidence

- Self-correction may not generalize to adversarial prompts, jailbreaks, or subtler harms
- The "correct" direction is model-defined, risking circular calibration errors
- Base models (no RLHF) do not show equivalent behavior

## Linked ideas

## Open questions

- Does moral self-correction generalize beyond social bias benchmarks to factual harm, dangerous instructions, or deception?
- Can smaller models achieve equivalent self-correction with denser RLHF?
- Is the ~22B threshold robust across model families, or Anthropic-specific?
