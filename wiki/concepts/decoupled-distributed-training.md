---
title: "Decoupled Distributed Training"
aliases: ["Decoupled DiLoCo", "island-based distributed training", "asynchronous island training", "low-communication distributed training", "DiLoCo training"]
tags: [distributed-training, fault-tolerance, ml-infrastructure, pretraining, ml-systems]
maturity: emerging
key_papers: [decoupled-diloco-resilient-distributed-ai-training]
first_introduced: "2026"
date_updated: 2026-05-22
related_concepts: []
---

## Definition

Decoupled distributed training is an approach to large-scale neural network pretraining that partitions training across independent compute "islands" (learner units) with asynchronous, low-bandwidth communication between them. Unlike tightly-coupled data-parallel training requiring microsecond synchronization, decoupled training tolerates inter-island latency compatible with wide-area network (WAN) speeds. Each island trains independently; a global outer optimizer aggregates updates asynchronously.

## Intuition

Traditional distributed training is like a synchronized orchestra: every musician must play in perfect time, and any dropout breaks the performance. Decoupled training is like an ensemble of jazz bands: each band improvises independently, and a conductor occasionally synthesizes themes — the show continues even when one band takes a break.

## Formal notation

- Let $\{I_1, ..., I_k\}$ be independent compute islands, each with local model $\theta_i$
- Each island runs standard gradient steps locally for $T$ inner steps
- Outer optimizer aggregates: $\theta_{global} \leftarrow \text{outer\_opt}(\{\theta_i\})$ asynchronously
- Communication bandwidth scales with outer optimizer frequency, not inner step frequency

## Variants

- **DiLoCo** (predecessor): reduced inter-datacenter bandwidth by separating local from global optimization; required roughly synchronous outer steps
- **Decoupled DiLoCo** (Google DeepMind, 2026): fully asynchronous outer optimizer; islands operate without blocking on peer completion; built on Pathways infrastructure
- **Federated pretraining**: similar spirit but decentralized coordination across organizations

## Comparison

| Method | Bandwidth | Fault tolerance | Synchronization |
|--------|-----------|----------------|----------------|
| Data-parallel (synchronous) | Very high | Low (one failure = stall) | Per-step |
| DiLoCo | Reduced | Moderate | Per outer-step |
| Decoupled DiLoCo | Commodity WAN (2–5 Gbps) | High (self-healing) | Fully async |

## When to use

When training across geographically distributed datacenters with standard internet connectivity, when hardware failure rates are high, or when mixing different hardware generations in one training run. Not needed for tightly co-located clusters with high-speed interconnects.

## Known limitations

- Validated at 12B parameters; scalability to larger models unconfirmed
- Relies on Pathways infrastructure (Google-internal); open-source reproduction not yet available
- Asynchronous outer optimizer may introduce gradient staleness artifacts at high island counts

## Open problems

- What is the maximum gradient staleness acceptable before quality degrades?
- Can decoupled training enable truly federated pretraining across organizations (not just datacenters)?

## Key papers

- [[decoupled-diloco-resilient-distributed-ai-training]] — Google DeepMind blog introducing Decoupled DiLoCo; 12B model across 4 US regions at WAN bandwidth

## My understanding

Practically significant for the economics of frontier model training. If commodity bandwidth is sufficient for pretraining, compute geography becomes far more flexible — stranded compute in secondary locations becomes usable. The self-healing property addresses a real operational pain point.
