---
title: "Linux Foundation Launches the Agent2Agent Protocol Project"
slug: linux-foundation-launches-agent2agent-protocol-project
arxiv: ""
venue: "The Linux Foundation"
year: 2025
tags: [multi-agent-systems, agent-interoperability, open-standards, agentic-ai, enterprise-ai]
importance: 2
date_added: 2026-07-05
source_type: pdf
s2_id: ""
tldr: "The Linux Foundation announces it will host the Agent2Agent (A2A) protocol — an open, vendor-neutral standard created by Google for secure discovery, communication, and collaboration between AI agents across platforms — with backing from 100+ technology companies."
contribution_type: [system]
datasets: []
code_url: "https://github.com/a2aproject/A2A"
cited_by: []
---

## Problem & Context

As enterprises deploy AI agents from many vendors and frameworks, those agents cannot easily discover or coordinate with one another, creating fragmentation and vendor lock-in. A2A was created by Google (announced April 2025) to address secure agent-to-agent communication at scale; this 23 June 2025 announcement moves the project under the Linux Foundation for neutral governance.

## Key idea

An open, vendor-neutral protocol standard lets autonomous agents discover one another, exchange information securely, and collaborate across systems regardless of platform, vendor, or framework — an "internet of agents" interoperability layer, governed neutrally rather than by any single vendor.

## Method

Foundation/governance announcement, not a technical paper. A2A becomes a Linux Foundation project committed to vendor neutrality, extensibility, security, and real-world usability, with 100+ supporting companies (Google Cloud, AWS, Microsoft/Azure AI Foundry, Salesforce, SAP, ServiceNow, Cisco/Outshift). The protocol handles agent discovery, secure information exchange, and cross-system coordination; the technical specification lives in the linked GitHub repository.

## Experiment & Results

No evaluation (press release). Signals of adoption momentum: launched by Google in April 2025, 100+ company backers, integration into Cisco AGNTCY components (Directory, Identity, SLIM Messaging, Observability) and enterprise platforms (Agentforce, ServiceNow AI Agent Control Tower).

## Limitations

- Marketing/governance announcement; no technical detail, benchmarks, or interoperability evidence.
- Success depends on actual cross-vendor implementation, not stated support.
- Overlaps and competition with adjacent standards (e.g. MCP) unaddressed here.

## Open questions

- How does A2A compose with or compete against other agent standards (MCP, AGNTCY)?
- What are the security and trust guarantees for agent discovery and authentication across trust boundaries?
- Does neutral foundation governance actually prevent the dominant vendor from steering the standard?

## My take

The significant thing is institutional, not technical: moving A2A to the Linux Foundation is a bid to make cross-vendor agent interoperability a neutral commons rather than a Google asset, echoing how earlier infrastructure (Kubernetes, Node.js) was de-vendored. Whether it becomes load-bearing depends on the specification (a separate document) and on how it divides labor with MCP-style tool protocols. As a press release it is a weak source; the protocol spec is the substantive anchor.

## Related

- [[agent-interoperability-protocol]]
