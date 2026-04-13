---
title: "Generative Agent Simulations of 1,000 People"
slug: generative-agent-simulations-000-people
arxiv: "2411.10109"
venue: "Nature"
year: 2024
tags: [generative-agents, human-simulation, interview-grounded-agents, behavioral-prediction, social-science, llm-agents, demographic-bias-mitigation]
importance: 5
date_added: 2026-04-13
source_type: pdf
s2_id: ""
keywords: [generative-agent-architecture, qualitative-interview-data, individual-level-behavioral-simulation, large-language-model-prompting, demographic-bias-mitigation]
domain: "NLP"
code_url: "https://github.com/joonspk-research/generative_agent"
cited_by: []
---

## Problem

General-purpose simulation of individual human attitudes and behaviors — where each simulated person can respond across diverse social, political, and economic contexts — could transform social science research, policy testing, and intervention design. Traditional agent-based models rely on manually specified behaviors, limiting agents to narrow contexts and oversimplifying real human contingencies. LLM-based approaches that condition on demographic descriptions alone flatten agents into demographic stereotypes and exhibit significant accuracy biases across racial and ideological subgroups. No prior work has validated generative agents against the actual attitudes and behaviors of the specific real individuals they claim to represent at scale.

## Key idea

Create generative agents of 1,052 real individuals by combining two-hour qualitative interview transcripts with GPT-4o, then evaluate these agents by comparing their predicted responses to the same individuals' actual responses on established social science instruments. The architecture injects the full interview transcript into the LLM prompt and augments it with "expert reflections" — domain-expert persona-based syntheses (psychologist, behavioral economist, political scientist, demographer) that extract latent insights from the interview data. This interview-grounded approach replaces the demographic-stereotype conditioning used in prior work.

## Method

1. **Participant recruitment**: Stratified sample of 1,052 U.S. individuals across age, gender, race, region, education, and political ideology, recruited via Bovitz.
2. **AI interviewer**: Voice-to-voice interviews using a semi-structured protocol from the American Voices Project, producing transcripts averaging 6,491 words. An AI interviewer agent with a reflection module dynamically generates follow-up questions.
3. **Agent architecture**: Full interview transcript is injected into the GPT-4o prompt. An "expert reflection" module generates up to 20 observations from each of four domain-expert personas. At query time, the most relevant expert's reflections are retrieved and appended to the prompt. Chain-of-thought prompting guides the model through option interpretation, reasoning, and prediction.
4. **Evaluation**: Agents and participants both complete: (a) 177-item General Social Survey (GSS), (b) 44-item Big Five Personality Inventory, (c) five behavioral economic games (dictator, trust, public goods, prisoner's dilemma), (d) five experimental replications from the Mechanical Turk Replication Project. Participants retake all instruments two weeks later for self-consistency normalization.
5. **Baselines**: Demographic-based agents (prompted with age/gender/race/ideology) and persona-based agents (prompted with a self-written paragraph).
6. **Fairness analysis**: Demographic Parity Difference (DPD) across political ideology, race, and gender subgroups.

## Results

- **GSS**: 85% normalized accuracy (raw 68.85% / self-consistency 81.25%). Interview agents outperform demographic agents (71% normalized) and persona agents (70% normalized) by 14-15 points.
- **Big Five**: 80% normalized correlation. Interview agents outperform demographic (55%) and persona (75%) agents.
- **Economic games**: 66% normalized correlation. No significant MAE difference across agent types.
- **Experimental replications**: Agents replicated 4/5 experiments (same as human participants). Effect size correlation r = 0.98 with human replications.
- **Bias reduction**: Interview-based agents consistently reduce DPD across political ideology (12.35% → 7.85% on GSS), race, and gender compared to demographic-based agents.
- **Ablation**: Even 80% transcript removal still outperforms composite agents; bullet-point summaries removing linguistic cues achieve 83% normalized GSS accuracy, suggesting informational content matters more than linguistic style.

## Limitations

- Uses GPT-4o exclusively; results may not generalize to other LLMs or future model versions.
- Two-hour interviews are resource-intensive; scalability for large populations is unclear.
- Evaluation is limited to U.S. English-speaking adults; cross-cultural generalization untested.
- Potential training data contamination for GSS and behavioral economics experiments.
- Economic games showed no significant agent-type differences, suggesting interview data may not capture all decision-making dimensions.
- Privacy concerns: full interview transcripts are highly sensitive personal data.
- Agent bank access is restricted, limiting independent replication.

## Open questions

- Can shorter or structured interviews achieve comparable fidelity?
- How does agent accuracy degrade over time as individuals' attitudes evolve?
- Does the architecture generalize to non-WEIRD populations and non-English languages?
- What is the role of training data contamination in the observed accuracy?
- Can expert reflections be generated with open-source models instead of GPT-4o?
- How do these individual-level agents perform in multi-agent social simulations?

## My take

This is the most rigorous validation of LLM-based human simulation to date. The key methodological innovation is using individual-level comparison rather than aggregate subgroup-level metrics — by simulating specific known individuals and comparing to their actual responses, the authors bypass the problem of ecological fallacy that plagues demographic-conditioning approaches. The 85% normalized accuracy on GSS (compared to humans' own self-consistency) is a striking result that suggests interviews capture something deep about individual identity. The fairness analysis is particularly valuable: showing that interview-grounded agents reduce demographic bias compared to stereotype-based agents addresses one of the most serious critiques of LLM simulation research. The expert reflection module is a clever extension of the original generative agents reflection mechanism, adapted for behavioral prediction rather than sandbox simulation.

## Related

- [[generative-agents-interactive-simulacra-human-behavior]] — predecessor generative agents architecture by same first/senior authors
- [[out-one-many-using-language-models]] — silicon sampling with demographic conditioning; this paper demonstrates interview-based approach outperforms demographic-based
- [[large-language-models-simulated-economic-agents]] — Homo silicus persona conditioning; this paper's economic game evaluation extends the same paradigm
- [[whose-opinions-language-models-reflect]] — documents opinion biases in LLMs; this paper shows interview grounding reduces such biases
- [[whose-personae-synthetic-persona-experiments-llm]] — critiques persona underspecification; this paper addresses the critique through deep interview-based personas
- [[agent-reflection]] — expert reflection module extends the original reflection mechanism
- [[persona-conditioning]] — interview-grounded conditioning is a new variant
- [[algorithmic-fidelity]] — extends fidelity measurement to individual level
- [[llm-powered-agent-architecture]] — interview-grounded architecture is a new variant
- supports: [[interview-grounded-generative-agents-replicate-individual]]
- supports: [[interview-based-agent-conditioning-reduces-demographic]]
- supports: [[llms-accurately-simulate-human-subpopulation-survey]]
- supports: [[llm-agents-simulate-believable-human-social]]
