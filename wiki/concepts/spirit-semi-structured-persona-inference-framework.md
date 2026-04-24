---
title: "SPIRIT: Semi-Structured Persona Inference Framework"
aliases: ["SPIRIT framework", "psychologically grounded persona inference", "semi-structured persona from social media", "individualized trajectory simulation", "persona inference from social media"]
tags: [persona-conditioning, silicon-sampling, social-media, individual-differences, population-inference]
maturity: emerging
key_papers: [persona-based-simulation-human-opinion-population]
first_introduced: "2026"
date_updated: 2026-04-14
related_concepts: [persona-conditioning, silicon-sampling, algorithmic-fidelity, meso-level-group-persona-synthesis]
---

## Definition

SPIRIT (Semi-structured Persona Inference and Reasoning for Individualized Trajectories) is a persona construction framework that infers psychologically grounded personas from public social media posts. Unlike demographic attribute-list conditioning, SPIRIT produces semi-structured representations integrating:
1. **Structured attributes**: personality traits (Big Five), world beliefs (values, political identity), and lifestyle attributes
2. **Unstructured narrative text**: lived experiences, recurring concerns, and linguistic style from social media posts

The resulting personas are used to condition LLM-based agents to simulate how specific individuals would respond to survey questions.

## Intuition

Demographic conditioning tells an LLM "you are a 45-year-old female Republican from Texas." SPIRIT tells the LLM "here is the psychological profile and lived experience of this specific person, inferred from their public posts." The richer conditioning allows the agent to reproduce the idiosyncratic, cross-cutting belief patterns characteristic of real individuals — patterns that demographic stereotypes systematically miss.

## Variants

- **Full SPIRIT**: infers from social media posts + structured attribute extraction
- **Survey-elicited SPIRIT**: could use narrative interview responses instead of social media posts
- **Demographic conditioning** (baseline): attribute-list prompting without psychographic depth

## When to use

- When individual-level heterogeneity matters (not just aggregate distributions)
- When studying time-sensitive opinion dynamics that may diverge from demographic stereotypes
- When social media data is available for the target population

## Known limitations

- Requires publicly available social media data — representativeness concerns for populations with low social media presence
- LLM-based persona inference may hallucinate psychological attributes
- Substantially more computation than demographic conditioning
- Privacy implications of using social media data for persona inference

## Open problems

- Can SPIRIT be applied with survey-elicited narrative text instead of social media?
- How does SPIRIT handle populations with sparse or unrepresentative social media presence?
- What are the representativeness biases introduced by social media persona sourcing?

## Key papers

- [[persona-based-simulation-human-opinion-population]] (Li & Conrad 2026) — introduces SPIRIT framework

## My understanding

Positioned as a richer alternative to simple demographic conditioning. SPIRIT represents the richest end of the persona conditioning spectrum: individual-level psychographic profiles rather than demographic stereotypes. Whether this advantage generalizes beyond survey simulation to agent-based modeling is an open question.
