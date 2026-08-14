---
name: "Shadow Evaluation"
slug: shadow-evaluation
type: evaluation
tags: [ai-evaluation, ai-rnd-automation, agent-evaluation, open-world-evaluation, expert-grading, contamination-free]
source_papers: [ai-agents-conduct-open-ended-ai]
parent_methods: [open-world-evaluations]
child_methods: []
realizes_concepts: []
code_repo: "https://cruxevals.com"
date_updated: 2026-08-04
---

## Problem setting

Measuring whether AI agents can conduct *open-ended* research. The two established families each fail on a different axis:

- **Verifier-scored benchmarks** (CORE-Bench, MLE-Bench, RE-Bench, PostTrainBench) require a fixed, narrow metric an automatic verifier can score. That definitionally excludes the open-ended parts of research — hypothesis selection, deciding what evidence would settle a question, recognizing a dead end.
- **Blind peer review** of AI-generated papers admits open-endedness but inherits reviewing's pathologies: stochastic verdicts, overstretched reviewers, no visibility into how many submissions were rejected before an acceptance, and only a few hours of scrutiny from someone with no stake in the question.

Shadow evaluation targets the gap: an open-ended task graded in depth by someone who already knows what a good answer looks like.

## Mechanism

Take the **central research question of a high-quality paper that is not yet public**. Hand it to a well-resourced frontier agent that has no access to the paper or its findings. Have the paper's **original authors** grade the agent's output as they would a conference submission.

The agent "shadows" the original study: same question, same period, independent path. Three properties follow from this single design choice:

- **Open-endedness** — the task is a real conference-level research question, not a metric to hill-climb.
- **Uncontamination** — the answer is neither on the web nor in training data, because the paper is unpublished.
- **Expert grading** — the graders spent months on this exact question and can judge whether real progress was made, which a blind reviewer generally cannot.

It also mirrors the mechanism behind recursive-self-improvement forecasts: a researcher delegates a whole project to an agent and judges whether the return advances their work.

## Procedure

1. **Recruit** authors of an unpublished, high-quality submission (Kirgis et al. used two NeurIPS 2026 submissions) willing to pose the question and grade the output.
2. **Elicit the research question** from the authors without hints toward promising paths, and have them set resource budgets sufficient to address it substantively.
3. **Resource the agent** generously enough that failure cannot be blamed on scarcity — Kirgis et al. gave 120h wall-clock (+24h extension), $3,000 API credits, GPU credits, a Linux VM, open web, subagent delegation, and real-time visibility into its own spend and remaining time.
4. **Provide review channels** the agent can consult: a self-review subagent seeing only the finished PDF plus the venue's review template, and external AI reviewing tools.
5. **Keep the scaffold task-agnostic.** Modify it only where the change applies to the research domain generally, and log every human intervention.
6. **Elicit priors** from collaborators before results are shared, to distinguish anticipated from surprising findings.
7. **Grade** using the venue's official rubric and scale, with per-criterion scores and qualitative comments.
8. **Run a robustness check** with a different model and its native scaffold to separate model/scaffold artifacts from capability limits.
9. **Analyze the full trajectory**, not just the artifact — resource curves, backtracking behavior, response to review, instruction compliance.
10. **Release** expert reviews, survey responses, agent repositories and run logs.

## Assumptions

- Suitable unpublished papers exist and their authors will donate days of grading time.
- The original authors' months of work make them better judges than blind reviewers — and that this advantage outweighs the bias introduced by non-blindness.
- The venue's review rubric is a meaningful proxy for "research worth publishing".
- Generous resourcing means an observed failure reflects capability, not budget.
- The agent's answer path can differ from the authors' without being penalized for that alone.

## Limitations

- **Tiny sample.** In-depth expert grading caps throughput at a handful of papers; Kirgis et al. report five runs total across two questions.
- **Non-blind reviewing.** Reviewers know the output is AI-generated and have already committed to their own approach.
- **Researcher degrees of freedom** at every step — paper selection, scaffold design, log interpretation.
- **Evaluation awareness.** The agent is told it is being graded against the rubric; concealment is increasingly infeasible against capable models, and disclosure is the price of avoiding under-elicitation.
- **No objective ground truth.** Unlike a verifier score, the outcome is a human judgment that other experts may contest.
- **Generalization is unestablished** — from two open-ended questions to "AI research" broadly, and from open-ended research to whatever fraction of frontier AI development actually is open-ended.

## Tradeoff profile

Trades statistical power for construct validity. A verifier-scored benchmark gives dozens of comparable data points measuring something narrower than research; shadow evaluation gives two or three data points measuring the thing you actually care about. It is best used as a *complement* to verifiable evaluations and blind review rather than a replacement — the three methods are expected to yield systematically different pictures of the rate of progress, and disagreement between them is informative.

Cost is high and mostly human: expert recruitment, days of grading, thousands of dollars of compute per run. Repeatability is good in principle (each new unpublished paper is a fresh uncontaminated test case, and the design carries over to new models) but bounded in practice by the supply of willing expert authors.

## Evaluated by

- [[ai-agents-conduct-open-ended-ai]] — the introducing paper; two shadow evaluations on unpublished NeurIPS 2026 submissions, both graded as unambiguous rejections, plus a Codex/GPT-5.6 Sol robustness run reproducing the failure modes.
