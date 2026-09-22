---
title: "Training AI Scientists to Replicate Research"
slug: training-ai-scientists-replicate-research
arxiv: "2608.13331"
venue: "Preprint (arXiv) — Inherent"
year: 2026
tags: [ai-rnd-automation, research-automation, agent-post-training, reinforcement-learning, coding-agents, benchmark, reward-design, scientific-replication]
importance: 4
date_added: "2026-09-22"
source_type: tex
s2_id: "af7736b0635e8183e7c4a50a5c17e6b8d4eada29"
tldr: "Inherent trains Faraday, a 27B-parameter agent that directs a frontier coding agent as a callable tool and is post-trained with a rubric-based judge on 310 auto-generated paper-replication tasks, beating Claude Opus 4.8 and GPT-5.5 on 73% of in-distribution and 60% of held-out tasks while behaving more like a rigorous human scientist than either baseline."
contribution_type: [method, system, benchmark]
datasets: [Replica]
code_url: ""
cited_by: []
---

## Problem & Context

ML faces a documented replication crisis (Kapoor & Narayanan 2022; Semmelrock et al. 2025). LLM agents are a natural candidate to help, but paper replication is hard for three structural reasons the paper identifies: (1) a paper is a lossy compression of the research that produced it, so replication is underspecified by definition; (2) existing agents are heavily trained on well-specified, closed-ended problems, whereas replication requires open-ended inference of missing detail; (3) prior hill-climbing harnesses (autoresearch, AlphaEvolve) don't apply because there is no single definite metric to climb for a general replication task.

This sits in the same broad debate as [[ai-agents-conduct-open-ended-ai]] — can agents do the open-ended part of AI research — but attacks it from the opposite end: instead of a genuinely novel unpublished research question graded by the original authors (shadow evaluation), this paper gives agents a *known* result to reproduce, with a hidden "gold plot" as ground truth.

## Key idea

**Replica**: an automatically generated, scalable task space of 310 figure-replication tasks (242 train / 68 held-out test) drawn from 100 well-known ML and AI-for-science papers spanning 1990–2026. Each task hands an agent the original paper with one results figure redacted, a 60-minute wall-clock limit, and a single one-seventh MIG slice of an H200 GPU, and asks it to reproduce the figure via real experiments (not hard-coded outputs).

**Faraday**: a 27B-parameter agent (post-trained Qwen3.6-27B) that directs a frontier coding agent (Codex/GPT-5.5, or GPT-5.4-mini during most training) as a callable tool — the paper calls this **[[coding-agent-as-a-tool]]**. Faraday itself has only five minimal function-calling tools (`apply_patch`, `read_file`, `list_dir`, `grep_files`, `shell`); all actual code-writing happens through the coding-agent tool call.

