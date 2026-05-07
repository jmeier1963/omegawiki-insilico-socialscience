---
title: "Measuring Progress Toward AGI: A Cognitive Framework"
slug: measuring-progress-toward-agi-cognitive-framework
arxiv: ""
venue: "Google DeepMind Technical Report"
year: 2026
tags: [agi-evaluation, cognitive-taxonomy, benchmark, ai-evaluation, general-intelligence]
importance: 4
date_added: 2026-04-23
source_type: pdf
s2_id: ""
keywords: [AGI, cognitive taxonomy, evaluation, benchmark, cognitive profile, general intelligence]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

AI progress is difficult to measure rigorously: existing benchmarks saturate quickly, are narrow, and do not capture the breadth of general intelligence. Without a principled evaluation framework, claims about progress toward AGI lack scientific grounding.

## Key idea

Drawing on decades of cognitive science, psychology, and neuroscience, proposes a **Cognitive Taxonomy** of 10 key cognitive faculties: perception, generation, attention, learning, memory, reasoning, metacognition, executive functions, problem solving, and social cognition. A system's performance across targeted, held-out cognitive tasks yields a **cognitive profile** — a principled, multidimensional measure of progress toward AGI.

## Method

- Deconstruct general intelligence into 10 cognitive faculties via literature synthesis from cognitive science
- Define an evaluation protocol: targeted, held-out tasks per faculty → cognitive profile
- Identify evaluation gaps: 5 of 10 faculties lack adequate evaluations (learning, metacognition, attention, executive functions, social cognition)
- Launch Kaggle Community Benchmarks hackathon ($200K prize pool) to solicit evaluations for gap faculties

## Results

- Framework provides a principled, multi-dimensional alternative to single-score benchmarks
- Identifies that half the cognitive faculties (learning, metacognition, attention, executive functions, social cognition) lack rigorous evaluations
- Demonstrates existing frontier models excel at reasoning and generation but have undercharacterized profiles in metacognition and social cognition

## Limitations

- Framework is descriptive/taxonomic; not yet validated as predictive of real-world AI capability
- Cognitive faculties may overlap or be culturally contingent
- Evaluation gap problem is itself unsolved — hackathon solutions may not achieve scientific consensus

## Open questions

- Can cognitive profiles predict AI performance in real-world open-ended tasks?
- How should multi-modal systems (perception + reasoning) be profiled across integrated tasks?
- Is metacognitive evaluation fundamentally different from behavioral evaluation?

## My take

An important step toward principled AGI evaluation, grounding it in cognitive science rather than engineering benchmarks. The identification of five "evaluation gaps" is actionable and the hackathon format could accelerate progress. Especially relevant to this wiki: social cognition is one of the gap faculties — direct connection to whether LLMs can model human social behavior.

## Related

- [[foundation-model-predict-capture-human-cognition]]
- [[ai-driven-scientific-discovery]]
- [[automated-research-pipeline]]
