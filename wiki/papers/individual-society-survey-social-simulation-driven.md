---
title: "From Individual to Society: A Survey on Social Simulation Driven by Large Language Model-based Agents"
slug: individual-society-survey-social-simulation-driven
arxiv: "2412.03563"
venue: "ACM Computing Surveys"
year: 2024
tags: [social-simulation, multi-agent-systems, survey, llm-agents, agent-based-modeling, silicon-sampling, computational-social-science, taxonomy]
importance: 4
date_added: "2026-09-22"
source_type: tex
s2_id: "11a6d66791e244b01bf1a23a98158be789854876"
tldr: "A systematic survey organizing LLM-driven social simulation into three progressively-scaled tiers — Individual, Scenario, and Society simulation — each analyzed by architecture/construction, objective/scenario taxonomy, and evaluation method, with catalogued datasets and per-tier historical trend narratives."
contribution_type: [survey]
datasets: []
code_url: "https://github.com/FudanDISC/SocialAgent"
cited_by: []
---

## Problem & Context

Traditional sociological research (questionnaires, psychological experiments) is effective but expensive, hard to scale, and ethically constrained. LLM-driven agents can now role-play individuals with "algorithmic fidelity" — accurately replicating response patterns of the people they simulate — which has triggered a rapidly-expanding but fragmented literature: some surveys cover general agent architectures, others cover narrow slices of single-agent role-play or multi-agent systems, but per the authors none provides "a systematic review to summarize the work from the individual to society." This survey positions itself to fill exactly that gap, aiming to give the field "a comprehensive blueprint."

## Key idea

A **three-tier progressive taxonomy** of LLM-driven social simulation, ordered by increasing scale/diversity and decreasing per-agent granularity:

1. **Individual Simulation** — one LLM-based agent mimics a specific person or demographic-sharing group (personality, behavior); no multi-agent interaction.
2. **Scenario Simulation** — a small, goal-driven group of agents collaborates within a concentrated context (e.g. software development, debate, paper reviewing), emphasizing collective task-solving.
3. **Society Simulation** — larger and more diverse agent populations interact to reveal emergent macro-level social dynamics (opinion formation, economic phenomena, norm evolution), not aimed at solving a specific task.

The tiers are explicitly progressive: individual simulation is the foundation both scenario and society simulation build on, and the authors note society simulation could theoretically subsume "a chaotic world composed of countless sub-scenarios," though current work stays confined to specific scenarios.

## Method

For each tier the survey applies a consistent four-part analytical template — architecture/construction, objective/scenario classification, and evaluation — then adds a shared datasets/benchmarks section and a historical trend narrative per tier.