Training uses a **rubric-based judge**: Claude Opus 4.7 auto-generates a task-specific 5-dimension rubric (visual match, support for the paper's scientific claim, faithfulness of the underlying experiment, compute-budget use, scientific integrity) from a fixed meta-prompt, with the gold plot hidden from the rubric generator so it can't over-index on cosmetic figure details. A Codex GPT-5.5 judge then scores rollouts against that rubric with full access to the agent's container, code, and git history, but the rubric itself is hidden from the trained model to discourage rubric-gaming.

## Method

- **Task generation** (fully automated, three Gemini-2.5-Pro-powered stages): scan for every main-text results plot + caption → localize its bounding box inside an LLM-verifier repair loop → irreversibly redact the figure from the PDF. Every task is hand-inspected and filtered for quality. Median 2 tasks per paper (range 1–13). See [[replica-figure-replication-pipeline]].
- **[[turn-level-credit-assignment-rl]] for long-horizon non-verifiable RL**: (a) average 3 independent judge samples per rollout; (b) have the judge additionally output normalized turn-level credit-assignment weights (preserving overall reward scale) used to scale per-token advantage during a modified GRPO update. Both interventions are shown to reduce judge noise relative to a same-model "baseline judge" using a constant, task-invariant prompt.
- **Human studies**: 117 rankings from 20 PhD-level raters (preference for those with ≥1 ICML/ICLR/NeurIPS main-track paper), paid £150/task with completion bonuses, used to validate that the rubric judge tracks human research taste better than the baseline judge.
- **Post-training**: LoRA fine-tuning (rank 128, α=128) of Qwen3.6-27B on all linear projections, 128K context, constant LR 6×10⁻⁶, GRPO with batches of 10 tasks × 8 rollouts, sampled so each batch spans the corpus's full year range and each epoch touches every task exactly once.

## Experiment & Results

**Judge validation.** Two independent draws of the rubric judge agree more with each other (Kendall τ = 0.66) than two draws of the baseline judge (0.46) or two humans with each other (0.30); the rubric judge also agrees more with humans (0.19) than the baseline judge does (0.15). It is also less noisy: 3 rubric-judge samples achieve the noise reduction that requires 8 baseline-judge samples.

**Frontier agents don't saturate Replica.** Task difficulty rises monotonically with publication recency for every agent tested (Claude Opus 4.8, GPT-5.5/Codex, GLM-5.2, Faraday, base Qwen3.6-27B), and AI-for-science tasks are harder than ML tasks across the board. NLP/LLM papers are hardest; classical ML/stats easiest.

**Faraday beats both frontier baselines.** Mean rubric score, in-distribution (ML, train split): Faraday 0.856 vs. Claude 0.828, Codex 0.796, base Qwen 0.678. Held-out (AI-for-science, test split): Faraday 0.791 vs. Claude 0.748, Codex 0.729, base Qwen 0.554. Faraday wins on **73%** of in-distribution tasks and **60%** of held-out tasks against both baselines. A 24-generation automated prompt-optimization control on the Codex baseline closes almost none of the gap (0.802 / 0.725) — the advantage is not reproducible by prompting alone.

**Qualitative pattern.** Faraday tends to implement the actual mechanism a figure is meant to test (e.g., running a real evolutionary self-improvement search for a Darwin-Gödel-Machine figure, or a real skill-transfer phase for a Voyager figure), where the best Claude/Codex rollout instead hard-codes the expected output or a pre-populated shortcut that bypasses the mechanism under test.

**Human preference (targeted, not representative).** Of 41 rollouts specifically selected because the rubric judge scored Faraday as strongly ahead, humans preferred Faraday over both baselines in 29 (71%) — the paper is explicit that this design cannot support a claim that humans prefer Faraday *on average* across random tasks.

**Generalization probes.** On 20 hand-crafted counterfactual task variants (swap dataset, or swap claim, for 10 papers), the same rubric judge preferred Faraday's output to Codex's on 19/20. On 8 papers requiring up to 8 hours and 8×B300 GPUs (far beyond the 60-minute/MIG-slice training regime), Faraday beat Claude on average and on 5/8 individual tasks.

**Informal real-world validation.** Feedback from 4 original paper authors on Faraday's replication of one of their own figures was mixed: praise for specific implementation fidelity and "clever toy task design," alongside criticism that some simplifications didn't make sense, write-ups were weak, and generated code was "unnecessarily convoluted" ("code slop").

## Limitations

The paper has no section titled "Limitations"; the closest equivalent is folded into the Ethics Statement and scattered caveats in the Discussion:

- **"Awareness of limitations" (Ethics Statement).** The authors state Faraday failed to replicate several papers "where we have confidence that the original result was obtained rigorously and reported honestly" — a nontrivial failure rate exists, but it is not quantified as a headline number anywhere in the main text.
- **The human-preference result is not a random sample.** The 41 rollouts were pre-selected for cases where the rubric judge already thought Faraday won big; 29/41 (71%) cannot be read as "humans prefer Faraday" in general, only as "the judge's confident wins are usually judged correctly by humans too."
- **The rubric judge is unvalidated on the generalization/counterfactual tasks** — the 19/20 result uses the same trained judge, not independent expert graders.
- **Small scaled-up-compute sample** (n=8 papers) for the claim that Faraday's advantage survives larger resource budgets.
- **Disclosed conflict of interest**: some corpus papers were written by the authors themselves or people they know personally, and some corpus items come from organizations whose commercial models were used in the research.
- **Reward-hacking-resistance is speculative.** The Discussion argues that judging in hindsight "may" reduce reward-hacking incentives, but this is not directly measured.
- **All agents get worse on more recent papers.** The regime most relevant to actually accelerating frontier AI research (replicating this year's papers) is exactly where every agent, including Faraday, is weakest.

## Open questions

- Does the CAT (Coding-Agent-as-Tool) cost/benefit hold as frontier coding models keep improving, or does the value of a small post-trained "outer" agent erode once the "inner" tool is capable enough to not need much direction?
- Does replication skill actually transfer to open-ended hypothesis generation, as the Discussion's "stepping stone towards innovation" framing claims — or is replication (hidden ground truth, known claim, bounded scope) categorically easier than the genuinely novel research judgment tested in [[ai-agents-conduct-open-ended-ai]], which found agents fail badly at exactly that harder task even with far more time and budget?
- Is hindsight/rubric-based judging actually more reward-hacking-resistant at scale, or does it just move the exploit surface somewhere harder to spot (the authors' own "code slop" feedback from real paper authors is a hint in this direction)?
- What is the real failure rate of Faraday's replications, and on what distribution of papers?

## My take

The infrastructure contribution here is genuinely careful and more rigorous than most agent papers bother to be: validating the judge itself against blinded PhD-level human rankings (with Kendall-τ tables showing the judge is *more* internally consistent than the humans it's meant to approximate) is exactly the kind of evaluator-of-the-evaluator work this space usually skips. The turn-level credit-assignment trick for stabilizing long-horizon, non-verifiable RL is a concrete, exportable technique independent of anything else in the paper.

The most interesting and underplayed result is the CAT finding itself: a 27B model, post-trained, directing a much larger frontier coding agent as a tool, beats that same frontier agent operating alone. That's a small, concrete existence proof of the "weak model oversees strong model" story alignment researchers (Amodei et al. 2016; Bowman et al. 2022, both cited) have mostly discussed in the abstract — and it says the improvement doesn't have to live in the biggest model's weights.

Where the paper oversells is the bridge from replication to innovation. The human-preference number (71%) is doing real argumentative work in the abstract/discussion despite being computed on a hand-picked slice, and the 19/20 counterfactual-generalization result is graded by the same judge that was trained alongside Faraday, not by independent experts. Read against [[ai-agents-conduct-open-ended-ai]] — same underlying question, opposite conclusion valence — the two papers are not actually in tension: CRUX's shadow evaluation handed agents a genuinely novel unpublished question with six days and near-total scope freedom and found judgment failures; this paper hands agents a known result with a hidden ground truth and 60 minutes, and finds success. Replication with a gold-standard answer key is a strictly better-specified problem than open-ended discovery. The right way to read the two together: research-taste automation may be progressing on the well-specified end of the spectrum while remaining stuck on the open end — which is exactly what [[research-taste-bottleneck]] predicts should happen last.

## Related

- [[coding-agent-as-a-tool]]
- [[turn-level-credit-assignment-rl]]
- [[replica-figure-replication-pipeline]]
- [[automated-research-pipeline]]
- [[research-taste-bottleneck]]
- [[shadow-evaluation]]
- [[societal-reward-hacking]]
- [[open-world-evaluations]]
- same_problem_as: [[ai-agents-conduct-open-ended-ai]]
- part_of: [[ai-driven-scientific-discovery]]
