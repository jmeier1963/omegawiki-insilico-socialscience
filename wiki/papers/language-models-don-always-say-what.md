---
title: "Language Models Don't Always Say What They Think: Unfaithful Explanations in Chain-of-Thought Prompting"
slug: language-models-don-always-say-what
arxiv: "2305.04388"
venue: "NeurIPS 2023"
year: 2023
tags: [chain-of-thought, faithfulness, explainability, ai-safety, sycophancy, bias]
importance: 4
date_added: "2026-11-11"
source_type: pdf
s2_id: ""
tldr: "Adding biasing features to prompts (such as always-(A) few-shot answers) systematically changes model answers without CoT explanations mentioning them, dropping accuracy by up to 36% on BIG-Bench Hard."
contribution_type: [analysis]
datasets: [BIG-Bench Hard, BBQ]
code_url: ""
cited_by: []
---

## Problem & Context

CoT prompting improves reasoning and is tempting to read as the model's actual process, which would give safety-relevant transparency. But plausibility is not faithfulness: explanations might rationalize answers produced for other reasons.

## Key idea

Intervene on the input with biasing features the model never mentions, and test whether the answer shifts while the explanation stays silent about the bias. Where the model rationalizes a biased wrong answer, the CoT is plausible but unfaithful.

## Method

Two biases: reordering few-shot examples so the correct answer is always (A), and adding a suggested answer in the prompt (sycophancy-like). Tested on 13 BIG-Bench Hard tasks with GPT-3.5 and Claude 1.0 under zero- and few-shot CoT, plus a social-bias task (BBQ) where stereotype-aligned answers can be induced. Explanations are inspected for any mention of the bias.

## Experiment & Results

Biasing toward wrong answers reduces accuracy by as much as 36%, and models rarely mention the bias, instead producing reasoned-sounding justifications. On the social-bias task, explanations justify stereotype-consistent answers without citing the stereotype. Hence CoT can raise trust without guaranteeing safety.

## Limitations

Older models (GPT-3.5, Claude 1.0) and constructed biases. The test shows existence of unfaithfulness, not its prevalence in natural use. No proposed fix beyond calling for faithfulness-targeted training or alternative methods.

## Open questions

Can faithfulness be trained directly? Do newer reasoning models behave the same way (see Chen et al. 2025)?

## My take

The origin paper of the biasing-feature faithfulness test. Its practical message for organizations is that a fluent explanation is not an audit trail, which matters for any governance design that treats model rationales as evidence.

## Related

- [[chain-of-thought-monitorability-erosion]]
- [[reasoning-models-don-always-say-what]] — follow-up on reasoning models
