---
title: "LLMs systematically misrepresent human opinion distributions, skewing toward liberal, educated, high-income demographics"
slug: llms-misrepresent-human-opinion-distributions
status: supported
confidence: 0.8
tags: [llm-bias, opinion-alignment, demographic-representation, rlhf, evaluation]
domain: NLP
source_papers: [whose-opinions-language-models-reflect, beyond-static-responses-multi-agent-llm]
evidence:
  - source: whose-opinions-language-models-reflect
    type: supports
    strength: strong
    detail: "OpinionQA evaluation of 9 LMs shows misalignment with general US population on par with Democrat-Republican divide on climate change; RLHF-tuned models skew toward liberal/educated/high-income groups matching crowdworker demographics; elderly (65+), widowed, and high-religious-attendance groups are underrepresented by all models"
  - source: beyond-static-responses-multi-agent-llm
    type: supports
    strength: weak
    detail: "Framework survey reaffirms that RLHF-trained models produce homogenized viewpoints with reduced representational fidelity for underrepresented groups, citing this as a persistent challenge across all six agentic tiers"
conditions: "Evaluated on US demographic groups via Pew ATP opinion surveys in multiple-choice format; RLHF-tuned models show stronger skew than base models; findings may not generalize to non-US populations or open-ended generation"
date_proposed: 2026-04-12
date_updated: 2026-04-12
---

## Statement

Language models — especially those fine-tuned with human feedback (RLHF) — do not represent the full diversity of human opinion distributions. They systematically skew toward views held by liberal, educated, and high-income groups (matching the demographics of RLHF crowdworkers), while underrepresenting elderly, widowed, and highly religious populations. The misalignment is substantial: comparable in magnitude to the partisan divide between Democrats and Republicans on climate change.

## Evidence summary

- **Santurkar et al. 2023 (OpinionQA)**: Evaluated 9 LMs (350M–178B parameters) on 1,498 Pew ATP survey questions across 60 US demographic groups. Found: (1) no LM achieves representativeness comparable to any human demographic group; (2) RLHF-tuned models are *worse* than base models at overall representativeness; (3) RLHF models align specifically with liberal, high-income, well-educated, non-religious groups; (4) text-davinci-003 exhibits "caricature effect" — collapses to modal liberal views (>99% Biden approval), losing within-group diversity.

## Conditions and scope

- Measured via 1-Wasserstein distance on ordinal multiple-choice survey responses
- US-centric (American Trends Panel); cross-national generalization unclear
- Base LMs show different (not necessarily better) demographic skew than RLHF models
- Demographic prompting/steerability provides only modest improvement, not solving the core misalignment

## Counter-evidence

- Steerability experiments show some improvement when LMs are prompted with demographic context, suggesting the representations are not completely fixed
- RLHF models may align better with certain specific groups (liberals, educated) even if overall population representativeness is worse

## Linked ideas

*(none yet)*

## Open questions

- Does misalignment in multiple-choice surveys transfer to open-ended generation?
- Can training on diverse, demographically weighted data resolve this without creating new skews?
- Is the crowdworker demographic explanation causally verified or merely correlational?
