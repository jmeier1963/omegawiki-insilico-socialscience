---
title: "Research Taste Bottleneck"
aliases: ["research taste", "direction-setting bottleneck", "research judgment", "human comparative advantage in AI R&D", "taste as the last human moat", "Amdahl bottleneck in AI research"]
tags: [ai-rnd-automation, recursive-self-improvement, human-ai-division-labor, research-automation, ai-capabilities]
maturity: emerging
definition: "The claim that as AI automates the execution of AI research and engineering, the binding constraint on progress shifts to research taste — choosing which problems matter, which results to trust, and when an approach is a dead end — the last capability where humans retain comparative advantage."
key_papers: [when-ai-builds-itself, ai-agents-conduct-open-ended-ai]
first_introduced: "2026"
date_updated: 2026-07-05
related_concepts: [software-intelligence-explosion, automated-research-pipeline, human-ai-division-labor-agentic-work, marginal-returns-to-intelligence]
---

## Definition

As AI systems become able to execute the "doing" of AI research and engineering — writing code, running experiments, producing results — nearly for free in human time, the binding constraint on progress shifts to *research taste*: choosing which problems are worth working on, which results to trust, and when an approach is a dead end. This judgment is framed as the last capability where humans retain a comparative advantage, and therefore the pacing bottleneck for further automation.

## Intuition

By Amdahl's law, speeding up one stage of a pipeline only shifts the bottleneck to the parts that haven't sped up. When code authorship and experiment execution are automated, human review and direction-setting become the limiter. Two readings follow: a conservative one — even if AI never acquires taste, humans steering a single-digit fraction of work still implies compounding acceleration — and an aggressive one — taste is "just another capability" AI fails at for a while, then masters (as with theory-of-mind or joke explanation).

## Variants

- **Taste as a hard ceiling:** direction-setting requires something scaling cannot supply (would need a post-Transformer architectural idea).
- **Taste as a temporary gap:** early evidence (next-step-judgment win rates rising over model generations) suggests it is an ordinary, improvable capability.
- **Bottleneck-shifting skill:** the meta-capability of spotting and fixing whichever bottleneck currently binds may become an organization's most valuable skill.

## Comparison

Closely tied to [[human-ai-division-labor-agentic-work]] (humans decide *what*, agents decide *how*) but specific to the AI-R&D-automation setting and framed as the *pacing* constraint on [[software-intelligence-explosion]]. Complements [[automated-research-pipeline]] by naming the residual human step that pipeline does not yet close. Related to [[marginal-returns-to-intelligence]]: whether more intelligence resolves taste or hits diminishing returns.

## Known limitations

- Whether taste is a distinct capability or a bundle of measurable sub-skills is unsettled.
- Evidence for taste being learnable (judgment win-rate trends) comes from studies deliberately sampling moments where the human choice had room to improve — not like-for-like.
- The concept is defined largely from within one frontier lab's self-report.

## Open problems

- Is research taste a genuine ceiling that scaling cannot cross, or a capability AI acquires on the usual curve?
- Once taste is automated, what binds next — compute/energy supply, verification, or organizational adaptation?
- Can taste be evaluated with a benchmark rather than inferred from next-step comparisons?

## Realized by

- [[when-ai-builds-itself]] — frames research taste/judgment as the final human comparative advantage and the Amdahl-law bottleneck in automated AI R&D.

## My understanding

This is the load-bearing uncertainty in the whole recursive-self-improvement debate: if taste is a hard ceiling, RSI stalls at "very fast assistant"; if it is learnable, the loop closes. The strongest version of the argument doesn't even need taste to be automated — it only needs direction-setting to be a small fraction of the work, so that each human steers vastly more, which already compounds. Worth tracking whether the judgment-win-rate trend keeps climbing across model generations.
