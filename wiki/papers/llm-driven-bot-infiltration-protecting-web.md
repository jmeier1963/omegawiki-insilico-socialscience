---
title: "LLM-driven bot infiltration: Protecting web surveys through prompt injections"
slug: llm-driven-bot-infiltration-protecting-web
arxiv: ""
venue: "ResearchGate preprint"
year: 2025
tags: [survey-bots, bot-protection, prompt-injection, survey-integrity, llm, web-surveys, security]
importance: 2
date_added: 2026-04-28
source_type: pdf
s2_id: ""
keywords: [bot infiltration, prompt injection, web surveys, survey integrity, LLM detection, security, defensive measures]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

LLM-powered bots can complete web surveys in ways that are difficult to distinguish from human respondents. Traditional bot detection measures (CAPTCHAs, honeypot questions) may not work against sophisticated LLM agents. How can surveys be protected?

## Key idea

Embedding adversarial "prompt injections" into survey text can disrupt LLM bots by triggering unexpected model behavior or exposing automation, while remaining transparent or inconspicuous to human respondents. Prompt injection as a defensive security measure against LLM survey infiltration.

## Method

- Study by Höhne, Claassen, and Wolf (2025)
- Tests prompt injection techniques as a survey defense mechanism
- Compares bot detection with and without prompt injections embedded in survey questions

## Results

- Prompt injections can successfully identify and disrupt LLM-driven automated survey responses
- The technique exploits the instruction-following nature of LLMs — embedded instructions override survey-completion instructions
- Provides a detection signal while maintaining human-friendly survey text

## Limitations

- ResearchGate preprint — not yet peer reviewed
- Arms race dynamic: LLM developers may patch vulnerabilities exploited by prompt injection
- Effectiveness likely varies significantly across LLM families and instruction-following strengths

## Open questions

- How does effectiveness scale as instruction-following models improve?
- Can prompt injection be combined with statistical anomaly detection for layered defense?
- What is the false positive rate — do unusual wordings confuse human respondents?

## My take

Clever defensive application of adversarial prompting techniques to survey security. Part of the same thread as Claassen et al. (bot detection via text analysis) and Westwood (broad threat assessment). Together these three papers define an emerging sub-field of survey security research. The arms race framing is important: current defenses are likely temporary, suggesting structural solutions (non-text-based survey platforms, behavioral biometrics) may be needed long-term.

## Related

- [[potential-existential-threat-large-language-models]]
- [[identifying-bots-through-llm-generated-text]]
- supports: [[llm-bots-threaten-survey-integrity]]
