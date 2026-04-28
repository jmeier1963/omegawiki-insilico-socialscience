---
title: "LLMs systematically misrepresent human opinion distributions, skewing toward liberal, educated, high-income demographics"
slug: llms-misrepresent-human-opinion-distributions
status: supported
confidence: 0.8
tags: [llm-bias, opinion-alignment, demographic-representation, rlhf, evaluation]
domain: NLP
source_papers: [whose-opinions-language-models-reflect, position-llm-social-simulations-promising-research, beyond-static-responses-multi-agent-llm, illusion-artificial-inclusion, synthetic-replacements-human-survey-data-perils, how-generative-language-models-answer-opinion, cultural-bias-cultural-alignment-large-language, artificial-intelligence-unbiased-opinions-assessing-gpt, assessing-bias-llm-generated-synthetic-datasets, vox-populi-vox-ai-using-language, large-language-models-replace-human-participants, problems-llm-generated-data-social-science, revealing-fine-grained-values-opinions-large]
evidence:
  - source: whose-opinions-language-models-reflect
    type: supports
    strength: strong
    detail: "OpinionQA evaluation of 9 LMs shows misalignment with general US population on par with Democrat-Republican divide on climate change; RLHF-tuned models skew toward liberal/educated/high-income groups matching crowdworker demographics; elderly (65+), widowed, and high-religious-attendance groups are underrepresented by all models"
  - source: position-llm-social-simulations-promising-research
    type: supports
    strength: moderate
    detail: "Reviews evidence that LLMs produce narrower political opinion distributions (Bisbee et al. 2024) and overrepresent wealthy, young, liberal individuals in WEIRD countries (Santurkar et al. 2023; Durmus et al. 2024a); identifies diversity and bias as two of five key tractable challenges for LLM social simulations."
  - source: beyond-static-responses-multi-agent-llm
    type: supports
    strength: weak
    detail: "Framework survey reaffirms that RLHF-trained models produce homogenized viewpoints with reduced representational fidelity for underrepresented groups, citing this as a persistent challenge across all six agentic tiers"
  - source: illusion-artificial-inclusion
    type: supports
    strength: moderate
    detail: "Agnew et al. (CHI 2024) argue that LLM simulations create an 'illusion of inclusion' — they appear to represent diverse stakeholder perspectives but systematically misrepresent marginalized groups through stereotyped and homogenized synthetic voices, conflicting with foundational values of participatory research."
  - source: synthetic-replacements-human-survey-data-perils
    type: supports
    strength: strong
    detail: "Bisbee et al. (Political Analysis 2024) show that LLM synthetic replacements produce narrower opinion distributions than actual survey data, systematically compressing within-group heterogeneity; bias toward WEIRD demographics documented across multiple LLMs."
  - source: how-generative-language-models-answer-opinion
    type: supports
    strength: moderate
    detail: "Boelaert (2024) finds that generative LLMs exhibit 'machine bias' — systematic over-representation of dominant cultural norms in opinion generation — with models skewing toward liberal, educated, Western viewpoints regardless of demographic prompting."
  - source: cultural-bias-cultural-alignment-large-language
    type: supports
    strength: moderate
    detail: "Tao et al. (PNAS Nexus 2024) demonstrate that LLMs from different training backgrounds exhibit distinct cultural biases; U.S.-trained models systematically misalign with non-Western populations even when culturally prompted, showing the misrepresentation extends to cross-national contexts."
  - source: artificial-intelligence-unbiased-opinions-assessing-gpt
    type: supports
    strength: weak
    detail: "Von der Heyde et al. (GOR 2023 poster) find GPT-3 fails to predict German party preferences with only a Green/Left bias, providing early non-US evidence of systematic misrepresentation."
  - source: assessing-bias-llm-generated-synthetic-datasets
    type: supports
    strength: moderate
    detail: "Von der Heyde et al. (2023) systematically document bias in LLM-generated synthetic opinion datasets, showing that GPT-3-based synthetic data diverges significantly from German survey benchmarks — bias compounds across demographic subgroups."
  - source: vox-populi-vox-ai-using-language
    type: supports
    strength: moderate
    detail: "Von der Heyde et al. (2023) replicate the Argyle et al. methodology on German GLES data and find GPT-3 systematically biased toward Green and Left parties, failing on nuanced subgroup-specific political attitudes — confirming misrepresentation outside the U.S. context."
  - source: large-language-models-replace-human-participants
    type: supports
    strength: strong
    detail: "Wang et al. (Nature Machine Intelligence 2025) show that LLMs replacing human participants harmfully misportray and flatten identity groups — reducing within-group diversity to stereotyped representations, with disproportionate harm to marginalized and underrepresented groups."
  - source: problems-llm-generated-data-social-science
    type: supports
    strength: moderate
    detail: "Rossi et al. (2024) document systematic problems in LLM-generated social science data including distributional misrepresentation, homogenization of responses, and failure to capture authentic minority viewpoints."
  - source: revealing-fine-grained-values-opinions-large
    type: supports
    strength: moderate
    detail: "Wright et al. (2024) show that LLMs exhibit consistent 'tropes' — recurring semantic patterns that reveal latent opinion structures biased toward liberal/Western viewpoints — regardless of demographic prompting, and that demographic prompts significantly affect Political Compass Test outcomes."
conditions: "Evaluated on US demographic groups via Pew ATP opinion surveys in multiple-choice format; RLHF-tuned models show stronger skew than base models; findings extend to non-US populations (German elections, cross-cultural surveys) but misrepresentation patterns vary by context"
date_proposed: 2026-04-12
date_updated: 2026-04-28
---

## Statement

Language models — especially those fine-tuned with human feedback (RLHF) — do not represent the full diversity of human opinion distributions. They systematically skew toward views held by liberal, educated, and high-income groups (matching the demographics of RLHF crowdworkers), while underrepresenting elderly, widowed, and highly religious populations. The misalignment is substantial: comparable in magnitude to the partisan divide between Democrats and Republicans on climate change.

## Evidence summary

- **Santurkar et al. 2023 (OpinionQA)**: Evaluated 9 LMs (350M–178B parameters) on 1,498 Pew ATP survey questions across 60 US demographic groups. Found: (1) no LM achieves representativeness comparable to any human demographic group; (2) RLHF-tuned models are *worse* than base models at overall representativeness; (3) RLHF models align specifically with liberal, high-income, well-educated, non-religious groups; (4) text-davinci-003 exhibits "caricature effect" — collapses to modal liberal views (>99% Biden approval), losing within-group diversity.

## Conditions and scope

- Measured via 1-Wasserstein distance on ordinal multiple-choice survey responses
- US-centric (American Trends Panel); cross-national generalization unclear
- Base LMs show different (not necessarily better) demographic skew than RLHF models
- Demographic prompting/steerability provides only modest improvement, not solving the core misalignment

## Counter-evidence

- Steerability experiments show some improvement when LMs are prompted with demographic context, suggesting the representations are not completely fixed
- RLHF models may align better with certain specific groups (liberals, educated) even if overall population representativeness is worse

## Linked ideas

*(none yet)*

## Open questions

- Does misalignment in multiple-choice surveys transfer to open-ended generation?
- Can training on diverse, demographically weighted data resolve this without creating new skews?
- Is the crowdworker demographic explanation causally verified or merely correlational?
