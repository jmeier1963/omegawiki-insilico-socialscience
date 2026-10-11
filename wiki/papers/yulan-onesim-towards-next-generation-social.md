---
title: "YuLan-OneSim: Towards the Next Generation of Social Simulator with Large Language Models"
slug: yulan-onesim-towards-next-generation-social
arxiv: "2505.07581"
venue: "NeurIPS 2025 (preprint track)"
year: 2025
tags: [multi-agent-simulation, llm-agents, social-simulation, agent-based-modeling, automated-research, distributed-systems]
importance: 4
date_added: "2026-10-11"
source_type: tex
s2_id: ""
tldr: "Introduces YuLan-OneSim, an LLM-based social simulator that lets users build simulation scenarios in natural language (auto-generating validated behavior graphs and executable code), ships 50 ready-to-run scenarios across 8 social-science domains, scales to 100,000 agents via a distributed event-driven architecture, and adds an 'AI social researcher' that closes the loop from a research topic to a reviewed technical report."
contribution_type: [system, method]
datasets: []
code_url: "https://github.com/RUC-GSAI/YuLan-OneSim"
cited_by: []
---

## Problem & Context

Classical agent-based modeling (ABM) requires hand-coded behavioral rules and struggles to capture the nuance of human cognition and language-mediated interaction. LLM-based social simulators (GenSim, OASIS, AgentSociety, SocioVerse, SOTOPIA) address this by giving agents LLM-driven behavior, but per the paper's own comparison table (Table 1), none combines automatic code generation from natural language, a comprehensive ready-to-run scenario library, feedback-driven self-improvement, and an end-to-end autonomous research capability in one system — each prior system requires manual scenario coding and stops at generating simulation output rather than a finished research artifact.

## Key idea

Decompose social simulation into three phases — scenario construction, execution, and result feedback — and automate the first and third phases with LLM-driven subsystems, while making execution itself distributed and asynchronous for scale. A fourth "AI social researcher" layer treats the whole simulator as a black-box tool: given only a research topic in natural language, it designs a simulation, runs it, and writes a reviewed report, closing what the paper calls the "social science research loop" end to end.

## Method

