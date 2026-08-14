---
title: "When AI Builds Itself"
slug: when-ai-builds-itself
arxiv: ""
venue: "The Anthropic Institute"
year: 2026
tags: [recursive-self-improvement, software-intelligence-explosion, ai-rnd-automation, agentic-coding, ai-safety, ai-governance]
importance: 4
date_added: 2026-07-05
source_type: pdf
s2_id: ""
tldr: "The Anthropic Institute presents public benchmarks and previously unreported internal data showing AI is already accelerating AI development (>80% of Anthropic's merged code written by Claude, ~8x code per engineer, agents recovering 97% of an open research gap), and argues recursive self-improvement could arrive faster than institutions are prepared for."
contribution_type: [analysis, position]
datasets: [SWE-bench, CORE-Bench]
code_url: ""
cited_by: [ai-agents-conduct-open-ended-ai]
---

## Problem & Context

For most of AI's history humans drove every step of AI development. Anthropic is now delegating a growing share to AI systems themselves. Taken far enough with enough compute, that trend points to a system that can fully autonomously design and develop its own successor — recursive self-improvement (RSI). We are not there yet and RSI is not inevitable, but it could arrive before institutions are ready. The piece marshals both external benchmarks and internal Anthropic data to characterize how far along we are.

## Key idea

AI is *already* measurably accelerating AI development, across both engineering (Claude can take an underspecified problem and supply the method) and research (Claude matches or beats skilled humans at executing a well-specified experiment). The last gap is *judgment / research taste* — choosing goals, deciding which experiments matter, and knowing when an approach is a dead end. Whether that gap closes (or is bypassed by Amdahl's-law reasoning) determines which of three futures we get.

## Method

Evidence synthesis, not a new technique. External signals: METR task-horizon doubling every ~4 months (Opus 3 ≈ 4-min tasks in 3/2024 → Opus 4.6 ≈ 12-hr tasks two years later); SWE-bench from low single digits to saturation in two years; CORE-Bench (research reproduction) from ~20% to saturated in fifteen months; Claude Mythos Preview working "at least" 16 hours. Internal signals: a code-optimization loop (given train-a-small-model code, make it faster) and a next-step-judgment study (n=129 real Claude Code sessions judged by a separate Claude).

## Experiment & Results

- **Code authorship:** >80% of merged Anthropic code was Claude-authored by May 2026 (low single digits before Claude Code, 2/2025); the typical engineer merged ~8× as much code/day in Q2-2026 vs. 2024 (with the LOC caveat that this overstates true productivity).
- **Code quality:** correction/takeover rate falling for a year; success on the most open-ended tasks reached 76% in May 2026 (+50pp in six months); Claude-written code ≈ human parity today, expected "strictly better within the year"; an automated Claude reviewer would have caught ~1/3 of past-incident bugs.
- **Research execution:** code-speedup loop went from ~3× (Opus 4, 5/2025) to ~52× (Mythos Preview, 4/2026); a skilled human needs 4–8 hrs to reach ~4×.
- **Open-ended research:** on a weak-to-strong supervision problem, two humans recovered ~23% of the gap in a week; agents recovered 97% over 800 cumulative hours and ~$18k compute (caveats: didn't transfer to production-scale models; humans chose the problem and rubric).
- **Research judgment:** on next-step choices, the best model beat the human choice 51% (Opus 4.5, 11/2025) → 64% (Mythos Preview, 4/2026); on a control set where the human move was already strong, models won only ~20%.

## Limitations

- LOC is an imperfect productivity proxy; self-reported ~4× uplift surveys are likely overestimates (METR notes developer overestimation).
- The judgment study deliberately picked moments where the human's choice had room to improve — not a like-for-like human-vs-model comparison.
- The weak-to-strong result did not transfer cleanly to production-scale models; humans still set direction.
- Written by a frontier lab about its own progress; incentives and selection are worth weighing.

## Open questions

- Is "research taste" a capability that scaling eventually unlocks (like theory-of-mind, joke explanation), or a genuine ceiling requiring a post-Transformer idea?
- Where does Amdahl's law bind next once code and experiments are cheap — human review, compute/energy supply, or organizational bottleneck-spotting?
- Can a verifiable, multi-lab, multi-country slowdown/pause regime be built fast enough, given training runs are far easier to conceal than missile silos?

## My take

The value here is the *internal* data: benchmark saturation is public, but ">80% of merged code is Claude's," the ~3×→52× optimization curve, and the 51%→64% judgment trend are the numbers that make the software-intelligence-explosion thesis concrete rather than speculative. The strongest argument is the conservative one — even if research taste never arrives, direction-setting being a single-digit fraction of the work means each human steers vastly more, which already implies compounding acceleration under Amdahl's law. The governance section is unusually candid for a lab: it wants the *option* to pause, concedes detectability is harder than for nuclear arms control, and admits alignment-under-RSI is what it is least certain about.

## Related

- [[research-taste-bottleneck]]
- [[software-intelligence-explosion]]
- [[automated-research-pipeline]]
- [[agent-autonomous-task-horizon]]
- [[human-ai-division-labor-agentic-work]]
- [[frontier-ai-compute-governance]]
- [[jack-clark]]
- [[marina-favaro]]
- [[machines-loving-grace-how-ai-could]]
- [[ai-systems-about-start-building-themselves]]
- [[first-steps-toward-automated-ai-research]]
