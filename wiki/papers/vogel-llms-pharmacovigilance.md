---
title: "Large Language Models for Pharmacovigilance: Opportunities and Challenges"
slug: vogel-llms-pharmacovigilance
arxiv: ""
venue: "Drug Safety"
year: 2024
tags: [pharmacovigilance, llm, drug-safety, adverse-events, nlp, regulatory]
importance: 2
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [pharmacovigilance, LLM, drug safety, adverse event detection, regulatory science, Drug Safety journal]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

Pharmacovigilance — the detection, assessment, and prevention of adverse drug reactions — generates enormous volumes of text (clinical notes, spontaneous reports, literature). Can LLMs automate or augment signal detection and case processing in drug safety surveillance?

## Method

- Review/perspective paper on LLM applications in pharmacovigilance
- Published: *Drug Safety* (DOI 10.1007/s40264-024-01499-1), 2024
- Note: exact author list uncertain; user cited as "Vogel et al." — journal confirmation recommended

## Key idea

LLMs show promise for automating adverse event extraction from clinical text, literature mining, and case narrative processing in pharmacovigilance, but face regulatory and safety challenges: hallucination, lack of auditability, and the high-stakes consequences of missed signals or false positives.

## Results

- LLMs can extract adverse event mentions from unstructured clinical notes with performance approaching specialist systems
- Literature mining for signal detection is a strong use case: LLMs handle the volume of medical literature better than manual review
- Key barriers: hallucination risk in safety-critical context, regulatory requirements for explainability, lack of validated benchmarks
- Human-in-the-loop approaches outperform fully automated LLM systems for final signal assessment

## Limitations

- Uncertain authorship — metadata should be verified against the DOI
- Regulatory pathway for LLM tools in pharmacovigilance not yet established
- Benchmark results depend heavily on training data and prompting strategy

## Open questions

- Can LLMs be reliably used for primary pharmacovigilance signal detection, or only as triage/pre-screening tools?
- How should regulatory agencies validate AI-assisted pharmacovigilance pipelines?

## My take

A useful application-domain paper showing AI-in-science dynamics in a high-stakes regulatory context. The tension between LLM capability and hallucination risk is most acute in drug safety — failure modes have direct patient harm consequences. Illustrates why Messeri & Crockett (2024) concern about overconfidence in AI-generated knowledge is especially important in medical domains.

## Related

- [[messeri-crockett-ai-illusions-understanding]]
- [[bastani-generative-ai-harm-learning]]
- [[gao-wang-quantifying-ai-scientific-research]]
