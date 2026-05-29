---
title: "LLM use in federal grant writing reduces semantic distinctiveness, pulling proposals toward the center of recently funded work"
slug: llm-grant-writing-reduces-semantic-distinctiveness
status: supported
confidence: 0.75
tags: [llm-adoption, research-funding, science-of-science, homogenization, semantic-distinctiveness]
domain: Computational Social Science
source_papers: [rise-large-language-models-direction-impact]
evidence:
  - source: rise-large-language-models-direction-impact
    type: supports
    strength: strong
    detail: "Large-scale empirical analysis (NSF + NIH private + public data, 2021–2025): higher LLM involvement (α) is consistently associated with lower semantic distinctiveness percentile across all four datasets (within-investigator fixed effects); 25th→75th percentile LLM use ≈ 5pp decrease in distinctiveness at NSF, 4pp at NIH."
conditions: "Holds across both confidential proposal submissions and public awards, at both NSF and NIH. Effect is within-investigator (same PI, higher LLM use → less distinctive proposal). Does not distinguish which sections of proposals were AI-written."
date_proposed: 2026-05-29
date_updated: 2026-05-29
---

## Statement

When researchers use large language models more heavily in preparing federal grant applications (NIH, NSF), their proposals become less semantically distinctive—positioned closer to recently funded work within the same agency. This is a within-investigator effect: the same PI's proposals are measurably less original when LLM involvement is higher.

## Evidence summary

Qian et al. (2026) provide the first large-scale, multi-source empirical test using confidential proposal data from two US R1 universities plus the full population of public NSF and NIH awards (2021–2025). The bimodal distribution of LLM use suggests a split between minimal and substantive adopters; the distinctiveness effect is monotonic across the adoption spectrum.

## Conditions and scope

- Established in the US federal grants context (NSF, NIH); may not generalize to other funding systems.
- Detection is based on textual traces (Liang et al. method); direct self-report or section-level data not available.
- Effect magnitude is meaningful (several percentile points) but moderate in absolute terms.

## Counter-evidence

None to date; finding is robust across all four independent datasets in the paper.

## Linked ideas

## Open questions

- Does reduced distinctiveness predict lower long-run scientific impact or citation counts?
- Does the bimodal adoption pattern persist or evolve as LLM use becomes normalized?
- To what extent do reviewer practices (rather than proposal content) drive the NIH success association?
