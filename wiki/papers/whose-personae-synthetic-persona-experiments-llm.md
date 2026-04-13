---
title: "Whose Personae? Synthetic Persona Experiments in LLM Research and Pathways to Transparency"
slug: whose-personae-synthetic-persona-experiments-llm
arxiv: "2512.00461"
venue: "Proceedings of the AAAI/ACM Conference on AI, Ethics, and Society (AIES)"
year: 2025
tags: [persona, llm-alignment, ecological-validity, representativeness, sociodemographics, transparency, survey]
importance: 3
date_added: 2026-04-12
source_type: pdf
s2_id: "081557e2ee7173e77fac1244aebe9d02d4ffe003"
keywords: [persona representativeness, ecological validity, sociodemographic sampling, LLM alignment transparency, methodological checklist]
domain: NLP
code_url: "https://github.com/janbatzner/WhosePersonae"
cited_by: []
---

## Problem

Synthetic persona-based experiments have become a dominant methodology in LLM alignment research, yet the representativeness and ecological validity of these personae vary enormously across studies. Through review of 63 peer-reviewed studies (2023–2025) from leading NLP and AI venues (ICLM, ICLR, CHI, AAAI, FAccT, AIES), the authors find that:

- Task and population of interest are chronically **underspecified**: 43% target an undifferentiated "general population," and healthcare/occupational groups receive less than 8% coverage.
- Only **35%** of studies discuss the representativeness of their LLM personae.
- **65%** of papers do not explicitly discuss sociodemographic representation in their main text; 60% use fully-constructed interaction settings unlikely to reflect real-world deployment.
- No paper in the corpus includes an explicit positionality statement despite author concentration (34% USA, 18% China).
- Code and datasets are rarely shared — only 30% include supplementary material links, and full persona datasets are seldom released.

The gap matters because without clearly specified tasks and populations, persona-based claims over-generalize and cannot be reproduced, compared, or audited.

## Key idea

A **Persona Transparency Checklist** (6 dimensions: Application, Population, Data Source, Ecological Validity, Reproducibility, Generalizability/Transparency) distilled from systematic literature review and expert-annotated iterative codebook development. The checklist operationalizes what "representative" and "ecologically valid" mean concretely for persona design, enabling researchers and reviewers to evaluate and improve persona-based experiments.

## Method

1. **Literature search**: All NLP/AI venue proceedings (Jan 2023 – Apr 2025) searched for "persona" keyword; two independent screeners used a two-stage title/abstract + full-text protocol; duplicates and non-computational works excluded; final corpus N=63.
2. **Codebook development**: Three-phase iterative codebook (preliminary codes → consensus meeting → finalisation); inter-rater agreement verified.
3. **Expert annotation**: Each paper coded along 6 checklist dimensions:
   - *Application*: task definition, capability categorisation, domain, use-case specification.
   - *Population*: target population category, sociodemographic attributes, persona type.
   - *Data Source*: originality (novel vs. re-used dataset), dataset reference, construction method.
   - *Ecological Validity*: representativeness, empirical grounding, interaction ecology.
   - *Reproducibility*: code repository, dataset availability, documentation completeness.
   - *Generalizability/Transparency*: baselines, social group analysis, funding disclosure, positionality statement, limitations acknowledgment.
4. **Quantitative analysis**: Frequencies and proportions over the 63-paper corpus, cross-tabulated by task category (personalization 44%, robustness 22%, bias/fairness 18%, domain-specific 16%) and target population.

## Results

- **Task underspecification**: Most studies frame tasks at the "everything and the whole world" benchmark level rather than specifying concrete use cases.
- **Sociodemographic coverage**: Gender (n=25), Age (n=19), Race/Ethnicity (n=17), Political Views (n=16), Education (n=14), Religion (n=12) are the most cited attributes; disability (n=5), sexual orientation (n=3), veteran status (n=1) are rare.
- **Persona types**: "I am" (role-play first-person), "You are" (second-person instruction), survey-response (tabular), and real-conversation (chat-data derived) styles each have distinct ecological validity tradeoffs.
- **Baselines**: Papers rarely compare across established persona datasets or social groups — limiting evaluation of bias.
- **Transparency**: 0 of 63 papers include positionality statements; none acknowledge how author geographic distribution may bias persona design choices.

## Limitations

- Review limited to English-language proceedings (JCML, NeurIPS, ICLR, CHI, AAAI, FAccT, AIES + *ACL Anthology); non-peer-reviewed preprints excluded.
- Only two screeners; qualitative coding is inherently interpretive.
- Checklist development is expert-driven, not itself empirically validated against downstream alignment outcomes.
- Does not include cross-paper statistical comparisons (persona dataset diversity scores).

## Open questions

- Do checklisted (higher-transparency) persona studies produce more generalizable alignment findings?
- How should persona representativeness be evaluated when no ground-truth population distribution exists?
- Can automated tools detect persona underspecification in submitted papers (reviewer-assist)?
- What societal harms arise from biased default personae in deployed LLM systems?
- How do author positionality and geographic concentration shape which demographics are represented?

## My take

A timely and well-structured survey that surfaces a genuine methodological crisis in persona-based LLM research. The checklist is concrete and actionable. Weakness: the review covers a single 2-year window and does not attempt a meta-analysis of how checklist compliance correlates with result reliability. The finding that zero papers include positionality statements is striking and directly relevant to reproducibility of alignment claims.

## Related

- supports: [[llm-persona-underspecification-limits-ecological-validity]]
- [[persona-transparency-checklist]]
- [[persona-conditioning]]
- [[homo-silicus]]
- [[silicon-sampling]]
