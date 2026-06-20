---
title: "Deep-Research Agents Can Be Poisoned via User-Generated Content"
slug: deep-research-agents-poisoned-user-generated
arxiv: "2605.24245"
venue: "Preprint"
year: 2026
tags: [ai-security, deep-research-agents, rag-poisoning, generative-engine-optimization, llm-agents, information-integrity]
importance: 3
date_added: 2026-06-20
source_type: pdf
s2_id: ""
keywords: [WARP attack, deep-research agents, user-generated content, RAG poisoning, GEO, STORM, retrieval overlap]
domain: ML Systems
code_url: "https://github.com/Tingwei-Zhang/geo_storm"
cited_by: []
---

## Problem

Deep-research agents (multi-agent pipelines that iteratively retrieve, synthesize, and cite open-web content into structured reports) are replacing traditional search. They issue many related queries per session and repeatedly retrieve the same user-generated content (UGC) pages (Reddit, Wikipedia). This retrieval overlap concentrates an attack surface: one crafted edit to a frequently retrieved, writable page could steer many reports.

## Key idea

Define the **WARP (Web Agent Retrieval Poisoning)** attack — the first content-injection attack on deep-research agents that assumes *no* control over retrieval, *no* knowledge of the agent's model/prompts or the user's query, and *no* ability to add new documents; the adversary only edits an existing UGC page. A short appended snippet on one high-overlap page makes the agent cite attacker-chosen content and promote attacker-chosen entities across an entire topic.

## Method

- Reconnaissance to find high-overlap UGC pages within a topic cluster, then minimal content injection.
- Evaluated on three open systems (**STORM, Co-STORM, OmniThink**) using **GeoStorm**, an ethical simulation harness that never modifies live web content.
- Two settings: SERP-snippet injection (~13–15 words) and full-content injection (appended to a complete Reddit thread, <4% of retrieved content).
- Studies defenses at three pipeline stages: source blocking, input filtering, output filtering.

## Results

- Structural vulnerability: within a topic cluster a single UGC page is retrieved in up to **48%** of queries; 17–23% of retrieved URLs are UGC.
- SERP-snippet attack: 38–51% conditional mention rate (one URL), 42–62% with multi-URL targeting; full-content: 30–53%.
- Commercial recon: Gemini Deep Research cites UGC ~12.1%, suggesting comparable exposure.
- **No defense** (source/input/output) mitigates the attack without degrading output quality.

## Limitations

End-to-end attacks could not be run on commercial systems (server-side retrieval, ethics); efficacy is conditional on exposure; mitigations are evaluated narrowly. The attack's real-world impact depends on platform moderation speed.

## Open questions

How to preserve information integrity when agents depend on writable open-web corpora? Can provenance/trust scoring or retrieval diversification break the overlap-concentration without hurting coverage?

## My take

Sharpens the [[agentic-ai-security-vulnerabilities]] picture for the specific, fast-growing case of generative search. The "retrieval overlap = concentrated, writable attack surface" framing is the durable insight, and it connects AI security to the broader epistemic-integrity theme in the wiki.

## Related

- [[retrieval-poisoning-attack]]
- [[agentic-ai-security-vulnerabilities]]
- supports: [[deep-research-agents-poisonable-via-ugc]]
