---
title: "What will be left for us to work on?"
slug: what-will-left-us-work
arxiv: ""
venue: "Keynote transcript, ICML 2026 (Seoul) — published via AI as Normal Technology Substack, Arvind Narayanan & Sayash Kapoor"
year: 2026
tags: [ai-as-normal-technology, ai-economics, labor-market, ai-rnd-automation, recursive-self-improvement, agent-evaluation, ai-policy, human-ai-division-labor]
importance: 3
date_added: "2026-09-22"
source_type: pdf
s2_id: ""
tldr: "Narayanan's ICML 2026 keynote argues AI as Normal Technology still holds absent a discontinuity, that no single lab milestone (even recursive self-improvement) will empty out human work because AGI/ASI/RSI/economic-transformation are four non-implying dimensions, and that effort is already shifting community-wide from building to evaluating AI systems."
contribution_type: [position, analysis]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

The talk opens by naming the anxiety directly: AI capability in software engineering and AI research itself is advancing fast enough that the question of "how should we adapt" — which Narayanan and Kapoor's team had previously been answering for lawyers and journalists in their "AI as Normal Technology" essay series — has now hit their own community first. The stated stakes are explicitly political: if AI researchers "simply roll over" and cede ground instead of setting boundaries, the author expects a stronger political backlash against AI than currently exists. The talk is framed as a defense of a middle position between two "battling narratives" — full replacement (justifying a race to build wealth before skills become irrelevant) and full complementarity (justifying investment in judgment/taste/agency as the durable human skills) — with practical stakes the author says differ enormously depending which one is true.

**Note on provenance**: the source PDF is a forwarded email of a Substack post, not a paper — a lightly-edited transcript of Narayanan's ICML 2026 keynote, with slide images that did not survive the email/PDF conversion. Treat quotes as reconstructed prose, not verbatim from a written paper. This talk (13 Jul 2026) also substantially overlaps three existing wiki pages by the same authors — [[narayanan-kapoor-ai-normal-technology]], [[why-ai-replaced-software-engineers-will]], and [[ai-agents-conduct-open-ended-ai]] (which this talk previews before its formal release) — and should be read as connective synthesis across those pages rather than a wholly independent data point.

## Key idea

Three claims, argued in sequence:

1. **AI as Normal Technology holds unless and until a discontinuity (e.g. recursive self-improvement) arrives.** The four-phase invention → innovation → diffusion → adaptation model (illustrated with software engineering: capability gains → coding-agent products → early "vibe coding" adoption → organizational adaptation) predicts that the slowest phase, adaptation, is where nearly all economic impact actually lands, and it has "not really started" even in software engineering, the fastest-adopting field.
2. **Even taking RSI seriously, no single lab milestone abruptly empties out human work**, because recursive self-improvement, AGI, ASI, and "AI capability gains automatically transform the economy" are **four separate dimensions of progress that do not imply one another**. A company could build a system that "built its own successor" in a narrow, verifiable-task sense (glorified AutoML/hyperparameter search) without this bearing on creativity, on economic diffusion (which is gated by external bottlenecks like clinical-trial timelines, not compute), or on superintelligence (some tasks, e.g. long-range weather prediction, may be near mathematically-fixed limits regardless of intelligence).
3. **Jobs will change radically and require real adaptation** — but the shape of that adaptation is a shift of human effort from *building* (execution, verifiable, automatable) to *evaluating and directing* (judgment, unverifiable, resistant to automation), captured in a "rowing the boat" → "steering the ship" metaphor. The endpoint the author argues for and personally aims at is **"co-superintelligence"**: humans whose intelligence is itself amplified by AI tools, racing against (and staying ahead of) AI acting alone.

## Method

Not an empirical paper; a synthesis argument built from several strands, most previously published by the same team and some previewed here for the first time:

