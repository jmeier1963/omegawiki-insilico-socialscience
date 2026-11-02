---
title: "The LLM Capability Funnel"
slug: dusting-off-tweet-april-llm-capability
arxiv: ""
venue: "X (Twitter) post thread"
year: 2026
tags: [ai-adoption, ai-economics, llm-capability, jaggedness, ai-and-society]
importance: 3
date_added: "2026-11-02"
source_type: pdf
s2_id: ""
tldr: "Karpathy argues the public understanding of LLM capability has widened into a sharp four-tier funnel — from ~6B people (75%) with barely any contact, to ~1-2B casual free-tier users, to ~20M professionals seeing frontier math/code agents melt weeks of work, to ~5,000 people with internal frontier access watching agent swarms do things that would take top professionals years — driven by problem ambition/horizon, the jaggedness of capability toward verifiable digital domains, and access tier."
contribution_type: [position]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

Public debate about AI capability is increasingly incoherent because different commentators are, often unknowingly, describing entirely different experiential realities of the same underlying technology. Karpathy's April 2026 tweet first named a two-group "speaking past each other" dynamic (casual free-tier users who see a "derpy chatbot" vs. professional users of frontier agentic coding tools who see dramatic capability gains); this October follow-up argues the gap has widened from a two-way split into a sharp four-tier funnel, and that the gap is actively widening rather than stable.

## Key idea

AI capability understanding stratifies the population into four tiers of radically different lived experience with the same technology: (1) ~6B people (~75%) with barely any contact with LLMs at all; (2) ~1-2B (~20%) casual, infrequent free-tier chatbot users who treat it like a better search engine or writing aid; (3) ~20M people (~0.2%) who professionally use frontier-grade agentic math/code tools and have seen multi-week projects compress to a single prompt; (4) ~5,000 people (~0.00006%) with internal access to frontier-grade systems, who report seeing swarms of thousands of agents collaborating over weeks on software megaprojects, running cyberattacks/defenses at machine speed, and advancing mathematics and science — with human review and comprehension already starting to fall behind what the frontier tier produces.

## Method

Informal, first-person synthesis rather than a measured study: population-tier estimates are explicitly "napkin math," not sourced data, and the argument is built from the author's own vantage point (frontier-lab-adjacent) plus cited illustrative anecdotes (manual hand-typed coding a year prior vs. current agentic coding; the unspecified "OpenAI-HF incident"; "722 manuscripts on frontier mathematics" under mathematician scrutiny). The funnel's structure is attributed to three interacting drivers: (1) impact scaling with problem ambition, size, and time horizon — trivial queries don't stress a system the way large, high-stakes problems do; (2) jaggedness — capability concentrates in domains that are digital, verifiable, and economically valuable, because RL-on-verifiable-rewards training is easiest and most commercially prioritized there (math/code) relative to domains like open-ended writing or advice that resist crisp verification; (3) access tier — free, paid, or internal, which gates which capability level a given person actually experiences regardless of domain.

## Experiment & Results

No experiment; the "result" is the funnel taxonomy and its claimed widening over roughly six months (April to October 2026) between the two linked posts. The central illustrative claim is that the same underlying model family produces qualitatively different public impressions depending on tier: a free-tier "Advanced Voice Mode" fumbling simple questions and a paid frontier coding agent "melting" week-long programming problems are simultaneously true descriptions of 2026-era AI, with no contradiction once tier is accounted for.

## Limitations

- All population and percentage figures are self-described "napkin math" with no methodology, data source, or error bars — a rhetorical device for ordering magnitude, not a measurement.
- The internal-frontier-tier claims (agent swarms running cyberattacks/defenses, autonomous scientific/mathematical discovery at the "~5,000 people" level) are asserted from the author's own position and anecdote rather than externally verified or sourced, and no specifics are given beyond vague references to an unspecified incident and a count of manuscripts.
- The jaggedness mechanism (RL on verifiable rewards concentrating gains in math/code) is offered without citing the underlying technical literature on RLVR or evaluation design, despite being load-bearing for the whole funnel's domain axis.
- As a single author's commentary rather than a study, the piece makes no attempt to address counter-evidence or alternative explanations for why professional and casual users report such different experiences (e.g., selection effects in who adopts paid frontier tools in the first place).

## Open questions

- Can the funnel's population-tier estimates be replaced with actual usage telemetry (cf. this wiki's [[ai-adoption-depth-breadth-gap]], which is built from first-party vendor data) rather than informal guesses?
- Is the funnel widening, as claimed, or might casual-tier capability eventually catch up as frontier techniques diffuse down to free-tier products — and on what timescale?
- Does the jaggedness mechanism generalize beyond math/code to other verifiable-reward-amenable domains (e.g., formal proof assistants, scientific simulation), or is the math/code concentration partly an artifact of where the largest commercial incentives currently sit?
- What specifically happened in the referenced "OpenAI-HF incident" and the "722 manuscripts on frontier mathematics" episode, and would public scrutiny of those specifics support or undercut the claimed scale of the internal-frontier tier's output?

## My take

The funnel's real contribution is naming, with memorable tier boundaries, exactly the equivocation that makes both AI-hype and AI-skeptic public claims sound well-evidenced to their respective audiences — strongly complementary to this wiki's existing [[ai-adoption-depth-breadth-gap]] concept, which documents the same underlying phenomenon (wide-but-shallow AI penetration) from measured occupational telemetry rather than informal observation. Where Karpathy's framing adds something the telemetry-based concept doesn't capture is the innermost tier: a small, largely unaccountable population with internal frontier access whose reported experience (agent swarms, machine-speed cyber operations, uncontrolled-pace mathematical/scientific output) is the one tier this wiki otherwise has least first-hand documentation of, precisely because by its nature it's the least externally observable. The piece is best read as a sociological observation about AI discourse rather than a capability claim in its own right — its evidentiary weight rests entirely on trusting the author's anecdotal vantage point for the innermost tier.

## Related

- [[ai-adoption-depth-breadth-gap]] — same_problem_as: both document a population/task-level dissociation between AI's apparent breadth of impact and the depth of experience any given user or task actually has with it, from informal observation and measured telemetry respectively.
- [[llm-capability-funnel]]
- [[software-intelligence-explosion]] — the innermost tier's description (agent swarms on software megaprojects, machine-speed operations, autonomous mathematical/scientific discovery) is an informal, first-person anecdotal account of exactly the dynamics this concept formally models.
