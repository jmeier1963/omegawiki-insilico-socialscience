---
title: "Frontier LLMs match or exceed physician performance on clinical reasoning and diagnosis tasks"
slug: llm-matches-exceeds-physician-clinical-reasoning
status: weakly_supported
confidence: 0.75
tags: [llm-medicine, clinical-reasoning, diagnosis, physician-ai-comparison, o1, emergency-medicine]
domain: "NLP"
source_papers: [performance-large-language-model-reasoning-tasks, chatgpt-defeated-doctors-diagnosing]
evidence:
  - source: performance-large-language-model-reasoning-tasks
    type: supports
    strength: strong
    detail: "Brodeur et al. (Science 2026): o1-preview outperforms attending physicians and GPT-4 across 6 experiments including real ER cases (n=76); 78.3% CPC accuracy, 97% landmark case accuracy, 89% management score vs 41% for GPT-4"
  - source: chatgpt-defeated-doctors-diagnosing
    type: supports
    strength: moderate
    detail: "JAMA 2024 (NYT coverage): ChatGPT outperforms physicians on complex diagnostic cases, though physician+AI performs worse than AI alone"
conditions: "Validated for text-only clinical reasoning tasks; primarily internal medicine and emergency medicine; real-world performance validated at Beth Israel Deaconess for ER cases; performance for procedures, radiology, and other specialties untested"
date_proposed: 2026-05-10
date_updated: 2026-05-10
---

## Statement

Frontier LLMs (specifically OpenAI o1-class models) match or significantly exceed the diagnostic accuracy and clinical reasoning quality of attending physicians across diverse clinical task formats — from structured case conferences to real-world, unstructured emergency department records — when evaluated in blinded, controlled settings.

## Evidence summary

Brodeur et al. (Science, 2026) is the most rigorous evidence to date: a six-experiment study comparing o1-preview against hundreds of physicians using validated clinical reasoning rubrics and real ER patient records. Across all six experiments, o1 performed at or above the physician baseline. Particularly striking is the ER finding: o1 outperformed both attending physicians at every diagnostic touchpoint, with the largest advantage at initial triage (least information available — the most time-pressured moment in clinical care).

JAMA 2024 (earlier evidence): ChatGPT outperforms physicians on complex diagnostic cases, and physician+AI performs worse than AI alone, suggesting AI integration challenges.

## Conditions and scope

- Evidence is text-only; clinical medicine routinely uses imaging, lab values, physical exam, and audio signals
- The o1 model studied is o1-preview (2024); newer models are likely to perform even better
- Validated in academic medical centers (Beth Israel Deaconess, Stanford, Harvard-affiliated institutions)
- Emergency medicine and internal medicine are the primary domains of evidence
- "Performance" measured by clinical expert scoring, not patient outcome (the harder bar)

## Counter-evidence

- No prospective clinical trial data showing LLM deployment improves patient outcomes
- LLM and physician performance on cannot-miss diagnoses (where errors are most consequential) showed no statistically significant difference
- Some management tasks showed non-significant differences between o1 and GPT-4

## Linked ideas

## Open questions

- Does the text-only performance advantage translate to real patient outcomes when deployed with multimodal inputs?
- What monitoring and integration framework enables safe clinical deployment?
- Does LLM superiority hold across surgical and procedural specialties?
- How should physician training adapt given that physician+AI collaboration currently underperforms AI alone?
