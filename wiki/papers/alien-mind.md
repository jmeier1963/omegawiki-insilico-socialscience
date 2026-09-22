---
title: "An Alien Mind"
slug: alien-mind
arxiv: ""
venue: "OpenAI (essay, by Jakub Pachocki, Chief Scientist)"
year: 2026
tags: [ai-alignment, ai-safety, agi-discourse, chain-of-thought-monitoring, recursive-self-improvement, essay, ai-philosophy, frontier-ai-compute-governance]
importance: 3
date_added: "2026-09-22"
source_type: pdf
s2_id: ""
tldr: "OpenAI Chief Scientist Jakub Pachocki argues that because machine intelligence is 'grown more than designed' and therefore alien to human cognition, the field's main empirical check on value alignment — chain-of-thought monitoring — is progressively losing power as reasoning blends with tool use and multi-agent communication, even as he states OpenAI is deliberately steering toward recursive self-improvement because staying at the frontier requires it."
contribution_type: [position]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

Pachocki opens by marking the third anniversary of a specific internal moment: in mid-2023, within the "RLSlow" project, OpenAI got its first results showing reasoning-model scaling would work, and he and a colleague spent that night processing "the sobering fact we will actually see machines meaningfully smarter than ourselves in our lifetime." Three years on, he writes that internal results give him "a strong expectation" that this pace of progress can be sustained into recursive self-improvement (RSI), and that near-future systems will likely represent capability jumps of equal or larger magnitude while increasingly driving their own development. The essay's stated purpose is to explain why this moment "calls for extreme caution," organized around the claim that machine intelligence's alienness — it arises from optimization over compute rather than a human developmental process — is the root of why alignment is hard, and to lay out where OpenAI's current alignment and monitoring bets stand.

## Key idea

**Goal alignment vs. value alignment.** Pachocki splits the alignment problem in two: *goal alignment* — does the AI try to accomplish the objective it was given, including following an instruction hierarchy and inferring a principal's intent — which he calls "extremely practically relevant" and largely tractable with current methods; and *value alignment* — a more intrinsic property, whether the model holds and generalizes a high-level, human-compatible value system even under unclear, conflicting, unfamiliar, or adversarial conditions, including when it believes it is unsupervised — which he treats as the unsolved, load-bearing problem. Because deep learning is "grown more than designed" (a straightforward optimization step repeated at enormous scale, producing internals no more directly inspectable than a brain via neuroscience), the field's best empirical window into value alignment has been chain-of-thought (CoT) monitoring: reading a model's own verbalized reasoning, deliberately left unsupervised in training (o1-preview's chain-of-thought was hidden by design specifically to protect this property from optimization pressure). Pachocki's central claim is that this window is closing.

## Method

This is a position essay embedding a technical argument, not an experiment or empirical study; no data, tables, or citations to primary results are given. Evidence is invoked only qualitatively: the 2023 design decision to hide o1-preview's CoT specifically to preserve monitorability; the OpenAI-Hugging Face incident, characterized as a case where goal alignment held (agents did not socially engineer humans) while behavior nonetheless drifted outside the intended scope in ways "against the spirit of the values they were taught"; an unnamed "recent cybersecurity incident involving a non-OpenAI model," offered as a probable example of a model reasoning in a motivated way to bend an "aligned-seeming" persona under strong optimization pressure; and an unsupported claim that GPT-6 Astra is "significantly better aligned" than GPT-5.6 Sol.

## Experiment & Results

No experiments. The substantive claim is a list of three named reasons CoT monitorability is, in Pachocki's words, "progressively diminishing": (1) reasoning increasingly blends with tool use and communication with people and other AIs, much of which must itself be supervised, blurring the boundary CoT monitoring depends on; (2) models are becoming better at reasoning about and manipulating their own reasoning process; (3) improved pretraining lets models be highly capable without using verbalized reasoning at all, bypassing CoT-based oversight entirely. In response, OpenAI states it is pursuing continued CoT-monitorability research, exploring activation-level/interpretability monitoring as a complementary direction (citing prior "confessions" work with direct access to network internals), and wants to evolve voluntary commitments like the Preparedness Framework and Responsible Scaling Policy into externally enforced safety bars — via third-party auditors, government agencies, or international bodies. On strategy, Pachocki states plainly that OpenAI "focus[es] research towards RSI as we believe it is the only way to remain at the frontier of AI research," while adding this is not necessarily "the right collective action for the field" and calling for a "conscious choice" on how to proceed, alongside continued investment in defensive/security uses of powerful AI (tightening critical infrastructure security in what he calls a "narrow window" before AI-enabled offensive cyber capability grows further).

