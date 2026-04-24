---
title: "Machine Learning Detection of Papermill Activity in Cancer Research Literature"
slug: richardson-scancar-papermill-detection
arxiv: ""
venue: "BMJ"
year: 2026
tags: [papermill, research-fraud, machine-learning, cancer-research, BERT, scientific-integrity]
importance: 3
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [papermill, BERT, cancer research, fraud detection, bioRxiv, BMJ, systematic detection, retraction]
domain: "ML Systems"
code_url: ""
cited_by: []
---

## Problem

"Paper mills" — commercial services that generate and sell fraudulent scientific papers — produce large numbers of publications that pass peer review. How widespread is papermill contamination in the cancer research literature, and can ML methods detect it at scale?

## Key idea

A BERT-based ML model trained on retracted papermill publications flags ~9.87% of 2.6 million cancer research papers (1999–2024) as sharing textual features with fraudulent papers. Flagging rates are rising sharply over time and disproportionately affect papers from Chinese institutional affiliations.

## Method

- BERT-based classifier trained on confirmed papermill papers (positive class) vs. genuine papers (negative class)
- Applied to 2.6 million cancer research papers, 1999–2024
- Published: BMJ 2026 (DOI 10.1136/bmj-2025-087581); bioRxiv preprint 2025 (10.1101/2025.08.29.673016)
- Authors: Baptiste Scancar, Jennifer A. Byrne, David Causeur, Adrian G. Barnett
- Note: user cited as "Richardson et al. 2025" — the actual first author is Scancar

## Results

- ~9.87% of 2.6 million cancer papers flagged as papermill-like
- Flagging rate increased from ~5% (1999) to >15% (2023)
- Chinese institutional affiliations disproportionately represented
- The scale of the problem is vastly larger than current retraction rates suggest

## Limitations

- BERT classifier produces false positives — not all flagged papers are fraudulent
- "Papermill-like" features may appear in some legitimate papers from certain writing traditions
- Geographic patterns should be interpreted carefully (may reflect systematic pressures, not individual dishonesty)

## Open questions

- Can papermill detection methods be deployed pre-publication by journals or preprint servers?
- How does papermill contamination of the literature affect AI models trained on scientific text (Shumailov 2024)?

## My take

The first systematic large-scale ML estimate of papermill contamination in scientific literature. 9.87% is alarming — if even a fraction of that is genuine fraud, the literature is substantially corrupted. The connection to Shumailov (2024) model collapse is important: LLMs trained on scientific literature may already be learning from fraudulent papers at scale.

## Related

- [[shumailov-model-collapse]]
- [[liang-monitoring-ai-modified-content]]
- [[open-science-collaboration-reproducibility]]
- [[smith-peer-review-flawed-process]]
- [[kapoor-narayanan-leakage-reproducibility]]
