---
title: "AI Existential Risk Probabilities Are Too Unreliable to Inform Policy"
slug: ai-existential-risk-probabilities-too-unreliable
arxiv: ""
venue: "AI as Normal Technology (Substack newsletter; repost of 2024 AI Snake Oil essay)"
year: 2026
tags: [ai-safety, existential-risk, forecasting, p-doom, ai-policy, ai-as-normal-technology, epistemics]
importance: 3
date_added: 2026-10-04
source_type: pdf
s2_id: ""
tldr: "Narayanan and Kapoor argue that AI extinction-risk probabilities have no inductive, deductive, or track-record basis, so policymakers should treat p(doom) figures as intuitions dressed up as numbers rather than as grounds for restrictive policy."
contribution_type: [position, analysis]
datasets: [Existential Risk Persuasion Tournament (XPT), AI Impacts Survey on Progress in AI, Metaculus]
keywords: [p(doom), existential risk forecasting, reference class, superforecasting, proper scoring rules, tail risk, Pascal's wager, pseudo-quantification, milestone forecasting]
domain: "AI Governance / Epistemics"
code_url: ""
cited_by: []
---

## Problem & Context

Governments must decide how seriously to take AI existential risk without scientific consensus. The AI safety community leans heavily on forecasts of the probability of human extinction from AI ("p(doom)"); an estimate like 10% over a few decades would, if credible, make the issue a top priority. The essay was first published in 2024 and reposted in September 2026 because p(doom) rhetoric had become central to public discourse and policy attention, while the estimates themselves were no more rigorous than before. The repost preface separates the argument from three positions the authors do not hold: that forecasters intend to mislead, that quantitative forecasting is bad in general (Narayanan advises the Forecasting Research Institute's Longitudinal Expert AI Panel), or that advocates should stop speaking in probabilities.

## Key idea

A forecaster can only justify a probability to a skeptic in three ways: **inductively** (from a reference class of past events), **deductively** (from a trusted model of the world), or **subjectively** (by appeal to demonstrated forecasting skill). For AI extinction risk, all three fail. The numbers that circulate are therefore **pseudo-quantification**: vague intuitions and fears are turned into precise-looking figures, and policymakers then turn them back into vague intuitions and fears. Because liberal-democratic legitimacy requires that freedom-restricting policy rest on justifications reasonable people cannot reject, such numbers should not drive costly, unevenly distributed policies such as restricting open model releases.

## Method

Conceptual and statistical argument, structured as an elimination of the three justification routes:

- **Inductive.** There is no reference class. Analogies offered (animal extinctions, the industrial revolution, mass-casualty accidents) say nothing about building superintelligence or losing control of it. AI x-risk sits far beyond even Tetlock's "peak uniqueness" geopolitical events.
- **Deductive.** The one existential risk with a credible deductive model is asteroid impact: a physical system where thousands of observed small impacts extrapolate to extinction-level ones. AI risk depends on technological progress and governance, not physics. Attempts like brain-equivalent compute estimates rest on far weaker assumptions and do not touch loss of control.
- **Subjective / track record.** Forecasting skill cannot be measured for unique, rare, long-horizon events. A thought experiment compares a perfect forecaster F with a forecaster G who floors every forecast at 1%. Telling them apart with 95% confidence takes on the order of 10⁸ forecasts under the log score and 10¹² under the Brier score. In general the required sample size grows as O(1/ε⁴) and O(1/ε⁶) respectively, where ε is the floor. Overestimating tail risks is therefore empirically undetectable.
- **Bias analysis.** The authors point to selection bias among AI researchers and among forecasters (who overlap heavily with effective altruism), p(doom) as an identity signal, the log score's asymmetric penalties (which reward reporting the high end of an uncertain range), and anchoring on published medians under reciprocal scoring.

## Experiment & Results

There is no new experiment. The essay draws on existing data:

- **The XPT (Forecasting Research Institute, 2022)**, which the authors call the best-run x-risk forecasting exercise. Estimates of AI extinction by 2100 were:
  - AI experts: 75th percentile 12%, median 3%, 25th percentile 0.25%.
  - Superforecasters: 75th percentile 1%, median 0.38%, 25th percentile near zero.
  - The high end of the AI experts and the low end of the superforecasters differ by at least 100×.
  - The report notes that "few minds were changed" despite monetary incentives to persuade.
- **Forecaster rationales** in the XPT report are informal speculation, not quantitative models.
- **Interpreting numbers.** FTC chair Lina Khan called herself techno-optimistic with a p(doom) of 15%, which the authors note is about 1000× higher than what they would call techno-optimistic.
- **Metaculus** puts the probability of "human-machine intelligence parity before 2040" at 96% (1,300+ forecasters). This only holds because "parity" is defined as graduate-exam performance, a definition too weak to matter for policy. This is the outcome-ambiguity problem in milestone forecasting.
- **Expected-utility reasoning** with near-infinite disvalue reproduces Pascal's wager. Even 1% catastrophic-risk estimates imply drastic policy, which is why methodological grounding matters.

## Limitations

- The essay targets one use, AI x-risk probabilities in public policy. It does not argue that probabilities for unique events are illegitimate in principle (the authors largely agree with Scott Alexander on that point).
- The F-versus-G thought experiment assumes uniformly distributed true probabilities and a fixed floor. It illustrates a mechanism; it is not an estimate.
- The authors explicitly put reasons for *underestimation* out of scope, on the grounds that restrictive policy is the side that carries the burden of proof. Readers who reject that asymmetry will find the bias section one-sided.
- The essay asserts that forecast-motivated restrictions "are likely to increase x-risk" but defers the argument to later essays.

## Open questions

- Which forecasting targets (capability milestones, economic or labor impacts, military AI spending) can be defined unambiguously enough to support policy?
- Can reciprocal or peer-prediction scoring be made robust to anchoring once published medians exist?
- What evidence would actually move AI x-risk priors, given that XPT participants barely updated?
- Do policies that are "robust across a range of risk estimates" exist in practice, and how would they be identified?

## My take

The strongest and most original part is the scoring-rule argument. Overestimating tail risks cannot be detected from track records, while underestimating them is punished infinitely under the log score. That is a structural reason to expect upward drift in reported x-risk numbers regardless of anyone's sincerity. The weaker part is the implied symmetry: showing that a number is unjustified does not show that the risk is low, and the essay's policy conclusion (reject restrictive policies) needs the separate argument it defers. Its lasting value for the wiki is as the reference statement of [[ai-risk-pseudo-quantification]], and as the epistemic background to the follow-up [[big-tent-small-tent-ai-safety]].

## Related

- [[ai-risk-pseudo-quantification]]
- [[ai-normal-technology]]
- [[arvind-narayanan]]
- [[sayash-kapoor]]
- [[big-tent-small-tent-ai-safety]] — follow-up essay drawing the movement-strategy consequences
- [[narayanan-kapoor-ai-normal-technology]]
- [[ai-risks-require-extraordinary-government-intervention]]
