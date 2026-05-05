---
title: "The Collapse of Heterogeneity in Silicon Philosophers"
slug: collapse-heterogeneity-silicon-philosophers
arxiv: "2604.23575"
venue: "arXiv preprint"
year: 2026
tags: [silicon-sampling, algorithmic-fidelity, heterogeneity, opinion-diversity, philosophy, llm-bias]
importance: 3
date_added: 2026-05-04
source_type: pdf
s2_id: "0684a657f5074524150b03176c828529f62d1d46"
keywords: [silicon sampling, heterogeneity collapse, philosophical diversity, algorithmic fidelity, specialist effect, PhilPapers Survey, DPO fine-tuning]
domain: "NLP"
code_url: "https://github.com/stanford-del/silicon-philosophers"
cited_by: []
---

## Problem

Silicon sampling uses LLMs as low-cost substitutes for human survey respondents. While prior work shows LLMs reproduce *aggregate* opinion well, this paper asks whether LLMs preserve *heterogeneity* — the genuine diversity of views within expert populations. The test domain is professional philosophy, chosen because it is expert-led but disagreement-rich (no consensus on most questions), with well-documented individual-level data from the PhilPapers Survey.

## Key idea

LLMs systematically collapse heterogeneity in philosophical opinion: they over-correlate judgments across domains and produce artificial consensus where real disagreement exists. A key mechanism is the "specialist effect" — models implicitly assume domain experts hold highly similar views, imposing spurious consensus on populations where heterogeneity is the empirical reality.

## Method

- 277 professional philosophers from PhilPeople profiles (individual-level conditioning)
- 7 LLMs (proprietary and open-source) evaluated on PhilPapers Survey questions across metaphysics, epistemology, ethics, philosophy of mind
- Measures: (1) accuracy in replicating individual positions, (2) preservation of cross-question correlation structure
- Robustness checks: DPO fine-tuning impact, validation against full PhilPapers 2020 Survey (N=1785)
- Specialist effect tested by comparing model behavior when simulating domain specialists vs. non-specialists

## Results

- LLMs substantially over-correlate philosophical judgments — producing within-model correlations far exceeding human data
- Artificial consensus emerges across all tested models; GPT-4 class models are not immune
- Specialist effect confirmed: models assign higher agreement to questions in a philosopher's specialty area than the data supports
- DPO fine-tuning does not resolve heterogeneity collapse; it may shift positions but not restore diversity
- Validated against full PhilPapers 2020 Survey: results hold at N=1785

## Limitations

- Restricted to professional philosophy, which may be atypical (high disagreement culture, well-documented survey)
- Individual-level conditioning depends on profile completeness (278 philosophers with detailed PhilPeople profiles)
- Cannot rule out that better conditioning techniques (e.g., full interview-based) partially restore heterogeneity
- Does not test collaborative or adversarial setups that might elicit more diversity from models

## Open questions

- Does heterogeneity collapse generalize to other expert domains (e.g., economics, law) or is philosophy special?
- Can adversarial prompting, temperature manipulation, or ensemble methods partially recover heterogeneity?
- What is the downstream impact of collapsed heterogeneity on alignment evaluations that use LLM panels?
- Is the specialist effect a feature of RLHF training specifically (where safe, consensus answers are rewarded)?

## My take

Critical paper for the silicon sampling literature. The finding that LLMs over-correlate opinions rather than under-correlating them is counterintuitive — one might expect noise to flatten agreement. Instead, models impose an artificial coherence that makes expert populations look more homogeneous than they are. The specialist effect mechanism is important: LLMs appear to have learned a stereotype of "experts agree within their domain" that is empirically false in philosophy. High relevance for any downstream use of LLM panels in evaluation benchmarks, alignment work, or social science research. The DPO non-result is particularly sobering.

## Related

- [[silicon-sampling]]
- [[algorithmic-fidelity]]
- supports: [[llm-silicon-samples-collapse-opinion-heterogeneity]]
- [[heterogeneity-collapse]]
- [[illusion-artificial-inclusion]]
- [[assessing-reliability-persona-conditioned-llms-synthetic]]
