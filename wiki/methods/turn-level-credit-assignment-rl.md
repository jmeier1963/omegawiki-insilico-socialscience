---
name: "Turn-Level Credit Assignment for Long-Horizon RL"
slug: turn-level-credit-assignment-rl
type: training
tags: [reinforcement-learning, reward-design, agent-post-training, grpo, judge-based-reward]
source_papers: [training-ai-scientists-replicate-research]
parent_methods: []
child_methods: []
realizes_concepts: []
code_repo: ""
date_updated: "2026-09-22"
---

## Problem setting

Training an agent via RL on long-horizon, multi-turn tasks that have no single verifiable metric to optimize (e.g., "replicate this research figure" rather than "maximize this score"), where reward must come from an LLM judge rather than an automatic verifier. Judge-based rewards are noisy on their own, and applying a single scalar reward uniformly across every turn of a long rollout gives the training signal no way to distinguish which specific turns actually contributed to a good or bad outcome.

## Mechanism

Two combined interventions applied on top of a judge-scored rollout: (1) average the judge's score across multiple independent samples (three in the introducing paper) to reduce noise in the scalar reward itself; (2) have the same judge additionally output normalized per-turn credit-assignment weights across the rollout, which are used to scale the per-token advantage during a modified GRPO update — so that turns the judge identifies as more responsible for the outcome receive proportionally more or less gradient signal, while the weights are normalized to preserve the overall reward scale.

## Procedure

1. Run a rollout on a long-horizon task with no single verifiable success metric.
2. Have an LLM judge score the rollout against a task-specific rubric, sampled multiple times (e.g., 3 independent judge samples) and averaged to reduce noise.
3. Have the same judge additionally output normalized turn-level weights, indicating each turn's relative contribution to the rollout's outcome, constrained so the weights preserve the rollout's overall reward scale.
4. Scale the per-token advantage at each turn by its corresponding credit-assignment weight during the policy update (a modified GRPO step), rather than applying the same advantage uniformly across all turns.
5. Repeat across training batches, using the resulting more targeted gradient signal to train the policy.

## Assumptions

- The judge can meaningfully attribute differential responsibility to specific turns within a rollout, not just score the rollout as a whole.
- Multiple judge samples reduce noise faster than they introduce new inconsistency (validated in the introducing paper by comparing sample-count-vs-noise curves against a baseline judge).
- Preserving the overall reward scale while reweighting turns avoids destabilizing the optimization compared to a uniform-credit baseline.

## Limitations

- Requires an LLM judge capable enough to produce reliable per-turn attribution, which is a stronger requirement than simply scoring a whole rollout.
- Adds computational cost (multiple judge samples per rollout, plus the additional per-turn weight generation) relative to a single-scalar-reward baseline.
- The introducing paper validates noise reduction against a same-model baseline judge using a constant, task-invariant prompt; it does not compare against other credit-assignment schemes from the broader long-horizon RL literature.
- Turn-level attribution from a judge is itself a judge output, inheriting whatever biases or blind spots that judge has — the technique reduces scalar-reward noise but does not independently validate that the attributed turns are the true causal contributors.

## Tradeoff profile

Trades additional judge compute (multiple samples plus per-turn weight generation) for a training signal that requires meaningfully fewer samples to reach a given noise level than a uniform-credit baseline — the introducing paper reports 3 samples under this scheme achieve the noise reduction that requires 8 samples under the baseline scheme. Best suited to settings where judge queries are the binding cost and a modest per-rollout overhead is worth it to cut the total number of rollouts needed to converge; less clearly worthwhile in settings where verifiable rewards are available and this machinery is unnecessary.

## Evaluated by

- [[training-ai-scientists-replicate-research]] — the introducing paper; two rubric-judge interventions (multi-sample averaging and turn-level credit weighting) shown to reduce judge noise relative to a same-model baseline judge, used to post-train the Faraday agent via GRPO on 310 figure-replication tasks.
