---
title: "Evaluating LLMs' Divergent Thinking Capabilities for Scientific Idea Generation with Minimal Context"
slug: evaluating-llms-divergent-thinking-capabilities-scientific
arxiv: ""
venue: "Nature Communications"
year: 2026
tags: [llm-ideation, divergent-thinking, scientific-ideas, idea-generation, creativity, minimal-context]
importance: 2
date_added: 2026-04-23
source_type: pdf
s2_id: ""
keywords: [LLM, divergent thinking, scientific idea generation, minimal context, creativity, evaluation]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

Can LLMs generate genuinely novel and diverse scientific ideas when given minimal context (problem statement only, no examples)? How should we measure divergent thinking in LLMs?

## Key idea

LLMs exhibit measurable divergent thinking capabilities in scientific idea generation — producing diverse, non-obvious ideas from minimal prompts. The paper proposes an evaluation framework and demonstrates that LLMs score meaningfully on divergent thinking metrics when assessed by domain experts.

## Method

- Minimal context prompts: problem statement only, no examples or demonstrations
- Expert evaluation of idea novelty, diversity, and scientific plausibility
- Comparison across LLM scales and architectures
- Divergent thinking metrics adapted from human creativity assessment literature

## Results

- LLMs generate ideas with statistically significant divergent thinking scores
- Minimal context sufficient to elicit diverse scientific ideas
- Larger models show stronger divergent thinking on expert-evaluated metrics
- Framework validated against human baseline divergent thinkers

## Limitations

- Expert evaluation is expensive and subjective
- "Divergent thinking" metrics from human psychology may not translate cleanly to LLM evaluation
- Unknown whether LLM idea diversity reflects genuine novelty or training data recombination

## Open questions

- How does divergent thinking in idea generation translate to actual scientific contributions?
- Do LLMs' ideas genuinely surpass existing literature or recombine known concepts?

## My take

An important addition to the AI-for-science toolkit: evaluating not just whether LLMs can complete well-specified tasks but whether they can generate useful novel directions. The "minimal context" approach is methodologically sound — avoiding the confound of demonstrations. The harder question (are these ideas genuinely novel relative to the training corpus?) remains unanswered.

## Related

- [[automated-research-pipeline]]
- [[ai-driven-scientific-discovery]]
