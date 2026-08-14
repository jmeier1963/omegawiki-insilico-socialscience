---
title: "Agent2Agent (A2A) Protocol Specification"
slug: agent2agent-a2a-protocol-specification
arxiv: ""
venue: "A2A Project (Linux Foundation)"
year: 2025
tags: [multi-agent-systems, agent-interoperability, open-standards, agentic-ai, protocol]
importance: 3
date_added: 2026-07-05
source_type: pdf
s2_id: ""
tldr: "The technical specification of the Agent2Agent (A2A) protocol — a JSON-RPC-based open standard for cross-vendor agent interoperability defining Agent Cards for discovery, a Task lifecycle, message/part exchange, streaming, and push notifications."
contribution_type: [system]
datasets: []
code_url: "https://github.com/a2aproject/A2A"
cited_by: []
---

## Problem & Context

Agents built with different frameworks and hosted by different vendors cannot interoperate without a shared communication standard, producing fragmentation and lock-in. A2A (created by Google, April 2025; governed by the Linux Foundation from June 2025) is the open standard intended to fill that gap; this document is its technical specification.

## Key idea

A vendor-neutral, transport-level protocol that lets a client agent discover a remote agent's capabilities (via an Agent Card), send it work as a Task, exchange multi-part messages, and receive results and status updates — synchronously, via streaming, or via push notifications — using standard web primitives (JSON-RPC over HTTP(S)).

## Method

Specification, not a research contribution. Core constructs:
- **Agent Card** — a machine-readable description of an agent's identity, capabilities, skills, and endpoints, enabling discovery and capability validation (plus an Extended Agent Card).
- **Task** — the unit of work with a defined lifecycle (submitted → working → input-required → completed/failed/canceled) and stable task identifiers.
- **Message / Part** — role-tagged messages composed of typed parts (text, file, data); results surface as artifacts.
- **RPC methods** — Send Message, Send Streaming Message, Get/List/Cancel/Subscribe Task, and Push Notification Config CRUD, plus Get Extended Agent Card.
- **Update delivery** — synchronous responses, streaming event delivery, and push-notification delivery for long-running/asynchronous operations; explicit versioning.

## Experiment & Results

No evaluation (a standards document). The substance is the interface contract: discovery via Agent Cards, the task state machine, message/part typing, three update-delivery mechanisms, and capability negotiation. Adoption signal comes from the 100+ backers named in the Linux Foundation launch rather than from benchmarks.

## Limitations

- A specification defines an interface, not interoperability; real cross-vendor compatibility depends on independent, conformant implementations.
- Security/trust for cross-boundary agent discovery and authentication is specified at the protocol level but its real-world robustness is untested here.
- Relationship to adjacent standards (MCP for tools; AGNTCY) is out of scope of the document.

## Open questions

- How cleanly does A2A (agent-to-agent) compose with MCP (agent-to-tool) in practice?
- Are the authentication and trust guarantees sufficient for adversarial cross-organizational settings?
- Does synchronous vs. push/streaming delivery cover the coordination patterns complex multi-agent systems actually need?

## My take

The spec is the substantive anchor the press release only gestured at: Agent Cards for capability discovery and a Task state machine over JSON-RPC are a sensible, boring, web-native foundation, which is what a standard should be. Its fate is an adoption question, not a design one — whether independent implementations actually interoperate and how the labor splits with MCP. As a source it is reference documentation, so its value to the wiki is anchoring the interoperability-protocol concept, not new findings.

## Related

- [[agent-interoperability-protocol]]
