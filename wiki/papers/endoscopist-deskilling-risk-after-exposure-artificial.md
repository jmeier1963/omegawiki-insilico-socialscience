---
title: "Endoscopist Deskilling Risk After Exposure to Artificial Intelligence in Colonoscopy: A Multicentre, Observational Study"
slug: endoscopist-deskilling-risk-after-exposure-artificial
arxiv: ""
venue: "The Lancet Gastroenterology & Hepatology"
year: 2025
tags: [deskilling, clinical-ai, human-oversight, automation-complacency, colonoscopy, ai-assistance, medical-ai, competence-erosion]
importance: 4
date_added: 2026-08-22
source_type: pdf
s2_id: ""
tldr: "Adenoma detection rate in unassisted colonoscopy fell from 28.4% to 22.4% after endoscopists had been routinely exposed to AI polyp detection — the first measured evidence that AI assistance degrades unaided human clinical performance."
contribution_type: [analysis]
datasets: []
keywords: [adenoma detection rate, deskilling, AI-assisted colonoscopy, automation complacency, clinical performance]
domain: "Medicine"
code_url: ""
cited_by: []
---

## Problem & Context

Randomized trials had repeatedly shown that AI polyp detection raises the adenoma detection rate (ADR) *while the AI is running*. Nobody had asked the complementary question: what happens to the same endoscopist when the AI is switched off. Deskilling is a standard concern in automation research but, as the authors' PubMed search to November 2024 confirms, guidelines and reviews warned about it in gastroenterology without a single original study testing it.

## Key idea

Measure the unassisted skill directly. Compare the ADR of *standard, non-AI-assisted* colonoscopies performed by the same endoscopists in the three months before and the three months after their centres introduced AI, and treat the difference as an estimate of skill erosion caused by habituation to the tool.

## Method

Retrospective observational study at four endoscopy centres in Poland that adopted AI polyp-detection tools at the end of 2021. After adoption, colonoscopies ran with or without AI depending on the examination date, which supplies the unassisted comparison arm. The observation window is September 2021 to March 2022, split into the pre- and post-implementation phases. Primary outcome: ADR of standard non-AI-assisted colonoscopy. Multivariable logistic regression identifies independent factors affecting ADR.

## Experiment & Results

1,443 patients underwent standard colonoscopy — 795 before and 648 after AI implementation (mean age 58, 59% female).

ADR of standard colonoscopy fell from **28.4%** (226/795) to **22.4%** (145/648), an absolute reduction of 6 percentage points (95% CI −10.5% to −1.6%). In the multivariable model, exposure to AI was an independent factor (OR 0.69, 95% CI 0.53–0.89), alongside female sex (1.78), age under 60 (3.60) and alarm symptoms (1.36).

The authors state this is, to their knowledge, the first study suggesting a negative effect of AI exposure on a *patient-relevant endpoint* anywhere in medicine.

## Limitations

- Observational and retrospective; susceptible to selection bias and unmeasured confounding, which the authors state plainly.
- Short window (three months either side) and a single country; whether the effect deepens, plateaus or reverses with longer exposure is untested.
- The mechanism is inferred, not observed — the design cannot separate attentional complacency from a genuine loss of pattern-recognition skill.
- ADR is a proxy for quality, not quality itself.

## Open questions

- Is the effect reversible with deliberate AI-free practice, and on what timescale?
- Does it generalize to other visual-detection specialties (radiology, pathology) and beyond medicine?
- Which mitigations work — explainable AI, cognitive forcing, scheduled unassisted sessions?
- Does the same exposure harm novices and experienced practitioners equally?

## My take

This is the study that moves deskilling from prediction to measurement, and it does so on the hardest possible endpoint: a clinical outcome, not a self-report or a lab task. The size matters too — a 6-point absolute drop is comparable in magnitude to the gain the AI delivers when switched on, which means the tool can be net-positive in use and net-negative in capability at the same time.

The generalization to knowledge work is tempting and should be made carefully. Colonoscopy is a real-time visual detection task with a fast feedback loop; scientific judgment is neither. What transfers is the structural point, which is Bainbridge's: the tool absorbs the routine cases, the practitioner's calibration decays on exactly the cases the tool handles, and the remaining unassisted cases are the ones where calibration mattered.

## Related

- [[some-simple-economics-agi]] — the economic form of the same mechanism (Codifier's Curse, Missing Junior Loop)
- [[kosmyna-brain-chatgpt-cognitive-debt]] — the individual-learning counterpart, measured neurophysiologically
- [[bastani-generative-ai-harm-learning]] — performance gain with the tool, loss without it, in education
- [[automation-induced-deskilling]]