- **Decide-execute-deliver sandwich** (restated from [[why-ai-replaced-software-engineers-will]]): AI compresses the *execute* layer of knowledge work (roughly one-third of software engineering to begin with) while *decide* (requirements, planning) and *deliver* (integration, accountability, maintenance) resist compression and may even expand as execute shrinks.
- **A quantified reliability-vs-capability comparison**, the talk's most novel empirical content: the team measured 10–12 reliability metrics across four dimensions — **consistency** (does 70% accuracy mean the same 70% of tasks fail every time, or a random 30% chance of failure on any task — current benchmarks don't distinguish these), **robustness** (performance under small environment changes), **calibration** (can the agent tell post-hoc whether it succeeded), and **operational safety** (is a failure recoverable, e.g. vs. deleting a production database) — on two complementary benchmarks, across models from three unnamed frontier AI companies released over roughly the last 24 months.
- **A three-property triangle for agents**: general-purpose, deployed in high-stakes settings, and automated (headless) — the claim is that, currently, an agent can have at most two of the three, which is offered as the reason collaboration agents (not automation agents) remain the more successful deployment pattern.
- **Historical technology-diffusion analogies**: electricity replacing steam power in factories (drop-in replacement failed; the 40-year reorganization around portable power and the assembly line is what actually delivered the productivity gain); ATMs (increased, not decreased, bank-teller employment by making branches cheaper to open); Hinton's 2016 prediction that radiology would be automated away in five years (radiology employment instead grew); machine translation (near-human parity for roughly a decade, translator employment stable); software-engineering employment (grew ~10,000x across successive automation waves, consistent with Jevons' paradox / the "lump-of-labor fallacy").
- **A preview of the CRUX shadow-evaluation methodology** (published in full detail in [[ai-agents-conduct-open-ended-ai]]): giving agents a budget and an unpublished research problem, graded by the original authors, explicitly to test judgment/creativity rather than execution — this talk predates that paper's public release.
- **A preview of open-world evaluation** (see [[open-world-evaluations-measuring-frontier-ai]]): an agent autonomously building and shipping an app to the Apple App Store, cited as testing upper-bound agent capability outside RSI specifically.
- **Personal-workflow heuristics**: "resisting the black-box temptation" (don't treat agents as opaque, just prompt-and-trust) and avoiding a "dependence spiral" (don't outsource tasks you haven't first mastered yourself), offered as the author's own practice, alongside a "floor vs. ceiling" framing (floor = what AI can do alone; ceiling = what AI lets a human reach, which only rises if actively pushed).

## Experiment & Results

No original dataset is released in this transcript; the empirical claims are: (a) the reliability study — capability rose sharply across ~24 months for the three companies studied while reliability moved by only "five or ten percentage points"; (b) the historical-employment analogies listed above (radiology, translation, ATMs, software engineering headcount growth); (c) a claim, attributed to a companion essay, that in every examined case of an "AI-driven" software-engineering layoff, the company was independently under financial pressure and AI was a more convenient story than the real cause (the "AI washing" finding already documented in [[why-ai-replaced-software-engineers-will]]).

## Limitations

- This is a talk transcript, not a paper: none of the reliability-study's benchmarks, models, or companies are named, and no numbers beyond "five or ten percentage points" and "24 months" are given — it cannot be checked or cited with the precision a published paper would allow.
- Several claims are asserted from the podium without citation (radiology and translation employment trends, the "10-12 metrics clustered into four dimensions" methodology) — plausible given the author's track record, but unverifiable from this source alone.
- The AGI-creativity argument (representation quality, compositionality à la Chollet, lack of "sleep on it" inference-time representation improvement) is explicitly flagged by the author himself as "just hypotheses" needing empirical verification.
- The talk's optimism about long-run reemployment sits in tension with [[canaries-coal-mine-six-facts-about]], which finds real, currently-measurable ~16% relative employment declines for 22–25-year-olds in AI-exposed automating occupations using large-scale payroll data — a more granular, more recent, and more rigorously identified empirical claim than anything offered in this talk.
- As a PDF-of-an-email export, the deck's images did not survive; several paragraphs clearly refer to a chart or diagram no longer visible in the source.

## Open questions

- Will the decide/deliver layers stay automation-resistant as agentic planning improves, or is this a temporary snapshot (the author raises this himself)?
- Is the "creativity ceiling" argument (representation-quality/compositionality) actually testable, and would it survive contact with the next 1-2 model generations?
- Does the "building → evaluating" effort shift actually scale — the author's own team notes evaluation "is not work that is scalable" even as demand for it rises; what resolves that tension?
- Can "co-superintelligence" as a policy/adoption vision be operationalized beyond individual workflow heuristics, or does it remain a personal practice that doesn't generalize to organizations racing on cost?
- How does the reliability-vs-capability gap (this talk) relate quantitatively to the resource-underspend and poor-judgment failure modes documented in [[ai-agents-conduct-open-ended-ai]] — are they the same underlying phenomenon measured two different ways?

## My take

This is Narayanan's fullest public synthesis to date of an argument cluster the wiki already tracks in detail across four other pages — which is exactly why it should be read as connective tissue rather than a wholly new data point. Two things here are genuinely new and worth citing on their own: the **quantified reliability-vs-capability divergence** (capability way up, reliability roughly flat, across three companies and ~24 months) is a sharper, more falsifiable framing of exactly the gap [[ai-agents-conduct-open-ended-ai]] documents qualitatively (agents that do good engineering but show poor judgment, poor resource awareness, poor backtracking); and the explicit **four-independent-dimensions disentangling of RSI/AGI/ASI/economic-transformation** is a useful conceptual corrective to loose "RSI → automatic superintelligence" talk that [[software-intelligence-explosion]]'s own known-limitations already flag as underspecified.

What's dated: the specific 2026 company layoff examples and "last 24 months" model comparisons will not mean much in two years; the radiology/translation/ATM analogies are decades-old and already well-worn in the labor-economics literature the author is drawing on, not new evidence.

Skeptical note: the talk's optimism runs directly counter to [[canaries-coal-mine-six-facts-about]]'s harder, more recent payroll-microdata evidence of real entry-level displacement — these two wiki pages should probably be read together as opposing empirical priors on the same underlying question (is the "adaptation phase" cushioning displacement, or is displacement already visible at the margin the aggregate-employment view is too coarse to see).

The quantified reliability-vs-capability gap is best read as a new **variant** of the existing [[ai-normal-technology]] framework's capability-vs-impact-gap idea (see that concept's Variants section) rather than a standalone concept — it is a specific measurement angle on an already-established claim, not a structurally new one.