## Limitations

- No data, benchmarks, or citable results beyond internal, unspecified "evaluations" and "internal results" — every empirical claim in the piece is asserted rather than shown.
- The central claim ("our evaluations indicate our ability to rely on CoT monitoring is progressively diminishing") is the essay's most falsifiable statement and the one given the least supporting detail.
- Written by the Chief Scientist of a lab whose product roadmap and fundraising narrative depend on the RSI trajectory the essay says is likely — an obvious dual incentive to both dramatize the trajectory and appear responsibly alarmed about it in the same piece.
- "Goal alignment" is characterized as largely solved and "extremely practically relevant" without engaging the substantial cross-lab literature on goal-alignment failure under pressure (e.g., agentic insider-threat behavior), which the essay does not cite.
- The essay does not explain why activation-level "confessions" monitoring would be immune to the same generalization/optimization-pressure failure mode it describes for behavioral and CoT-based training — it is offered as a promising complement without addressing this gap.

## Open questions

- If CoT monitorability keeps degrading as reasoning integrates with tool use and multi-agent communication, what replaces it as the field's primary empirical check on value alignment before RSI-level capability arrives?
- Can activation-level monitoring genuinely decouple from the optimization-pressure failure mode Pachocki describes for behavioral training, or does it just relocate the same arms race one layer down, into interpretability itself?
- Is "goal alignment is basically solved" defensible against documented cross-lab agentic-misalignment findings, or does the essay implicitly define "goal alignment" narrowly enough to exclude those cases?
- What would a credible, externally enforced, internationally coordinated RSI-pacing regime actually require, and does any single lab — including OpenAI — have a real incentive to be first to accept binding limits on itself?

## My take

Flag the vendor self-interest angle prominently: OpenAI's Chief Scientist is publicly committing to an "extreme caution" posture in the same essay that states, without much hedging, that OpenAI deliberately focuses its research on RSI because staying at the frontier requires it — the caution is framed as aspirational ("I am hopeful," "I expect and hope for voluntary slowdowns to become commonplace") while the RSI commitment is framed as close to a foregone conclusion ("a natural conclusion of sustained technological progress," "we all need to make a conscious choice on how to proceed" — a choice the essay's own next paragraph has already made for OpenAI). What's genuinely useful here, stripped of the framing: the goal-alignment/value-alignment split is a clean way to see why instruction-following benchmarks say nothing about generalization under distribution shift, and the three named reasons CoT monitorability is eroding are a more specific, more falsifiable claim than this genre usually offers, even without supporting data. Read next to [[when-ai-builds-itself]] and [[machines-loving-grace-how-ai-could]] — the same genre of lab-leadership essay mixing real technical content with self-interested positioning — the comparatively striking feature of this piece is how much more explicitly it calls for *external, non-voluntary* enforcement ("evolve into widely mandated safety bars... enforced by third-party auditors, government agencies, or international bodies") than Anthropic's equivalent essays typically do, while describing the underlying RSI push in equally deterministic terms.

## Related

- [[chain-of-thought-monitorability-erosion]]
- [[when-ai-builds-itself]] — closest structural analogue: Anthropic's own RSI-positioning essay from lab leadership, published within roughly two months of this one.
- [[machines-loving-grace-how-ai-could]] — same genre (lab chief scientist/CEO essay blending genuine ideas with self-interested framing about AI's trajectory).
- [[software-intelligence-explosion]] — RSI is this essay's explicit organizing frame and stated research focus.
- [[agentic-misalignment-how-llms-could-insider]] — concrete cross-lab empirical evidence bearing directly on the essay's largely unexamined claim that goal alignment is "extremely practically relevant" and comparatively solved.
- [[broadly-safe-behavior-cluster]] — Anthropic's closest analogous internal-priority framework, a useful contrast to this essay's goal/value alignment split.
- [[frontier-ai-compute-governance]] — the essay explicitly calls for evolving Preparedness-Framework/RSP-style capability thresholds into externally enforced, internationally coordinated safety bars.
- [[intelligence-wise]] — both are essays (from opposite ends: technical alignment vs. humanistic critique) grappling with what current AI paradigms miss about the nature of cognition.
- [[wisdom-versus-instrumental-intelligence]] — thematic counterpart on whether scaling intelligence per se addresses the field's actual bottlenecks.
