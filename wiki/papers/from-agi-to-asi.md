---
title: "From AGI to ASI"
slug: from-agi-to-asi
arxiv: "2606.12683"
venue: "arXiv preprint"
year: 2026
tags: [agi, asi, superintelligence, universal-ai, aixi, recursive-self-improvement, multi-agent, ai-forecasting, scaling-laws, intelligence-explosion]
importance: 4
date_added: 2026-06-26
source_type: pdf
s2_id: "b84c0c27870006034859a109c69001f70de26d2c"
tldr: "A Google DeepMind report that uses the Legg-Hutter / Universal AI framework to formally ground a continuum of machine intelligence, then maps four largely parallel technological pathways from human-level AGI to artificial superintelligence (scaling, paradigm shifts, recursive self-improvement, multi-agent group agency) together with the frictions that could slow each and the open research questions they raise."
contribution_type: [position, analysis]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

Over the last decade, building human-level artificial general intelligence (AGI) has shifted from far-fetched speculation to a concrete next-decade target pursued by the largest AI organisations. Most discussion of the resulting societal impact treats AGI as a single transformative step-change. This report (a 14-author Google DeepMind position/analysis paper) instead asks what happens *after* AGI: how AI itself might continue to develop along the continuum of machine intelligence, i.e. the transition from human-level AGI to artificial *general* superintelligence (ASI).

