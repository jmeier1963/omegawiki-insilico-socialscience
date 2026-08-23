---
title: "Performance and Reproducibility of Large Language Models in Named Entity Recognition: Considerations for the Use in Controlled Environments"
slug: performance-reproducibility-large-language-models-named
arxiv: ""
venue: "Drug Safety"
year: 2025
tags: [reproducibility, regulated-environments, gxp, named-entity-recognition, pharmacovigilance, open-weights, model-validation, clinical-ai]
importance: 4
date_added: 2026-08-22
source_type: pdf
s2_id: ""
tldr: "Bayer researchers show that GPT-3.5 and GPT-4 fail to produce reproducible output on medical named-entity recognition, which together with the limits of externally hosted systems rules them out as components of GxP-validated systems, while open models hosted internally remain viable."
contribution_type: [analysis, benchmark]
datasets: []
keywords: [GxP validation, reproducibility, named entity recognition, relation extraction, Zephyr-7b-beta, T5, QLoRA, guided generation, pharmacovigilance]
domain: "Medicine"
code_url: ""
cited_by: []
---

## Problem & Context

Pharmacovigilance and drug development operate under GxP — regulatory frameworks that require a validated system to remain in a demonstrable *state of control*. That requirement is ordinary for conventional software and awkward for a hosted language model whose behaviour can change without notice. Dietrich and Hollstein, both at Bayer's pharmacovigilance data science unit, ask the compliance question directly: can GPT-3.5 and GPT-4 be used as part of a GxP-validated system?

Published online 11 December 2024; print issue *Drug Safety* 48(3), 287–303, March 2025.

## Key idea

Separate two questions that are usually run together. **Performance** — can the model do the task? — and **reproducibility** — does it do the same thing twice? For regulated use only the conjunction counts, and it is the second that fails.

## Method

Zero-shot evaluation of externally hosted GPT-3.5 and GPT-4 against internally hostable open models on medical named-entity recognition (seven entity types) and relation extraction. Guided generation was used so the same prompt could be applied across models. One model (Zephyr-7b-beta) was carried forward for few-shot learning and QLoRA fine-tuning. A small fine-tuned T5 Base served as the conventional baseline. Dedicated reproducibility experiments tested whether repeated runs return identical output.

## Experiment & Results

Zero-shot GPT-4 performance is comparable to a fine-tuned T5. Zephyr-7b-beta outperformed zero-shot GPT-3.5. For product combinations such as product–event combination, the fine-tuned T5 was significantly better than either GPT variant — the specialized small model beats the general large one on the structurally hardest sub-task.

The decisive finding is negative: despite OpenAI having introduced features intended to produce consistent output, **both GPT variants failed to demonstrate reproducible results**. The authors conclude that the lack of reproducibility, together with the limitations of externally hosted systems in keeping a validated system in a state of control, may preclude the use of closed proprietary models in regulated environments.

The constructive recommendation survives: given the good NER performance, use GPT to generate annotation proposals for training data, then fine-tune a controllable model on that basis.

## Limitations

- One task family (NER and relation extraction) in one domain; the reproducibility finding may not generalize to all uses.
- Model versions are those available in 2024; vendor determinism features have since changed, which is itself an instance of the problem described.
- The GxP conclusion is the authors' reading of the regulatory requirement, not a regulator's determination.

## Open questions

- Do temperature-zero and seeded-generation features deliver reproducibility in the sense validation requires, or only approximate consistency?
- What validation regime would make a hosted model admissible — versioned endpoints with guaranteed lifetimes, or nothing short of local hosting?
- How should other regulated fields (clinical decision support, forensics) apply the same test?

## My take

This is the most concrete instance available of the abstract claim that a frontier model is not an instrument in the sense a laboratory means it. A mass spectrometer has known error tolerances and testable calibration; a hosted model has neither specified capabilities nor a guarantee that today's behaviour matches yesterday's. Here that gap has an operational consequence with a paper trail: an entire class of application is excluded not because the model is inaccurate but because it is not reproducible.

Note the direction of the finding: the small controllable model wins on regulatory grounds while the large model wins on raw capability, and the recommended architecture puts the large model upstream of the validated pipeline rather than inside it. That is a template worth generalizing.

## Related

- [[chen-zaharia-zou-chatgpt-behavior-changing]] — the drift that makes reproducibility fail
- [[verification-bandwidth]]
- [[groeneveld-olmo-language-models]]
