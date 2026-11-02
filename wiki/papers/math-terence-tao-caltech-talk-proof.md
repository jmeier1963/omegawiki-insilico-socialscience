---
title: "Math 2.0"
slug: math-terence-tao-caltech-talk-proof
arxiv: ""
venue: "Caltech (invited talk / slide deck)"
year: 2026
tags: [ai-math, mathematical-research-culture, proof-abundance, theorem-proving, formal-verification, ai-alignment, crowdsourced-mathematics]
importance: 5
date_added: "2026-11-02"
source_type: pdf
s2_id: ""
tldr: "Terence Tao argues that AI's combination of objective verifiability, digitizability, and abundant training data is driving mathematics from a historical era of \"proof scarcity\" (Math 1.0) into an era of \"proof abundance\" (Math 2.0) in which problem-solving — long the field's most visible goal — becomes a misaligned and even actively harmful proxy for the field's deeper health, so the discipline must simultaneously expand its research frontier through imaginative new AI-enabled practices (large-scale crowdsourced \"experimental mathematics\" population surveys, open-exposition problems, living result networks) and deliberately decenter solved-problem-counting, while treating unverified AI mathematical claims the way an unvetted drug claims a cure with a mechanism nobody understands."
contribution_type: [position]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

Modern AI tools are disrupting many established professions; Tao argues mathematics — a field that had been institutionally and methodologically stable for nearly a century — is proving unusually susceptible, for three structural reasons rarely found together elsewhere: mathematical proofs are **objectively verifiable** (mechanically checkable in a proof assistant like Lean, with consensus on correctness even amid disagreement over interestingness), **digitizable** (no physical instantiation, real-world data, or experiment required — pen-and-paper verifiable from textbooks and the research literature), and backed by **large, high-quality digital datasets** of problems and proofs. This combination makes math unusually amenable to the machine-learning techniques powering frontier AI, so labs have prioritized mathematical capability — producing what Tao calls an emerging "era of proof abundance," replacing the historical "era of proof scarcity" (Math 1.0) under which most of the field's institutions, incentives, and stated goals were built.

## Key idea

Reporting bias makes AI's mathematical progress look more complete than it is: of all the problems being attempted, only the dramatic successes circulate on social media, while the much larger set of unreported failed attempts stays invisible — so the "research frontier" genuinely tackled by humans-plus-AI together is wider than the subset visible in press coverage, but still finite relative to an infinite, unboundedly difficult space of open problems. Tao's central normative argument is that problem-solving, while historically the field's most *visible* goal, has always been only a *proxy* for mathematics' deeper long-term health (developing understanding, taste, and transferable insight) — a proxy that was roughly accurate under proof scarcity but becomes **actively misaligned, and now actively harmful**, under proof abundance. Many open problems function as "lighthouses": not destinations in themselves but waypoints that guide exploration of the surrounding mathematical landscape; reaching a lighthouse prematurely via brute AI force — without the human understanding normally built by the journey — can sterilize the very field of inquiry around it rather than advancing it.

A companion thought experiment sharpens the stakes: an AI asked to cure cancer "with no mistakes" produces a Lean-certified prediction for a chemical cocktail nobody understands, which does pass a clinical trial — would a patient or a human cancer expert accept it without someone understanding the mechanism? Tao argues mathematics faces the identical trust problem in miniature: a Lean certificate proves a statement is *true*, not that anyone *understands why*, and an unaligned, purely "renewable-cycle"-breaking application of AI (automatically converting applied-math problems into certified-but-opaque solutions, bypassing the human-understanding node that normally also feeds back into safely transferring insight to messier real-world applications) can produce outputs that are correct but cannot be safely trusted or generalized.

## Method

The talk is a position piece built from observed and ongoing examples rather than a formal methodology: the 2024–2025 crowdsourced **Equational Theories Project** (settling ~22 million true/false statements in universal algebra via human and automated arguments); the 2026 **Inverse Galois Problem challenge (IGP24)**, a crowdsourced competition to locate degree-24 polynomials realizing each of 25,000 possible Galois groups; **First Proof** (lstproof.org), an initiative for transparent, rigorous public assessment of AI's capability in research mathematics, reporting resource consumption and negative results rather than only successes; the **Integrated Explicit Analytic Number Theory Network (IEANTN)**, a living, continuously updatable "spreadsheet" of interconnected results; and the revived **Caltech Mathathon** (Nov 13–15, 2026), which reframes the event around finding better proofs/expositions of *already-solved* results rather than chasing new open problems.

## Experiment & Results

No experimental results in the conventional sense; the talk's evidentiary base is these concrete, named ongoing projects, which Tao offers as prototypes of what "Math 2.0" practice could look like: large-scale **experimental mathematics** as "population surveys" of a problem space rather than individual "case studies," mapping a new difficulty landscape that looks structurally different once AI tools are available; **ablation studies** on existing theorems (checking whether a result still provable after removing a key input or non-elementary technique); automatically exploring a theorem's "neighborhood" (what can be salvaged under weakened hypotheses); tailored, interpretable, safety-conscious open-source math models; interactive living texts synthesizing large result bases; and using human mathematical expertise specifically to probe AI mathematical models for misalignment and failure modes when applied to real-world (not just pure) problems.

## Limitations

As a talk/position piece, the argument is not empirically quantified — no measurement of how much of the "research frontier" AI has actually touched, no data on misalignment rates in AI-assisted proofs, and no formal criteria for distinguishing a "lighthouse" problem whose premature solution would sterilize a field from one whose solution safely opens new ground. The central alignment concern (an AI producing a formally certified but humanly un-understood result) is illustrated by a thought experiment, not a documented real incident.

## Open questions

Tao states plainly that the primary bottleneck to realizing "Math 2.0" is not technology or institutional culture but **imagination** — the field has not yet broadly reconceived what counts as a valuable mathematical contribution beyond problem-counting. Left open: how to formally measure or incentivize "understanding" as a first-class research output distinct from verified proof; how large-scale experimental-mathematics population surveys should be designed and validated; and how the field's reward structures (hiring, tenure, prizes) should be redesigned around proof abundance rather than proof scarcity.

## My take

This is a rare piece in the wiki's [[ai-mathematical-discovery]] cluster written by a top mathematician reflecting on the *social and epistemic* consequences of AI mathematical capability rather than reporting a new capability result — closer in spirit to [[software-intelligence-explosion]]-adjacent governance reasoning than to a benchmark paper. Its sharpest contribution is the "lighthouse" framing: most AI-math wiki entries implicitly treat solving an open problem as unambiguously good progress, while Tao argues the *manner* and *pace* of solving can itself damage the field's long-term epistemic health — a distinction worth carrying into how this wiki frames future [[ai-mathematical-discovery]] ingests (did the AI contribution produce transferable human understanding, or just a certificate?). It also gives the [[llm-capability-funnel]] concept a concrete within-domain illustration: the same "reporting bias" mechanism (visible successes vastly overrepresented relative to invisible failures) that paper identifies as a general social-perception problem, here specific to mathematical social media.

## Related

- [[ai-driven-scientific-discovery]]
- [[ai-mathematical-discovery]] — the broader concept cluster this talk sits within; Tao's contribution is normative/cultural rather than a new technique.
- [[proof-abundance-era]] — concept introduced by this talk.
- [[experimental-mathematics-population-surveys]] — concept introduced by this talk.
- [[llm-capability-funnel]] — shares the reporting-bias / visible-success-vs-invisible-failure mechanism, applied here within mathematics specifically.
- [[terence-tao]] — speaker.