- **Individual Simulation.** *Architecture*: profile (construction via manual modification [handcrafting, online communities, literary sources] or LLM generation; form as descriptions or conversations), memory (short-term vs. long-term; operations of writing/retrieval/reflection — citing Generative Agents' tree-structured reflection, ProAgent, Voyager), planning (empathetic vs. subjective), action (situation: simple dialogues vs. crafted situations/sandboxes; domain: closed vs. open). *Construction*: nonparametric prompting vs. parametric training (pre-training, finetuning incl. LoRA multi-character merging, RL via reward-shaped dialogue). *Objectives*: demographics (groups sharing traits) vs. characters (real, e.g. historical figures/livestreamers; or virtual, e.g. Harry Potter, Sun Wukong). *Evaluation*: static (subjective — interviews, utterance imitation, LLM/human scoring on BFI/MBTI dimensions; objective — accuracy/F1/perplexity/ROUGE-L/BLEU) vs. interactive (circumstance-based, multi-turn, real-time feedback).
- **Scenario Simulation.** *System*: environment (configuration [events, profiles], state [observation vs. feedback], history [direct integration, refinement, summarization, memory mechanisms — citing MetaGPT's shared message pools], tools [Python/SQL/APIs]); role (participants: communicators vs. workers; directors: planners, coordinators, integrators); organization (mode: static [single/multi-stage] vs. dynamic; structure: layered, centralized, decentralized); communication (format: unstructured natural language vs. structured/code/JSON; style: cooperative vs. competitive). *Scenario classification*: dialog-driven (social interaction, QA/debate, games) vs. task-driven (foundational/applied science, software development, other industries — law, economics, education). *Evaluation*: task/sub-task/system level, each scored automatically, by LLM, or by humans.
- **Society Simulation.** *Construction elements*: composition (virtual synthesis vs. existing datasets vs. real-world distribution replication; precision-vs-scale tradeoff; special modeling of outliers/opinion leaders), network (offline: random/predefined or algorithm-estimated; online: random, authentic-crawled, or synthetic-supplemented), social influence (received, by profile/cognitive-bias modeling; exerted, via Pareto/Matthew-effect dynamics), outcomes (macro statistical results — static aggregation vs. multi-round dynamics; formation of social phenomena/norms — echo chambers, bubble effects, herd behavior). *Scenarios*: general economics (game theory/strategic interaction; economic contexts — EconAgent, SRAP-Agent), sociology/political science (public opinion survey — building on Argyle et al.'s "silicon samples"; individual/organizational behavior observation), online platforms (social platforms; recommendation environments). *Evaluation*: micro (individual-accuracy, Turing-test-style), macro (propagation/opinion-distribution alignment with real data), system (efficiency, token/cost accounting) level.
- **Datasets and Benchmarks** (§5): a shared cataloguing of description vs. dialogue datasets (Individual), QA/multiple-choice/rating/code/game-format datasets classified by difficulty and collection method (Scenario), and initialization-vs-evaluation dataset pairs sourced from surveys, MovieLens/Amazon-Book, and platform crawls (Society).
- **Trend analysis** (§6): each tier is traced through three historical stages — Individual: coarse simulation (since June 2022) → more nuanced simulation (since Aug 2023) → situation-oriented simulation (since May 2024); Scenario: simple scenario (since Jan 2023) → multi-stage scenario (since Jun 2023) → collaborative scenario (since Feb 2024); Society: constructing preliminary environments (pre-Jun 2023) → exploring alignment on specific scenarios (by Feb 2024) → scaling up and moving toward multi-modal (most recent).

## Experiment & Results

This is a survey; there is no original experiment. Its "result" is the taxonomy itself plus the synthesis of the field it organizes into three tiers each with a canonical four-part analytical grid. External validation of its value: 109 citations and 5 influential citations per Semantic Scholar (as of ingestion), and formal publication as an ACM Computing Surveys article (DOI 10.1145/3800683) — strong evidence the taxonomy has been adopted as a reference point by the field since the Dec 2024 preprint.

## Limitations

- **Frozen at a Dec 2024 preprint.** The wiki's own [[multi-agent-social-simulation]] topic page tracks a 2025–2026 scaling wave (billion-agent ambitions, governance frameworks for agentic simulation) that necessarily postdates this source text; the published ACM CSUR version (same DOI) may have been revised to include it, but this ingestion used the arXiv v1 TeX source, not the journal version.
- **Abstract discrepancy noted between versions**: the Semantic Scholar abstract (drawn from the published/updated record) ends "...we discuss the risks and challenges across these three types of simulation," while this v1 PDF/TeX source's abstract and conclusion instead say "we discuss the trends across these three types of simulation" — the risks/challenges material, if present in the published version, is not in the ingested text.
- **Tier boundaries are fuzzy by the authors' own admission** — society simulation could theoretically encompass scenario simulation as a special case, and no clear operational test separates "small group with a goal" (scenario) from "small society" (society) beyond authorial judgment.
- **No engagement with simulation validity as a first-class problem.** The survey catalogues *how* people evaluate (subjective/objective, micro/macro/system) but does not itself assess whether any tier's simulations are valid proxies for the real phenomena they model — a gap the wiki's own [[llm-simulation-validity-guardrails]] concept treats as central.
- **Heavy CS/ML-venue bias.** Nearly all cited evaluation methods (BFI/MBTI scoring, ROUGE/BLEU, LLM-as-judge win-rates) are retrofitted from NLP-benchmark culture rather than engaging social science's own validity vocabulary (construct validity, external validity, ecological validity) on its own terms.

## Open questions

- Does the Individual→Scenario→Society progression hold as a genuine capability ladder, or are the three tiers better understood as different research goals that don't strictly nest?
- Can emergent macro-level patterns in Society simulations (echo chambers, herd effects, Matthew-effect concentration) be validated against real-world ground truth, or are they largely artifacts of the LLM's training-data prior?
- As agent populations scale toward billion-agent ambitions, does the survey's precision-vs-scale tradeoff (simplify individual modeling to afford larger N) undermine the algorithmic-fidelity property the whole enterprise depends on?
- Given the published-vs-preprint abstract discrepancy noted above, what specific risks/challenges did the final ACM CSUR version add, and do they materially change this taxonomy's framing?

## My take

This is the missing connective-tissue paper for the wiki's [[multi-agent-social-simulation]] topic, which currently organizes ~15 individual papers (Generative Agents, AgentSociety, restoring-heterogeneity, position-llm-social-simulations, etc.) by hand without a single reference taxonomy tying them together. This survey's individual→scenario→society ladder, and its four-part analytical grid (architecture/construction, objectives, evaluation, repeated per tier), is durable organizing scaffolding regardless of which specific systems it cites — it reads like the kind of paper that gets cited less for its content and more for its vocabulary (the field visibly needed a shared name for "scenario simulation" vs. "society simulation," and the 109-citation count in under two years suggests this supplied it).

What's dated: any specific SOTA claim (e.g. which system is largest-scale) given the pace the wiki's own topic timeline documents for 2025–2026. What's most durable: the underlying observation that individual fidelity, scenario collaboration, and society-scale emergence are three genuinely different research problems requiring different evaluation regimes — that framing should outlast any particular system named in the survey's tables.

Skeptical note: as with most surveys, its evaluation taxonomy is a map of what the field currently measures, not an argument that those measurements are the right ones. The wiki's own [[llm-simulation-validity-guardrails]] concept and the `multi-agent-social-simulation` topic's Research gaps section are arguably more useful for a reader trying to judge whether any given social simulation paper's claims should be believed — this survey tells you *what kind* of claim is being made, not whether to trust it.

## Related

- [[multi-agent-social-simulation]]
- [[society-construction-elements-framework]]
- [[llm-human-simulacra]]
- [[persona-conditioning-evaluation]]
- [[synthetic-survey-research]]
- [[algorithmic-fidelity]]
- [[silicon-sampling]]
- [[generative-agent-based-modeling]]
- [[llm-powered-agent-architecture]]
- [[llm-simulation-validity-guardrails]]
- [[generative-agents-interactive-simulacra-human-behavior]]
- [[agentsociety-large-scale-simulation-llm-driven]]
- [[restoring-heterogeneity-llm-based-social-simulation]]
- same_problem_as: [[position-llm-social-simulations-promising-research]]
- same_problem_as: [[social-simulations-agent-based-modeling-digital]]
