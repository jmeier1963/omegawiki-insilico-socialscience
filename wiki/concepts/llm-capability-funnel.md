---
title: "LLM Capability Funnel"
aliases: ["AI capability understanding gap", "capability awareness tiers", "jaggedness-access funnel", "two groups speaking past each other"]
tags: [ai-adoption, ai-economics, llm-capability, jaggedness, ai-and-society]
maturity: emerging
key_papers: [dusting-off-tweet-april-llm-capability, math-terence-tao-caltech-talk-proof, theophyseval-assessing-ai-agents-autonomous-theoretical, organizing-intelligence]
first_introduced: "2026"
date_updated: "2026-11-02"
related_concepts: [ai-adoption-depth-breadth-gap, software-intelligence-explosion]
---

## Definition

The LLM capability funnel is an informal taxonomy of four population tiers, each with a radically different lived experience of the same underlying AI technology at a given point in time: a vast majority with barely any contact with LLMs; a large casual free-tier user base experiencing chatbots as a modestly-better search/writing aid; a small professional tier using frontier agentic tools in verifiable technical domains (math, code) and experiencing dramatic, compressed productivity gains; and a tiny tier with internal access to frontier-grade systems, reportedly experiencing capability (agent swarms, machine-speed operations, autonomous research) that the outside world has barely glimpsed. The funnel is driven by three interacting factors: problem ambition/scale/horizon (bigger stakes stress a system more), the jaggedness of capability (concentrated in digital, verifiable, economically valuable domains amenable to RL on verifiable rewards), and access tier (free, paid, internal).

## Intuition

Two people can both be describing 2026-era AI honestly and still sound like they're talking about different technologies, because they are standing in different places in the funnel: one has seen a free-tier voice assistant fumble a simple question, the other has watched a paid agentic coding tool restructure an entire codebase unattended for an hour. Both experiences are real; neither generalizes to the other tier. The gap is not a difference in information but a difference in which slice of the technology's actual capability distribution a person has been exposed to.

## Variants

- **Access-tier funnel**: free vs. paid vs. internal-frontier access as the primary gating variable, holding domain roughly fixed.
- **Domain-jaggedness funnel**: math/code vs. other domains as the primary gating variable, holding access tier roughly fixed — capability concentrates where reinforcement learning on verifiable rewards is tractable and commercially prioritized.
- **Combined funnel** (the paper's own framing): access tier and domain jaggedness compound, so the innermost tier (internal frontier access + highest-value verifiable domains) sees capability furthest beyond what any outer tier can observe or verify.

## Comparison

- Distinct from [[ai-adoption-depth-breadth-gap]], which is measured from first-party vendor telemetry against an occupational task taxonomy (breadth of occupations reached vs. depth of task coverage within them); the capability funnel is an informal, population-tier taxonomy based on anecdotal observation rather than measured usage data, and adds an innermost "internal frontier access" tier that telemetry-based studies structurally cannot observe (since such access is by definition not visible in public or even enterprise usage logs).
- Complements rather than competes with jaggedness-of-capability accounts elsewhere in the AI-capability literature: the funnel's contribution is specifically crossing jaggedness with *access tier* to explain why the public perception gap is widening, not just that capability is uneven across domains.

## Known limitations

- Entirely informal: population and percentage estimates in the originating source are self-described "napkin math," not measured data, with no stated methodology or confidence bounds.
- The innermost tier's claims (agent swarms, machine-speed cyber operations, autonomous mathematical/scientific discovery) rest on the originator's own anecdotal vantage point and vague, unverifiable references, making this tier's description the least independently checkable part of the funnel.
- No account is given of how tiers might shift over time (e.g., frontier capability diffusing down to casual/free tiers), so the funnel is a snapshot claim rather than a dynamic model.

## Open problems

- Can the funnel's tier boundaries and population estimates be replaced with measured usage/access data rather than informal observation?
- Does capability diffuse from the internal-frontier tier down through professional and casual tiers on a predictable timescale, narrowing the funnel, or does frontier capability advance fast enough to keep the gap constant or widening?
- How much of the domain-jaggedness driver is a durable property of verifiable-reward training versus a temporary artifact of where current commercial incentives happen to concentrate?

## Realized by

*No method page — this is an informal observational taxonomy, not an implemented technique.*

## My understanding

The funnel's lasting value, if any, will be as a vocabulary for defusing a specific, recurring bad-faith-adjacent argument pattern in AI discourse — two people citing genuinely different tiers of experience as if they were describing the same population-wide reality. Its weakest point is exactly its innermost, most consequential tier: the claims about internal frontier capability are the ones carrying the most weight for how seriously readers should take the overall funnel, and they are also the ones resting on the thinnest evidentiary basis.
