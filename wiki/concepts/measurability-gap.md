---
title: "Measurability Gap"
aliases: ["measurability gap", "Δm", "measurability-biased technical change", "verifiable share of deployment"]
tags: [agi-economics, verification, automation, technical-change, agentic-ai, metrics]
maturity: emerging
definition: "The widening distance between what autonomous agents can execute and what humans can afford to verify, which shifts technical change from skill-biased to measurability-biased and bifurcates economic value by how cheaply an outcome can be checked."
key_papers: [some-simple-economics-agi]
first_introduced: "2026"
date_updated: 2026-08-22
related_concepts: [verification-bandwidth, codifier-curse, automation-augmentation-employment-divide, post-labor-economy]
---

## Definition

The Measurability Gap (Δm) is the distance between the automation frontier — what agents can execute — and the verification frontier — what humans can afford to check. It opens because the cost to automate falls exponentially while the cost to verify is bounded. Its width determines the verifiable share of deployment (s_v), the fraction of agentic output that is genuinely productive rather than merely plausible.

## Intuition

Once the gap is open, the selection pressure in an economy stops running on skill and starts running on measurability. A task survives in human hands not because it is difficult but because its result is expensive to check; a task is displaced not because it is easy but because both its execution and its verification are cheap. This is what "measurability-biased technical change" names, in deliberate contrast to the skill-biased technical change of the previous automation literature.

The corollary is a bifurcation of value. Measurable execution commoditizes toward the marginal cost of compute. Rents migrate to what remains scarce inside the gap: verification-grade ground truth, provenance, and the willingness to underwrite outcomes.

## Variants

- **Static geometry**: sorting activities on the two axes (ease of automation, cost of verification) yields four regimes — Directors, Liability Underwriters, Meaning Makers, and Displaced Workers.
- **Dynamic form**: the gap widens over time as capability outpaces oversight, producing a runaway zone in which deploying unverified systems is privately rational and a "Trojan Horse" externality accumulates.

## Comparison

Sits alongside [[verification-bandwidth]] as its comparative-statics counterpart: verification bandwidth is the constraint, the Measurability Gap is the wedge that constraint opens. Related to [[automation-augmentation-employment-divide]] but cuts the space differently — that divide asks whether a technology substitutes or complements labour, whereas the Measurability Gap asks whether anyone can tell.

## Known limitations

- The two-axis partition is analytically clean but the empirical distribution of activities across it is not measured.
- Treating measurability as a fixed property of a task ignores that measurement regimes are themselves constructed and contested.
- The framework's normative pull — build verification infrastructure — does not distinguish verification that establishes truth from verification that merely establishes auditability.

## Open problems

- How do you empirically locate real occupations on the measurability axis?
- Does the gap narrow in any field, and what closed it?
- What happens to fields whose central claims are not measurable in principle?

## Realized by

- [[some-simple-economics-agi]] — introduces Δm, s_v and the four-regime map

## My understanding

The most portable idea here is that cheap measurement is what makes automation stick. It also predicts a failure mode worth watching in science policy: if a system optimizes for what it can verify cheaply, it will quietly redefine its subject matter as whatever is cheaply verifiable, and call the contraction quality assurance.
