---
title: "Some Simple Economics of AGI"
slug: some-simple-economics-agi
arxiv: "2602.20946"
venue: "arXiv preprint (econ.GN)"
year: 2026
tags: [agi-economics, verification-bottleneck, measurability-gap, human-oversight, deskilling, labor-substitution, liability, agentic-ai, economic-modeling]
importance: 4
date_added: 2026-08-22
source_type: tex
s2_id: ""
tldr: "Models the AGI transition as a collision between an exponentially falling cost to automate and a biologically bounded cost to verify, so that human verification bandwidth — not intelligence — becomes the binding constraint on growth."
contribution_type: [theory, analysis, position]
datasets: []
keywords: [measurability gap, verification bandwidth, missing junior loop, codifier's curse, liability underwriting, hollow economy, measurability-biased technical change]
domain: "Economics"
code_url: ""
cited_by: []
---

## Problem & Context

Standard economic treatments model AI either as a labor substitute or as a complement to human judgment that is left exogenous. Both framings assume cheap machine output converts more or less directly into realized value. Catalini, Hui and Wu argue that this assumption is what breaks once agents act with broad agency rather than narrow instruction: output that nobody can afford to check is not economically equivalent to output that has been checked.

The paper sits in the growth-and-automation literature (task-based models of automation, skill-biased technical change) but relocates the bottleneck. Where that literature asks which tasks machines can perform, this paper asks which outcomes humans can still afford to validate — and makes that the scarce factor.

## Key idea

The transition is a collision of two cost curves: a **Cost to Automate** (c_A) falling exponentially with compute and accumulated knowledge, and a **Cost to Verify** (c_H) bounded by human time and embodied experience. The widening distance between them is the **Measurability Gap** (Δm), which determines the *verifiable share of deployment* (s_v) separating genuinely productive agentic output from merely plausible output.

Two consequences follow. First, technical change stops being skill-biased and becomes **measurability-biased**: what matters is not how skilled a task is but how cheaply its result can be verified. Second, economic value bifurcates — measurable execution commoditizes toward the marginal cost of compute, while rents migrate to verification-grade ground truth, provenance, and liability underwriting.

## Method

Analytical model rather than empirical study. The authors set up a production function over effective labor composed of human labor and autonomous agent labor (L_a), impose the human-time constraint, and derive an automation frontier from the two cost curves. Comparative statics on the measurability geometry yield the static regime map; adding laws of motion for the human experience stock (S_nm) and for alignment (τ) yields the dynamics. Governance levers are then introduced as parameters on the deployment decision.

Three named dynamic mechanisms drive the instability of the "human-in-the-loop" equilibrium:

- **Missing Junior Loop** — apprenticeship pathways collapse because entry-level tasks are exactly the automatable ones, shrinking the future stock of human expertise precisely when oversight is most valuable.
- **Codifier's Curse** — experts convert their tacit experience into training data (K_IP), manufacturing their own replaceability.
- **Alignment drift** — as agentic capability outpaces oversight, deploying unverified systems becomes privately rational, injecting a "Trojan Horse" externality (X_A) of unaccountable output into production.

## Experiment & Results

No empirical estimation; the results are model propositions and a regime taxonomy.

Sorting activities by ease of automation against cost of verification produces four regimes. Three retain humans: **Directors** (set intent where the objective is itself underspecified), **Liability Underwriters** (adjudicate edge cases and absorb tail risk), and **Meaning Makers** (operate where neither process nor outcome is measurable and validity rests on social consensus). The fourth — cheap to automate *and* cheap to verify — is **Displaced Workers**, for whom the authors' stated strategy is exit.

The dynamic result is that the comfortable human-in-the-loop equilibrium is unstable from below (Missing Junior Loop) and from within (Codifier's Curse), with a gravitational pull toward a "Hollow Economy": explosive nominal output alongside decaying human agency. The counterfactual "Augmented Economy" requires scaling verification alongside agentic power. A specific warning: using AI to verify AI manufactures false confidence because blind spots are correlated.

## Limitations

- Extended-abstract format with an analytical model and no empirical calibration; the cost curves are posited, not estimated.
- The verification-bandwidth constraint is treated as biologically fixed, which understates institutional and tooling substitutes for individual human attention.
- The four-regime taxonomy is a partition of a two-dimensional space, and the paper does not measure how activities actually distribute across it — so the claim that Directors/Underwriters/Meaning Makers are *few* is asserted rather than shown.
- Written with heavy acknowledged LLM assistance, which the authors disclose; the prose does not always separate model results from strategic advocacy.

## Open questions

- Can verification cost be driven down by tooling (formal methods, cryptographic provenance, adversarial testing) fast enough to close the Measurability Gap, or is the biological bound binding?
- What institutional design actually prices the Trojan Horse externality, given that the harm surfaces long after deployment?
- Is the Missing Junior Loop reversible once broken, or is it a hysteresis?
- Does the correlated-blind-spot argument against AI-verifying-AI survive deliberately decorrelated verifier ensembles?

## My take

The paper's contribution is the relocation of scarcity from intelligence to verification bandwidth, and that move generalizes well beyond economics. Two of its mechanisms — the Missing Junior Loop and the Codifier's Curse — are the economic form of arguments made independently in the epistemology of AI-assisted science ([[messeri-crockett-ai-illusions-understanding]] on illusions of understanding, [[kosmyna-brain-chatgpt-cognitive-debt]] on cognitive debt): apprenticeship-by-struggle is the input that produces the judgment later needed for oversight, and automating the struggle removes the input while keeping the requirement.

The four-regime taxonomy is the more useful export. It arrives from a cost-theoretic direction at roughly the positions that philosophy-of-science reasoning reaches from the other side — intent, accountability, and value-adjudication as the non-substitutable human roles. The convergence is worth taking seriously; the accompanying claim that these positions are *numerically few* is the part that deserves scrutiny, since it is the step that turns an epistemological argument into a labor-market forecast.

## Related

- [[ai-native-firms]] — measures the organizational form this model predicts: smaller, more senior, flatter, with the middle missing
- [[messeri-crockett-ai-illusions-understanding]] — the epistemic counterpart of the verification bottleneck
- [[kosmyna-brain-chatgpt-cognitive-debt]] — mechanism evidence for the Missing Junior Loop at the individual level
- [[artificial-intelligence-tools-expand-scientists-impact]] — output rises while focus narrows, an instance of measurability-biased selection
- [[verification-bandwidth]] · [[measurability-gap]] · [[codifier-curse]]
- [[man-who-coined-term-vibe-coding]] — practitioner statement of the same residual: aesthetics, judgment, taste, oversight
- [[2026-ai-index-report]] — the concentration and compute figures behind the privatization argument
