---
title: "AI Training Data Copyright"
aliases: ["text and data mining exception", "TDM opt-out", "copyright licensing for AI", "training data litigation", "fair use for AI training"]
tags: [ai-policy, copyright, data-economy, ai-litigation, eu-regulation]
maturity: emerging
definition: "The unresolved legal regime governing whether and how AI systems may train on copyrighted works — spanning text-and-data-mining exceptions with rightholder opt-outs, fair-use disputes, and litigation over wholesale copying and verbatim reproduction."
key_papers: [directive-eu-2019-790-copyright-related, new-york-times-company-microsoft-corporation]
first_introduced: "2019"
date_updated: 2026-07-05
related_concepts: [scaling-law-data-compensation, public-equity-ai, ai-accountability-gap]
---

## Definition

The contested legal regime governing whether, and on what terms, AI developers may use copyrighted works as training data — spanning statutory text-and-data-mining (TDM) exceptions with rightholder opt-outs (EU), the fair-use question (US), and litigation over wholesale copying and verbatim reproduction. It is the legal backdrop that market-based compensation and ownership proposals attempt to resolve.

## Intuition

Frontier models are trained on the accumulated copyrighted output of humanity. Two poles frame the law: call training fair use / covered by a TDM exception, and every future data-hungry technology gets a pass; call it infringement, and damages could run into the trillions against strategically essential firms. Because no clean ruling satisfies both, the legal fight tends to push toward licensing or compensation regimes.

## Variants

- **EU TDM exception (opt-out):** DSM Directive Art. 3–4 permit TDM, with a machine-readable rightholder opt-out for commercial use.
- **US fair use dispute:** litigated case-by-case (e.g. NYT v. OpenAI/Microsoft), unresolved across the four factors.
- **Verbatim reproduction vs. learned capability:** distinct legal treatment of memorized regurgitation vs. general model ability.
- **Opt-out vs. opt-in vs. compulsory licensing:** competing default regimes.

## Comparison

The *legal* counterpart to the *economic* mechanism in [[scaling-law-data-compensation]] (how to price data) and the ownership designs in [[public-equity-ai]] (who owns the value) — those proposals exist to resolve the impasse this concept names. Adjacent to [[ai-accountability-gap]] (liability for AI outputs) but concerned with inputs (training rights) rather than harms.

## Known limitations

- Highly jurisdiction-specific (EU directive vs. US fair use); no global settlement.
- Key questions (fair use, opt-out enforceability at web scale) are unresolved and litigated.
- Fast-moving; interacts with separate AI-Act transparency duties.

## Open problems

- Is TDM opt-out enforceable in practice (machine-readable reservations respected at scale)?
- Will courts rule training fair use, infringement, or decline a clean answer — and does either force a licensing regime?
- How to treat verbatim regurgitation distinctly from learned capability?

## Realized by

- [[directive-eu-2019-790-copyright-related]] — establishes the EU TDM exception and opt-out.
- [[new-york-times-company-microsoft-corporation]] — the flagship US infringement suit.

## My understanding

This concept is the impasse, not the solution: the law cannot cleanly call training either fair use or infringement without unacceptable consequences either way, which is precisely why the economic proposals (compensation, data equity) are framed as the workable exit. The sharpest legal lever is the EU opt-out and the sharpest evidentiary point is revealed preference (trainers weighting high-value sources), both of which undercut "the data is worth nothing" and point toward some licensing settlement.