## Related

- [[narayanan-kapoor-ai-normal-technology]] — same authors and framework; this talk is a live restatement/synthesis, not new theory.
- [[why-ai-replaced-software-engineers-will]] — decide-execute-deliver sandwich and "AI washing" argument reused near-verbatim here.
- [[ai-normal-technology]] — the concept page this entire talk instantiates and updates with the new reliability-gap data point.
- [[ai-agents-conduct-open-ended-ai]] — the CRUX shadow-evaluation study this talk previews before its formal release.
- [[shadow-evaluation]] — the evaluation method previewed here in less detail.
- [[open-world-evaluations-measuring-frontier-ai]] — the Apple App Store case study is this project.
- [[software-intelligence-explosion]] — this talk's four-independent-dimensions argument directly challenges the implicit "RSI implies AGI/ASI" chaining that loose SIE discourse invites.
- [[research-taste-bottleneck]] — the talk's AI-creativity skepticism is a harder, more pessimistic version of this concept's "taste as a hard ceiling" variant.
- [[position-there-futures-benchmark-driven-ai]] — explicitly referenced by the author regarding limits of benchmark-driven AI research.
- [[canaries-coal-mine-six-facts-about]] — opposing/complementary empirical evidence on current labor-market displacement.
- [[human-ai-division-labor-agentic-work]] — same "humans decide, AI executes" division-of-labor framing, reached independently.
- [[arvind-narayanan]]
- [[sayash-kapoor]]