Four subsystems. (1) **Scenario auto-construction**: natural-language requirements are formalized via the ODD (Overview, Design Concepts, Details) protocol through conversational clarification, then converted into a **behavior graph** — a directed graph whose nodes are agent-type-level actions and whose edges are triggering events — via LLM-driven action/event extraction followed by structural validation (every node lies on a Start→End path) and semantic validation (alignment with the ODD description), iterating until both pass. The validated graph is then converted to executable code via breadth-first traversal (generating each node's handler from a template, using abstracted base classes so the LLM only fills in action-specific logic) and iteratively validated/repaired. Concrete simulation data (environment, agent profiles, agent relationship networks) is generated last, with relationship-network validation ensuring no isolated agents. (2) **Simulation execution**: a four-module agent (profile, memory, planning via Chain-of-Thought/BDI/Theory-of-Mind, action) runs inside a fully responsive, event-driven architecture (an asynchronous event bus rather than lockstep rounds) built on a Master-Worker distributed design with gRPC inter-node communication, topology-aware agent placement (co-locating frequently-interacting agents to minimize cross-node traffic), and peer-to-peer connection caching after first contact. (3) **Feedback-driven evolving (VR²T)**: a Verifier scores a generated response against a prompt, a Reasoner explains the score, a Refiner produces a corrected response when the score falls below a threshold, and a Tuner fine-tunes the backbone LLM (via SFT on corrected pairs or RL on the full verifier-scored quadruplet) — any of the three judging roles can be a human or an LLM, functioning as what the paper calls a "social science gym" for infusing social-scientific judgment into the model without needing hard-to-obtain real-world behavioral data. (4) **AI social researcher**: an Inspiration Agent proposes 3-5 candidate research questions/scenarios from a topic, an Evaluation Agent scores each on six criteria (1-10) and selects one, an ODD-generation Agent formalizes it; after simulation, a Data analysis agent extracts patterns, an Outline writing agent structures a report, a Report writing agent drafts it in LaTeX, and a Reviewer agent iteratively critiques and triggers revision across four dimensions (insight, structure, content, utility) until a quality bar is met.

## Experiment & Results

**Scenario construction quality** (GPT-4o as the generation LLM, across all 8 domains): average Behavior-Graph rating 4.82/5 and Code rating 4.20/5, code generated at ~50 tokens/second (~14x a human programmer's typing speed). Ablations show each component matters: removing the behavior graph entirely drops average code quality from 4.00 to 2.88/5 (scored 1-5 per domain), omitting graph validation drops it to 3.00, and omitting code refinement to 3.38. **Simulation reliability**: an LLM-driven replication of Axelrod's cultural-dissemination model (N=10 grid, F=5 features, q=5 traits) reproduces the theory's predicted coexistence of rising local cultural convergence (reaching >0.50 by round 60) with stabilizing global polarization (~0.35-0.40), including a round-15 crossover matching the theoretical pattern; a six-agent-type, three-market (labor, retail, real estate) simulation of the Brazilian housing market, run for 12 simulated months, reproduces the empirical rental-price distribution's multi-modal shape and long tail, with some underestimation in the 0.45-0.55 normalized-price range. **Scalability**: scaling the Axelrod scenario to ~100,000 agents (N=320, F=5, q=10) on 8×A100 GPUs with 96 worker nodes and 8 Qwen2.5-7B-Instruct inference instances (via vLLM) achieves an average of 6,026 seconds/round, 49.41 events/second, and ~294,630 processed events per round; at 10,000 agents the distributed architecture cuts cost by ~75% versus a single-node baseline, though at 5,000 agents the single-node approach is still slightly cheaper, i.e. distribution only pays off past a scale threshold. **AI social researcher** (GPT-4o as judge, one scenario per domain): designed scenarios average 4.13/5 overall (feasibility 4.88, relevance 4.25) while generated reports average only 3.31/5 overall (structure 4.00 but insight 3.25 and utility 3.00 — the system reliably proposes feasible, on-topic simulations but is weaker at extracting deep, actionable findings from the results).

## Limitations

- Error analysis shows most generation failures are logical (value-access errors, instruction-action mismatches, type-check oversights) rather than syntactic — fixable with standard debugging but still requiring the stated manual-correction step for some fraction of generated scenarios.
- Real-world validation is a single case (Brazilian rental prices, one country, one year, one market type); social-theory validation is also a single case (Axelrod's model, itself a stylized toy model rather than an empirically fit one).
- The AI social researcher's weakest dimension (report utility/insight, ~3.0-3.25/5) is precisely the dimension that most determines whether a generated report is useful to an actual researcher, as opposed to merely well-structured.
- Distributed-architecture gains are scale-dependent and can be negative at smaller scales (5,000 agents), so the system's own stated advantage (massive scale) is also where its cost model is least tested against single-node baselines beyond 10,000 agents.
- Scenario- and report-quality evaluation uses GPT-4o as the judge rather than human domain experts, raising the usual LLM-as-judge validity concerns for a system whose central claim is about research quality.

## Open questions

- Does the behavior-graph/ODD pipeline generalize to scenarios whose causal structure is less cleanly decomposable into discrete agent-type actions and triggering events than the default 50 scenarios?
- How does report quality (particularly insight and utility) improve with better data-analysis or outline-writing agents, versus being a more fundamental limitation of synthesizing novel research insight from simulated data via LLMs?
- At what agent-population scale and interaction density does the single-node-to-distributed crossover point actually sit, beyond the two data points (5,000 vs. 10,000 agents) reported?
- Can the VR²T feedback loop's human-in-the-loop variant be validated at scale, given that the reported experiments use LLM verifiers/reasoners/refiners rather than real human feedback?

## My take

The paper's most distinctive technical contribution is the behavior graph as an intermediate representation between natural-language scenario descriptions and executable simulation code — the ablation results (4.00 → 2.88 average code quality when it's removed) make a reasonably strong case that this structured intermediate step, rather than direct LLM code generation, is what makes code-free scenario construction viable at the demonstrated quality level. The 100,000-agent distributed-execution result is a genuine scale advance relevant to [[multi-agent-social-simulation]]'s SOTA tracker, on par with or exceeding AgentSociety's reported 10K+ agent scale. The AI Social Researcher is the more speculative piece: its own evaluation shows it is good at the "can this be simulated" judgment (feasibility 4.88/5) but markedly weaker at the "what did we learn" judgment (insight 3.25/5, utility 3.00/5) — which is exactly the generator-verifier-style asymmetry (competent at execution, weaker at the judgment that makes execution valuable) documented elsewhere in this wiki's autonomous-research-agent literature (cf. [[ai-agents-conduct-open-ended-ai]]), here observed in the social-science-simulation domain specifically rather than natural-science research.

## Related

- [[scenario-auto-construction-subsystem]]
- [[ai-social-researcher]]
- [[generative-agent-based-modeling]] — extends: LLM-driven ABM with code-free natural-language scenario authoring and automatic behavior-graph construction, rather than hand-coded agent behavior.
- [[society-construction-elements-framework]] — uses: the scenario auto-construction subsystem's agent-profile/relation-network generation implements a concrete instance of society-construction-elements composition.
- [[llm-simulation-validity-guardrails]] — uses: the social-theory-verification (Axelrod replication) and real-world-data-fitting (Brazilian housing) experiments are direct applications of the validity-guardrail pattern of checking simulation output against established theory and empirical distributions.
- [[agentsociety-large-scale-simulation-llm-driven]] — similar_method_to: both are large-scale (10K+ agent), general-purpose LLM social simulators with distributed execution; YuLan-OneSim additionally claims code-free construction and an autonomous research-report layer that AgentSociety does not.
- [[individual-society-survey-social-simulation-driven]] — the taxonomy paper's Individual/Scenario/Society framing maps onto YuLan-OneSim's profile/behavior-graph/relation-network construction pipeline.
- [[ai-agents-conduct-open-ended-ai]] — same_problem_as: both find that an autonomous research agent is markedly better at designing/executing a feasible study than at extracting deep insight or sound judgment from its results, in different research domains (social simulation vs. open-ended AI research).
- [[ruc-yulan-team]]
- part_of: [[multi-agent-social-simulation]]
