---
title: "Prompting Science Report 2: The Decreasing Value of Chain of Thought in Prompting"
slug: prompting-science-report-decreasing-value-chain
arxiv: "2506.07142"
venue: "SSRN / Wharton Generative AI Labs Technical Report (also on arXiv)"
year: 2025
tags: [chain-of-thought, prompting, llm-evaluation, reasoning-models, empirical-report, gpqa]
importance: 3
date_added: 2026-07-16
source_type: pdf
s2_id: ""
tldr: "Testing GPQA Diamond across five non-reasoning and three reasoning models with 25 trials per question, finds Chain-of-Thought prompting gives small, inconsistent average-accuracy gains for non-reasoning models (often at the cost of more variable, occasionally worse, performance on easy questions) and only marginal gains for reasoning models, at substantially higher token cost and latency in both cases."
contribution_type: [empirical]
datasets: [GPQA Diamond]
code_url: ""
cited_by: []
---

## Problem & Context

Chain-of-Thought (CoT) prompting — instructing an LLM to "think step by step" before answering — is a widely adopted, largely unquestioned default for improving reasoning-task accuracy. The second in the Wharton Generative AI Labs' "Prompting Science" report series asks whether this default still holds given two developments since CoT was introduced (Wei et al. 2022): (1) many current non-reasoning models already produce some step-by-step reasoning unprompted, and (2) dedicated reasoning models (o3-mini, o4-mini, Gemini Flash 2.5) now perform explicit internal reasoning by construction, making an externally imposed CoT instruction potentially redundant.

## Key idea

Explicit CoT prompting's value is not universal but strongly conditional on model type: for non-reasoning models it produces a small, inconsistent average-accuracy improvement that comes with a documented cost — more variable answers, including new errors on questions the model would otherwise get right — and it becomes redundant once a model already reasons by default. For dedicated reasoning models, explicit CoT prompting on top of the model's built-in reasoning yields only marginal accuracy gains while substantially increasing tokens, latency, and cost, making its practical value "questionable for most practical purposes."

## Method

Using the GPQA Diamond benchmark (198 graduate-level, "Google-proof" multiple-choice questions across biology, physics, chemistry; PhD accuracy ≈65-74%, skilled non-expert web-search accuracy ≈34%), the authors ran three prompt conditions — "Direct" (explicitly instructed to skip reasoning), "Step by step" (explicit CoT instruction), and "Default" (no instruction, natural model behavior) — at temperature 0, with each question tested 25 times per condition per model (4,950 runs per prompt-model pair; validated against 100-trial runs for precision). Five non-reasoning models (Claude Sonnet 3.5, Gemini 2.0 Flash, GPT-4o-mini, GPT-4o, Gemini Pro 1.5) and three reasoning models (o3-mini, o4-mini, Gemini Flash 2.5) were compared. Outcomes were scored on four metrics: average rating across all trials, and the fraction of questions meeting 100%, 90%, or 51% (majority) correct-trial thresholds — a design meant to distinguish "improves average performance" from "improves reliability on questions the model can already answer."

## Experiment & Results

**Non-reasoning models, Direct vs. Step-by-step**: CoT raised average accuracy for all five models (e.g., Gemini 2.0 Flash RD = 0.135, p < .001; Sonnet 3.5 RD = 0.117, p < .001; GPT-4o-mini smallest and non-significant, RD = 0.044, p = .067) but the effect on the strict 100%-correct metric was frequently *negative* — Gemini 2.0 Flash (RD = −0.131, p < .001) and Gemini Pro 1.5 (RD = −0.172, p < .001) both got significantly *worse* at reliably answering questions they could otherwise nail every time, while only Sonnet 3.5 improved (RD = 0.101, p = .001). **Non-reasoning models, Default vs. Step-by-step**: once models' own unprompted default behavior (which often already includes some reasoning) is the baseline, the gain from an explicit CoT instruction shrinks further — significant only for Gemini 2.0 Flash (RD = 0.062, p < .001) and GPT-4o (RD = 0.069, p = .003), null for Sonnet 3.5 and GPT-4o-mini. CoT requests took 35-600% (5-15 seconds) longer than direct requests. **Reasoning models**: explicit CoT on top of built-in reasoning yielded only marginal average gains for o3-mini (RD = 0.029, p = .024) and o4-mini (RD = 0.031, p = .003), and a small significant *decrease* for Gemini Flash 2.5 (RD = −0.033, p = .005); threshold metrics showed almost no significant effects. CoT requests took 20-80% (10-20 seconds) longer.

## Limitations

- Single benchmark (GPQA Diamond) and a limited, dated model set (Claude 3.5/o3-o4-family/Gemini-2.0-2.5 era) — results may not generalize to other task types or newer model generations.
- Only a simple "think step by step" CoT variant was systematically tested at scale; a supplementary comparison of four CoT phrasings on GPT-4o (Figure S3) found negligible differences between variants, but this was not replicated across the full model set, so highly customized, task-specific CoT prompts could plausibly yield larger benefits than the generic version tested here.
- The 25-trials-per-question design was validated for statistical power against 100-trial runs (Table S2), but power for detecting smaller effects than those observed is inherently limited by a 198-question benchmark.
- No mechanistic explanation is offered for *why* CoT increases variance (introducing errors on easy questions) for some non-reasoning models but not others.

## Open questions

- Does the value of explicit CoT prompting continue to decrease as more non-reasoning models adopt some form of default step-by-step behavior, and does that trend hold outside GPQA-style multiple-choice tasks (e.g., open-ended generation, agentic tool-use tasks)?
- Under what conditions does CoT's increased answer variability meaningfully harm downstream applications where "getting easy cases wrong occasionally" is more costly than a small average-accuracy gain?
- Could highly customized, task-specific CoT strategies recover a larger and more reliable benefit than the generic "think step by step" instruction tested here, and if so, how would practitioners identify which customization is needed for a given task?

## My take

A useful corrective to CoT-as-default folk wisdom, with a genuinely counter-intuitive finding: CoT can *reduce* reliability on easy questions even while raising the average, because it opens room for the model to second-guess correct instincts. The paper is explicit and admirably modest about scope (one benchmark, a handful of 2024-2025-era models), so its main practical contribution is a decision heuristic rather than a general law — check whether a model already reasons unprompted before assuming an explicit CoT instruction will help, and weigh the latency/token cost against a genuinely small and inconsistent expected accuracy gain, especially for models with built-in reasoning.

## Related

- [[ethan-mollick]]
