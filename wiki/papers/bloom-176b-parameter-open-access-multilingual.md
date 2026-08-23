---
title: "BLOOM: A 176B-Parameter Open-Access Multilingual Language Model"
slug: bloom-176b-parameter-open-access-multilingual
arxiv: "2211.05100"
venue: "arXiv preprint"
year: 2022
tags: [open-weights, multilingual-llm, open-science, research-infrastructure, model-transparency, bigscience, foundation-model]
importance: 3
date_added: 2026-08-22
source_type: pdf
s2_id: ""
tldr: "A 176-billion-parameter multilingual language model trained on the ROOTS corpus by an open collaboration of hundreds of researchers and released with open access to weights, data documentation and training process."
contribution_type: [system, application]
datasets: [ROOTS, xP3]
keywords: [BLOOM, BigScience, open-access LLM, multilingual, ROOTS corpus, responsible AI license, open collaboration]
domain: "Computer Science"
code_url: "https://huggingface.co/bigscience/bloom"
cited_by: []
---

## Problem & Context

By 2022 large language models had become central research instruments while remaining the property of a handful of companies: weights unavailable, training data undocumented, and the process by which capability arose inaccessible to the researchers who depended on the results. BigScience was organized as the counter-move — a year-long open collaboration of hundreds of researchers, funded by a public compute grant (Jean Zay), building a frontier-scale model in the open.

## Key idea

Scale and openness are not exclusive. BLOOM is a 176B-parameter decoder-only transformer trained on the ROOTS corpus spanning 46 natural and 13 programming languages, released together with the data documentation, the training logs and the engineering decisions — so that the model is not only usable but *studiable*.

The multilingual commitment is the second axis: rather than treating non-English as a transfer problem, the corpus and the governance were built around language communities from the start.

## Method

Decoder-only transformer at 176B parameters, trained on the ROOTS corpus assembled and documented by working groups within the collaboration. Multitask prompted finetuning (xP3) produces the BLOOMZ variants. Released under the Responsible AI License, which permits open access while restricting enumerated harmful uses — a deliberate middle position between fully permissive and closed release.

The organizational method is part of the contribution: open working groups covering data, modelling, evaluation, ethics and legal questions, with the process itself documented.

## Experiment & Results

Evaluated across multilingual benchmarks (SuperGLUE-style tasks, machine translation, summarization) in zero-shot and few-shot settings, with BLOOMZ improving substantially on held-out task generalization after multitask prompted finetuning. Performance is competitive with comparable-scale models of its generation while remaining substantially behind the closed frontier of the same period.

The durable result is not the benchmark table but the artifact: weights, corpus documentation and process records that other researchers can inspect.

## Limitations

- Capability trails contemporaneous closed frontier models, which is the crux for anyone arguing that open models can substitute for them at the leading edge.
- The ROOTS corpus, though documented, remains uneven across the 46 languages.
- The Responsible AI License restricts use, so "open" is qualified in a way that complicates downstream research and redistribution.
- The one-off public compute grant is not a repeatable funding model.

## Open questions

- Can open collaborations sustain a position at the frontier rather than one generation behind it?
- What level of public compute infrastructure would be required to make open frontier models routine?
- Does documented training data change what can be concluded from a model's behaviour, and by how much?

## My take

BLOOM's importance in an argument about the privatization of scientific instruments is as an existence proof with a stated limit. It shows that open frontier-scale models are buildable and that the process can be documented well enough for scrutiny; it also shows that the result sits behind the closed leading edge, which is exactly the asymmetry that matters when the question is whether science can audit the state of the art. Open models and public compute mitigate the dependency; they do not remove it while the performance frontier stays proprietary.

## Related

- [[groeneveld-olmo-language-models]] — the fully-open counterpart, with training data and intermediate checkpoints released
- [[some-simple-economics-agi]]
