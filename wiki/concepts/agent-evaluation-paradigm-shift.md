---
title: "Agent Evaluation Paradigm Shift"
aliases: ["How What Who agent evaluation framework", "agentic evaluation paradigm", "evaluator ecosystem (agents)"]
tags: [ai-evaluation, agentic-ai, benchmark-validity, evaluation-methodology, evaluator-ecosystem]
maturity: emerging
definition: "The claim that evaluating AI agents requires a structural break from outcome-focused single-prompt model evaluation along three dimensions simultaneously: evaluation methodology ('How' — validity, statistical rigor, causal attribution, contamination, LLM judges), evaluation scope ('What' — human-agent interaction, economic impact, dangerous capabilities, systemic/interaction harms), and the evaluator ecosystem itself ('Who' — independence, funding, lab direction, rising costs), because agents can reach identical outcomes via disparate trajectories and act within real-world environments beyond the lab."
key_papers: [emerging-trends-ai-agent-evaluation]
first_introduced: "2026"
date_updated: "2026-11-02"
related_concepts: [sociotechnical-ai-evaluation, economically-valuable-task-benchmark]
---

## Definition

Classical AI model evaluation compares a single response against a reference answer. The **agent evaluation paradigm shift** names the claim that this template structurally fails for AI agents, because (1) agents can reach the same final outcome via many different, possibly undesirable trajectories, so outcome-only grading under-determines whether the agent behaved well; (2) agents are deployed into real software and real-world environments beyond a sandboxed lab, expanding the legitimate scope of what "evaluation" must cover (economic impact, human interaction, dangerous capability, systemic harm); and (3) the people and institutions doing the evaluating — their scaffold, tool-access, budget, and human-intervention choices — now materially shape results in a way that undermines the old assumption of benchmarks as evaluator-agnostic.

## Intuition

A benchmark score for a single-turn model answer is largely a property of the model. A benchmark score for an agent is a property of the *model + scaffold + tools + environment + evaluator choices* bundle — so the same underlying model can score very differently depending on who ran the evaluation and how, and two agents that reach the same pass/fail outcome may have gotten there through meaningfully different, differently trustworthy processes. Evaluation science built for the first case does not transfer cleanly to the second.

## Variants

- **Methodological shift ("How")** — validity, statistical rigor over long stochastic trajectories, causal attribution across model/scaffold/environment, contamination beyond training data, dynamic benchmarks, LLM judges/monitors, log analysis, evaluation infrastructure, red-teaming, open-world evaluation, and human-baseline interpretation.
- **Scope shift ("What")** — human-agent interaction across simulated/lab/field/observational settings, domain-specific evaluation, economic impact (automation vs. augmentation), agent behavior under evaluation (reward hacking, evaluation awareness), dangerous capabilities, agent/evaluation security, interaction harms, and systemic evaluation.
- **Ecosystem shift ("Who")** — evaluator independence, lab direction of evaluation work (and vice versa), funding structures, rising evaluation costs, publication venues, public-sector response, and disciplinary entry points into the field.

## Comparison

Distinct from [[sociotechnical-ai-evaluation]], which argues model/assistant evaluation should extend beyond narrow benchmarks to sociotechnical context; this concept is agent-specific and additionally names the evaluator ecosystem itself (the "Who" dimension) as a first-class methodological concern, not just the evaluation's scope.

## Known limitations

As a synthesizing framework drawn from a survey paper, it is a taxonomy and research agenda rather than a tested methodology; individual trends within it vary widely in how mature or validated their proposed best practices are.

## Open problems

Each of the three dimensions carries its own open research agenda (see [[emerging-trends-ai-agent-evaluation]]); the paper flags the "Who" dimension — evaluator independence, funding, and rising costs — as comparatively underexplored relative to "How" and "What" in prior agent-evaluation literature.

## Realized by

[[open-world-evaluations]] and [[shadow-evaluation]] are existing concrete methods that instantiate specific "How"-dimension trends within this framework (open-world evaluation, contamination-resistant grading).

## My understanding

The most useful move here is naming the "Who" dimension as co-equal with "How" and "What" — most of this wiki's existing agent-evaluation material addresses methodology and scope, but who ran an evaluation (lab-internal vs. independent, well-funded vs. resource-constrained) is itself a validity-relevant variable that is easy to overlook when reading a single capability claim in isolation.
