---
title: "Roleplay-doh: Enabling Domain-Experts to Create LLM-simulated Patients via Eliciting and Adhering to Principles"
slug: roleplay-doh-enabling-domain-experts-create
arxiv: "2407.00870"
venue: "EMNLP 2024"
year: 2024
tags: [llm-simulation, roleplay, domain-expert, mental-health, counseling, principle-adherence, hci]
importance: 3
date_added: 2026-05-05
source_type: pdf
s2_id: "2e4774b6feff0ed8af83e31bf99fc1cd3c24c5cf"
keywords: [Roleplay-doh, simulated patient, principle elicitation, principle adherence, LLM roleplay, counselor training, mental health]
domain: NLP
code_url: "https://roleplay-doh.github.io/"
cited_by: []
---

## Problem

Creating LLM-simulated patients for counselor training is hard: (1) privacy restrictions prevent collecting real therapy transcripts, (2) off-the-shelf LLMs (even GPT-4) fail to resemble real patients (too compliant, lack colloquial speech, resistance to help), (3) domain experts (counselors) can identify problems but don't know how to fix prompts.

## Key idea

**Roleplay-doh**: a human-LLM pipeline in which a domain expert provides qualitative feedback on LLM simulations; the feedback is transformed into natural language "principles" (rules the LLM must follow); and a **principle-adherence prompting** pipeline ensures the LLM respects these rules during roleplay. The expert iterates: test → annotate failures → derive principles → re-test. Produces customized AI patients that better match real patient behaviors.

## Method

- Expert interacts with baseline LLM simulation → identifies deviations from real patient behavior → articulates qualitative feedback
- Feedback elicitation structured via think-aloud and annotation sessions
- Principles extracted from feedback: behavioral rules (e.g., "use informal language", "resist advice initially")
- **Principle-adherence pipeline**: at inference time, principles injected as additional instruction; chain-of-thought verification step checks that generated response follows each principle before output
- User study: 25 counseling experts evaluated AI patients created with and without Roleplay-doh
- Metric: "more faithfully resembles a real patient" — judged by creators and third-party counselors

## Results

- Principle-adherence pipeline: 30% improvement in response quality and principle-following
- Experts found Roleplay-doh easy and effective for creating AI patients
- Third-party counselors also rated Roleplay-doh-created AI patients as more realistic
- Domain-expert annotation uncovered systematic failures in GPT-4 baseline simulations not visible to non-experts

## Limitations

- Applied only to mental health counseling — generalization untested
- Principle elicitation is laborious (semi-structured interview + annotation)
- Principles may conflict or underspecify complex patient behaviors
- No longitudinal study of whether counselor skill actually improves from practicing with AI patients

## Open questions

- Can principle elicitation be automated or semi-automated via LLM?
- How do AI patient roleplay partners compare to real standardized patients in counselor training outcomes?
- Can principles transfer across patient types, or must experts re-elicit for each case?

## My take

A well-motivated HCI+NLP paper that solves a real problem: letting non-technical domain experts shape high-stakes LLM simulations. The principle-adherence pipeline is a practical innovation. Limited to one domain and one interaction type, but the approach is generalizable. Importance: 3 — solid EMNLP contribution.

## Related

- [[llm-roleplay-skill-training]] (introduces this use case)
- supports: [[principle-adherence-prompting-improves-llm-roleplay]]
