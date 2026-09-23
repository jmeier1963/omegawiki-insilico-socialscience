---
title: "Mutually Assured Compute Destruction (MACD)"
aliases: ["MACD", "compute hostage exchange", "compute-based mutual deterrence", "cross-hostage datacenter placement"]
tags: [ai-governance, compute, ai-safety, geopolitics, deterrence, ai-race-dynamics]
maturity: emerging
definition: "A proposed deterrence architecture for an AI capability-limiting treaty in which each party builds its new frontier datacenters on the other's most militarily vulnerable third-party soil, so that either side can destroy or seize the other's compute if the deal collapses — deterring defection the way nuclear MAD deterred first strikes."
key_papers: [ai-2040-plan-deal, strategy-secure-geopolitical-advantage-uncertain-path]
first_introduced: "2026"
date_updated: "2026-09-22"
related_concepts: [frontier-ai-compute-governance, ai-race-dynamics]
---

## Definition

Mutually Assured Compute Destruction is a proposed enforcement mechanism for an international agreement to slow frontier AI development. Rather than relying on trust, monitoring, or legal penalties alone, each party places its newly built frontier-scale datacenters inside the rival's sphere of physical vulnerability — new Chinese compute built in Canada, new American compute built in Mongolia, in the founding proposal — so that if either side defects from the agreement (e.g., secretly races ahead), the other has both the physical access and the standing capability to destroy or seize that compute. The credited threat of mutual, near-instant compute loss is intended to deter defection symmetrically, independent of verification lag or diplomatic trust.

## Intuition

Nuclear Mutually Assured Destruction (MAD) worked, when it worked, not because either side trusted the other but because both sides knew that a first strike would be met with a devastating counter-strike regardless of trust. MACD imports that logic to compute: instead of relying on inspectors catching a violation after the fact, the deterrent is built into the *physical geography* of the infrastructure itself. Placing your own datacenters where your rival can destroy them sounds self-defeating until the symmetry is priced in — the rival's datacenters are equally exposed to you. Defection stops making sense not because it would be detected slowly, but because retaliation is already pre-positioned and instantaneous.

The mechanism is explicitly credited as descending from Hendrycks, Schmidt & Wang's "Superintelligence Strategy," and is presented in its founding instance (AI 2040's "Plan A") as the load-bearing enforcement layer beneath a broader four-principle treaty (Buy Time, Total Research Transparency, Diffuse AI Broadly, Reversibility) — the other three principles describe what the parties agree to do; MACD is what makes reneging costly enough that they actually do it.

## Variants

- **Third-party hosting** (the founding proposal) — datacenters physically located on a third country's soil chosen for the rival's proximity/access, maximizing the rival's practical destruction/seizure capability.
- **Reciprocal vulnerability without third-party hosting** — a weaker variant in which each side's *own-soil* compute is made destructible by the other via agreed remote/physical access mechanisms, without the third-country siting.
- **Floating/mobile compute** — the founding scenario later moves toward floating ocean datacenters (2034), which changes the destruction/seizure calculus (harder to seize, easier to scuttle) without abandoning the underlying MACD logic.

## Comparison

- Distinct from [[frontier-ai-compute-governance]], which is a *regulatory threshold* approach (FLOP-based reporting/safety obligations triggered by training-run size, e.g. EU AI Act's 10^25 FLOPs). Compute governance asks "does this training run trigger oversight requirements?"; MACD asks "what stops either party from secretly ignoring an agreement once made?" The two are complementary layers — a treaty could use compute-threshold reporting to define what must be declared, and MACD to enforce the declared limits — not competing mechanisms.
- Directly analogous to nuclear MAD, and inherits its central weakness along with its stabilizing logic: it deters by threat of mutual loss, not by aligning incentives, so it is only as stable as both sides' confidence that the other would actually execute the retaliation rather than bluff.
- Distinct from verification-only regimes (inspection, declaration, audit) in that it does not depend on *detecting* defection quickly — the deterrent value is front-loaded into the infrastructure's physical exposure, independent of monitoring latency.

## Known limitations

- **Escalation risk is structurally identical to nuclear MAD's**: a false-positive belief that the other side is defecting could trigger a destructive first move that a slower, trust-based verification regime would not.
- **Requires a third country's cooperation** (in the founding proposal) to host the vulnerable infrastructure, introducing a new party with its own incentives and potential leverage over both principals.
- **No treatment of asymmetric power** — the mechanism assumes rough parity between the two principals; it is unclear how it would function (or whether it would be proposed at all) between parties with very unequal existing compute stockpiles.
- **Bluff-proofing is unaddressed.** The proposal does not specify how each side verifies that the other retains actual destruction/seizure capability over time, as opposed to merely claiming to.
- **Entirely speculative** — proposed in a scenario document, not adopted, tested, or war-gamed by any government.

## Open problems

- Would either the US or China realistically accept building strategically vital compute infrastructure on grounds structured to be destroyed by the rival, given the sunk-cost and sovereignty implications?
- How does MACD interact with the compute-declaration and inference-only-verification mechanisms proposed alongside it — does the deterrence layer reduce or increase the burden on the verification layer?
- What happens to MACD's stability if compute becomes decentralized/distributed (e.g., large-scale federated or decoupled training across many smaller sites) rather than concentrated in a few large datacenters the mechanism assumes?
- Is there a smaller-scale, unilateral or plurilateral version of this mechanism that doesn't require full bilateral US-China buy-in, or is MACD only coherent as an all-or-nothing treaty component?

## Relationship to foundations

Directly modeled on Cold War nuclear deterrence theory (Mutually Assured Destruction), substituting compute infrastructure for nuclear arsenals as the asset whose mutual vulnerability deters defection. Also draws on the broader compute-governance literature's premise that compute is the most externally observable and physically concentrated input to frontier AI capability, making it the natural lever for both monitoring (frontier-ai-compute-governance) and, in this proposal, deterrence.

## Realized by

*No method page — the mechanism exists only as a proposed treaty component in a scenario document, not as an implemented or tested procedure.*

## My understanding

The genuinely novel move is reframing frontier compute from an asset to be protected into a hostage to be exchanged — that inversion is what makes MACD interesting rather than just "add deterrence to a compute treaty." It is worth tracking as a specific, citable institutional-design proposal distinct from ordinary compute-threshold regulation, precisely because the two solve different problems (what counts as dangerous vs. what stops you from lying about compliance).

The concept should be read with the same skepticism due any nuclear-strategy analogy applied to a genuinely different domain: nuclear MAD's stability rested on decades of costly signaling, hardened command-and-control, and a shared understanding of what counted as a first strike, none of which yet exists for compute. Until those are specified, MACD is a compelling piece of scenario-writing rather than a workable treaty architecture.
