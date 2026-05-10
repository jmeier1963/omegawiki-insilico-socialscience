---
title: "LLM synthetic participants have systematic fidelity limitations across four issue categories that constrain their use as human research proxies"
slug: llm-synthetic-participants-systematic-fidelity-limitations
status: weakly_supported
confidence: 0.70
tags: [silicon-sampling, algorithmic-fidelity, synthetic-participants, cognitive-misalignment, systematic-review, methodology]
domain: "NLP"
source_papers: [synthetic-participants-generated-large-language-models]
evidence:
  - source: synthetic-participants-generated-large-language-models
    type: supports
    strength: moderate
    detail: "Systematic review of 182 publications identifies 4 systematic issue categories: cognitive misalignments, distortions/biases, misleading believability, overfitting/contamination; fidelity improvements from better prompting are real but modest"
conditions: "Based on literature through 30/06/2025; preprint (not peer-reviewed); issue categories are synthesized from heterogeneous empirical studies, not a single controlled experiment"
date_proposed: 2026-05-10
date_updated: 2026-05-10
---

## Statement

LLM-generated synthetic participants systematically fail to replicate human research participants across four distinct failure categories: (1) cognitive misalignments (missing psychological/embodied processes), (2) distortions and biases (demographic overregularization, cultural homogenization), (3) misleading believability (plausible-sounding but behaviorally inaccurate outputs), and (4) overfitting/contamination (inflated fidelity due to training data overlap). These limitations collectively constrain the validity of synthetic participants as substitutes for human data.

## Evidence summary

Kuric et al. (2026) synthesize 182 empirical publications on LLM synthetic participants through a rigorous systematic review process (multi-database, LLM-assisted screening, independent double-coding, quality assessment). Findings converge on the 4-category taxonomy and the conclusion that while prompt engineering and participant modeling improve synthetic participant quality, improvements remain modest. The review proposes framing synthetic participants as "heuristic-like" tools rather than human substitutes.

## Conditions and scope

- Synthesized from literature through June 2025; rapidly evolving field
- Category 4 (contamination) is difficult to measure directly — many studies cannot verify training data overlap
- The heuristic framing does not specify a quantitative threshold for when synthetic data is "good enough"
- Most reviewed studies are from human-centric domains (social science, HCI, psychology)

## Counter-evidence

- Some studies report high fidelity for specific tasks (e.g., LLM survey responses correlated at >0.7 with human responses for broad opinion distributions)
- Fine-tuned models show improved fidelity for specific demographic groups
- Augmentative approaches (combining synthetic + real data) show promise for reducing bias

## Linked ideas

## Open questions

- What task and domain characteristics predict acceptable synthetic participant fidelity?
- Can contamination/overfitting be reliably detected and corrected for in existing studies?
- How should IRB frameworks and publication guidelines address synthetic participant research?
