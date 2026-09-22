---
title: "Recursive Synthetic Improvement"
slug: recursive-synthetic-improvement
arxiv: ""
venue: "Personal essay (X/Twitter), archived as PDF; original: x.com/zafstojano/status/2097689256961466486"
year: 2026
tags: [synthetic-data, recursive-self-improvement, llm-training, data-flywheel, distillation, reinforcement-learning, ai-rnd-automation]
importance: 3
date_added: "2026-09-22"
source_type: pdf
s2_id: ""
tldr: "An independent-researcher essay reframes 'RSI' as Recursive Synthetic Improvement: a five-step human-to-model handover pattern that has already recurred across five parts of the LLM training stack (Judge, Corpus, Teacher, Curriculum, Environment), and speculates the same pattern may next apply to the Researcher."
contribution_type: [position, analysis]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

From outside frontier AI labs, capability progress looks like an unexplained, self-sustaining exponential with "no visible horizon." The author's stated goal is to push back on that opacity: rather than accept the vague, often marketing-inflected claim that models are recursively self-improving, he sets out to reconstruct — using only what frontier labs and researchers have published openly — exactly which parts of the LLM development pipeline have concretely already shifted from human-generated to model-generated, and to name the mechanism precisely enough that it can be checked against evidence rather than taken on faith.

## Key idea

**Recursive Synthetic Improvement (RSI, reused as a pun on Recursive Self-Improvement)**: a five-step pattern — (1) an artifact starts out human-generated and human-curated; (2) once a strong-enough model baseline validates the approach, generation/curation of that artifact is handed to models; (3) synthetic output from one generation trains the next, whose better outputs feed the following generation; (4) human effort redirects to unlocking new capabilities; (5) repeat — that the author argues has **already completed** across five distinct layers of the modern LLM stack: the **Judge** (how model outputs are scored), the **Corpus** (pretraining data), the **Teacher** (distillation source), the **Curriculum** (task/environment design), and the **Environment** (RL training environments) — with a sixth, the **Researcher**, speculated to be starting the same transition.

## Method

An essay-form literature synthesis with no original data collection; each of the five stack layers is argued via a chain of previously-published, individually-cited results:

- **The Judge**: traces RLHF (InstructGPT's 3-phase SFT → reward-model → PPO pipeline) → Constitutional AI (Bai et al. 2022's SFT → AI-comparison preference model → RLAIF, requiring no human harm labels) → LLM-as-judge (Zheng et al. 2023's MT-Bench/Chatbot Arena, reporting GPT-4 reaching ~80% agreement with human raters, "roughly equal to human-human agreement") → the judge "folding back into the trained model itself" (Kimi K2 reusing its own policy as a rubric-guided critic for non-verifiable tasks). Notes Chatbot Arena's commercial spinoff (Arena) reaching a $100M annualized run rate eight months after launch, backed by a $150M Series A, as evidence the judge-as-proxy paradigm scaled into a business.
- **The Corpus**: cites Nemotron-CC (Su et al. 2024)'s stated design principle — "shift from a static, non-learned, heuristic pipeline towards a more learned flywheel" — as a direct primary-source statement of the pattern applied to pretraining-data curation and quality classification.
- **The Teacher, Curriculum, Environment**: discussed via a chain of distillation/generalization-theory papers used to argue *limits* on how far synthetic-data handover can go: RL's Razor (Shenfeld et al. 2025) and Retaining by Doing (Chen et al. 2025) on SFT causing more catastrophic forgetting than RL (off-policy KL-divergence arguments); SFT Memorizes, RL Generalizes (Chu et al. 2025) and Generalized Knowledge Distillation (Agarwal et al. 2023) on RL-from-own-experience generalizing better than imitating another model's traces. Cites Kimi K3 serving "almost 2T tokens through OpenRouter alone," with top-5 usage from agentic tools (Hermes Agent, Claude Code, pi, OpenHands, Cline), as indirect evidence of strong out-of-distribution generalization from a model trained this way. Closes this section by quoting Nathan Lambert (Interconnects): "One does not simply 'distill' RL environments, infrastructure to run them at scale, or algorithms to mix them together effectively" — used to argue that owning environments and learning from on-policy experience, not distillation, is what lets a lab keep pace with the frontier.
- Discloses in a footnote that "Fable made a pass to fix typos, improve my broken sentence structures, and fact-check my statements" — an AI-editing tool used on the essay itself, disclosed by the author rather than hidden.

## Experiment & Results

No original experiment or dataset. All "results" are citations of others' previously-published findings, assembled into a single connected narrative. The one concrete usage statistic offered (Kimi K3's ~2T tokens served via OpenRouter, dominated by agentic-coding-tool traffic) is presented as circumstantial evidence for a generalization claim, not as evidence the author generated himself.

## Limitations

