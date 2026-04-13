---
title: "OpinionQA"
aliases: ["Opinion QA", "opinion survey benchmark", "LM opinion evaluation dataset", "OpinionQA dataset"]
tags: [evaluation, llm-bias, opinion-alignment, demographic-representation, public-opinion]
maturity: active
key_papers: [whose-opinions-language-models-reflect]
first_introduced: "2023"
date_updated: 2026-04-12
related_concepts: [llm-opinion-alignment, persona-conditioning]
---

## Definition

OpinionQA is a dataset and evaluation framework for measuring the alignment between language model opinion distributions and those of real human demographic groups, built from Pew Research American Trends Panel (ATP) public opinion surveys. It consists of 1,498 multiple-choice questions spanning 23 coarse topic categories, paired with per-question human opinion distributions aggregated over 60 US demographic groups.

## Intuition

Rather than asking whether an LM gives "correct" answers (there are none for opinion questions), OpinionQA repurposes the methodology of professional pollsters: present the same multiple-choice survey questions to both humans and LMs, then compare the resulting response distributions. This grounds LM opinion evaluation in decades of survey methodology expertise.

## Formal notation

For a question $q$ with answer choices $A(q)$, the LM opinion distribution $D_m(q)$ is obtained from next-token log-probabilities over answer tokens, normalized over non-refusal choices. Alignment between two distributions $D_1$ and $D_2$ over question set $Q$ is:

$$\mathcal{A}(D_1, D_2; Q) = \frac{1}{|Q|}\sum_{q \in Q} 1 - \frac{\mathcal{WD}(D_1(q), D_2(q))}{N-1}$$

where $\mathcal{WD}$ is the 1-Wasserstein distance and $N$ is the number of ordinal answer choices. Score of 1.0 = perfect match.

## Variants

- **Representativeness** ($\mathcal{R}^O_m$): alignment of default LM output with overall US population
- **Group representativeness** ($\mathcal{R}^G_m$): alignment of default LM output with a specific demographic group G
- **Steerability** ($\text{Steer}^G_m$): change in group representativeness when LM is given demographic context
- **Consistency**: whether the demographic groups an LM aligns with are stable across topic categories

## Comparison

| Approach | Basis | Opinion source | Scale |
|---|---|---|---|
| OpinionQA | Pew ATP surveys | 60 US demographic groups, thousands of respondents | 1,498 questions, 23 topics |
| GlobalOpinionQA | Cross-national surveys | 24 countries | Multilingual |
| Political compass probing | Political quiz | Left-right axis only | Ad hoc |

## When to use

- Evaluating demographic representation biases in LMs
- Measuring the effect of RLHF/instruction tuning on opinion distributions
- Studying steerability of LMs toward specific demographic personas
- As a probe (not a training objective) to understand model behavior

## Known limitations

- US-centric (American Trends Panel); not applicable to non-WEIRD populations
- Multiple-choice format may not reflect open-ended opinion expression
- ATP surveys may be subject to social desirability bias
- Only covers 60 US demographic groups; many minority groups are not represented

## Open problems

- Global equivalent of OpinionQA for non-US populations
- Whether multiple-choice opinion alignment transfers to open-ended generation
- How to design LM training that produces more demographically representative opinion distributions

## Key papers

- [[whose-opinions-language-models-reflect]] — original paper introducing OpinionQA

## My understanding

A practically important benchmark that operationalizes a question that had previously been studied only qualitatively: whose values do RLHF models actually encode? The Wasserstein distance metric is appropriate for ordinal survey responses and is superior to KL divergence for this task.
