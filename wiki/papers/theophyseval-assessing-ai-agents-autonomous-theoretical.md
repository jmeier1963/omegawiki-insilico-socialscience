---
title: "TheoPhysEval: Assessing AI Agents at Autonomous Theoretical Physics Problem Solving"
slug: theophyseval-assessing-ai-agents-autonomous-theoretical
arxiv: "2610.16733"
venue: "arXiv (hep-th)"
year: 2026
tags: [ai-evaluation, benchmark, theoretical-physics, agentic-ai, jaggedness, scientific-capability, contamination]
importance: 4
date_added: "2026-11-02"
source_type: tex
s2_id: ""
tldr: "A 50-institution consortium of theoretical physicists contributed 50 unpublished, research-level theoretical physics problems with verifiable answers that would take a world expert about a day to solve; the best agent (GPT-6-Astra in Codex) achieved 98% accuracy on the realistic track (web search + literature access) and 92% in the isolated track (no internet), at under USD 3/problem, with accuracy barely changing between tracks — evidence that frontier agents can now match or exceed top human researchers at concrete theoretical-physics calculation, largely via memorized literature, even though agents have not yet produced an autonomous research breakthrough in the field."
contribution_type: [benchmark, analysis]
datasets: ["TheoPhysEval"]
code_url: ""
cited_by: []
---

## Problem & Context

