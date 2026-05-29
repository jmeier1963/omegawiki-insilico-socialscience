---
title: "The Rise of Large Language Models and the Direction and Impact of US Federal Research Funding"
slug: rise-large-language-models-direction-impact
arxiv: "2601.15485"
venue: arXiv
year: 2026
tags: [llm-adoption, science-of-science, research-funding, scientific-writing, ai-homogenization, nsf, nih]
importance: 4
date_added: 2026-05-29
source_type: pdf
s2_id: ""
keywords: [federal research funding, large language models, semantic distinctiveness, proposal evaluation, agency-specific impact]
domain: Computational Social Science
code_url: ""
cited_by: []
---

## Problem

Federal research funding shapes which scientific ideas get pursued. LLMs are rapidly diffusing into scientific practice, including proposal preparation, but almost nothing is known about how this reshapes the public funding landscape. Proposal texts—especially unfunded submissions—are typically confidential, making this stage of the pipeline difficult to study at scale.

## Key idea

LLM involvement in grant writing can be detected via textual traces; its adoption follows a bimodal pattern (minimal vs. substantive users). Higher LLM involvement consistently positions proposals *closer* to recently funded work (lower semantic distinctiveness), but the consequences for funding success and research output vary by agency: positive associations at NIH, no effect at NSF.

## Method

Two complementary data sources:
1. **Private NSF + NIH proposal data** — confidential submissions (funded, unfunded, pending) from two large US R1 universities, 2021–2025.
2. **Public NSF + NIH award abstracts** — full population of publicly released awards over the same period, linked to publications.

LLM detection: Liang et al.'s method; corpus-level fraction of LLM-modified sentences (α) + grant-level α. Semantic distinctiveness: cosine distance using SPECTER2 embeddings to all abstracts funded by the agency in the prior year, converted to within-year percentile ranks. Fixed effects: grant start year, field, investigator (PI/co-PI).

## Results

- LLM use rises sharply post-2022, bimodal distribution (one mode ≈ 0, second ≈ 10–15%).
- Higher LLM involvement → lower distinctiveness percentile across all four datasets; moving from 25th to 75th percentile LLM use corresponds to ~5pp decrease in distinctiveness at NSF, ~4pp at NIH (within-investigator estimates).
- At NIH: higher LLM use → significantly higher proposal success rates AND higher subsequent publication output (concentrated in non-hit papers, not highly cited work).
- At NSF: no comparable associations with success or publication impact.
- NIH's policy context (reviewer alignment with prior funded work) likely moderates outcomes differently from NSF's norm-setting review.

## Limitations

- LLM detection is probabilistic; cannot directly observe whether PIs used AI or which sections were AI-written.
- Two R1 universities may not generalize to smaller or teaching-focused institutions.
- Causality is difficult to establish: PIs using LLMs may differ systematically from those who don't.

## Open questions

- Will agency policies (NIH NOT-OD-25-132 requiring disclosure; NSF investigator responsibility statements) reverse the trend?
- Does reduced semantic distinctiveness translate to lower long-run scientific impact?
- Are productivity gains at NIH real improvements or artefacts of LLM-induced text alignment with reviewer expectations?

## My take

One of the first large-scale empirical studies of LLM adoption in the *upstream* funding pipeline rather than downstream publications. The within-investigator design is clever. The NIH/NSF divergence is the most interesting finding and warrants follow-up—it suggests that the consequences of AI-mediated homogenization depend heavily on how reviewers and institutional norms operate. Raises genuine concern about AI narrowing the diversity of publicly funded science.

## Related

- [[ai-research-productivity-paradox]]
- [[heterogeneity-collapse]]
- [[llm-grant-writing-reduces-semantic-distinctiveness]]
- [[dashun-wang]]
