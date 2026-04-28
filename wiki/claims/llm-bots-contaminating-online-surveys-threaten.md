---
title: "LLM bots contaminating online surveys threaten the validity of panel-based social science data"
slug: llm-bots-contaminating-online-surveys-threaten
status: proposed
confidence: 0.65
tags: [silicon-sampling, survey-bots, llm, survey-integrity, data-quality, online-panels, validity]
domain: "NLP"
source_papers: [potential-existential-threat-large-language-models, identifying-bots-through-llm-generated-text, llm-driven-bot-infiltration-protecting-web]
evidence:
  - source: potential-existential-threat-large-language-models
    type: supports
    strength: moderate
    detail: "Westwood (PNAS 2025) argues LLM bots capable of completing online surveys represent a potential existential threat: as LLM costs fall and capabilities improve, contamination could become pervasive and indistinguishable, undermining validity of panel-based surveys at scale."
  - source: identifying-bots-through-llm-generated-text
    type: supports
    strength: moderate
    detail: "Claassen et al. (2025) demonstrate that LLM-generated survey responses are difficult to distinguish from human responses, and propose detection approaches; the detection challenge underscores the severity of the contamination threat."
  - source: llm-driven-bot-infiltration-protecting-web
    type: supports
    strength: moderate
    detail: "Höhne et al. (2025) document LLM-driven bot infiltration of web surveys and assess how to protect survey integrity; existing CAPTCHA and attention-check defenses fail against capable LLM bots."
conditions: "Most acute for crowdworker panels (MTurk, Prolific) with financial incentives for survey completion; less applicable to probability samples with identity verification. Severity scales with LLM capability and falling API costs."
date_proposed: 2026-04-28
date_updated: 2026-04-28
---

## Statement

LLM bots that can automatically complete online surveys at near-zero marginal cost threaten to contaminate panel-based survey data at scale. As LLM capabilities improve and costs fall, financial incentives in crowdworker panels create conditions where LLM bot fraud may become pervasive and undetectable, potentially invalidating the measurement foundation of a large share of social science research.

## Evidence summary

Three converging papers document this threat. Westwood (2025, PNAS) frames it as "existential" for online survey research, arguing the combination of improving LLM capabilities and falling costs creates an asymmetric arms race. Claassen et al. (2025) demonstrate detection difficulty empirically. Höhne et al. (2025) document real bot infiltration instances and limitations of current defenses. Together these papers establish both the mechanism and the empirical reality of the threat.

## Conditions and scope

- Most severe for crowdworker and online panel surveys (MTurk, Prolific, YouGov) where financial incentives motivate fraud
- Less applicable to high-quality probability samples with cryptographic identity verification
- Severity scales with LLM capability improvements and API cost reductions over time
- Not yet established as an actual widespread phenomenon — most evidence is prospective/threat assessment

## Counter-evidence

- Current empirical contamination rates are unknown; "existential threat" framing may be premature
- Probability-sample surveys with identity verification may be largely immune
- Behavioral biometrics (typing patterns, response timing) may be able to detect LLM bots
- Survey platform providers have strong incentives to develop and deploy detection countermeasures

## Linked ideas

## Open questions

- What fraction of current online panel survey responses are already LLM-generated?
- Can behavioral biometrics (typing cadence, mouse movements) reliably detect LLM bots?
- Are there LLM bot signatures that persist across all prompt strategies?
- Do LLM bots distort findings in directions predictable from their training data biases?
