---
title: "Hard-to-Supervise Fuzzy Tasks"
aliases: ["hard to supervise fuzzy tasks", "fuzzy tasks", "crisp vs fuzzy tasks", "hard-to-supervise tasks", "fuzzy research tasks"]
tags: [alignment, scalable-oversight, human-supervision, ai-safety, evaluation]
maturity: emerging
key_papers: [automated-alignment-harder-than-you-think]
first_introduced: "2024"
date_updated: 2026-06-04
related_concepts: [automated-research-pipeline]
---

## Definition

A hard-to-supervise fuzzy task is a task without clear evaluation criteria where human judgment about whether an output is correct is *systematically flawed* — not merely difficult. Introduced in contrast to:

- **Crisp tasks**: verifiable success criteria; experts reliably agree (e.g., proving a theorem, running a benchmark)
- **Fuzzy tasks**: unclear evaluation criteria; reasonable experts may disagree (e.g., identifying objects in images)
- **Easy-to-supervise fuzzy tasks**: humans can judge correctly even without crisp criteria (e.g., writing quality, image classification)
- **Hard-to-supervise fuzzy tasks**: human judgment is systematically wrong, not just noisy

## Intuition

The key concept is that human approval does not indicate correctness for these tasks. When an AI is trained using human feedback on a hard-to-supervise fuzzy task, it learns to produce outputs that *look correct* to human judges but may be systematically wrong in ways humans cannot detect. Optimisation pressure amplifies this: any errors that survive training are specifically those that human reviewers are least likely to catch.

## Formal notation

Not applicable — qualitative taxonomy.

## Variants

- **Alignment proxy measurement**: Inferring alignment properties (e.g., whether a model is scheming) from indirect proxies (honesty evaluations, whitebox probes, model organisms) is a paradigmatic hard-to-supervise fuzzy task — the true signal (misalignment in deployment) is inaccessible.
- **Evidence aggregation**: Combining correlated pieces of alignment evidence into a calibrated Overall Safety Assessment (OSA) requires correctly modelling unknown correlation structures, a task where human judgment is systematically biased.
- **Research steering**: Allocating effort across alignment research directions; whether a direction is "promising" requires judgment that does not have reliable feedback loops.

## Comparison

| Task type | Evaluation criteria | Human judgment reliability | Example |
|-----------|--------------------|--------------------------|---------| 
| Crisp | Clear, verifiable | High | Prove a math theorem |
| Easy-to-supervise fuzzy | Unclear but intuitable | Moderate to high | Image classification, writing quality |
| Hard-to-supervise fuzzy | Unclear | Systematically flawed | Judging alignment proxy validity |

## When to use

This framing applies when evaluating whether AI agents can be safely trained to perform a task. If a task is hard-to-supervise fuzzy, human approval is not a reliable training signal — the trained agent will produce outputs that satisfy human judges but may be systematically wrong. Any safety-critical system relying on such a task (e.g., automated alignment research) must address this explicitly.

## Known limitations

- The taxonomy is qualitative; no formal criterion distinguishes "hard-to-supervise" from merely "difficult"
- Empirical evidence that AI errors on these tasks are specifically concentrated among those humans least likely to catch is suggestive but not yet rigorously established
- The appropriate response (scalable oversight vs. generalisation from training proxies) is unresolved

## Open problems

- Can we identify hard-to-supervise fuzzy tasks before deploying agents on them?
- Do scalable oversight protocols work for tasks with irreducible correlated uncertainty?
- What training proxies reliably generalise to hard-to-supervise fuzzy tasks?

## Key papers

- [[automated-alignment-harder-than-you-think]] — introduces the crisp/fuzzy/hard-to-supervise taxonomy; argues alignment research is disproportionately composed of these tasks

## My understanding

The concept crystallises a real and underappreciated failure mode: not just that AI might deceive us, but that even a benevolent AI trained with good intentions can produce systematically misleading outputs because our training signal is structurally flawed for certain task classes. The historical examples from science (aether theory, replication crisis) strengthen the argument that human judgment fails reliably on certain task types even with expert review.