Where the field stood before: forecasting work extrapolates compute-scaling and algorithmic-efficiency trends (Epoch AI's ~10× per year in effective compute; Aschenbrenner 2024; Kokotajlo et al. 2025), and a large safety-and-futures literature debates fast take-off / intelligence-explosion scenarios (Bostrom 2014; Good 1965; Kurzweil; Davidson et al. 2026). Yet there was no shared, paradigm-agnostic frame for *characterizing* ASI as distinct from AGI, nor a structured map of the concrete technological pathways and bottlenecks separating the two. The report positions itself between two poles: AGI as "normal technology" with adaptable-rate impacts ([[narayanan-kapoor-ai-normal-technology]]) versus an explosive single step-change; its thesis is that a *series* of transformative changes across science and technology is the more apt prospect.

## Key idea

Use the **Legg-Hutter intelligence score** (average performance of an agent across all computable tasks, defined formally via the AIXI agent and the Universal AI framework) as a *continuum* on which AGI and ASI are coarse regions rather than sharp thresholds. AGI is shorthand for roughly median human-level general intelligence; ASI is a system that far surpasses the performance of large human-expert *collectives* on virtually all tasks. Universal AI (UAI/AIXI) is the incomputable endpoint of this continuum — the theoretical upper bound that more powerful ASIs approximate from below.

Within this frame the report's central contribution is a structured landscape: **four largely independent, plausibly parallel technological pathways** from AGI to ASI, a **catalogue of six frictions/bottlenecks** that could slow or halt each pathway, and the **open research questions** that follow from being unable, today, to determine whether each friction is a hard blocker or a mere slowdown. The unifying argument: because of compounding uncertainty under exponential/hyperbolic dynamics, continued acceleration past AGI cannot be ruled out, so preparing for a high-velocity post-AGI trajectory is a massively interdisciplinary, global imperative.

## Method

Conceptual / position report. It (1) characterizes ASI qualitatively and grounds it formally in the Legg-Hutter / AIXI Universal AI framework (Section 3-4), enumerating advantages of digital intelligence that *scale with compute* (copyability, speed, parallelism, timescale flexibility) and fundamental limits (incomputability of UAI, Landauer/thermodynamic bounds, choice of universal Turing machine, the abstraction barrier); (2) lays out four pathways with their main uncertainties (Table 3); (3) catalogues bottlenecks with the factors that might counteract each (Table 4); and (4) compiles a thematic research agenda (Section 7.1).

The **four pathways** (Table 3):
1. **Scaling compute, models & data** — continue empirically observed scaling laws; main uncertainty is whether quantitative scale translates into qualitatively new capabilities and broad generalization, vs. diminishing returns.
2. **Algorithmic paradigm shift** — evolution of, or sharp departure from, the current "large transformer + log-loss pretraining + RL tuning + test-time scaling" paradigm (e.g. unbounded context/recurrence, continual learning, world models, linear-time architectures like Mamba/S4, neuromorphic/analog compute); inherently hard to predict.
3. **Recursive (self-) improvement** — AI speeding up AI R&D in a feedback loop, mapped onto four evolutionary mechanisms: *genotypic RSI* (writing better code/blueprints), *memetic RSI* (cultural/data self-improvement, e.g. AlphaZero-style distillation, synthetic data), *cooperative/sociogenic RSI* (division of labour and specialization), all potentially super-exponential (hyperbolic).
4. **ASI via group-agent formation** — superintelligence as an emergent collective property of orchestrated or self-organizing multi-agent collectives ("Group Agents", virtual agent economies, "Multi-Agent Scaling Laws"), centralized or market-coordinated.

The **six bottlenecks** (Table 4): the *data wall*; *economic & natural-resource demand growing too fast*; *neural paradigm being insufficient*; *research getting harder* (incl. the embodied/physical-experimentation bottleneck); the *abstraction barrier* (models trained on human abstractions may fail to form new ones from raw data); and *deliberate slowdown* (regulation, backlash, accidents). For each, the report names countervailing factors and frames the net impact as an open question.

## Experiment & Results

No experiments (analysis report). The substantive "results" are the framework and the structured claims:

- **Compute trend grounding.** Effective compute has grown ~**10×/year** (≈ Moore's law 1.5× × hardware investment 2.5× × algorithmic efficiency ~3×, conservatively rounded down from 11.25×). The report flags this as on the *low* end of public estimates. Naive scaling (running more instances of the same system) doesn't raise an individual model's intelligence but could run organisations of digital workers that are collectively far more capable.
- **Scaling-as-search argument.** Following Sutton's "bitter lesson", more compute = more search = more intelligence — but naive brute force fails outside toy domains; gains come from search-efficiency (priors, heuristics, surrogate value estimators), so the compute↔intelligence relationship is non-trivial.
- **Quantified illustration of instance-scaling.** If AGI is initially expensive and only 1000 instances run, at 10×/year that is 10,000 after one year and 100 million after five — "would this form of scaling give us ASI?" is posed as open.
- **Concrete RSI exemplars.** FunSearch (Romera-Paredes et al. 2024) and AlphaEvolve ([[novikov-alphaevolve]]) are cited as existing demonstrations of LLM-guided program search discovering novel constructions beyond the training distribution; "AI Scientist" systems are cited as early autonomous-discovery evidence.
- **Bounding ASI.** Even far beyond AGI, ASI is not omnipotent: it will not "cure" ageing, reshape matter with nanobots, or upload brains as guaranteed consequences; the abstraction barrier and embodied/physical-experiment latencies are genuine limits.
- **Bottom line.** It is *implausible* AI progress stalls exactly at human level; the authors (low confidence) judge it more likely that progress either plateaus *before* AGI or proceeds from AGI to (weak) ASI relatively smoothly — unless recursive self-improvement triggers an intelligence explosion, which cannot be ruled out and would make the AGI→ASI transition rapid.

## Limitations

- Position/analysis report: no empirical validation; the pathway and friction lists are explicitly "non-exhaustive" and "likely incomplete".
- The Legg-Hutter grounding is acknowledged as *not literal* — AIXI is incomputable, "all computable tasks" may be the wrong target, and the universal-Turing-machine choice can matter beyond a theoretical nuisance.
- AI Safety and Alignment are *assumed solved to a sufficient degree* as a working scoping assumption — the authors flag this is "by no means a given".
- Societal, economic, political, and sociocultural impacts of post-AGI AI are largely out of scope (deferred to economics work such as Agrawal et al. 2025 and Hutter 2026 on post-labor prosperity).
- Forecasts rest on compounding, hard-to-estimate factors; under exponential/hyperbolic dynamics uncertainty bands "rapidly explode", limiting the decision-usefulness of point predictions.

## Open questions

Drawn from the report's Section 7.1 research agenda:

- **Bottlenecks & frictions:** Can data acquisition/generation be pushed enough to beat the data wall, or does self-generated data fuel "self-delusions"? When does more compute yield more intelligence (some problem classes vs. generally)? How much does AI research get *harder*, and how much AI-acceleration counteracts it? Is the current human-data pretraining paradigm fundamentally bounded by human conceptual frameworks (abstraction barrier)?
- **Quantitative forecasting:** Identify and estimate macro-quantities (cost/FLOP, compute efficiency, sectoral AI productivity); build coupled, ensembled models; locate inflection points / threshold quantities distinguishing scenarios; establish protocols to continuously update estimates and uncertainty bands.
- **Benchmarking ASI:** Design benchmarks for *general* capability that don't saturate at human-expert level or need humans in the loop (multi-agent/zero-sum, setter-solver, general compression, indirect economic measures); distinguish true qualitative leaps from metric-saturation artefacts.
- **Recursive-improvement dynamics:** Measure each RSI mechanism's current rate and scaling law; how far can test-time search alone push a fixed model; theory of recursive distillation (base-model size vs. test-time search, verifier quality); track AI-Scientist research productivity.
- **Multi-agent scaling:** Develop "multi-agent scaling laws" (does group intelligence scale super-/sub-linearly with instances?); for which task classes do collectives beat any single agent; group alignment / epistemic resilience in asymmetric (mixed human-ASI) collectives.
- **Theoretical foundations:** Extend AIXI for analyzing practical ASI; characterize where good approximations are possible; is capability "jaggedness" fundamental or an artefact of comparing to humans; frameworks for myopic/non-agentic advanced AI.
- **Safety / sociocultural:** Are superhuman AIs easier or harder to align? How can deliberate slowdown be implemented (taxation vs. prohibition)? How must epistemic norms adapt to overwhelming volumes of automated scientific output?

## My take

The lasting value here is the *framing*, not new evidence: anchoring AGI and ASI on the Legg-Hutter continuum gives the field a paradigm-agnostic vocabulary, and the four-pathways × six-frictions matrix is a genuinely useful scaffold for organizing forecasting and benchmarking research. The senior, multi-disciplinary DeepMind byline (Legg, Hutter, Leibo, Gabriel, Dafoe, Graepel, among others) makes it a likely reference point for post-AGI discourse despite being a position paper. Its conservatism is a feature — it foregrounds *uncertainty* and converts hand-wavy "singularity" debates into concrete, measurable open questions (multi-agent scaling laws, recursive-distillation theory, ASI benchmarking). The main weakness for in-silico social science is the deliberate bracketing of societal/economic impact and the assumption that alignment is solved; the most fertile connections are to recursive-self-improvement modeling and multi-agent collective-intelligence work in this wiki.

## Related

- [[agi-asi-transition]]
- [[universal-ai-intelligence-measure]]
- [[multi-agent-scaling-laws]]
- [[software-intelligence-explosion]]
- [[narayanan-kapoor-ai-normal-technology]]
- [[novikov-alphaevolve]]
- [[jumper-alphafold-protein-structure]]
- [[international-ai-safety-report-2026]]
- [[will-ai-automation-cause-software-intelligence]]
- [[shane-legg]]
- [[marcus-hutter]]
- [[joel-leibo]]
