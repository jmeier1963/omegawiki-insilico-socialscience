---
title: "LLM Roleplay for Skill Training"
aliases: ["simulated patient", "AI practice partner", "LLM roleplay training", "principle-adherence roleplay", "expert-guided simulation"]
tags: [llm-simulation, roleplay, skill-training, hci, mental-health, domain-expert]
maturity: emerging
key_papers: [roleplay-doh-enabling-domain-experts-create]
first_introduced: "2024"
date_updated: 2026-05-05
related_concepts: [social-simulacra, llm-powered-agent-architecture]
---

## Definition

The use of LLMs as interactive roleplay partners to give practitioners (counselors, interviewers, negotiators) low-stakes practice opportunities with simulated domain-specific scenarios — especially where real practice partners are unavailable (privacy constraints, rare cases, high cost). Includes techniques for eliciting expert knowledge and enforcing behavioral principles during simulation.

## Intuition

Instead of role-playing with real patients or scripted confederates, a trainee interacts with an LLM that has been configured by domain experts to exhibit the behaviors, resistance patterns, and communication styles characteristic of the real interaction targets. The system bridges the gap between textbook knowledge and live practice.

## Formal notation

P = set of expert-elicited principles (natural language rules)
System prompt = task description + P
Response generation: LLM generates response then verifies it against each p_i ∈ P before output

## Variants

- **Roleplay-doh** (Louie et al., 2024): iterative expert feedback → principle extraction → principle-adherence pipeline
- **Zero-shot roleplay**: LLM given persona description only (lower fidelity)
- **Fine-tuned roleplay**: LLM fine-tuned on domain-specific interaction data (infeasible for privacy-sensitive domains)

## Comparison

| Aspect | LLM Roleplay | Social Simulacra |
|--------|-------------|-----------------|
| Goal | Trainee skill development | System design prototyping |
| Interaction | One-on-one dialogue | Population behavior generation |
| Expert involvement | Domain expert-guided | Designer-specified |

## When to use

When practitioners need repeated, varied, low-stakes practice with hard-to-access interlocutors (real patients, rare experts, sensitive populations) and domain experts can articulate behavioral principles for guiding LLM behavior.

## Known limitations

- Expert principle elicitation is laborious and may miss tacit knowledge
- Principles may conflict or underspecify edge-case behaviors
- No evidence yet that AI roleplay translates to real-world skill improvement (no outcome RCTs)
- Privacy-sensitive domains prevent comparison with fine-tuned alternatives

## Open problems

- End-to-end pipeline for automated principle elicitation
- Transfer of learned skills from AI roleplay to real interaction
- Multi-party roleplay (group therapy, team scenarios)

## Key papers

- [[roleplay-doh-enabling-domain-experts-create]] — introduces principle-elicitation + adherence pipeline for mental health counseling training (EMNLP 2024)
