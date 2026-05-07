---
title: "Social Simulacra: Creating Populated Prototypes for Social Computing Systems"
slug: social-simulacra-creating-populated-prototypes-social
arxiv: "2208.04024"
venue: "UIST 2022"
year: 2022
tags: [social-simulation, llm, social-computing, prototyping, hci, community-design]
importance: 4
date_added: 2026-05-05
source_type: pdf
s2_id: "49b499598a8864eee55ab264fc16a5bf8d2f87ef"
keywords: [social simulacra, populated prototyping, social computing, community design, LLM simulation, anti-social behavior]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Social computing system designers need to understand how their designs will behave when populated at scale, but current prototyping methods rely on small recruited groups that miss many emergent behaviors (anti-social behavior, content diversity, norm formation). The gap between small-group testing and real deployed behavior leaves designers regularly surprised.

## Key idea

**Social Simulacra**: a prototyping technique that takes a designer's community specification (goal, rules, member personas) and uses an LLM to generate thousands of distinct synthetic community members and their realistic interactions (posts, replies, anti-social behaviors). Two core features: **Generate** (simulate a populated version of the designed community) and **WhatIf** (explore counterfactual scenarios — "what if a troll replied?" or "what if a moderator intervened?"). Designers can iterate their community rules and observe how simulated behavior shifts.

## Method

- Input: designer's community description (goal, rules, member persona types)
- LLM prompted to generate a diverse community of synthetic members with distinct backgrounds, motivations, and tendencies
- Community members' posts, replies, and interactions generated at scale
- **Generate**: produces full community behavior snapshots under current design
- **WhatIf**: re-generates a specific conversation branch with a substituted actor (troll, moderator, different persona)
- Prototype implemented as SimReddit (Reddit-like interface for community design)
- Key insight: LLMs' training data includes broad range of social media behavior, enabling realistic simulation of both prosocial and anti-social behaviors

## Results

- Participants were often unable to distinguish simulacra from actual community behavior (Turing-test-style evaluation)
- Social computing designers successfully refined their community designs using the tool (designer evaluation study)
- Simulacra correctly shift behavior in response to rule changes (sensitivity evaluation)
- 448 citations as of 2025 — highly influential for the LLM-as-simulator research thread

## Limitations

- Grounded in LLM training data, which may carry biases from the real social platforms sampled
- Persona diversity may not capture rare/extreme user types well
- No longitudinal validation against real deployed communities
- WhatIf scenarios are synthetic counterfactuals — real interventions may unfold differently

## Open questions

- Do simulacra generalize to social platforms with very different norms (professional, specialized, multilingual)?
- How should designers handle cases where simulacra systematically underrepresent minority behavior?
- Can simulacra be used for adversarial red-teaming of platform moderation policies?

## My take

An early and influential demonstration that LLMs can serve as a scalable substitute for populated user testing in social system design. The prototyping framing is well-motivated and the Turing-test evaluation is compelling. The paper predates the larger "silicon sampling" literature but is about a distinct use case: design iteration rather than empirical social science. The WhatIf feature is particularly useful for safety-oriented design. Importance: 4 — genuinely influential in both HCI and LLM-simulation research communities.

## Related

- [[social-simulacra]] (introduces this concept)
- [[generative-agent-based-modeling]] (early precursor: LLM-generated agents in social context, 2022)
- [[joon-sung-park]]
- [[michael-bernstein]]
- [[percy-liang]]
- supports: [[llm-generated-social-simulacra-produce-realistic]]
