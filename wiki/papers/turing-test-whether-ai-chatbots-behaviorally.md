---
title: "A Turing Test of Whether AI Chatbots Are Behaviorally Similar to Humans"
slug: turing-test-whether-ai-chatbots-behaviorally
arxiv: ""
venue: "PNAS"
year: 2024
tags: [silicon-sampling, turing-test, behavioral-economics, llm-behavior, personality, economic-games, altruism, cooperation]
importance: 4
date_added: 2026-05-06
source_type: pdf
s2_id: ""
keywords: [Turing test, behavioral similarity, economic games, Big Five personality, ChatGPT-4, trust game, dictator game, ultimatum game, altruism, cooperation]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

As AI systems take on decision-making roles in social and economic contexts, it is important to understand whether they behave like humans — but much of AI training is proprietary. Can we assess AI behavioral tendencies by observing them in the same paradigms used to assess human behavioral tendencies?

## Key idea

**Behavioral Turing test**: administer standard behavioral economics games (trust, fairness, risk-aversion, cooperation, altruism) and personality surveys (Big Five) to ChatGPT variants and compare to a large human dataset (tens of thousands of subjects from 50+ countries). ChatGPT-4 falls within the human distribution and is statistically indistinguishable from a random human — it is more altruistic and cooperative than average.

## Method

- ChatGPT variants (GPT-4, earlier versions) administered:
  - Big Five personality survey
  - Dictator game, ultimatum game, trust game, public goods game, coordination games
- Human comparison dataset: tens of thousands of subjects from 50+ countries
- Analysis: whether AI behavior falls within human distributional range; direction of deviations

## Results

- ChatGPT-4 behavioral and personality traits are **statistically indistinguishable from a random human** from the international dataset
- When deviating from human mean/modal behavior, ChatGPT-4 trends **more altruistic and cooperative**
- Chatbots show contextual sensitivity: behavior changes across framings and across repeated interactions ("as if" learning)
- Models act as if maximizing a weighted average of their own and their partner's payoffs
- Earlier GPT versions showed less human-like behavior; improvement across generations

## Limitations

- Tested English-language, text-based games; may not generalize to non-English or embodied contexts
- "Statistically indistinguishable from a random human" may reflect averaging over diverse human data rather than genuine human-like behavior
- Published Feb 2024 on ChatGPT-4; rapid model iteration means findings may not hold for current models
- Behavioral economics games are stylized; ecological validity for AI decision-making in real contexts limited

## Open questions

- Are the altruistic/cooperative biases of GPT-4 an artifact of RLHF training (helpfulness reward) or emergent from pretraining?
- How do behavioral tendencies vary across deployment contexts (with vs. without system prompts, personas)?
- Do AI behavioral tendencies matter for real-world AI-mediated decisions (contract negotiation, hiring, care)?

## My take

A clean, well-executed study providing one of the most direct behavioral comparisons of AI to humans. The "more altruistic than average" finding is interesting and likely reflects RLHF-induced helpfulness. Important for the silicon-sampling literature as evidence that GPT-4 is a plausible behavioral simulacrum, but the limitations around stylized games and current model applicability need to be borne in mind. Importance 4 — PNAS, widely cited.

## Related

- [[silicon-sampling]]
- supports: [[chatgpt4-behavioral-traits-statistically-indistinguishable-humans]]
