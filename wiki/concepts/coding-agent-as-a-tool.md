---
title: "Coding Agent as a Tool (CAT)"
aliases: ["CAT", "weak-to-strong agent oversight", "outer agent directing coding tool", "small policy directs large coding agent"]
tags: [ai-rnd-automation, agent-architecture, weak-to-strong-generalization, post-training, coding-agents]
maturity: emerging
definition: "An agent architecture in which a smaller, specifically post-trained 'outer' policy directs a much larger, more capable frontier coding agent as a callable tool, rather than writing code itself — a concrete instance of weak-to-strong oversight in which the smaller model's contribution is judgment and direction, not raw capability."
key_papers: [training-ai-scientists-replicate-research]
first_introduced: "2026"
date_updated: "2026-09-22"
related_concepts: [parallel-agent-supervision, research-taste-bottleneck]
---

## Definition

Coding Agent as a Tool (CAT) names an agent architecture where a smaller, post-trained policy (the outer agent) is given only minimal function-calling tools of its own (in the founding instance: apply a patch, read a file, list a directory, grep, run a shell command) and one additional tool call that invokes a full frontier coding agent to actually write and execute code. All code-writing capability lives in the invoked tool; the outer agent's trained contribution is deciding what to ask the coding agent to do, evaluating what comes back, and directing the next step — judgment and orchestration rather than code generation.

## Intuition

The standard way to build a capable coding agent is to make the agent itself as strong as possible. CAT inverts the emphasis: hold the code-generation capability fixed at whatever a frontier coding agent already provides, and specifically train a separate, much smaller policy to direct that capability well. The founding result shows this can outperform the frontier coding agent working alone — a 27B-parameter post-trained outer agent beat the frontier coding agent it was calling, on the same task, using the same underlying code-writing capability. The improvement therefore cannot be located in "the model got better at writing code"; it has to be located in the outer agent's post-trained judgment about what to try, when to stop, and how to interpret what came back.

This is a small, concrete existence proof for a story alignment researchers have mostly discussed in the abstract: that a weaker, well-trained overseer can extract better performance from a stronger but less directed system than the stronger system achieves on its own. CAT demonstrates the mechanism in a narrow, empirically measurable setting (research-figure replication) rather than as a general alignment claim.

## Variants

- **Fixed inner tool** (the founding instance) — the coding agent invoked as a tool is not trained or modified; all learning happens in the outer policy.
- **Co-trained variant** (untested extension) — both the outer policy and the inner coding tool could in principle be trained jointly, though the founding paper does not do this and its result specifically demonstrates value from training only the outer layer.
- **Multi-tool CAT** — a plausible generalization where the outer agent directs several different specialist tools (not just one coding agent) rather than a single callable tool, unexplored in the founding instance.

## Comparison

- Distinct from [[parallel-agent-supervision]]: that concept is about a human or system managing *concurrent* fleets of agents for workflow/throughput purposes; CAT is about a single smaller *trained* policy directing a single larger tool for capability and oversight reasons, with no concurrency or fleet-management component.
- A concrete instantiation of weak-to-strong generalization/oversight research (Amodei et al. 2016; Bowman et al. 2022), narrowed to the specific case of an outer policy calling an inner coding-capable tool rather than the general case of any weaker model overseeing any stronger one.
- Related to [[research-taste-bottleneck]]: the outer agent's role (deciding what to investigate, scoping to budget, judging whether a result is good enough) sits precisely at the judgment/taste layer that concept identifies as the bottleneck once execution is automated.

## Known limitations

- Demonstrated in a single domain (research-figure replication) with a single inner tool (a coding agent) — generalization to other tool types or task domains is unestablished.
- The long-run cost/benefit is unresolved: as frontier coding tools themselves improve, it is unclear whether a small trained outer agent continues to add value, or whether a sufficiently capable inner tool needs progressively less outer direction.
- The founding result does not isolate which specific judgments the outer agent makes better (task decomposition? stopping criteria? interpretation of intermediate results?) — the aggregate performance gain is measured, but its internal mechanism is not decomposed.

## Open problems

- Does the CAT architecture's advantage persist, grow, or shrink as the inner coding tool's own capability improves across model generations?
- Which specific judgment sub-skills does the outer agent's post-training actually improve, and can those be isolated and measured directly rather than only via aggregate task performance?
- Does CAT generalize to non-coding tool domains (e.g., an outer agent directing a specialist scientific-instrument-interpretation tool, or a specialist search tool)?
- Can an outer agent trained via CAT transfer its directive judgment to a different, unfamiliar inner tool without retraining?

## Relationship to foundations

Draws on the weak-to-strong generalization research program in AI alignment, which asks whether a weaker supervisory signal can reliably elicit good behavior from a stronger system — CAT provides an empirical, task-measurable instance of that question in the agentic-tool-use setting rather than the classification/RLHF settings that research program has mostly studied.

## Realized by

- [[training-ai-scientists-replicate-research]] — the introducing paper; a 27B post-trained Qwen3.6-27B outer agent directing GPT-5.5/Codex as a tool, beating that same coding agent operating alone on 73% of in-distribution and 60% of held-out figure-replication tasks.

## My understanding

This is the paper's most underplayed result and, in my judgment, its most durable one — more durable than the specific replication benchmark numbers, which will date as models improve. The concrete demonstration that judgment can be trained into a small outer layer while leaving the large inner capability untouched, and that this measurably beats the large capability operating alone, is a genuinely exportable finding independent of the replication task it was demonstrated on. The open question worth tracking is whether this is a lasting architectural pattern or a transitional one that erodes as coding agents themselves become good enough to need less outer direction.
