---
title: "Deliberate Lab: A Platform for Real-Time Human–AI Social Experiments"
slug: deliberate-lab-platform-real-time-human
arxiv: "2510.13011"
venue: "arXiv"
year: 2025
tags: [human-ai-interaction, experimentation-platform, social-computing, llm-agents, real-time-interaction, computational-social-science, open-source]
importance: 3
date_added: 2026-04-13
source_type: pdf
s2_id: "a5537b5495d0b303ee69755e7b57d7d0dc55e5ac"
keywords: [deliberate-lab, real-time human-AI interaction, multi-agent conversational systems, synchronous social experimentation, LLM-mediated deliberation, open-source experimental platforms]
domain: "NLP"
code_url: "https://github.com/PAIR-code/deliberate-lab"
cited_by: []
---

## Problem

Social and behavioral scientists need to study how humans interact, collaborate, and make decisions alongside AI, but the experimental infrastructure is severely underdeveloped. Existing platforms for behavioral research (Qualtrics, Gorilla, MTurk) are optimized for single-user, asynchronous paradigms like surveys. Specialized platforms like Empirica, zTree, and oTree require substantial programming expertise and were not designed with first-class support for LLM-based agents. Meanwhile, in-silico multi-agent simulations (e.g., Concordia, EDSL) remain detached from actual human behavior. No platform unifies real-time, synchronous, multi-party human–AI experimentation with a no-code interface accessible to non-technical researchers.

## Key idea

Deliberate Lab is an open-source, no-code platform for large-scale, real-time behavioral experiments that treats LLM-based agents as first-class participants alongside humans. The system supports synchronous interaction in configurable multi-stage experiments, with LLM agents serving as participants, moderators, or mediators. Key design innovations include: (1) a modular stage-based experiment builder requiring no programming; (2) real-time facilitation tools (cohort transfers, attention checks, live monitoring); (3) human-centered LLM interaction features (artificial typing delay via WPM, hand-raising for multi-agent turn-taking, structured output for selective intervention); and (4) Prolific integration for recruitment at scale.

## Method

- **Architecture**: TypeScript-based web application using Lit Element frontend + Firebase backend (primary Firestore DB for experiment data, secondary Realtime DB for participant presence). Cloud Functions handle cohort state updates and agent logic triggers.
- **Experiment structure**: modular stages (chat, survey, transfer, profile, reveal, payout, election, comprehension, etc.) assembled via a drag-and-drop editor. Stages are configurable with markdown content, timers, and synchronization.
- **LLM integration**: agents defined through modular prompt components (profile, system instructions, stage context). Supports any Chat Completions API-compatible model (Gemini, GPT, OpenRouter, Ollama). Structured output fields (shouldRespond, readyToEndChat, severityScore) enable targeted agent behavior.
- **Facilitation**: real-time dashboard showing all cohorts and participants; attention checks; participant boot/transfer; agent debugging panel for live prompt/response inspection.
- **Deployment**: 12-month public deployment on Google Cloud Platform, open to approved applicants.

## Results

**Deployment analytics** (12 months):
- 88 experimenter accounts across 24+ organizations (universities, companies, nonprofits)
- 597 experiments created; 9,195 participant entries
- 2,113 cohorts created; 2,191 transfers initiated
- 527 attention checks sent (75% pass rate)
- 71% of experimenters loaded LLM API keys; 39% of experiments used LLM participants or mediators

**Case studies**:
1. *Large-scale election study* (N=1,000): psychology lab studied gender bias in leadership selection using a modified Lost at Sea task with 250 groups of 4. No custom code needed.
2. *Human-AI negotiation* (N=300): economics student built a three-player multi-issue bargaining task with embedded AI mediators as a bespoke stage extension.
3. Additional uses: AI tutoring, forum moderation, expert adjudication, UX focus groups, multi-agent conversation data collection.

**User feedback**: experimenters rated the platform highly on utility (median 4-5/5) and would recommend it (median NPS 8-10/10). Key strengths: real-time monitoring, structured data export, scalability.

## Limitations

- Text-only modality; no audio/video support yet
- Agent behavior is purely reactive (no autonomous initiation)
- LLM configuration still requires familiarity with prompt engineering, temperature tuning, and schema design
- No built-in post-experiment annotation, reward signal generation, or model fine-tuning workflows
- Ecological validity concern: LLM agents do not fully capture human cognition
- No longitudinal/multi-session support; no persistent agent identity across sessions
- Learning curve for no-code interface was cited by some users as "clunky"

## Open questions

- How to balance expanding no-code flexibility (parameterization, conditional branching) with interface simplicity?
- Can the platform support multi-modal (audio/video) human–AI interaction?
- What is the right design for longitudinal experiments with persistent agent identity, trust, and memory?
- How to detect and handle adversarial participant behavior (e.g., pasting LLM-generated responses) at scale?
- Can tight integration with annotation and model fine-tuning workflows (LoRA, RLHF) close the loop from experimentation to model improvement?

## My take

Solid engineering contribution that fills a genuine gap: no prior platform combined real-time synchronous multi-party interaction, no-code experiment building, and first-class LLM agent support. The 12-month deployment data (88 experimenters, 9K+ participants) provides credible evidence of utility across diverse disciplines. The case studies are illustrative but not rigorous evaluations — the paper's strength is the systems contribution, not empirical findings about human–AI dynamics. The platform is complementary to simulation-only frameworks like Concordia: where Concordia models agent-only environments, Deliberate Lab enables the hybrid human–AI experiments needed to validate those simulations against real behavior. The TypeScript/Firebase architecture is pragmatic for rapid iteration but may face scaling challenges at very high concurrency.

## Related

- [[hybrid-human-ai-experimentation-platform]]
- [[generative-agent-based-modeling]]
- [[llm-powered-agent-architecture]]
- [[multi-agent-social-simulation]]
- supports: [[no-code-platforms-enable-scalable-real]]
