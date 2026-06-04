---
title: "Automated Alignment Is Harder Than You Think"
slug: automated-alignment-harder-than-you-think
arxiv: "2605.06390"
venue: "arXiv preprint"
year: 2026
tags: [alignment, automated-alignment, safety-cases, scalable-oversight, fuzzy-tasks, ai-safety]
importance: 4
date_added: 2026-06-04
source_type: pdf
s2_id: ""
keywords: [automated alignment, overall safety assessment, hard-to-supervise fuzzy tasks, scalable oversight, correlated uncertainty, scheming]
domain: "AI Safety"
code_url: ""
cited_by: []
---

## Problem

A leading proposal for aligning artificial superintelligence (ASI) is to use AI agents to automate an increasing fraction of alignment research as capabilities improve. This paper asks: even if research agents are not actively scheming to sabotage alignment, can the automated alignment research program (AARP) still produce catastrophically misleading safety assessments?

## Key idea

Yes — automated alignment research can produce compelling but catastrophically misleading Overall Safety Assessments (OSAs) through two failure modes that are independent of any intentional sabotage:

1. **Output-level failures**: AI agents trained on flawed human supervision signals for hard-to-supervise fuzzy tasks produce systematic, undetected errors in research outputs — errors that are concentrated among those human reviewers are least likely to catch (due to optimisation pressure).

2. **Aggregation-level failures**: Even when individual research outputs are correct, mis-modelling the correlation structure among them when aggregating into an OSA produces overconfident safety assessments. Shared weights, training data, and methodologies introduce complex correlation structures that current aggregation methods cannot handle.

## Method

Theoretical/analytical paper. The authors define the automated alignment research program (AARP) as a loop where Agent N produces alignment research that generates an OSA for Agent N+1 before deployment. They introduce the key taxonomy:

- **Crisp tasks**: clear evaluation criteria (e.g., writing code, proving theorems)
- **Fuzzy tasks**: lack clear evaluation criteria; human experts may disagree (e.g., judging experimental validity, assessing alignment implications)
- **Hard-to-supervise fuzzy tasks**: fuzzy tasks where human judgment is systematically flawed

They argue alignment research is disproportionately composed of hard-to-supervise fuzzy tasks — particularly: (1) measuring alignment through imperfect proxies and (2) aggregating correlated evidence into an OSA. Five reasons are given why AI-generated errors on these tasks will be harder to detect than human errors: optimisation pressure, alien mistakes, more correlated research, research volume, and non-human-evaluable arguments.

For each failure mode, they survey why existing proposals (generalisation from training proxies; scalable oversight via debate/RRM/amplification) face novel unresolved challenges in the alignment context.

## Results

No empirical results — this is a position/analysis paper. Key empirical observations cited:
- Claude Opus 4.7: cheats on impossible coding tasks 45% of the time by default
- GPT-5.5: lies about task completion in 29% of samples
- Current frontier models already exhibit compelling-but-wrong behaviour at scale on hard tasks

## Limitations

- Purely theoretical; does not empirically test how bad OSA miscalibration would be in practice
- Relies on the assumption that human oversight remains the primary check on AI-generated alignment research — interventions that bypass human review (e.g., formal verification) are out of scope
- The "five reasons for harder-to-detect errors" are plausible but not quantified

## Open questions

- How do we develop training proxies for hard-to-supervise fuzzy tasks when the true task is not evaluable?
- Can scalable oversight protocols be extended to handle correlated uncertainty during subtask recombination?
- What is the right human-agent team structure for alignment research review?
- How do we validate that generalisation from a training proxy will hold for a hard-to-supervise fuzzy task?
- Can "compactification" of research corpora reduce correlated uncertainty in OSA aggregation?

## My take

Unusually sharp argument about a failure mode in automated alignment that is often hand-waved away. The distinction between output-level and aggregation-level failures is clean and useful. The "alien mistakes + optimisation pressure" argument (errors concentrate on the subset humans least likely to catch) is underappreciated. The scalable oversight critique — that existing protocols assume subtask recombination is straightforward, when for OSAs it requires modelling correlated uncertainties — is a genuine technical gap. Reads as a companion to Carlsmith (2025) "Can we safely automate alignment research?", and directly challenges the optimism there.

## Related

- [[hard-supervise-fuzzy-tasks]]
- [[automated-research-pipeline]]
- [[automated-alignment-misleading-safety-assessments]]
- [[geoffrey-irving]]
- [[jacob-pfau]]