- Not a research paper: no new data, no experiments, explicitly informal in register and self-published on X/Twitter before being reformatted to PDF.
- The author states the account is necessarily incomplete given lab opacity — this is honest about its own evidentiary limits but means several inferential leaps (e.g., inferring that mid-training distillation, not post-training distillation, is where labs actually use another model's traces) are the author's own inference from generalization-theory papers, not confirmed lab practice.
- The "Researcher" layer — arguably the most consequential claim for this wiki, since it would represent the same handover pattern reaching AI R&D itself — is offered with zero citation and is explicitly speculative.
- No discussion of safety, alignment, or governance implications of the pipeline-level recursive dynamic it documents — in sharp contrast to how [[software-intelligence-explosion]] treats the same broad territory (that concept's known limitations explicitly flag that its own model "abstracts away safety risks of the ASARA systems themselves"; this essay doesn't raise the question at all).
- The essay never engages whether the *judgment* required to run each handover (deciding a baseline is "strong enough," deciding when to redirect human effort) is itself automatable — it documents the execution-side handover in detail while leaving the direction-setting question completely open.

## Open questions

- Does data-pipeline-level Recursive Synthetic Improvement widen or narrow the gap between open- and closed-source models? The author explicitly poses this as unresolved in his conclusion.
- Is the inferred shift of distillation into the mid-training phase (rather than post-training) actually lab practice, or an artifact of stitching together generalization-theory papers that were not about frontier-lab pipelines specifically?
- If the "Researcher" layer follows the same five-step pattern, what triggers the handover from human to AI direction-setting — and does this essay's own speculation hold up against [[ai-agents-conduct-open-ended-ai]]'s empirical finding that current frontier agents fail exactly at that step (poor judgment, poor resource awareness, poor backtracking)?
- How does this layer-by-layer, empirically-grounded account relate to the uncertain growth-rate parameter r in [[software-intelligence-explosion]]'s formal model — could "which layers have completed the handover" become a measurable proxy for r?

## My take

The useful move here is **narrowing, not novelty**: rather than proposing a new mechanism, the essay decomposes the vague "AI labs are on an unexplained recursive exponential" folk narrative into five concretely-named, separately-citable transitions (Judge, Corpus, Teacher, Curriculum, Environment), each backed by a specific paper or public statement. That is exactly the kind of empirical grounding [[software-intelligence-explosion]]'s own known limitations say is currently missing (the growth-rate parameter r "is uncertain and hard to empirically determine"). Read this way, Recursive Synthetic Improvement is best understood as **a candidate mechanism for why r might exceed 1 in the software-only SIE variant** — a data-pipeline-level operationalization of an existing, more abstract wiki concept — not a rival framing that needs its own concept page.

The essay is conspicuously silent on [[research-taste-bottleneck]] despite gesturing at exactly that question in its closing line about "the Researcher." That's the load-bearing gap: if the Researcher-layer handover requires research taste (choosing what's worth trying, recognizing dead ends), this essay offers no evidence either way — it simply notes the possibility and moves on. The wiki already has sharper, empirical evidence on precisely this question in [[ai-agents-conduct-open-ended-ai]] (agents failing at exactly the judgment step this essay would need to succeed for its speculative sixth layer to complete), and that paper should be read as a partial answer to the question this essay only poses.

Single most citable fact for the wiki that isn't already documented elsewhere here: **GPT-4 reaching ~80% agreement with human raters** in the original LLM-as-judge paper (Zheng et al. 2023), "roughly equal to the agreement between human raters themselves" — a good, previously-undocumented data point relevant to any discussion of [[algorithmic-fidelity]]-adjacent validity questions for AI-as-evaluator setups.

Also worth flagging as a minor meta-note: the author discloses using an AI tool ("Fable") to edit the essay itself — a small, self-referential illustration of exactly the human-to-model handover pattern the piece describes, though the author doesn't remark on this irony.

## Related

- [[software-intelligence-explosion]] — this essay's five-layer, evidence-grounded account is a narrower and more falsifiable operationalization of what could drive the SIE model's r parameter in the software-only variant.
- [[research-taste-bottleneck]] — the essay's undeveloped "Researcher" speculation gestures at exactly this bottleneck (execution vs. direction-setting) without engaging it.
- [[persona-driven-synthetic-data]] — that concept's key paper (Persona Hub) is precisely the kind of Corpus-layer example this essay's argument is built around, though the essay itself cites Nemotron-CC rather than Persona Hub.
- [[ai-agents-conduct-open-ended-ai]] — the empirical test of exactly the "Researcher" layer this essay speculates about, and finds current frontier agents fail at.
- [[automated-ai-research-loop]] — same automated-AI-R&D-pipeline territory as the essay's "Researcher" speculation.
- [[algorithmic-fidelity]] — the GPT-4-vs-human-rater agreement figure documented here bears on algorithmic-fidelity-adjacent validity questions for AI-as-evaluator setups.
