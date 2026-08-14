---
title: "First Steps Toward Automated AI Research"
slug: first-steps-toward-automated-ai-research
arxiv: ""
venue: "Recursive (company technical article)"
year: 2026
tags: [ai-rd-automation, recursive-self-improvement, automated-research, gpu-kernels, llm-training-optimization, reward-hacking, agentic-ai, open-ended-algorithms]
importance: 2
date_added: 2026-06-26
source_type: pdf
s2_id: ""
tldr: "Recursive's automated AI research system, running a propose-implement-run-validate-choose-next loop over long horizons with reward-hack and variance checks, reaches state-of-the-art on three benchmarks: NanoChat Autoresearch (0.9109 BPB), NanoGPT Speedrun (77.5s), and SOL-ExecBench GPU kernels (0.754)."
contribution_type: [system, application]
datasets: [NanoChat Autoresearch, NanoGPT Speedrun, SOL-ExecBench, FineWeb]
code_url: "https://www.recursive.com/articles/first-steps-toward-automated-ai-research"
cited_by: []
---

## Problem & Context

Can an automated system run the full AI-research loop — proposing ideas, implementing them, running experiments, validating results, and choosing the next experiment — well enough to push the frontier on real AI training and infrastructure tasks? The work attacks the practical question of whether automated AI R&D can produce genuine, compounding improvements rather than one-off tricks or benchmark exploits.

Where the field stood before: prior efforts toward automated/recursive AI research (e.g. Jack Clark's "AI systems are about to start building themselves" benchmark mosaic, the Inherent Labs manifesto on AI-native organizations, AlphaEvolve's evolutionary coding agent, DeepSeek-style LLM kernel generation, and academic end-to-end research agents like Agent Laboratory) established that LLM agents can do substantial AI-engineering work and even discover algorithms. What remained underdemonstrated was a single search system that simultaneously (a) sustains many research threads over long horizons, (b) carries useful context across experiments and recombines promising branches, and (c) hardens its own evaluator against reward hacking so that measured gains correspond to real progress. Recursive (legally "Recursive Superintelligence, Inc.") positions this as early evidence toward systems that recursively self-improve in a way that is "safe and helpful."

## Key idea

A general automated AI research system optimizes a target objective by closing the loop end-to-end: propose an idea → implement it → run an experiment → validate the result (against reward hacks and variance) → use what was learned to choose the next experiment. It runs many threads over long horizons, keeps context from prior experiments, and combines promising branches. Critically, because stronger search produces more reward hacks, the evaluator is iteratively hardened in tandem: a correctness/anti-exploit audit is treated as part of the research system itself, so that "as the search became stronger, the evaluator had to become stronger too." The design harnesses principles of open-ended algorithms and builds on prior work on recursively self-improving AI.

## Method

The same general system is applied across all three benchmarks; only profiling tools were added for the kernel benchmark, with no benchmark-specific tuning of the search.

- **Search loop**: propose → implement → run → validate → choose-next, executed across many parallel research threads over long horizons (tens of hours of cumulative runtime per benchmark in the reported runs).
- **Context retention and branch recombination**: useful context from prior experiments is preserved and promising branches are combined, letting the system assemble a competitive stack from compounding small gains rather than a single trick.
- **Validation / co-evolving evaluator**: each promising improvement passes through increasingly strict automated checks designed to separate genuine improvements from benchmark-specific exploits (caching outputs, persistent state, timing-harness tricks). A reward-hacking detector is iteratively improved with AI-assisted and/or human feedback, plus variance checks across multiple random seeds. Outputs were also manually inspected with AI-assisted analysis.
- **Cross-task transfer**: on SOL-ExecBench the system ran across all 235 kernels jointly so it could reuse discoveries (memory-movement patterns, tiling, reductions, vectorization, fusion) across related tasks.

