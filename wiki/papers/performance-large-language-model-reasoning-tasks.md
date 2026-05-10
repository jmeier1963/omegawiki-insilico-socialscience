---
title: "Performance of a large language model on the reasoning tasks of a physician"
slug: performance-large-language-model-reasoning-tasks
arxiv: ""
venue: "Science"
year: 2026
tags: [llm-medicine, clinical-reasoning, diagnosis, o1, physician-ai-comparison, differential-diagnosis, emergency-medicine, science-journal]
importance: 4
date_added: 2026-05-10
source_type: pdf
s2_id: ""
keywords: [o1-preview, clinical reasoning, differential diagnosis, NEJM CPCs, physician comparison, emergency department, medical AI]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

Can a large language model (OpenAI o1) match or exceed physician-level performance across diverse, challenging clinical reasoning tasks — including differential diagnosis, management planning, and real-world emergency room cases — providing a comprehensive benchmark beyond narrow or curated vignettes?

## Key idea

A systematic evaluation of OpenAI o1-preview across six clinical reasoning experiments, comparing its performance to hundreds of physicians at different training levels. The study spans published case series (NEJM), clinical management, landmark diagnostic cases, probabilistic reasoning, and real-world unstructured ER records — the latter requiring decisions from actual patient data without curated presentation.

## Method

**Experiment 1 — NEJM CPCs (differential diagnosis quality)**:
- 143 NEJM clinicopathologic case conferences (2021–2024); two physician raters; Bond score (0–5)
- o1 included correct diagnosis in differential in 78.3% of cases

**Experiment 2 — NEJM Healer (clinical reasoning quality)**:
- 20 NEJM Healer virtual patient cases; R-IDEA score (0–10 validated rubric)
- Two physician raters; o1 achieved perfect R-IDEA score for 78/80 cases

**Experiment 3 — Grey Matters management cases**:
- 5 clinical vignettes; 25 physician expert scores; median 89% (o1) vs. 41% (GPT-4)

**Experiment 4 — Landmark diagnostic cases**:
- 6 previously published cases; 50 generalist physicians; median 97% accuracy (o1)

**Experiment 5 — Diagnostic probabilistic reasoning**:
- 5 primary care cases; 553 medical practitioners; o1 modestly outperformed GPT-4

**Experiment 6 — Emergency room real cases**:
- 76 real unstructured ER cases (Beth Israel Deaconess); two blinded attending physicians + 4o
- o1 outperformed 4o and both attending physicians at initial triage (least information available)

## Results

- Experiment 1: o1 included correct diagnosis in 78.3% (CI 70.7–84.8%), outperforming GPT-4 (72.9%) on the same 70 cases; o1 accuracy 88.6% for exact/close diagnosis vs. 72.9% GPT-4
- Experiment 2: Perfect R-IDEA score (10/10) for 78/80 cases; agreement κ=0.89
- Experiment 3: o1 scored 89%, 41 points higher than GPT-4 alone, 41.9 higher than physicians with GPT-4, 48.4 higher than physicians with resources
- Experiment 4: Median 97%; comparable to GPT-4 (not statistically significantly different)
- Experiment 6 (ER): o1 identified correct/close diagnosis in 67.1% at initial ER triage, 72.4% at ER physician encounter, 81.6% at ICU admission — surpassing both attending physicians at all touchpoints (55.3%, 61.8%, 78.9% for Physician 1; 50.0%, 52.6%, 69.7% for Physician 2)
- No significant difference between o1 and 4o in cannot-miss diagnoses (median proportion 0.92)

## Limitations

- Study reflects text-only o1 performance; clinical medicine includes auditory and visual inputs routinely used by clinicians
- ER experiment uses o1-preview (initial version); newer o3 models would likely perform better
- Six experiments studied, though dozens more clinical reasoning aspects remain
- Most experiments use internal medicine and emergency medicine; generalizability to surgical and procedural specialties unclear
- "Accuracy" measured by clinical experts' Bond/R-IDEA scores, which are not patient outcome measures

## Open questions

- Does text-only performance advantage translate to real patient outcomes when deployed?
- What monitoring frameworks are needed to safely deploy o1-class models for clinical second opinions?
- How does performance change across clinical specialties (surgery, pathology, radiology)?
- Does physician skill level in AI use predict performance with AI assistance?
- What is the appropriate human-AI teaming model given AI outperforms physicians when used alone?

## My take

This is among the most rigorous AI-physician comparisons published: multi-experiment, multi-domain, blinded evaluation on real ER cases, and published in Science after peer review. The ER finding is particularly striking — the model outperformed physicians at the *least* information-rich moment (initial triage), where clinical decision-making is most time-pressured and consequential. The finding that AI outperforms physician+AI combinations (echoing earlier studies) suggests that effective AI integration requires new skill sets, not just deployment.

## Related

- [[llm-clinical-reasoning-benchmarking]]
- [[chatgpt-defeated-doctors-diagnosing]]
- supports: [[llm-matches-exceeds-physician-performance-clinical]]
