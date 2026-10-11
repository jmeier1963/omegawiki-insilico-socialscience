---
name: "Digital Twin Survey Replication"
slug: digital-twin-survey-replication
type: evaluation
tags: [silicon-sampling, survey-methodology, synthetic-data, llm-evaluation, public-opinion]
source_papers: [[ai-stand-human-survey-takers-really]]
parent_methods: []
child_methods: []
realizes_concepts: [[silicon-sampling], [[algorithmic-fidelity]]]
code_repo: ""
date_updated: "2026-10-11"
---

## Problem setting

Evaluating whether an LLM can substitute for human survey respondents requires more than comparing an LLM's aggregate point estimate to a human panel's topline number — aggregate-estimate approaches average away exactly the within-subgroup variance, internal response consistency, and demographic-breakdown structure that a real survey provides, making it impossible to tell whether a model fails for a specific subgroup, a specific question type, or in a specific direction.

## Mechanism

Construct one AI "digital twin" per real human respondent, giving each twin that individual's actual demographic profile and prior survey answers as context, then have each twin answer an entire questionnaire one question at a time — with each prior answer fed back into the prompt — under the exact same survey programming (split-form assignment, question/response-order randomization, survey language) that the corresponding human respondent received. Because each digital twin produces its own complete, internally consistent set of answers, standard survey-analysis operations (subgroup breakdowns, weighting, benchmark calibration) apply to the synthetic sample exactly as they would to a real panel, and discrepancies can be localized to specific questions, subgroups, or answer patterns rather than observed only as a single topline gap.

## Procedure

1. Select a reference human panel/survey with known respondent-level demographics and (ideally) a prior survey response history usable to build each profile.
2. For each human respondent, construct a corresponding digital-twin profile from their self-reported demographics and prior survey answers.
3. Administer the target questionnaire to each digital twin in the same order, same split-form assignment, and same randomization scheme as its human counterpart, carrying forward each twin's own prior answers within the session to promote internal consistency.
4. Apply the same survey weighting and population-benchmark calibration used for the real panel to the resulting synthetic sample.
5. Compare synthetic and human response distributions at the question level and at arbitrary subgroup cuts, computing error (e.g., average absolute percentage-point difference per question, averaged across questions and subgroups) to localize where and how the method succeeds or fails.

## Assumptions

- Respondent-level demographic and prior-survey data sufficient to build an individuating profile is available for the reference panel; the method's fidelity is bounded by how much individuating information the profile contains.
- The target LLM can maintain within-session consistency across a full questionnaire when prior answers are carried forward in context.
- Differences between digital-twin and human results can be meaningfully attributed to the LLM's modeling of the persona, holding survey programming (form, order, randomization, language) constant between the two conditions.

## Limitations

- More expensive than aggregate-estimate approaches, since it requires a separate model query sequence per respondent rather than one query producing a distributional estimate — Pew's own implementation required subsampling panelists on its most expensive wave for cost reasons.
- Does not, by itself, fix the underlying fidelity problem: in the originating study, digital twins still produced an average 12-percentage-point error versus matched human respondents, flattened within-group diversity, understated uncertainty, and shifted results depending on which LLM was used — the method surfaces and localizes these problems precisely but does not resolve them.
- Internal consistency within one digital twin's full questionnaire run does not guarantee realistic *between-respondent* heterogeneity; the originating study notes the approach helps avoid some of the flattening that pure aggregate-estimate methods produce, but still observed substantial diversity-flattening relative to the real population.
- Requires the same survey programming infrastructure (split-form logic, randomization schemes, multi-language support) to be replicated for synthetic administration, which is additional engineering overhead beyond simply prompting a model for population-level estimates.

## Tradeoff profile

Trades cost and engineering complexity (one full questionnaire pass per synthetic respondent, under matched survey programming) for diagnostic precision: rather than a single aggregate accuracy number, it yields question-level and subgroup-level error localization, response-order-bias comparability with the human panel, and an internally consistent synthetic dataset that supports arbitrary downstream subgroup analysis — valuable for method evaluation even though, per the originating study's results, it does not itself produce survey-grade accuracy.

## Evaluated by

Applied across three American Trends Panel waves (~300 questions, several thousand matched respondent pairs), measuring average absolute percentage-point error at the question and subgroup level, average "not sure" selection rates, factual-knowledge accuracy rates, and cross-model comparison (GPT-5.1 vs. Claude Opus 4.6) on a question subset. See [[ai-stand-human-survey-takers-really]] for full results.
