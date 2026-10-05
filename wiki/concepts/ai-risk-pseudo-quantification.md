---
title: "AI X-Risk Pseudo-Quantification"
aliases: ["p(doom) critique", "pseudo-quantification of AI risk", "x-risk probability laundering", "unreliable AI existential risk forecasts"]
tags: [ai-safety, existential-risk, forecasting, epistemics, ai-policy, p-doom]
maturity: emerging
definition: "The critique that published probabilities of AI-caused human extinction rest on no inductive reference class, no deductive model and no measurable forecaster skill, so they launder intuitions into precise-looking numbers that cannot legitimately justify costly public policy."
key_papers: [ai-existential-risk-probabilities-too-unreliable, big-tent-small-tent-ai-safety]
first_introduced: "2024"
date_updated: 2026-10-04
related_concepts: [ai-normal-technology, agentic-forecasting]
---

## Definition

AI x-risk pseudo-quantification describes how p(doom)-style probability estimates work in policy discourse. A skeptic can only be persuaded of a probability through a reference class of past events (induction), a trusted causal model (deduction), or demonstrated forecasting skill. For AI extinction risk all three are unavailable. The resulting numbers are therefore subjective guesses that look precise. Experts translate vague fears into numbers, and policymakers translate the numbers back into vague fears.

## Intuition

If someone forecast an 80% chance of aliens landing within a decade, you would ask for their evidence. A probability carries no authority on its own. It has authority when it comes from a grounded method. Asteroid-impact risk qualifies: thousands of observed small impacts extrapolate through physics to extinction-level ones. AI risk depends on technological progress and governance rather than a physical system, so no comparable method exists. Because we are cognitively biased to trust numbers over qualitative judgments, unjustified probabilities borrow credibility they have not earned.

## Variants

- **Reference-class failure.** Proposed analogues (animal extinctions, the industrial revolution, mass-casualty accidents) say nothing about superintelligence or loss of control.
- **Unmeasurable skill.** Proper scoring rules barely penalize systematic overestimation of tail risks: telling apart a perfect forecaster and one who floors forecasts at 1% takes about 10⁸ (log score) to 10¹² (Brier) forecasts. Underestimation, by contrast, is penalized without limit under the log score, which gives forecasters an incentive to report the high end of their range.
- **Community bias.** Selection effects among AI researchers and EA-adjacent forecasters, p(doom) as an identity signal, and anchoring on published tournament medians.
- **Decision-theoretic amplification.** Expected-utility reasoning with near-infinite disvalue reproduces Pascal's wager. Even small probabilities then imply drastic interventions.

## Comparison

- **Against [[agentic-forecasting]]**: the critique is specific to unique, rare, long-horizon events. It explicitly endorses forecasting of capability milestones and economic impacts, where track records can be scored, which is the kind of target LLM forecasting systems are evaluated on.
- **Within [[ai-normal-technology]]**: supplies the epistemic half of the Normal Technology policy stance. If x-risk numbers are unjustified, policy should be robust across a range of risk estimates rather than optimized for a high one.

## Known limitations

- Showing that a probability is unjustified does not show that the risk is low. The critique is about justification, not magnitude.
- Its proponents scope out reasons for *underestimation* by invoking an asymmetric burden of proof on restrictive policy, a normative premise others reject.
- The scoring-rule thought experiment relies on stylized assumptions (uniform true probabilities, a fixed floor).

## Open problems

- Which unambiguous proxy targets (milestones, labour-market or military-spending indicators) could ground risk-relevant policy?
- Can forecasting tournaments be designed so that published medians do not become anchors?
- What would count as evidence that legitimately moves AI x-risk priors?

## Relationship to foundations

Builds on Tetlock's superforecasting research (reference classes, skill measurement), the theory of proper scoring rules (log and Brier scores), and the liberal-democratic principle that state coercion requires justification reasonable people cannot reject. It is the policy-epistemics counterpart to reciprocal scoring as used in the Forecasting Research Institute's XPT.

## Realized by

*No method page; this is a critical position rather than a procedure.*

## My understanding

The scoring-rule asymmetry is the strongest piece: there is a structural, sincerity-independent reason for reported x-risk numbers to drift upward. The concept is most useful as a filter on how numbers get *used*: "10% extinction risk" in a policy argument should prompt the question "by what method?", not silence.
