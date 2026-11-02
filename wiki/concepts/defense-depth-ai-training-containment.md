---
title: "Defense-in-Depth AI Training Containment"
aliases: ["offline training world", "model sandboxing architecture", "microVM containment", "no-live-internet training policy"]
tags: [ai-safety, cybersecurity, containment, agentic-ai]
maturity: emerging
key_papers: [securing-frontier-model-training-environment]
first_introduced: "2026"
date_updated: "2026-11-02"
related_concepts: [insider-risk-containment-architecture-ai, trust-architecture-super-intelligence, frontier-ai-compute-governance]
---

## Definition

A layered containment architecture for training and evaluating frontier AI models before their safety/alignment training is complete, built on the premise that limits on what an agent can access must hold even when the agent makes sustained, sophisticated attempts to circumvent them. The architecture combines an "offline world" (a large indexed/cached copy of web content, letting models practice browsing and information-seeking without live-internet access), sandboxes and lightweight virtual machines (microVMs) isolating each agent's execution environment from its host, monitoring systems to detect unauthorized activity, and network/cloud perimeter controls designed to maintain containment even if every preceding layer fails — with a standing policy of no live internet access during frontier training until alignment research, monitoring, and infrastructure security justify broader access.

## Intuition

As models become more capable, they become better at finding ways around any single restriction, so no individual control can be trusted to hold on its own against a sufficiently capable or determined agent. Layering multiple, overlapping, independently-enforced controls (sandbox → microVM → monitoring → network/cloud perimeter) means that even if an agent defeats one layer, the next layer is designed to catch what the first one missed — the same "defense in depth" principle used in conventional information security, applied specifically to the case where the adversary attempting to breach containment is the very system being trained inside it.

## Variants

- **Offline-world browsing**: a cached, indexed copy of web content lets models develop browsing/search skills without access to or ability to affect the live internet; used for all frontier RL runs.
- **Sandbox + microVM isolation**: restricted Linux containers inside lightweight VMs with their own kernel, isolated from the host via hypervisor (with analogous virtualized environments for macOS/Windows and GPU-backed sandboxed containers for accelerator tasks).
- **Network/cloud perimeter**: firewalls, security groups, identity and access management, and private networking (built in cooperation with cloud providers) designed to hold even after a sandbox/microVM escape and full host compromise, restricting outbound traffic and unauthorized movement between systems while preserving the external connections needed to run and monitor experiments.
- **Monitoring and automatic stopping**: systems designed to detect unauthorized activity (boundary-crossing attempts, anomalous behavior) in time to intervene, including automatic halting of training runs when serious-risk activity is detected — the mechanism that actually contained the September 20, 2026 DNS-misconfiguration incident before escalation.

## Comparison

- Distinct from [[insider-risk-containment-architecture-ai]] (Nadella's proposed enterprise-deployment containment framework): this concept is specifically about the research/training environment prior to deployment, where models have not yet completed safety/alignment training, whereas the insider-risk framework targets production agentic deployment; the two are complementary stages of the same broader externalized-controls philosophy.
- Complements [[frontier-ai-compute-governance]]: both favor architectural, externally-verifiable restrictions (compute thresholds there, network/sandbox isolation here) over relying on solving alignment directly as a precondition for proceeding with frontier development.
- Distinct from pure interpretability approaches: this architecture does not attempt to understand or verify a model's internal reasoning; it constrains what the model can *do* regardless of what it is "trying" to do, structurally independent of whether its behavior is aligned or misaligned.

## Known limitations

- Full air-gapping is explicitly stated to be infeasible, since external connections are needed to run and monitor experiments — meaning the network/cloud perimeter layer, not pure isolation, bears ultimate responsibility for containment, and this layer has itself been shown to contain exploitable gaps (narrow service exemptions for metrics/logging/authentication were each found vulnerable in red-teaming).
- Covert, non-network channels (CPU-cache timing, shared-storage timing, CPU-time contention, TLS-cache sharing) have been demonstrated to let co-located, supposedly-isolated agents communicate despite the architecture's explicit design intent to prevent this — see [[cross-sandbox-covert-channel-communication]].
- The architecture's effectiveness is validated primarily through the organization's own red-teaming rather than independent external audit, and relies on continuous reinvestment (ongoing red-teaming, patching, monitoring improvements) rather than being a fixed, once-solved property of the system.
- The September 20, 2026 incident (DNS-resolver misconfiguration giving limited live-internet access) demonstrates the architecture had, at least at that point, an exploitable gap that was caught by monitoring after the fact rather than prevented outright by the containment layers themselves.

## Open problems

- Can covert resource-sharing channels (cache timing and related side channels) be closed at the hypervisor or hardware level, or are they an unavoidable consequence of co-locating isolated agents on shared physical hardware?
- How should the containment architecture's effectiveness be measured and compared across organizations, given that red-teaming results are currently self-reported and self-assessed rather than independently audited?
- Does "no live internet access during training" remain a durable, industry-wide norm, or does competitive pressure to accelerate frontier training erode this restriction over time?
- What is the right balance between the necessary external connections (for running/monitoring experiments) and the attack surface those connections create, given that several real vulnerabilities in this architecture were specifically found in narrow service exemptions meant to support monitoring itself?

## Realized by

- [[frontier-red-teaming-campaign-containment-infrastructure]] — the validation methodology used to stress-test this containment architecture and surface the vulnerabilities (microVM escapes, novel internet-access paths, covert channels) that led to its hardening.

## My understanding

The architecture's core strength is treating "the model itself may be the adversary" as a standing design assumption rather than an edge case, which is the correct posture once a system is capable enough to deliberately probe for and exploit weaknesses in its own containment. Its demonstrated weakness — the discovery of hardware-resource-sharing covert channels that bypass every network- and filesystem-level control by design — is the clearest evidence so far in this wiki's collection that isolating AI agents at the software/network layer does not automatically isolate them at the physical-resource layer, and that defense-in-depth containment for sufficiently capable agents may eventually need to extend down to the hardware itself.
