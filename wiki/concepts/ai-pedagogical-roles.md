---
title: "AI Pedagogical Roles"
aliases: ["AI-tutor", "AI-coach", "AI-mentor", "AI-simulator", "AI as tutor", "AI role assignment in education", "structured AI roles", "AI-student role"]
tags: [education, pedagogy, llm, ai-in-education, prompting]
maturity: emerging
key_papers: [assigning-ai-seven-approaches-students-prompts, ai-agents-education-simulated-practice-scale, applicability-chat-generative-pre-trained-transformer, co-writing-essay-chatgpt-experiences-perceptions, teaching-examining-age-generative-ai-first]
first_introduced: "2023"
date_updated: 2026-05-06
related_concepts: []
---

## Definition

A taxonomy of structured functional roles through which AI systems can be deployed in educational settings. Each role defines a distinct relationship between the AI and the student, with corresponding pedagogical goals, risks, and prompt design patterns. The canonical taxonomy (Mollick & Mollick 2023) identifies seven roles: AI-tutor, AI-coach, AI-mentor, AI-teammate, AI-tool, AI-simulator, and AI-student.

## Intuition

Rather than treating AI as a generic writing assistant (which risks off-loading cognitive work), assigning a specific role structures the human-AI interaction to serve defined learning goals. A student who "teaches" the AI (AI-student role) must articulate their own understanding; a student using the AI as a coach is prompted to reflect rather than receive answers.

## Formal notation

No formal mathematical specification. The taxonomy is a design pattern: Role = {goal, pedagogical_mechanism, risk_profile, prompt_template, mitigation_strategy}.

## Variants

- **AI-tutor**: provides direct instruction on demand, personalized to student level
- **AI-coach**: scaffolds metacognition; asks questions rather than providing answers
- **AI-mentor**: career and domain guidance, personalized to student's goals
- **AI-teammate**: collaborative thinking partner; student must integrate and evaluate
- **AI-tool**: functional use for specific tasks (drafting, data parsing, code generation)
- **AI-simulator**: role-play scenarios; student practices high-stakes situations safely
- **AI-student**: student explains concepts to AI, deepening their own understanding (protégé effect)

## Comparison

Distinct from unstructured "ask AI anything" use: structured roles make the human-AI division of cognitive labor explicit and pedagogically intentional.

## When to use

When designing AI-assisted assignments in formal educational settings where learning outcomes (not just task completion) must be preserved.

## Known limitations

Role assignments are only as effective as the prompts and the student's willingness to engage critically. Complacency and error propagation remain risks in all roles.

## Open problems

Empirical validation of which roles produce the strongest learning outcomes across disciplines. Role effectiveness likely varies with subject matter, prior knowledge, and student motivation.

## Key papers

- [[assigning-ai-seven-approaches-students-prompts]] — original taxonomy
- [[ai-agents-education-simulated-practice-scale]] — extends the simulator role to large-scale AI agent practice

## My understanding

A useful design vocabulary for educators. The "AI-student" and "AI-coach" roles are particularly clever because they force cognitive engagement rather than enabling passive consumption.
