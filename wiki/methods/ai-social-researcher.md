---
name: "AI Social Researcher"
slug: ai-social-researcher
type: system
tags: [llm-agents, social-simulation, automated-research, agentic-workflow, report-generation]
source_papers: [[yulan-onesim-towards-next-generation-social]]
parent_methods: [[scenario-auto-construction-subsystem]]
child_methods: []
realizes_concepts: []
code_repo: "https://github.com/RUC-GSAI/YuLan-OneSim"
date_updated: "2026-10-11"
---

## Problem setting

Even with a social simulator that removes the need to hand-code scenarios, a social scientist still has to perform the surrounding research workflow themselves: turning a vague interest into a concrete, simulatable research question, running the simulation, analyzing the output, and writing it up. The goal is to automate this entire research cycle — from a one-sentence topic to a reviewed technical report — treating an existing simulator as a black-box tool the system calls rather than something it has to understand internally.

## Mechanism

Two LLM-multi-agent modules chained end to end. An **Experiment design module** converts a loosely specified topic into a fully specified, simulation-ready scenario via three role-specialized agents (ideation, critical evaluation against six scored criteria, formal ODD-protocol generation). The resulting ODD protocol feeds the scenario auto-construction subsystem and simulator to produce raw simulation output. A **Report generation module** then converts that raw output into a finished write-up via four role-specialized agents (data analysis, outline writing, LaTeX report drafting, and iterative review), with the Reviewer agent scoring each section on four dimensions and triggering revision cycles until a quality bar is met.

## Procedure

1. **Inspiration Agent**: given a brief, possibly ambiguous topic, generates 3-5 candidate research questions, each paired with a feasible simulation scenario (agent types, interaction mechanisms, manipulable parameters kept to manageable complexity).
2. **Evaluation Agent**: scores each candidate (1-10) on simulation feasibility, complexity management, research value, agent design quality, parameter-space definition, and potential insight; selects the most promising candidate with a stated rationale.
3. **ODD-generation Agent**: formalizes the selected scenario into a complete ODD protocol, assigns it to one of the simulator's predefined domains, and outputs it in a structured, machine-readable format that directly initializes the simulator.
4. Simulator runs (via [[scenario-auto-construction-subsystem]] and the simulation execution subsystem), producing metrics, visualizations, and raw event data.
5. **Data analysis agent**: interprets simulation output against the ODD scenario description, extracting patterns, correlations, and emergent behaviors as a set of insights.
6. **Outline writing agent**: structures those insights into a hierarchical report outline (research objectives, simulation setup, results, conclusions) with per-section bullet guidance.
7. **Report writing agent**: drafts the full report in LaTeX section by section, following the outline.
8. **Reviewer agent**: scores each section (1-5) on analytical insight, structural coherence, content quality, and practical utility, with concrete revision feedback; the system iterates steps 6-8 until the report meets a quality bar.

## Assumptions

- The underlying simulator (here, YuLan-OneSim) is treated as a reliable black box; the module's own quality is bounded by whatever fidelity the simulation layer provides.
- A single research topic resolves to one simulation-ready scenario per run; the Evaluation Agent's selection among 3-5 candidates is treated as final rather than itself revisited after seeing simulation results.
- Report quality can be meaningfully judged by an LLM reviewer (GPT-4o in the reported evaluation) along four dimensions, substituting for a human domain-expert reviewer.

## Limitations

- In the paper's own evaluation, scenario design quality (overall 4.13/5, feasibility 4.88/5) is markedly stronger than report quality (overall 3.31/5), and specifically weaker on exactly the dimensions that determine research value: insight (3.25/5) and utility (3.00/5) — the system is better at proposing a runnable study than at extracting what matters from its results.
- Evaluated on only one scenario per domain (8 total), with GPT-4o as both the comparison baseline note elsewhere in the paper and the evaluation judge, raising LLM-as-judge validity concerns for a system whose core claim is about producing usable research output.
- No mechanism is reported for the Evaluation Agent's initial scenario selection to be revisited if the eventual simulation or report reveals the chosen candidate was a poor pick relative to the discarded alternatives.

## Tradeoff profile

Trades the depth and originality of human-directed research judgment for speed and reduced expertise requirements: a user can go from a one-sentence topic to a full report with "minimal manual effort," but the reported quality gap between feasibility/structure (strong) and insight/utility (weak) suggests the system currently automates the mechanical parts of the research cycle more successfully than the judgment-intensive parts.

## Evaluated by

Scenario-design quality (relevance, fidelity, feasibility, significance; 1-5 per criterion) and report quality (insight, structure, content, utility; 1-5 per criterion), both scored by GPT-4o across one scenario per domain (8 domains total). See [[yulan-onesim-towards-next-generation-social]] for full results and per-domain breakdowns.
