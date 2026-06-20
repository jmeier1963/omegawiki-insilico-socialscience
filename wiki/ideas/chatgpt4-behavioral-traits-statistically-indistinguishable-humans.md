---
title: ChatGPT-4 behavioral and personality traits in economic games are statistically indistinguishable from a random human, and biased toward greater altruism and cooperation than human averages
slug: chatgpt4-behavioral-traits-statistically-indistinguishable-humans
status: proposed
origin: 'Migrated from research claim (original status: weakly_supported, confidence: 0.65); proposed in: turing-test-whether-ai-chatbots-behaviorally'
origin_gaps: []
tags:
- silicon-sampling
- llm-behavior
- turing-test
- behavioral-economics
- altruism
- cooperation
- chatgpt
domain: NLP
priority: 3
pilot_result: ''
failure_reason: ''
linked_experiments: []
date_proposed: 2026-05-06
date_resolved: ''
---

> **Migrated from a research claim** (`wiki/claims/chatgpt4-behavioral-traits-statistically-indistinguishable-humans.md`) on 2026-06-20. Original claim status `weakly_supported` (confidence 0.65) mapped to idea status `proposed`. The claim's structured `evidence`/`confidence`/`conditions` are preserved verbatim in the body sections and in the provenance block at the end of this file.
## Statement

When administered the same behavioral economics games and personality surveys used to assess human subjects, ChatGPT-4 produces responses that fall within the distributional range of international human data (tens of thousands of subjects from 50+ countries) and are statistically indistinguishable from a random human participant. When ChatGPT-4 deviates from human mean and modal behavior, it systematically deviates toward greater altruism and cooperation. The model also shows context sensitivity, modifying behavior across framings and repeated interactions as if learning.

## Evidence summary

Mei, Xie, Yuan, Jackson (2024, PNAS) used a large international human behavioral dataset as the comparison baseline. ChatGPT-4 passed the behavioral Turing test across multiple game types (trust, fairness, cooperation, risk-aversion) and a Big Five personality profile.

## Conditions and scope

Tested on ChatGPT-4 (early 2024); earlier GPT versions showed less human-like behavior, suggesting this result may not generalize to weaker models. Published in PNAS and thus peer-reviewed. Stylized lab games may not capture real-world behavioral tendencies. English-language only.

## Counter-evidence

- "Within human distribution" may reflect the breadth of the human distribution rather than genuine behavioral alignment
- RLHF training likely induces the altruistic/cooperative bias, suggesting it is a training artifact rather than emergent human-like preference
- Rapid model evolution means GPT-4-era results may not apply to current models

## Linked ideas

## Open questions

- Do the altruistic/cooperative biases hold across diverse system prompt configurations?
- Are these behavioral patterns stable across different elicitation methods (not just games)?
- How should silicon-sampling researchers weight this evidence when designing behavioral studies?


<!-- PROVENANCE: original claim frontmatter (preserved for recovery / re-derivation)
title: "ChatGPT-4 behavioral and personality traits in economic games are statistically indistinguishable from a random human, and biased toward greater altruism and cooperation than human averages"
slug: chatgpt4-behavioral-traits-statistically-indistinguishable-humans
status: weakly_supported
confidence: 0.65
tags: [silicon-sampling, llm-behavior, turing-test, behavioral-economics, altruism, cooperation, chatgpt]
domain: NLP
source_papers: [turing-test-whether-ai-chatbots-behaviorally]
evidence:
  - source: turing-test-whether-ai-chatbots-behaviorally
    type: supports
    strength: strong
    detail: "PNAS 2024; ChatGPT-4 in dictator/ultimatum/trust/public-goods games + Big Five survey; falls within human distribution from 50+ countries; deviations toward higher altruism/cooperation; acts as if maximizing weighted average of own and partner payoffs"
conditions: "English-language text-based behavioral economics games; comparison to international human data; ChatGPT-4 as of early 2024; stylized lab game paradigm"
date_proposed: 2026-05-06
date_updated: 2026-05-06
-->
