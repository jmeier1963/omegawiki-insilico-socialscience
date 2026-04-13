---
title: "Algorithmic Fidelity"
aliases: ["demographic replication fidelity", "LLM demographic fidelity", "subpopulation replication accuracy"]
tags: [algorithmic-fidelity, silicon-sampling, demographic-conditioning, evaluation, llm]
maturity: active
key_papers: [out-one-many-using-language-models, position-llm-social-simulations-promising-research]
first_introduced: "2022"
date_updated: 2026-04-13
related_concepts: [silicon-sampling]
---

## Definition

Algorithmic fidelity is a property of a language model describing the degree to which the model, when conditioned on a demographic backstory, accurately replicates the nuanced, intersectional attitudes, beliefs, and behavioral patterns of the corresponding real human subpopulation. A model with high algorithmic fidelity produces silicon samples that are statistically indistinguishable (at the subgroup level) from real survey respondents with the same demographic profile.

The term was introduced by Argyle et al. (2023) specifically in the context of silicon sampling and social science survey simulation.

## Intuition

An LLM has high algorithmic fidelity if it has internalized the demographic correlates of opinion and belief from its training data well enough that explicitly querying those correlates (via backstory prompts) recovers the real-world statistical patterns. It is distinct from overall model accuracy — a model can be highly capable in general while having low algorithmic fidelity for specific demographic subgroups that are underrepresented in its training data.

## Formal notation

Let $R_{\text{LLM}}(D)$ be the distribution of LLM responses conditioned on demographic profile $D$, and $R_{\text{human}}(D)$ be the corresponding distribution of real survey responses. Algorithmic fidelity can be operationalized as:

$$\text{AF}(D) = \text{corr}\left(\mathbb{E}[R_{\text{LLM}}(D)], \mathbb{E}[R_{\text{human}}(D)]\right)$$

across multiple survey items and demographic cells. Argyle et al. measure this via Pearson correlation of aggregate response distributions.

## Variants

- **Attitudinal fidelity**: accuracy of attitude distributions (e.g., policy preferences, political trust)
- **Lexical fidelity**: accuracy of word choice patterns in open-ended responses
- **Correlational fidelity**: accuracy of inter-attitude correlations within demographic groups
- **Behavioral fidelity**: accuracy of behavioral pattern replication (e.g., partisan response styles)

## Comparison

| Property | Algorithmic Fidelity | Calibration | Accuracy |
|----------|---------------------|-------------|----------|
| Focus | Demographic subgroup match | Confidence vs. correctness | Task performance |
| Evaluated against | Human survey data | Ground-truth probabilities | Correct labels |
| Requires | Demographic conditioning | Probabilistic outputs | Labeled test set |

## When to use

Use algorithmic fidelity as an evaluation criterion when:
- Assessing whether a model is suitable for silicon sampling tasks
- Validating a new demographic conditioning approach
- Comparing LLMs on their suitability for social science simulation

## Known limitations

- Contamination confound: high fidelity may reflect memorization of survey results rather than genuine demographic modeling.
- Aggregation smoothing: high average fidelity can mask poor fidelity for small or rare demographic cells.
- Survey instrument dependence: fidelity may vary across different survey instruments even for the same substantive domain.
- Static measurement: fidelity is measured at a point in time; may degrade as model versions change.

## Open problems

- Contamination-corrected fidelity estimation methods.
- Cross-cultural and cross-linguistic fidelity assessment.
- Whether fidelity transfers from attitude surveys to other domains (e.g., economic preferences, health behaviors).
- Minimum training data requirements for adequate fidelity in underrepresented subgroups.

## Key papers

- [[out-one-many-using-language-models]] — defines algorithmic fidelity and provides the first empirical demonstration
- [[position-llm-social-simulations-promising-research]] — frames fidelity challenges as five tractable dimensions (diversity, bias, sycophancy, alienness, generalization) and proposes iterative evaluation

## My understanding

Algorithmic fidelity is an important concept for grounding the use of LLMs in social science research. The key challenge is that it is difficult to disentangle genuine demographic modeling from training data contamination. Future work needs fidelity benchmarks on survey instruments that were never publicly available online, to provide contamination-controlled estimates.
