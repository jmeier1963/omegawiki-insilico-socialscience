---
title: "Whose Opinions Do Language Models Reflect?"
slug: whose-opinions-language-models-reflect
arxiv: "2303.17548"
venue: "ICML 2023"
year: 2023
tags: [llm-bias, opinion-alignment, demographic-representation, rlhf, steerability, public-opinion, evaluation]
importance: 4
date_added: 2026-04-12
source_type: tex
s2_id: ""
keywords: [opinion alignment, demographic representation, language model bias, public opinion surveys, steerability, OpinionQA, Wasserstein distance]
domain: NLP
code_url: "https://github.com/tatsu-lab/opinions_qa"
cited_by: []
---

## Problem

Language models are increasingly used in open-ended contexts where they express opinions in response to subjective queries. It is unclear whose opinions LMs actually reflect — internet users, crowdworkers, model designers — and whether existing alignment methods produce models representative of diverse human populations. There is no rigorous quantitative framework to measure the gap between LM opinion distributions and those of real demographic groups.

## Key idea

Repurpose high-quality public opinion surveys (Pew Research American Trends Panels) as an evaluation framework for LM opinion alignment. Build the **OpinionQA** dataset with 1,498 questions spanning 23 topic categories, paired with real human opinion distributions across 60 US demographic groups. Evaluate LMs on three axes: *representativeness* (default alignment with US population), *steerability* (alignment improvement from demographic prompting), and *consistency* (stability of alignment patterns across topics). Use the 1-Wasserstein distance on ordinal answer choices as the alignment metric.

## Method

- Convert Pew ATP multiple-choice survey questions into LM prompts; extract next-token log-probabilities for each answer choice to form an opinion distribution
- Measure representativeness using average 1-Wasserstein alignment score between LM distribution and human distributions (overall US population + 60 demographic groups)
- Test steerability with three prompting strategies: QA-style demographic context (PORTRAY), bio-text injection (BIO), and direct role-play instructions (PORTRAY)
- Evaluate 9 LMs ranging from 350M to 178B parameters, including base and RLHF/instruction-tuned models (OpenAI and AI21 Labs)
- Analyze consistency of group-alignment patterns across topic categories

## Results

- **Massive misalignment**: No LM is representative of the general US populace — their misalignment is on par with the Democrat-Republican divide on climate change
- **RLHF amplifies misalignment**: Human feedback-tuned models (text-davinci-002/003) are *worse* than base models at overall representativeness
- **Demographic skew of RLHF**: RLHF models align toward liberal, high-income, well-educated, non-religious groups — matching the demographics of crowdworkers used in RLHF data collection
- **Caricature effect**: text-davinci-003 collapses to modal views of liberal groups (e.g., >99% Joe Biden approval), losing within-group opinion diversity
- **Underrepresented groups**: Elderly (65+), widowed individuals, and high-religious-attendance groups are poorly represented by all LMs
- **Steerability is modest**: Demographic prompting improves alignment but does not resolve representativeness failures
- **Inconsistent biases**: Even "liberal" models express conservative views on topics like religion — alignment is topic-dependent, not stable across all domains

## Limitations

- Dataset is US-centric (American Trends Panel); does not generalize to non-WEIRD societies
- Multiple-choice format may not capture open-ended opinion expression as seen in real LM deployments
- Alignment to surveys does not equal alignment to all possible LM use cases
- Surveys themselves may be subject to social desirability bias

## Open questions

- Do opinion alignment findings from multiple-choice transfer to dialogue/open-ended generation settings?
- How can LMs be made more representative of diverse human populations without optimizing for any single group's views?
- What global equivalents to OpinionQA are needed for non-US populations?
- Does instruction-tuning distort opinion distributions beyond what RLHF does?

## My take

Highly influential diagnostic paper that quantifies the demographic skew introduced by RLHF — a concrete, measurable form of alignment failure. The insight that RLHF crowdworker demographics directly predict which groups LMs align with is particularly important. OpinionQA is a clean, reproducible benchmark. The "caricature effect" (modal collapse) finding is striking and underappreciated in debates about instruction tuning. Main limitation: multiple-choice format may underestimate open-ended opinion diversity.

## Related

- [[opinionqa]]
- [[llms-misrepresent-human-opinion-distributions]]
- [[persona-conditioning]]
- [[shibani-santurkar]]
- [[percy-liang]]
- [[tatsunori-hashimoto]]
- [[position-llm-social-simulations-promising-research]]