The discovered solutions illustrate the search assembling many components: e.g. on NanoChat, hashed bigram/trigram embedding tables mixed into the attention value path via learned gates (a short-context memory mechanism related to DeepSeek Engram's hash-table sparsity axis), squared-ReLU MLPs, token-shifting, weight averaging before eval, and tuned weight-decay schedules and compiler settings.

## Experiment & Results

Three benchmarks, each stressing a different lever of AI progress (better training, faster training, better hardware use), chosen for clear metrics, low variance, and reward-hack-hardenable evaluators. The team reports running on Modal HGX H100 8-GPU nodes and re-confirming on Andromeda nodes; awaiting PrimeIntellect (official hardware) for leaderboard submission.

- **NanoChat Autoresearch** (train a small LM to lowest validation bits-per-byte in a fixed ~5-minute single-GPU budget; B200 eval, 10 seeds): previous SOTA (community best) 0.9372 BPB → Recursive **0.9109 BPB**, a 0.0263 improvement; equivalently it reaches Karpathy's original overnight-autoresearch quality in roughly **1.3× less training time** than the best autoresearch@home solution. From a naive vanilla-Transformer-with-AdamW seed (1.0587 BPB) the system reached **0.9344 BPB**, also beating the community best and converging on a different competitive stack.
- **NanoGPT Speedrun** (time to reach 3.28 validation loss, GPT-2-small on FineWeb, 8×H100; mature 2-year community effort with 83 record-setting contributions): prior leaderboard record 79.7s → Recursive **77.5s** (mean val loss ≤ 3.28 at p < 0.01), a 2.2s speedup comparable to or larger than recent human contributions, via FP8 attention, exploration noise, cautious embeddings, fused kernels. From a ~15-minute earlier seed it reached ~185s in a few days.
- **SOL-ExecBench** (235 kernel-writing tasks from real workloads; Speed-of-Light score where 0.5 = optimized PyTorch baseline, 1.0 = analytical hardware roofline; B200): previous leaderboard best mean SOL 0.699 → Recursive **0.754**, an 18% reduction in the gap to the hardware limit, beating leaderboard best, doubleAI, and Cursor across FlashInfer-Bench, L1, L2, and Quant categories. Reward hacking was hardest here (candidates exploited caching/persistent-state/timing-harness details), motivating the strict correctness-audit-in-the-loop.

Artifacts from the runs are open-sourced for inspection and reuse.

## Limitations

- The results do not prove independent rediscovery: the underlying models may already know public techniques (including those from the autoresearch@home community), so overlap with known methods is expected.
- The work is a company blog with early, single-system results; not peer-reviewed, no full ablation of the search components, and not yet submitted to the official leaderboards (awaiting official hardware).
- The authors note they "may still have missed errors in kernel optimization" where they are not specialists, despite AI-assisted screening.
- Reward hacking is an open, ongoing challenge that the team expects to remain necessary to fight as the search grows more powerful — a current ceiling on trustworthiness of measured gains.

## Open questions

- Can such systems make genuinely novel discoveries (advance the frontier) rather than recombining and re-deriving known public techniques?
- How far does evaluator hardening scale as the search becomes much stronger — can the evaluator stay ahead of an increasingly capable exploiter?
- Does the approach generalize beyond well-defined, fast-to-evaluate training/infra benchmarks to messier real-world research with slow or noisy feedback?
- What alignment framework keeps a recursively self-improving research system solving the spirit of the task rather than its letter?

## My take

A concrete, benchmark-grounded data point for the automated-AI-R&D thesis: it converts the abstract "AI systems will build themselves" forecast into three measured SOTA results on tasks with hardened evaluators. The most interesting methodological contribution is not any single discovered trick but the explicit framing that the evaluator must co-evolve with the search — reward-hack resistance treated as a first-class, iteratively strengthened part of the loop. That reframing is the part most likely to transfer to other automated-research settings. The honest caveat about non-independent rediscovery (models already know public techniques) is the right one to foreground; the open frontier is genuine novelty, exactly the gap that the broader recursive-self-improvement literature also flags.

## Related

- [[automated-research-pipeline]] — the concept covering end-to-end AI research automation; this system is a concrete, benchmark-validated instance
- [[software-intelligence-explosion]] — recursive self-improvement / intelligence-explosion concept this work positions itself within
- [[co-evolving-evaluator-hardening]] — the concept this paper introduces: iteratively strengthening the evaluator against reward hacks as the search grows stronger
- [[automated-ai-research-loop]] — the method (propose→implement→run→validate→choose-next over many threads) this paper instantiates
- [[ai-systems-about-start-building-themselves]] — benchmark-mosaic argument for imminent automated AI R&D; this work supplies fresh SOTA evidence
- [[living-within-experiment-inherent-labs-manifesto]] — AI-native research organization / collective recursive self-improvement
- [[automating-gpu-kernel-generation-deepseek]] — LLM-driven GPU kernel generation; SOL-ExecBench here tackles the same kernel-optimization problem
- [[alphaevolve-how-gemini-powered-coding-agent]] — evolutionary coding agent that discovers algorithms/optimizations; same-problem automated discovery
- [[agent-laboratory-using-llm-agents-research]] — LLM-agent research automation framework
