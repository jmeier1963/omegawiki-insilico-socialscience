---
name: "Accepted-Paper Baseline Benchmarking"
slug: accepted-paper-baseline-benchmarking
type: evaluation
tags: [ai-evaluation, ai-rnd-automation, agent-evaluation, automated-research-pipeline, benchmark-design]
source_papers: [scientisttwo-pioneering-human-knowledge-frontier-autonomous]
parent_methods: []
child_methods: []
realizes_concepts: [automated-research-pipeline]
code_repo: ""
date_updated: "2026-09-22"
---

## Problem setting

Measuring whether an autonomous research agent can genuinely advance a research problem, with a concrete, checkable ground truth and a large enough sample size to support statistics — something neither purely synthetic benchmarks (which risk not resembling real research) nor small-sample expert-graded evaluations (which are accurate but expensive and cannot scale past a handful of cases) provide on their own.

## Mechanism

Take the central research problem of an already-published, peer-reviewed paper from a top venue (ICLR/ICML/NeurIPS in the founding instance) as the task specification, and take that paper's own reported result as the state-of-the-art baseline the agent must independently match or beat. Because the problem is drawn from an accepted paper, the setup — dataset, metric, baseline — is already well-posed and does not need to be separately validated, and because the "correct" or at least "good enough" answer is known to exist and be reachable, a large panel of such problems (107 in the founding instance) can be assembled cheaply, giving statistical power that small hand-curated expert evaluations cannot.

## Procedure

1. **Select accepted papers** from target venues whose contribution can be cleanly restated as a problem specification with a defined dataset, metric, and baseline result.
2. **Extract the problem** the agent will attempt (typically via an automated limitation-extraction step that identifies the actionable gap the original paper addressed), without exposing the paper's own solution.
3. **Run the agent** against the problem using the original paper's dataset/metric setup, allowing the agent full latitude in method design.
4. **Score the agent's result against the human-authored baseline** using the paper's own reported metric, producing a directly comparable relative-improvement number per problem.
5. **Grade the write-up** (optional but recommended) with an automated reviewer calibrated against known-good and known-bad reference points (e.g., scoring both accepted human papers and papers from a venue known to publish weak AI-generated work, to confirm the reviewer isn't simply rubber-stamping AI-authored text).
6. **Aggregate across the full problem panel** to report a success rate and average relative improvement, rather than relying on a handful of qualitative case studies.

## Assumptions

- The selected papers' problems are cleanly re-specifiable without inadvertently leaking their own solution to the agent.
- Foundation-model training data and web access during the agent run do not give the agent indirect visibility into the target paper's actual method via citations or community discussion of its follow-up work.
- The automated reviewer(s) used to grade write-ups are meaningfully calibrated, not just lenient toward machine-generated prose.
- Beating a known, already-solved problem's baseline is a meaningful proxy for the capability of interest (open-ended research skill), rather than a different and easier capability (execution against a well-posed target).

## Limitations

- **The ground truth is a known-solved problem.** The agent is told a research question a human team already answered successfully and is handed that team's benchmark/dataset/metric setup — a weaker test than being asked to make progress on a genuinely unpublished, open question (cf. [[shadow-evaluation]]). Success here demonstrates the agent can out-execute a known-solvable problem, not that it can find and correctly frame an open one.
- **Survivorship / selection risk.** Problems are typically drawn from a superset of candidates; if unreported candidate problems were tried and excluded, the reported success rate can be inflated without this being visible in the published result.
- **Contamination risk is real, not just theoretical.** Because the source paper is already public, an agent with web access or relevant training data may have indirect exposure to hints about the target paper's approach through citing/discussing work, even without seeing the paper itself.
- **Automated reviewer validity is assumed, not independently established** unless a genuine, blind, sufficiently large human-expert check is run alongside it — a small human-evaluation subset is not equivalent to real peer review, since it is typically not blind to authorship.

## Tradeoff profile

Trades open-endedness and contamination-freedom (which [[shadow-evaluation]] secures by using genuinely unpublished questions) for scale and statistical power (a large panel of well-posed, already-validated problems). It is a good match for measuring an agent's execution and iterative-refinement capability across many varied problems cheaply; it is not a good match for measuring whether an agent can identify, frame, and make real progress on a problem nobody has already solved. The two evaluation designs answer different questions and are best used together, not as substitutes for each other.

## Evaluated by

- [[scientisttwo-pioneering-human-knowledge-frontier-autonomous]] — the introducing paper; 107 problems from accepted ICLR/ICML/NeurIPS papers, 80.4% success rate and 25.2% average relative improvement over the human baseline, versus 0% acceptance from a held-out AI reviewer for every prior autonomous-research-agent system tested.
