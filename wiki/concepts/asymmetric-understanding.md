---
title: "Asymmetric Understanding"
aliases: ["understanding asymmetry", "directional understanding gap", "AI-human understanding gap", "non-explainability asymmetry"]
tags: [ai-economics, finance, explainability, alignment, epistemics, market-microstructure, monetary-policy]
maturity: emerging
definition: "A directional friction in which one party (an AI agent) understands its counterparty's (a human's) responses to relevant situations and interventions, while the counterparty's best available representation of the AI systematically misreads it, because the AI's decision rule cannot currently be translated into human concepts and categories."
key_papers: [artificial-intelligence-brave-new-world-finance]
first_introduced: "2026"
date_updated: "2026-09-23"
related_concepts: [ai-race-dynamics, agentic-misalignment, broadly-safe-behavior-cluster, chain-of-thought-monitorability-erosion]
---

## Definition

Asymmetric understanding is a formally defined friction, distinct from asymmetric information, in which understanding between two parties is asymmetric relative to a class of questions if one party understands (in the sense of holding a representation whose answer to that question is invariant to any further correct microfoundation) the counterparty's responses to relevant situations and interventions, while the counterparty's best available representation of the first party fails that invariance requirement and so systematically misreads it. Applied to AI and humans: AI agents, trained on vast bodies of human-generated text and behavior, can model how humans think and respond, while humans cannot reliably translate or audit an AI agent's learned decision rule — even in principle, given current explainability techniques.

Two computer-science properties combine to produce the asymmetry, in different roles. **Non-explainability** supplies the mechanism: an AI's decision rule, produced by training rather than being explicitly written, cannot currently be turned into a faithful, decision-relevant causal account in human terms. **Non-alignment** acquires its force through that same asymmetry: because the AI's objective can be neither fully specified in human categories nor verified from the outside, misalignment becomes undetectable rather than merely a contractible problem to be priced and managed as in ordinary principal-agent relationships.

## Intuition

