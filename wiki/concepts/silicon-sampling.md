---
title: "Silicon Sampling"
aliases: ["LLM-as-survey-respondent", "synthetic survey sampling", "AI survey simulation", "LLM population simulation", "LLM social simulation", "LLM sims", "human subject simulation"]
tags: [silicon-sampling, survey-simulation, llm, social-science, synthetic-data]
maturity: active
key_papers: [out-one-many-using-language-models, position-llm-social-simulations-promising-research, beyond-static-responses-multi-agent-llm, polypersona-persona-grounded-llm-synthetic-survey]
first_introduced: "2022"
date_updated: 2026-04-13
related_concepts: [algorithmic-fidelity]
---

## Definition

Silicon sampling is the practice of using large language models (LLMs) as synthetic survey respondents to simulate the response distributions of human subpopulations. Instead of recruiting real human participants, researchers condition an LLM on a socio-demographic backstory (describing characteristics such as race, gender, age, education, region, and political affiliation) and then elicit responses to survey questions, treating the model's outputs as stand-ins for the specified demographic group.

## Intuition

An LLM trained on vast corpora of human-generated text internalizes statistical regularities in how different demographic groups express attitudes, beliefs, and preferences. By explicitly specifying a respondent's identity through a prompt, researchers can "query" this internalized demographic knowledge to generate synthetic data at scale — analogous to drawing a sample from a statistical model of the population rather than from the population itself.

## Formal notation

Let $D = (d_1, d_2, \ldots, d_k)$ be a vector of demographic attributes for a respondent, and $Q$ be a survey question. Silicon sampling produces a response $R$ as:

$$R \sim p_{\text{LLM}}(R \mid \text{backstory}(D), Q)$$

where $\text{backstory}(D)$ is a natural language description of $D$. Fidelity is assessed by comparing $\mathbb{E}[R \mid D]$ against ground-truth survey data $\mathbb{E}[R_{\text{human}} \mid D]$.

## Variants

- **Zero-shot silicon sampling**: Condition directly on a demographic description without few-shot examples.
- **Few-shot silicon sampling**: Provide exemplar responses from the target demographic as in-context examples.
- **Ensemble silicon sampling**: Generate multiple responses per demographic cell and aggregate.
- **Iterative silicon sampling**: Refine the backstory prompt based on validation against a held-out survey subset.
- **Distribution elicitation**: Prompt the LLM to generate a distribution of responses directly (via log-probabilities, sequence generation, or verbalized proportions) rather than one-at-a-time individual responses (Anthis et al. 2025).
- **Interview-based silicon sampling**: Condition on a participant's 1-2 hour interview transcript for highly individualized simulation, reducing maximum demographic accuracy disparities (Park et al. 2024a, discussed in Anthis et al. 2025).
- **Fine-tuned silicon sampling**: Instruction-tune compact models with LoRA/QLoRA on persona-grounded survey datasets rather than relying on prompt-only conditioning (PolyPersona).

## Comparison

| Aspect | Silicon Sampling | Traditional Survey Panel |
|--------|-----------------|--------------------------|
| Cost | Very low (API calls) | High (recruitment, incentives) |
| Scale | Unlimited | Limited by budget |
| Rare intersections | Freely available | Difficult to recruit |
| Ecological validity | Uncertain | High |
| Temporal currency | Capped at training cutoff | Current |
| Contamination risk | High | Low |

## When to use

- **Hypothesis generation**: Rapidly test whether a demographic pattern is likely to exist before committing to full survey deployment.
- **Pilot study**: Generate synthetic data to determine expected effect sizes for power calculations.
- **Augmentation**: Supplement thin demographic cells in a real survey with synthetic responses (with appropriate caveats).
- **Counterfactual analysis**: Simulate "what would Group X think about Y?" under demographic manipulation.

## Known limitations

- Training data contamination: LLMs may have seen survey results or related content during pretraining.
- Sycophancy and social desirability bias in LLMs distort simulated responses.
- Rare demographic intersections may be underrepresented in training data.
- Models have a training cutoff, so they cannot reflect contemporary opinion shifts.
- Aggregate fidelity does not imply individual-level accuracy.
- Replicability across models and model versions is not guaranteed.

## Open problems

- Developing contamination-corrected fidelity metrics.
- Extending to non-English, non-Western political contexts.
- Dynamic silicon sampling to model opinion evolution over time.
- Establishing best practices for disclosure and use in published social science research.

## Key papers

- [[out-one-many-using-language-models]] — introduces silicon sampling and demonstrates algorithmic fidelity on ANES
- [[position-llm-social-simulations-promising-research]] — comprehensive review identifying five tractable challenges and promising directions for LLM social simulations
- [[polypersona-persona-grounded-llm-synthetic-survey]] — extends silicon sampling via persona-conditioned LoRA fine-tuning on compact models across 10 survey domains

## My understanding

Silicon sampling is best understood as a technique for querying the LLM's learned model of the population, not the population itself. It's most valuable as a rapid hypothesis-generation tool and a complement to traditional surveys, not a replacement. The core epistemological challenge is that we cannot fully separate what the model learned from human text (genuine demographic patterns) from what it memorized (survey results or media reports thereof).
