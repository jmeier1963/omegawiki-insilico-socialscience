---
title: "Generative AI Can Harm Learning"
slug: bastani-generative-ai-harm-learning
arxiv: ""
venue: "PNAS"
year: 2025
tags: [ai-education, learning-harm, chatgpt, tutoring, dependency, exam-performance, field-experiment]
importance: 3
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [generative AI, learning harm, ChatGPT tutor, math education, field experiment, dependency, PNAS]
domain: "general"
code_url: ""
cited_by: []
---

## Problem

AI tutors may help students solve practice problems but inhibit actual learning. Do students who use AI assistance during practice actually learn the underlying skills, or do they develop a dependency that undermines learning?

## Key idea

In a field experiment with ~1,000 high-school math students, access to a standard ChatGPT tutor improved performance during AI-assisted practice (+127%) but produced no learning gains on subsequent unassisted exams, whereas a carefully designed "guardrail" tutor (with forcing functions that prevented answer-seeking) did preserve learning.

## Method

- Field experiment with ~1,000 Turkish high-school math students
- Three conditions: standard ChatGPT access, "guardrail" ChatGPT (custom prompting to force reasoning), control (no AI)
- Pre-test → AI-assisted practice → post-test without AI
- Published: *PNAS* (DOI 10.1073/pnas.2422633122); original SSRN WP 4895486
- Authors: Hamsa Bastani, Osbert Bastani, et al. (Wharton/Penn)

## Results

- Standard ChatGPT group: +127% during practice, but no exam improvement vs. control
- Guardrail ChatGPT group: positive exam improvement (learning preserved)
- Standard ChatGPT users displayed answer-seeking rather than concept-learning behavior
- The effect was largest for students with weaker prior math skills

## Limitations

- Single subject (math), single country, single age group
- "Guardrail" tutor required significant custom prompting — not plug-and-play
- Practice-to-exam gap may reflect a context-dependent transfer problem, not learning
- PNAS article; full methods in SSRN preprint

## Open questions

- Does the dependency effect transfer to other subjects and age groups?
- Can AI tutors be designed to consistently promote learning rather than answer-seeking?
- What is the long-term academic outcome trajectory for AI-dependent students?

## My take

The cleanest causal evidence to date that unconstrained AI assistance in education can harm learning. The +127% during practice vs. 0% on exams is a striking dissociation. The guardrail result is hopeful: it's not that AI tutoring can't work, just that standard ChatGPT access optimizes for immediate performance rather than learning. Directly relevant to the Kosmyna et al. (2025) EEG findings and Ericsson's (1993) deliberate practice theory.

## Related

- [[kosmyna-brain-chatgpt-cognitive-debt]]
- [[risko-gilbert-cognitive-offloading]]
- [[ericsson-deliberate-practice]]
- [[collins-tacit-explicit-knowledge]]
- [[carr-shallows-internet-brain]]
