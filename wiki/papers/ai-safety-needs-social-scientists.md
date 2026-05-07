---
title: "AI Safety Needs Social Scientists"
slug: ai-safety-needs-social-scientists
arxiv: ""
venue: "Distill"
year: 2019
tags: [alignment, ai-safety, social-science, human-values, value-alignment, cognitive-bias, debate, rlhf]
importance: 4
date_added: 2026-05-06
source_type: pdf
s2_id: ""
keywords: [AI alignment, social scientists, human values, cognitive bias, debate, value learning, human factors, scalable oversight]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

AI alignment approaches that learn values from human feedback assume humans can accurately and reliably report their values when asked. But humans have limited knowledge, cognitive biases, and context-dependent value expression. Technical alignment methods must grapple with human psychology — but AI safety researchers rarely engage with social scientists who study these phenomena.

## Key idea

**AI alignment has unresolved human-side uncertainties** that require empirical social science research. If AI systems learn values by asking humans questions, how humans respond to different question framings, under cognitive load, with different incentives, etc., will all affect the quality of value learning. Properly resolving these uncertainties requires the experimental tools of psychology, economics, and political science.

## Method

- Position paper / manifesto
- Surveys the AI alignment landscape (focus on "debate" — training AI systems to persuade human judges of correct answers)
- Identifies specific empirical questions that social science can address:
  - How do humans reason under time pressure, manipulation, or high cognitive load?
  - Which question formats yield more accurate value reports?
  - How do cognitive and ethical biases interact with AI persuasion?
  - What level of task complexity can non-expert human judges evaluate?

## Results

- Current alignment approaches (including RLHF and debate) depend on assumptions about human rationality and bias that are empirically testable — but rarely tested
- Key specific questions for social science: how does human performance on judging AI outputs degrade under adversarial conditions? What training can improve human judge performance?
- The authors are optimistic: empirical research is tractable and would significantly advance alignment

## Limitations

- Position paper; does not contain empirical results
- Focused primarily on "debate" as the alignment method, which is one approach among many
- Published 2019; some alignment methods (constitutional AI, RLHF with diverse annotators) have evolved since

## Open questions

- Which social science disciplines are most relevant to AI alignment?
- How should AI safety labs structure collaborations with social scientists?
- Does human judge performance on AI-generated content degrade as AI systems become more persuasive?

## My take

A seminal call-to-arms for interdisciplinary AI safety work that remains highly relevant. The fundamental insight — that alignment depends on human psychology and thus requires social science — has been underimplemented. The "debate" framing dates the paper, but the core argument generalizes. Importance 4 — Distill 2019, by OpenAI/Anthropic researchers, widely cited in interdisciplinary AI safety discussions.

## Related

- [[pluralistic-alignment]]
- supports: [[ai-alignment-requires-empirical-social-science-for-value-elicitation]]
