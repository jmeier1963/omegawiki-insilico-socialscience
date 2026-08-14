---
title: "Can AI agents conduct open-ended AI research? Early evidence from two case studies"
slug: ai-agents-conduct-open-ended-ai
arxiv: "2607.27191"
venue: "Preprint (arXiv) — CRUX"
year: 2026
tags: [ai-rnd-automation, agent-evaluation, research-automation, recursive-self-improvement, open-world-evaluation, ai-policy]
importance: 4
date_added: 2026-08-04
source_type: tex
s2_id: "63274010bca2e5b4246f4640e166bfa5ef15c61b"
tldr: "Two frontier agents given six days, $3,000 in API credits and GPU access to answer the central research question of an unpublished NeurIPS 2026 submission completed all the engineering unaided but were unambiguously rejected by the original authors, exposing five recurring failure modes in judgment, exploration and instruction-following."
contribution_type: [analysis, evaluation, position]
datasets: []
code_url: "https://cruxevals.com"
cited_by: []
---

## Problem & Context

Forecasts of explosive AI progress — and the explicit premise of leading AI labs (Anthropic's "When AI Builds Itself", June 2026; OpenAI's claim in July 2026 that GPT-5.6 Sol saved researchers weeks of post-training work) — hinge on AI agents automating AI research itself. Yet the evidence base is thin, and it is thin in a structured way. Existing evaluation splits into two families, each blind to what matters:

