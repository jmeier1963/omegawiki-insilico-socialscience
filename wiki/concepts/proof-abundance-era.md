---
title: "Proof Abundance Era (Math 2.0)"
aliases: ["Math 2.0", "era of proof abundance", "proof scarcity to proof abundance transition"]
tags: [ai-math, mathematical-research-culture, theorem-proving, formal-verification, ai-alignment]
maturity: emerging
definition: "A proposed transition in mathematical research culture, driven by AI's combination of objectively verifiable, digitizable output and large training datasets, from a historical 'proof scarcity' regime — in which problem-solving was a reliable proxy for the field's deeper health — to a 'proof abundance' regime in which that same proxy becomes misaligned, and even actively harmful, requiring the field to deliberately expand its research frontier while decentering problem-counting as a goal in itself."
key_papers: [math-terence-tao-caltech-talk-proof]
first_introduced: "2026"
date_updated: "2026-11-02"
related_concepts: [ai-mathematical-discovery, llm-capability-funnel]
---

## Definition

**Proof abundance** names the condition in which AI tools can rapidly produce objectively verified (e.g. Lean-checked) solutions to a large class of mathematical problems, in contrast to the historical **proof scarcity** regime under which finding and verifying a correct proof required significant, often rare, human expertise and effort. The era of proof abundance is not merely a capability claim; it is paired with a normative argument that the field's institutions, incentives, and stated objectives — largely organized around the scarcity assumption — must adapt, because problem-solving as a visible proxy for mathematical progress becomes misaligned once solving is abundant and cheap.

## Intuition

Under scarcity, "how many hard open problems has this researcher solved" was a reasonable, if imperfect, signal of mathematical contribution, because solving was itself difficult and rare. Under abundance, that signal breaks: an AI system can potentially solve many problems quickly without producing the transferable understanding, taste, or exploratory insight that solving used to generate as a side effect. Optimizing for the old proxy (raw solve-count) under the new regime risks "reaching lighthouses prematurely" — collapsing a problem that was serving as a useful landmark for exploring the surrounding mathematical landscape, before that exploration has happened, and thereby sterilizing the surrounding field rather than advancing it.

## Variants

- **Math 1.0** — the proof-scarcity baseline: human understanding mediates between problems and solutions in both pure and applied mathematics, in a renewable cycle where insights from solved pure problems safely transfer to applied ones via human judgment.
- **Math 2.0 (naive)** — AI is inserted purely as a faster problem→solution pipeline, bypassing human understanding; this version is explicitly flagged as damaging to the field's long-term health and to safe transfer of results to real-world applications.
- **Math 2.0 (aligned / sustainable)** — AI is used to *strengthen* every link in the human-understanding cycle rather than bypass it: open-exposition problems (explaining *why* known results are true, not just proving new ones), living networks of interconnected results, large-scale "experimental mathematics" population surveys, and tools for probing AI's own mathematical models for misalignment.

## Known limitations

The framing is a position/argument rather than a measured phenomenon — there is no quantitative definition of when a field has "entered" proof abundance, nor a formal test for whether a given solved problem was a "lighthouse" whose premature resolution harmed the field versus ordinary healthy progress.

## Open problems

How to measure or incentivize "understanding" as a first-class, fundable research output separate from verified proof; how to redesign mathematical institutions (hiring, tenure, prizes) that were built under the scarcity assumption; and how to distinguish, in practice and in advance, lighthouse problems whose premature AI-driven solution would sterilize a field from problems whose solution safely opens new research.

## Relationship to foundations

Builds directly on long-standing observations about the social function of open problems in mathematics (as organizing devices for a field, not merely targets) and on the general-purpose-technology literature's point that new technologies require complementary institutional reorganization, not just adoption — see [[firm-level-ai-complementarities]] for the analogous argument in firm-level AI economics.

## My understanding

The most transferable idea here, for the rest of this wiki, is the "lighthouse" framing of open problems: it reframes the question "did AI solve problem X" away from a pure capability scoreboard and toward "did solving X this way preserve or destroy the exploratory value the unsolved problem was providing the field" — a distinction worth applying when evaluating future AI-math ingests, and one that generalizes beyond mathematics to any domain where unsolved problems function as coordination devices for a research community.