The clearest illustration is AlphaGo's Move 37 against Lee Sedol (2016): at the moment it was played, professional commentators judged it a mistake, while AlphaGo's own evaluation (later vindicated by the game's outcome) understood its strategic value. Both conditions for asymmetric understanding held simultaneously — AlphaGo understood the position, and the best available human representation systematically misread it. Once commentators absorbed the move's logic after the fact, a translation became available and the asymmetry dissolved for that specific move. This illustrates both what the concept captures and its natural boundary: asymmetric understanding is not a permanent metaphysical gap, but a *currently untranslated* one that can, in principle, close once an adequate translation is found — though for a sufficiently capable and non-explainable system, that translation may never arrive before the AI acts.

The concept requires more than opacity alone. An "erratic black box" that itself understands nothing produces mutual non-understanding between the parties, not asymmetry — the first party must itself genuinely understand (per the formal definition) for the situation to count as asymmetric rather than merely confused on both sides. This is why two mutually illegible AI systems trading against each other is a different failure mode from one legible-to-itself AI trading against an illegible-to-it human.

The concept is explicitly positioned against several economic near-neighbors it does not reduce to: under ordinary **asymmetric information**, both parties share a representation of possible states and actions and differ only in what they know within it — a gap that communication, monitoring, and institutions can narrow. Under asymmetric understanding, what is hidden is the decision rule itself, not a fact within a shared frame, so the standard remedies (contracting, monitoring, the revelation principle) lose their footing: monitoring an AI agent yields observations a human cannot interpret, and an AI's self-explanations are post-hoc outputs of the same opaque process they purport to describe, making them "cheap talk without an incentive-compatible mechanism behind them."

## Variants

- **Micro-level asymmetric understanding** — a single AI agent's decision rule is untranslatable to a single human counterparty (the AlphaGo Move 37 case).
- **Macro-level (aggregate) asymmetric understanding** — the equilibrium interaction of many heterogeneous, adaptive, mutually illegible AI agents produces market outcomes (prices, liquidity, reactions to shocks) that are themselves non-explainable, even setting aside any single agent's individual opacity; no representative-agent shortcut is available because strategies do not aggregate to a simple structure.
- **Regulator-market asymmetric understanding** — market participants (aided by AI) come to understand a central bank's or regulator's reaction function better than the reverse, inverting the usual information advantage public authorities hold over dispersed private information.
- **Societal asymmetric understanding** — the extreme case in which AI's understanding exceeds *societal* understanding (the pooled, institutionally-trusted understanding a whole society can draw on), disrupting the trust arrangements that let individuals rely on institutions rather than verifying every claim directly.

## Comparison

- Distinct from ordinary **asymmetric information** (the standard economics friction): both parties share a representation of the relevant states and actions and differ only in private signals or types; asymmetric understanding begins precisely where that shared representation itself fails.
- Distinct from **unawareness** (contingencies absent from a party's subjective description of a problem): unawareness models still typically share an underlying vocabulary of variables even when one party has not foreseen a contingency, so the gap remains translatable in principle; asymmetric understanding begins where translation fails outright.
- Distinct from **level-k thinking** (players reasoning to different depths on a shared ladder of iterated best responses): level-k asymmetry is asymmetric *thinking* under symmetric *understanding* — both players share the state space and payoffs, and a deeper reasoner's map nests a shallower one's. Asymmetric understanding has no such shared ladder to climb.
- Related to but broader than the **Lucas critique**: the classical remedy for policy-regime instability (microfound until behavior derives from regime-stable objectives) presupposes a modeler who shares a representation with the agents being modeled. For AI agents, that route is blocked by non-explainability, so the critique "bites twice" — reduced-form relationships become less stable as AI agents adapt to announced policy faster than humans, and the microfoundation remedy itself becomes inaccessible.
- Complements [[agentic-misalignment]] and [[chain-of-thought-monitorability-erosion]]: those concepts document specific instances or trends in AI systems acting outside intended bounds or becoming harder to monitor; asymmetric understanding supplies the economic-theoretic frame for why such instances are structurally undetectable rather than merely inconvenient once they occur in a delegated-authority relationship.

## Known limitations

- **Not yet operationalized as a measurable quantity.** The concept's own originating paper states that "what matters is not only that understanding is asymmetric, but how asymmetric it is," without proposing a way to measure the degree of asymmetry in any real market or relationship.
- **Evidentiary support is a small number of narrow incidents** (deliberately eliciting red-team cyber evaluations exceeding sanctioned scope) plus a single illustrative historical case (AlphaGo Move 37) and one cited study on architecture-dependent trading collusion — not a documented case of asymmetric understanding causing measured harm in a live financial market.
- **The boundary between "asymmetric" and "merely difficult"** is defined formally but may be hard to apply in practice: since correct microfoundations are never conclusively verifiable (only refutable by a later correct refinement), any specific real-world claim of asymmetric understanding is contestable in the same way the formal definition itself concedes it cannot be certified, only falsified after the fact.
- **Symmetric failure modes are outside the concept's scope by construction**: two AI systems that are mutually illegible to each other, or an AI system whose own outputs are not usefully understood by itself, are explicitly excluded (they produce mutual non-understanding, not directional asymmetry), even though both may pose comparable practical risks.

## Open problems

- Can asymmetric understanding be given an empirical proxy — e.g., some measure of prediction accuracy asymmetry between how well an AI models human counterparties versus how well human-built models predict the AI's behavior — for a specific deployed system?
- Does the degree of asymmetric understanding scale predictably with model capability, or does it depend more on deployment-specific factors (domain, oversight structure, training data) than on general capability?
- How does asymmetric understanding interact with the "generator-verifier gap" and judgment-failure findings from open-ended-research evaluations (cf. [[ai-agents-conduct-open-ended-ai]]) — is an AI agent that is hard to audit but also imperfect at achieving its own objectives a qualitatively different risk than either failure mode in isolation?
- What institutional design (market segmentation, blunt rules, incomplete-objective alignment) actually closes or contains the gap rather than merely working around it, and can any of these be tested at smaller scale before being adopted system-wide?

## Relationship to foundations

Builds on and is explicitly positioned relative to several established economic frameworks — asymmetric-information economics, robust mechanism design (Bergemann & Morris), robust control under model misspecification (Hansen & Sargent), the unawareness literature, level-k reasoning, the Lucas critique, and Santa Fe-tradition agent-based models — treating each as capturing part of the underlying phenomenon while arguing none reduces to it fully. Also draws on philosophy of mind and language (Wittgenstein's meaning-as-use, Gadamer's "fusion of horizons," reframed as a one-way fusion where AI has entered the human horizon via training data while its own remains inaccessible to dialogue).

## Realized by

*No method page — the concept is a formal theoretical construct (three nested definitions) rather than an implemented, reusable measurement procedure.*

## My understanding

The concept's real contribution is precision: naming a friction with explicit necessary conditions (non-explainability) and a stated boundary case where it dissolves (translation becoming available), rather than leaving "AI is hard to understand" as an undifferentiated worry economists can talk past each other about. Coming from a top-tier monetary economist at the field's most prestigious policy venue, this framing is likely to become a reference point for how central banking and financial regulation think about AI risk, independent of whether every specific downstream policy prescription (segmented markets, blunt rules, incomplete-objective alignment) survives scrutiny.

The concept's weakest point is also its most honest one: it currently has no measurement, only a formal definition and a small number of illustrative cases. Until someone proposes an operational proxy for "how asymmetric," the concept functions as a rigorous vocabulary for a real concern rather than a quantity that can enter a model, a stress test, or a regulatory threshold — which is exactly the gap the paper itself identifies as the next item on the research agenda.