AI agents have begun solving mathematically well-posed open problems (Navier–Stokes blowup, the dying percolation conjecture, Erdős problem #728), sometimes with no formal mathematical expertise from the prompting human — but autonomous agents have had comparatively little impact on theoretical physics and have not produced a notable breakthrough there, despite experts increasingly using them for discussion, calculation, literature search, and manuscript drafting. The paper asks a narrower, cleanly measurable question than "can AI do physics research": can off-the-shelf AI agents autonomously perform the concrete, verifiable calculations that constitute a meaningful fraction of theoretical-physics research work, without human hints?

The authors — world experts from 19 institutions (ICTS, TIFR, Chicago, Penn, Tokyo, DeepMind, and others) — deliberately excluded genuinely open research problems from the dataset, soliciting instead "turn-the-crank" problems: known techniques generalized or adapted to a new case, with results that are novel in the narrow sense of unpublished but not pathbreaking. Each problem has a solution that is simple to verify, difficult to guess, and not publicly available at evaluation time.

## Key idea

Problems were built two ways: by giving contributors three criteria (relevant to current research, verifiable-but-unguessable, unpublished) and letting them adapt a problem from their own unpublished research notes or existing papers with modified parameters — so that solving requires locating and understanding the original technique, then correctly adapting it to the new case. To avoid ambiguity from symbolic-expression grading, all answers were converted to concrete numerical values (including irrelevant "distractor" parameters), so grading is exact numeric comparison rather than LLM-judged symbolic equivalence. Agents were evaluated on two tracks: a **realistic track** (web search and local tools available, mirroring how a physicist would actually use an agent) and an **isolated track** (Docker sandbox, no internet, only the model's own trained knowledge and local computation) — isolating raw memorization/reasoning from literature-assisted performance.

## Method

The dataset spans 50 problems across 10 themes (classical physics, stochastic/biological physics, nonequilibrium statistical mechanics, lattice theories, quantum phases of matter, electronic structure, QFT, particle physics, scattering amplitudes, holography/entanglement, gravitation/cosmology). Five agents were evaluated: GPT-6-Astra in Codex ("Astra"), Opus 5.5 in Claude Code CLI ("Opus"), Gemini 3.8 Flash in Antigravity ("Gemini"), DeepSeek-V4.1-Flash in Codex ("DeepSeek"), and GLM 5.3 in Claude Code CLI ("GLM"), all run at maximum reasoning effort on standardized Google Cloud VMs (2 vCPUs, 4GB RAM, 10GB storage, 8-hour cutoff per task). Agent trajectories on the isolated track were automatically inspected and showed no sandbox escapes.

## Experiment & Results

Realistic track: Astra 98% (49/50), Opus 92% (46/50), Gemini 68% (34/50), DeepSeek 54% (27/50), GLM 42% (21/50). Isolated track: Astra and Opus tied at 92% (46/50), Gemini 62% (31/50), DeepSeek 50% (25/50), GLM 52% (26/50). The change in accuracy between tracks was within statistical noise for most agents (single-run evaluation), which the authors call "remarkable" given many problems require literature-sourced formulas not provided in the prompt — strong circumstantial evidence that leading models have memorized large parts of the theoretical-physics literature and can reproduce key formulas without looking them up. The one problem Astra failed on the realistic track was an inverse problem (reconstructing a differential equation from a given curve) that **no agent solved on either track** — the only problem where the solved-sets formed a strict subset hierarchy anchored on Astra's realistic-track performance. Evaluation cost: Astra solved the realistic track for ~$116 total across all 50 problems (~$2.33/problem); Opus cost roughly double that; GLM's notional API cost was ~$312–371 per track but actual cost was $180 under a flat coding plan.

## Limitations

The authors explicitly flag that their pass rates are higher than other theoretical-physics benchmarks because their problems are, on inspection, more advanced — not because their suite is less rigorous. Single-run evaluation per agent means reported accuracy carries real statistical uncertainty. Grading-key ambiguity surfaced in two problems after the final runs (under-specified conventions), and one question (§1b) proved resistant to clean numerical conversion. None of the 50 problems constitute an unsolved open research problem, and solving a representative subset does not imply all-round excellence at autonomous theoretical-physics research — problem-solving ability is only one of the skills the field requires, alongside asking the "right" high-level questions and constructing theories, which the suite does not test.

## Open questions

The authors note it would be possible to construct harder "adversarial" problems to push accuracy down, but chose not to, since the suite aims to be representative of real research difficulty rather than an adversarial stress test; they encourage others to build specialized research harnesses (as has succeeded in mathematics) and to test different model/harness pairings than the ones used here. Broader open question raised explicitly: why do agents that can perform concrete calculations at or above expert level still show "a lack of agent-led breakthroughs" in theoretical physics — the authors discuss (without resolving) that current agents appear to lack the research "taste" to identify interesting problems, tending to focus on uninteresting details when asked to generate their own problems.

## My take

This is one of the cleanest quantitative data points in the wiki for the [[llm-capability-funnel]] concept's claim that capability concentrates sharply in verifiable, calculation-heavy digital domains: near-perfect accuracy on expert-level theoretical physics, achieved substantially through memorization rather than live reasoning (the realistic/isolated gap is nearly zero), while the same labs' agents have produced no theoretical-physics breakthroughs. It also sharpens a distinction this wiki has tracked in [[ai-mathematical-discovery]] around Gemini's Erdős-problem results ("obscurity not difficulty" explaining many open problems) — here the authors reach an adjacent but more pointed conclusion: calculation competence and research-taste/problem-selection are evidently separable skills, and current frontier agents have far outpaced humans on the former while showing no sign of the latter. Methodologically, the realistic-vs-isolated track design and the "convert everything to numeric answers with irrelevant distractor parameters" grading trick are worth reusing as a template for any future verifiable-research-benchmark ingest.

## Related

- [[ai-driven-scientific-discovery]]
- [[llm-capability-funnel]] — this paper's near-zero realistic/isolated accuracy gap is concrete evidence for the funnel's "capability concentrates in verifiable digital domains via literature memorization" mechanism.
- [[ai-mathematical-discovery]] — parallels the "obscurity not difficulty" finding from Gemini-and-Erdős work, here generalized to a calculation-vs-taste distinction.
- [[gdpval-evaluating-ai-model-performance-real]] — same_problem_as: both measure frontier agent performance against real expert-level professional deliverables via a verifiable, representative task benchmark, in different domains (occupational work vs. theoretical physics research).
