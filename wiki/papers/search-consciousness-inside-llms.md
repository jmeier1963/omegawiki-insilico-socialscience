---
title: "The Search for Consciousness Inside LLMs"
slug: search-consciousness-inside-llms
arxiv: ""
venue: "The Economist (Briefing)"
year: 2026
tags: [machine-consciousness, interpretability, introspection, mechanistic-interpretability, anthropic, llm-internals, philosophy-of-mind]
importance: 3
date_added: 2026-08-22
source_type: pdf
s2_id: ""
tldr: "A briefing on efforts to determine whether LLMs could be conscious, opening with an Anthropic interpretability experiment in which self-referential concepts surfaced in Claude Sonnet 4.5's internal layers during an introspection-primed counting task."
contribution_type: [survey]
datasets: []
keywords: [Claude Sonnet 4.5, introspection, interpretability, neural layers, self-reference, machine consciousness, biological naturalism]
domain: "general"
code_url: ""
cited_by: []
---

## Problem & Context

The briefing accompanying the 20 August 2026 Economist cover leader. Its subject is the scientific attempt — not the philosophical one — to determine whether algorithms could wake up and feel, and what evidence would count.

## Key idea

Interpretability tools have begun to open the layers that were previously a black box, which changes what can be asked. Instead of inferring an inner state from output, researchers can watch which concepts become active while the output is produced.

## Method

Journalistic briefing. Its anchoring example is an Anthropic experiment: Claude Sonnet 4.5 was asked to count to five and simultaneously "introspect deeply". The model complied, returning "One. Two. Three. Four. Five." Researchers used a mathematical tool they had developed to observe activity across the model's layers during the task.

The briefing also explains the mechanics for a general audience — words become tokens, tokens become numbers, numbers pass through layers of artificial neurons to a final layer that produces a token, repeated many times per second.

## Experiment & Results

What surprised the researchers was what surfaced beneath the ordinary output. As the model counted, different words popped in and out of existence in the underlying layers: "countdown"; about halfway through the output, "half way"; then "consciousness", "AI" and "Claude". After emitting the number five, the model said nothing further before issuing a full stop — but the word "done" appeared in its neural layers.

The briefing is careful about what this shows: internal representations tracked the task's structure and its self-referential framing. It does not claim this constitutes introspection in any sense that would bear on consciousness, and the cover package includes a dissenting guest essay by Susan Schneider arguing against mistaking chatbot intelligence for consciousness, alongside the position that computers may need biological aspects to become self-aware.

## Limitations

- Popular reporting on unpublished or partially published interpretability work; the experiment cannot be assessed from the article.
- The activations are suggestive precisely where suggestion is cheapest — a model primed to "introspect deeply" activating "consciousness" is what a well-trained language model does.
- No control condition is described.

## Open questions

- Do internal activations of self-referential concepts carry any evidential weight about inner states, or only about training distribution?
- Can interpretability distinguish a representation that is *used* by the model from one that is merely present?
- Is there any experiment on a language model whose outcome would count as evidence either way?

## My take

The methodologically interesting part is the move from output to internals as the evidence base — the same move that mechanistic interpretability offers for opacity generally. Its limitation here is instructive: opening the layers shows *what representations are active*, not what they mean to the system, and the gap between those two is where the entire question sits.

That gap is the same one that matters for the epistemic argument. Interpretability mitigates surface opacity while the underlying opacity — the relation between high-dimensional learned representations and anything a human would call a reason — remains. A model that activates "consciousness" while counting is exhibiting the same kind of evidence as a model that produces a fluent derivation: real, observable, and not about the thing one wants to know.

## Related

- [[could-ais-become-conscious]] — the leader in the same package
- [[machine-consciousness]]
- [[alvarado-explaining-epistemic-opacity]]
- [[boge-two-dimensions-opacity-deep-learning]]
