---
title: "Future You: A Conversation with an AI-Generated Future Self Reduces Anxiety, Negative Emotions, and Increases Future Self-Continuity"
slug: future-you-conversation-ai-generated-future
arxiv: "2405.12514"
venue: "IEEE Frontiers in Education Conference (FIE 2024)"
year: 2024
tags: [human-ai-interaction, wellbeing, future-self, anxiety, hci, llm-intervention, mental-health]
importance: 3
date_added: 2026-05-06
source_type: pdf
s2_id: "29b069799a83680f7222756e8ff269d46a403877"
keywords: [future self-continuity, AI wellbeing intervention, anxiety reduction, personalized AI, age progression]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Future self-continuity — the sense of connection to one's temporally distant future self — is linked to better mental health and long-term decision-making. Existing psychological interventions to increase it are labor-intensive or have limited reach. Can a brief, AI-powered chat with a personalized AI-generated future self substitute for or augment these interventions?

## Key idea

**"Future You" AI chat reduces anxiety and boosts future self-continuity**: A single-session interactive chat with a personalized AI-generated version of the user's 60-year-old self significantly reduces anxiety and negative emotions vs. control, while increasing future self-continuity. The system personalizes a large language model with user-provided future goals and personal qualities, generates "future memories," and age-progresses the user's photograph to increase believability.

## Method

- 344 participants (MIT IRB approved, preregistered at AsPredicted #157535)
- 4 conditions: Future You (n=73), Questionnaire (n=76), Chat (n=103), Control (n=92)
- Pre/post questionnaire measuring: emotions (positive/negative composite), anxiety, future self-continuity, agency, optimism, self-esteem, self-reflection
- System: LLM (GPT-3.5 based) + StyleCLIP age-progression + "future memory" architecture
- MIT Media Lab + KASIKORN Labs + Harvard + UCLA Anderson

## Results

- Future You significantly reduced negative emotions vs. Control: F(3,181.60)=8.84, p<0.001
- Anxiety significantly reduced: Future You mean Δ=-0.68 (SD=1.52) vs. Control Δ=+0.21 (SD=1.10), p=0.001
- "Unmotivated" feeling significantly reduced: Future You Δ=-0.77 vs. Control Δ=+0.15, p=0.001
- Increased future self-continuity relative to control and questionnaire conditions
- Chat condition (generic AI chat without personalization) showed partial but smaller effects

## Limitations

- Small sample per condition (73 in Future You arm)
- Short-term (single-session); long-term persistence unknown
- Future memory and conversation quality depend on GPT-3.5; newer models may yield larger effects
- Users may develop parasocial attachment to AI future self (not studied)
- English-speaking, likely tech-literate sample (MIT participant pool)

## Open questions

- Do effects persist over time? Are booster sessions needed?
- Does age-progressed photo contribute beyond the chat itself?
- What is the risk of users forming unhealthy attachments to their AI future self?
- Can Future You-style interventions scale to mental health support at population level?

## My take

Clean RCT demonstrating psychological benefits of personalized AI future self conversation. The effect on anxiety is practically meaningful and statistically robust. The design (personalized future memory + age progression) is clever. Importance 3 — solid HCI/wellbeing finding, but narrow scope; not primarily a social science methodology contribution.

## Related

- [[ai-generated-future-self-simulation]]
- supports: [[ai-generated-future-self-conversation-reduces]]