- **Verifiable-task benchmarks** (CORE-Bench, MLE-Bench, RE-Bench, MLR-Bench, PostTrainBench) and autonomous-improvement demonstrations (AlphaEvolve, Darwin Gödel Machine, Karpathy's autoresearch) ask agents to hill-climb a fixed, narrow metric scored by an automatic verifier. Agents have beaten expert humans on several such tasks. But hill-climbing excludes exactly the open-ended work — choosing candidate hypotheses, deciding what evidence would settle a question, recognizing that an approach has failed and starting over.
- **Blind peer-review submissions** of AI-generated papers do capture open-endedness, but conference reviewing is overstretched and highly stochastic, does not reveal how many submissions were rejected before an eventual acceptance, and gives each paper only a few hours of scrutiny from a reviewer with no stake in the question.

The field therefore lacks a way to measure whether agents can do the *open-ended* part of AI research against a standard that is both demanding and uncontaminated.

## Key idea

**Shadow evaluation**: take the central research question of a high-quality paper that is *not yet public*, hand it to a well-resourced frontier agent with no access to the paper or its findings, and have the paper's original authors grade the agent's output as they would a conference submission. The agent "shadows" the original study.

This design simultaneously buys three properties no prior method delivers together: the task is genuinely open-ended (it is a real conference-level research question, not a metric); it is uncontaminated (the answer is neither on the web nor in training data); and the graders spent months on the same question, so they can judge in detail whether the agent made real progress. It is also repeatable — new unpublished papers with willing authors become new test cases, and the design carries over to stronger models and scaffolds.

Crucially, the design mirrors the mechanism that underwrites recursive-self-improvement forecasts: researchers delegate an entire project to an agent and judge whether the returned result advances their work.

## Method

Two shadow evaluations on unpublished NeurIPS 2026 submissions:

- **Personas paper** (UK AI Security Institute) — the structure and controllability of LLM personas. Since made public (Baines et al. 2026).
- **TabPFN paper** (University of Toronto) — designing a distribution-shift detector for tabular foundation models.

Original authors were involved at exactly three stages: formulating the research question without hinting at promising paths, helping set resource budgets sufficient to address it substantively, and grading the finished paper as a top-tier conference reviewer.

**Agent setup.** Claude Opus 4.8 with extra-high reasoning on **OpenClaw** (chosen to be provider-agnostic after dry runs with OpenAI and Anthropic models). Each agent received:

- 120 hours wall-clock (later extended by 24 hours), $3,000 in Anthropic API credits, GPU credits, full access to a Linux VM on AWS and the open web
- real-time visibility into its own API spend, compute budget and remaining time
- subagent delegation and a running research log
- a review subagent seeing only the finished PDF plus a NeurIPS review template, instructed to referee it
- three *external* AI reviewers: the Stanford Agentic Reviewer, the CMU Paper Reviewer, and refine.ink

No guidance was question-specific; scaffold modifications were only made when applicable to ML research generally, and every human intervention was documented (three occurred: an OpenClaw bug fix for Anthropic reasoning models, the 24-hour extension, and a request to rewrite inscrutable prose).

**Robustness check.** One paper was repeated with GPT-5.6 Sol on Codex, its native scaffold, under identical time and API budgets.

**Prior elicitation.** Twelve CRUX collaborators were surveyed before any results were shared, to record priors and test whether the findings were anticipated.

## Experiment & Results

**Both papers were unambiguous rejections.** On the 1–6 NeurIPS scale, the Personas paper scored **2 (Reject)** and the TabPFN paper **1 (Strong Reject)**, with reviewer confidence 4/5 and 5/5. Component scores (out of 4): Quality 2 and 1; Clarity 1 and 2; Significance 2 and 2; Originality 3 and 2. Survey respondents had assigned a median 30% probability of weak-accept-or-better.

Reviewer verdicts were blunt. David Africa: "The experiments and methodological choices were bizarre, and hard to understand. The results seem clearly a result of post hoc choices." Viet Nguyen on the reasoning: "going from there to 'there are no signals we can use that leverage a model's internals' is a huge leap, a kind of 'proof by example' fallacy that is highly non-scientific."

**The engineering was not the problem.** Both authors were impressed by the literature review and by the agents' ability to use hundreds of GPU hours of real experiments without issue. Candidate hypotheses closely mirrored the authors' own initial approaches. The agents produced minor findings the reviewers flagged as genuinely relevant — in the Personas run, a counterintuitive negative result that narrow finetuning on misaligned *style* alone did not produce broad misgeneralisation.

**Five recurring failure modes:**

1. **Poor judgment about the publishable bar.** Agents falsified their own hypotheses using small, hand-curated or synthetic datasets, engaged only shallowly with the literature, and presented underpowered negative results as substantive findings.
2. **Poor resource awareness.** Both runs ended with **less than 50% of the API budget spent** ($1,130 of $3,000 and $1,235 of $3,000) despite real-time usage visibility and explicit encouragement to spend. The Personas agent budgeted 42 hours of exploration and coalesced on a method after **5**; the TabPFN agent committed to its headline finding 40 hours early.
3. **Uncreative response to feedback.** Across ~15 rounds of revision the self-review *never once* returned an acceptance. Agents responded to fundamental soundness critiques by narrowing claims and adding caveats until the paper could be called "honest," rather than rethinking the premise. They also mishandled reviewer disagreement, overweighting the most lenient tool (the Stanford Agentic Reviewer, which recommended acceptance on early drafts) and citing it in final reports while the harsher reviews flagged "results hinge on n=1 cells."
4. **Ineffective backtracking.** Both agents explored multiple directions initially and backtracked locally, but retired their most ambitious targets within the first ten hours and never fundamentally shifted approach afterward. Because the agent always started with its most ambitious hypothesis, premature rejection reliably left it on the weakest one.
5. **Instruction drift.** Explicit rules on exploration time, review cadence, and paper length were all violated; both final papers failed the technical submission requirements of an AI conference.

**Robustness.** The Codex / GPT-5.6 Sol Ultra run reproduced nearly every failure mode, arguing against a pure scaffold artifact.

**A generator-verifier signal.** The AI reviews reliably rejected the drafts and surfaced most of the issues human experts later raised — the failure was *prioritization*, with damning issues (hand-curated data) presented alongside minor ones at equal weight. Since both papers were rejects, the verifier's discriminative accuracy cannot be established from this data.

## Limitations

- **Sample size of two** (five runs total: two pilots without reasoning, two main runs, one robustness check). Failure modes were consistent, but this is orders of magnitude smaller than benchmark evaluations.
- **Non-blind reviewing.** Reviewers had authored their own answers to the same questions and knew the papers were AI-written; either could bias grading.
- **Question selection and researcher degrees of freedom.** Two papers chosen to represent top-conference empirical research; findings may not generalize to incremental research requiring less creativity. The authors also note they do not know how much of frontier AI development actually depends on open-ended research versus hill-climbing.
- **Scaffold and model ceiling.** Many coauthors thought a better scaffold or model might change results; follow-ups with GPT-5.6 Sol, Opus 5 and Fable 5 are planned.
- **Evaluation awareness.** The agent was explicitly told it was being graded against a NeurIPS rubric.
- **Interpretive ambiguity.** The coauthors themselves disagree on whether the failures reflect lack of creativity, poor judgment, or epistemic lock-in — reflecting an absent consensus on what those constructs mean.

## Open questions

- Does the failure survive stronger models and more optimized scaffolds, or is it a 2026 capability snapshot? (The authors' own planned follow-ups are the direct test.)
- What fraction of frontier AI R&D is genuinely open-ended versus hill-climbing on well-specified objectives? Without this, the result's implication for AI-R&D-automation timelines is undetermined.
- Can an AI verifier be shown to *discriminate* research quality rather than uniformly reject? If so, RL against it could close the generator-verifier gap quickly.
- Is poor resource awareness a training artifact (agents never trained under real budget pressure) or something deeper about lacking a felt sense of stakes?
- Can shadow evaluation scale? It requires unpublished papers, willing expert authors, and days of grading per data point.

## My take

The most useful thing here is the method, not the verdict. Rejection of two agent-written papers in mid-2026 is a snapshot that will date fast; **shadow evaluation** as a design — uncontaminated, open-ended, expert-graded, repeatable — is durable and directly plugs the hole between verifier-scored benchmarks and blind peer review.

The resource-underspend finding is the most striking and least anticipated result: agents left over half the budget unused while shipping papers they themselves graded below their own bar. That is not a capability ceiling, it is a failure of self-modelling under constraint, and it is the kind of thing that could plausibly be fixed with training rather than scale. Whether it *is* fixed is what determines how much weight this paper should carry against the [[software-intelligence-explosion]] thesis — which it counters empirically for now, but on n=2.

Read alongside [[open-world-evaluations-measuring-frontier-ai]] (same authorship lineage, and cited here as the source of the method's acknowledged limitations) and [[act-real-researcher-benchmark-llm-research]], which reaches a compatible conclusion from the opposite direction: research automation is bottlenecked on judgment, not on raw execution capability.

## Related

- [[shadow-evaluation]]
- [[research-taste-bottleneck]]
- [[automated-research-pipeline]]
- [[software-intelligence-explosion]]
- [[researcher-quality-evaluation]]
- builds_on: [[open-world-evaluations-measuring-frontier-ai]]
- same_problem_as: [[act-real-researcher-benchmark-llm-research]]
- [[sayash-kapoor]]
- [[arvind-narayanan]]
- challenges (reverse): [[ten-advances-mathematics-theoretical-computer-science]]
- part_of: [[ai-driven-scientific-discovery]]
