---
title: "Agent-Native Research Artefacts"
aliases: ["machine-executable research artefact", "layered research artefact", "AI-native scientific report", "cognitive-physical-evidence-trajectory layers"]
tags: [ai-science, research-infrastructure, knowledge-representation, agentic-ai]
maturity: emerging
key_papers: [agentic-economies-autonomous-scientific-discovery]
first_introduced: "2026"
date_updated: "2026-10-11"
related_concepts: [automated-scientific-economy, hypothesis-exchange-pipeline, automated-research-pipeline]
parent_topic: ai-driven-scientific-discovery
---

## Definition

Agent-Native Research Artefacts are a proposed alternative to the static PDF research paper, designed as active, machine-executable knowledge packages rather than passive documents, disaggregated into independently queryable layers: a **cognitive layer** defining the formal hypotheses and reasoning behind a study; a **physical layer** encapsulating the executable code with full parameter specification; an **evidence layer** containing links to versioned datasets (public, or privacy-preserving descriptions of proprietary data used); and a **trajectory graph** encoding the exact iterative process an AI agent undertook to reach its result.

## Intuition

Human-readable papers compress an iterative, branching research process into a linear narrative optimized for persuading a human reviewer — what the originating paper calls an "engineering tax," the gap between presenting convincing reviewer-targeted prose and a detailed, agent-executable specification. Methodology sections routinely omit exact parameters a human can infer from context but an AI agent cannot. Splitting the artifact into separately queryable layers lets a human reader consume the narrative summary while another AI agent queries the physical layer directly to replicate the exact computation, without either audience needing the other's level of detail.

## Variants

- **Full four-layer artefact**: cognitive, physical, evidence, and trajectory-graph layers all populated and independently queryable — the complete proposed form.
- **Decoupled presentation layer**: since verbose agentic logs may be illegible to human domain experts, the proposal suggests decoupling storage of the full artefact from a dynamically aggregated, human-facing presentation — an "ephemeral user interface" that can be snapshotted and versioned at major milestones for human cross-referencing and discussion.
- **Partial adoption for human science**: the paper notes these layers are harder to retrofit onto human research but speculates that passive, privacy-sensitive monitoring of human scientific activity by "agentic research managers" could partially extend trajectory-graph-style logging to human workflows, with significant unresolved privacy concerns.

## Comparison

- Builds on and extends prior "knowledge infrastructure" proposals in domain-specific contexts (e.g., Earth-science modelling operators and diagnostic recovery mechanisms) into a general, cross-domain scientific artefact format.
- Distinct from [[hypothesis-exchange-pipeline]]: artefacts are the content/representation being exchanged; the exchange pipeline is the market mechanism that prices and trades claims about that content.
- Distinct from existing structured-reporting standards (FAIR data principles) in being optimized for agent execution and querying from the outset, rather than being human-interpretable metadata retrofitted for machine use — the paper explicitly notes existing FAIR implementations "have been optimised for human interpretation."

## Known limitations

- No reference implementation or worked example of a complete four-layer artefact is provided; the proposal is described at the level of required layers, not a specified schema or format.
- Trajectory-graph logging of an AI agent's full iterative reasoning process raises its own transparency-vs-legibility tension: fully verbose agentic logs may be illegible to the human experts responsible for oversight, which the paper's own "decoupled presentation layer" idea only partially addresses.
- Retrofitting this structure onto human scientific work is explicitly flagged as "far more challenging," with the proposed partial solution (passive monitoring by agentic research managers) raising significant unresolved privacy concerns the paper does not attempt to resolve.

## Open problems

- What concrete schema or standard would a cognitive/physical/evidence/trajectory-graph artefact actually use, and could it interoperate across different AI-scientist systems and labs?
- Does decoupling storage from a human-facing presentation layer actually solve the legibility problem, or does it just relocate the burden of deciding what to surface to whichever agent generates the presentation snapshot?
- Can privacy-preserving trajectory-graph logging for human researchers be made acceptable, or does the privacy cost outright preclude extending this format beyond AI-generated research?

## Realized by

*No method page — this is a proposed data/knowledge-representation format rather than an implemented system; the paper does not specify or release a schema, parser, or tooling.*

## My understanding

The strongest part of this concept is naming the "engineering tax" precisely — the structural gap between a paper written to persuade a human reviewer and a specification an agent could faithfully re-execute — because that gap is a real, observable friction in today's AI-science reproduction attempts, independent of whether this specific four-layer format is the right fix. The weakest part is that the proposal stops at naming the layers without specifying enough structure to be adopted or tested, leaving it as a design target rather than a candidate standard.
