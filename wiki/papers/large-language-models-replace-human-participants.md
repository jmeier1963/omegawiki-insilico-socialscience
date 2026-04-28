---
title: "Large language models that replace human participants can harmfully misportray and flatten identity groups"
slug: large-language-models-replace-human-participants
arxiv: ""
venue: "Nature Machine Intelligence"
year: 2025
tags: [silicon-sampling, llm-ethics, identity-groups, representation, flattening, harmful-bias, demographic-simulation]
importance: 4
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [identity groups, flattening, misportray, harmful bias, LLM simulation, representation, human participants, Nature Machine Intelligence]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

When LLMs replace human participants in research, do they accurately represent diverse identity groups, or do they introduce systematic distortions that could harm those groups?

## Key idea

LLMs that replace human participants can harmfully misportray and "flatten" identity groups — reducing within-group diversity to stereotyped representations. This is not just a technical accuracy problem but an ethical harm: affected communities may have research conclusions drawn from inaccurate portrayals of them.

## Method

- Wang, Morgenstern, Dickerson — Nature Machine Intelligence 2025
- Evaluates LLM simulation of diverse identity group characteristics and attitudes
- Focuses on within-group diversity (heterogeneity) vs. between-group differences
- Analyzes systematic patterns of misportray and flattening across identity dimensions

## Results

- LLMs misportray identity group characteristics (inaccurate representation)
- LLMs flatten within-group diversity — reducing heterogeneous groups to homogeneous stereotypes
- The harms are specific to groups: marginalized and underrepresented groups are disproportionately flattened
- Nature Machine Intelligence framing ensures high visibility in the ML community

## Limitations

- Specific identity groups and evaluation methodology depend on paper details (abstract-based summary)
- "Harmful" is a normative claim that depends on research context and use case
- Does not propose solutions, only documents the problem

## Open questions

- Which identity dimensions show the most harmful flattening?
- Can fine-tuning on community-generated data reduce flattening for underrepresented groups?
- What are the legal and ethical implications for research that uses LLM-generated identity group data?

## My take

High-impact paper in a top venue that reframes the silicon sampling validity problem as a harm problem. The "flattening" concept connects to the structural heterogeneity ceiling identified by other papers. The Nature Machine Intelligence venue will bring this concern to a wider ML audience. Together with Agnew et al. (CHI 2024), provides a strong ethical critique of silicon sampling from two different disciplinary perspectives.

## Related

- [[silicon-sampling]]
- supports: [[llms-misrepresent-human-opinion-distributions]]
- [[llm-social-simulations-structural-heterogeneity-ceiling]]
- [[illusion-artificial-inclusion]]
- [[persona-conditioning-degrades-subgroup-fidelity-llm]]
