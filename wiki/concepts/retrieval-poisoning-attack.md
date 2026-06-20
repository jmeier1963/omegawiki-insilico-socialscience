---
title: "Retrieval Poisoning of Generative Search"
aliases: ["WARP attack", "web agent retrieval poisoning", "deep-research agent poisoning", "generative engine optimization", "GEO", "RAG poisoning", "UGC injection"]
tags: [ai-security, retrieval-augmented-generation, deep-research-agents, information-integrity]
maturity: emerging
key_papers: [deep-research-agents-poisoned-user-generated]
first_introduced: "2026"
date_updated: 2026-06-20
related_concepts: [agentic-ai-security-vulnerabilities]
---

## Definition

Manipulating the **open-web content** that retrieval-augmented / deep-research agents consume so that their synthesized, cited outputs promote attacker-chosen entities. The realistic variant (WARP) edits only an existing, frequently retrieved user-generated-content (UGC) page — no control over retrieval, model, prompts, or the user query.

## Intuition

Deep-research agents issue many related queries per session and repeatedly hit the same high-overlap UGC pages (Reddit, Wikipedia). That overlap concentrates a **writable attack surface**: poisoning one page propagates across an entire topic's reports. It generalizes "generative engine optimization" (GEO, the LLM analogue of SEO) into an adversarial attack.

## Formal notation

Adversary appends short text τ to a high-overlap page; success measured as conditional mention rate of the attacker entity in generated reports given exposure.

## Variants

- SERP-snippet injection (~13–15 words) vs full-content injection (appended to a complete thread, small fraction of retrieved text).
- Single-URL vs multi-URL targeting.

## Comparison

Broader than classic RAG poisoning/GEO, which assume retrieval of the poisoned content as given; here reconnaissance, generation, and deployment form one realistic threat against unmodified agents over the open web.

## When to use

Threat-modeling agentic generative search; designing provenance/trust scoring or retrieval diversification defenses.

## Known limitations

Efficacy is conditional on exposure; depends on platform moderation latency; demonstrated on open systems (commercial systems only via recon).

## Open problems

Defenses that break overlap-concentration without hurting coverage; information-integrity guarantees for agents grounded in writable corpora.

## Key papers

- [[deep-research-agents-poisoned-user-generated]]

## My understanding

The durable insight is structural: retrieval overlap turns a single editable page into topic-wide leverage. It is a concrete instance of the wider [[agentic-ai-security-vulnerabilities]] surface.
