---
title: "Agent Interoperability Protocol"
aliases: ["A2A", "Agent2Agent", "agent-to-agent communication", "internet of agents", "cross-vendor agent standard"]
tags: [multi-agent-systems, agent-interoperability, open-standards, agentic-ai]
maturity: emerging
definition: "An open, vendor-neutral standard letting autonomous AI agents from different platforms, vendors, and frameworks discover one another, exchange information securely, and collaborate across systems."
key_papers: [linux-foundation-launches-agent2agent-protocol-project, agent2agent-a2a-protocol-specification]
first_introduced: "2025"
date_updated: 2026-07-05
related_concepts: [llm-powered-agent-architecture, parallel-agent-supervision]
---

## Definition

An open, vendor-neutral protocol standard that lets autonomous AI agents from different platforms, vendors, and frameworks discover one another, exchange information securely, and coordinate actions across systems — an interoperability layer for a multi-vendor "internet of agents."

## Intuition

Enterprises deploy agents built with many different frameworks and from many vendors; without a shared protocol, those agents cannot coordinate, producing fragmentation and vendor lock-in. A neutral standard for agent discovery, authenticated communication, and cross-system collaboration plays for agents the role HTTP/DNS play for services — provided governance stays neutral so no single vendor steers it.

## Variants

- **A2A (Agent2Agent):** created by Google (April 2025), moved to the Linux Foundation for neutral governance (June 2025); 100+ company backers.
- **Complementary tool protocols (e.g. MCP):** connect agents to tools/data rather than to each other; the division of labor between agent-to-agent and agent-to-tool standards is still settling.
- **Vendor agent stacks integrating the standard:** e.g. Cisco AGNTCY (Directory, Identity, messaging, observability).

## Comparison

Distinct from single-framework [[llm-powered-agent-architecture]] work, which builds one system's agents; interoperability protocols standardize communication *across* systems. Related to [[parallel-agent-supervision]] in that multi-agent coordination presumes agents can address and trust one another, but the protocol layer is about cross-vendor addressing and security, not supervision.

## Known limitations

- Governance neutrality is asserted; the originating vendor may still steer the standard in practice.
- Security/trust model for cross-boundary agent discovery and authentication is underspecified in public announcements.
- Overlap and competition with adjacent standards (MCP, AGNTCY) is unresolved.

## Open problems

- How do agent-to-agent and agent-to-tool protocols compose?
- What are the authentication and trust guarantees across organizational boundaries?
- Does foundation governance actually prevent dominant-vendor capture?

## Realized by

- [[linux-foundation-launches-agent2agent-protocol-project]] — announces neutral Linux Foundation governance for the A2A protocol.

## My understanding

The interesting bet is institutional: whether cross-vendor agent interoperability becomes a neutral commons (like Kubernetes) or stays a de facto vendor asset. The technical substance lives in the specification, not the announcement; the concept's real test is whether independent implementations interoperate and how cleanly A2A divides labor with MCP-style tool protocols.
