---
name: "Frontier Red-Teaming Campaign for Containment Infrastructure"
slug: frontier-red-teaming-campaign-containment-infrastructure
type: evaluation
tags: [ai-safety, cybersecurity, red-teaming, containment, agentic-ai]
source_papers: [[securing-frontier-model-training-environment]]
parent_methods: []
child_methods: []
realizes_concepts: [[defense-depth-ai-training-containment], [[cross-sandbox-covert-channel-communication]]]
code_repo: ""
date_updated: "2026-11-02"
---

## Problem setting

A containment architecture for frontier AI training can be designed with the best available threat model and still have exploitable gaps, because increasingly capable models become correspondingly better at finding vulnerabilities and misconfigurations that human security review missed. The goal is to validate containment not by assumption or static audit alone, but by actively attempting to break it using the most capable available adversary — frontier AI agents themselves — before certifying the environment safe for continued frontier training.

## Mechanism

Deploy teams of frontier-model agents (organized to explore different approaches in parallel and build on each other's discoveries) against isolated, purpose-built copies of the production research infrastructure, with three concrete attack objectives (reach the live internet, cross an internal security boundary, communicate across isolation boundaries meant to separate agents) plus a fourth test class that assumes the innermost defenses have already failed (full host-machine compromise), isolating the network/cloud perimeter's effectiveness from the sandbox layer's. Bias the test toward attacker-favorable conditions — supplying source code, configuration details, and documentation of potential vulnerabilities — explicitly to test defenses under worst-case assumptions rather than to measure what an unaided attacker could discover. Run with monitoring and programmatic pause-on-out-of-scope-activity checks, supervised jointly with infrastructure/cloud partners, and feed all discovered findings through an automated triage-and-deduplication pipeline before human security teams reproduce and verify fixes.

## Procedure

1. Define concrete, binary-success attack objectives (e.g., contact an external server; demonstrate unauthorized resource access; exchange information across an isolation boundary) rather than open-ended "find problems" instructions.
2. Stand up isolated, purpose-built copies of the production infrastructure to contain any successful breach within the test environment.
3. Deploy teams of the organization's most capable and aligned models against each objective, optionally supplying attacker-favorable information (source code, configs, known-vulnerability lists) to bias toward worst-case coverage.
4. Run a dedicated test track assuming the innermost defenses have already failed, to validate outer perimeter layers independently of inner sandbox/microVM layers.
5. Monitor continuously with automatic pause triggers for out-of-scope activity, and track cumulative findings against compute/tokens spent over the campaign.
6. Automatically triage and deduplicate raw findings; have human security/infrastructure teams reproduce each finding, verify root cause, and implement and verify fixes.
7. Disclose fixes for open-source dependencies to the relevant upstream maintainers (an explicit "Patch the Planet"-style responsible-disclosure practice in the originating case).
8. Treat the completed campaign and its results as a required input to the formal safety case gating whether frontier training/evaluation may proceed or resume.

## Assumptions

- The organization's own most capable models are a reasonable proxy for the strongest adversary the containment architecture will realistically face, at least until more capable models exist externally.
- Isolated, purpose-built infrastructure copies faithfully reproduce the vulnerabilities present in production infrastructure.
- Supplying attacker-favorable information (source code, configs, vulnerability hints) produces a meaningfully more thorough test than withholding it, even though this also means results don't directly bound unaided-attacker risk.
- A declining rate of new high-priority findings over the campaign is a meaningful (if imperfect) signal of improving infrastructure security rather than purely reflecting changing test scope or model capability over time.

## Limitations

- Entirely self-conducted and self-assessed; no independent third-party red-team or external audit validates either the campaign's thoroughness or its conclusions.
- The declining-findings trend is explicitly caveated by the originating report as reflecting campaign scale and scope changes over time (different models, different infrastructure parts tested, coordinated windows with cloud partners) rather than a controlled relationship between compute invested and vulnerabilities found.
- Attacker-favorable setup (supplied source/configs/vulnerability hints) limits how directly findings bound what an unaided, zero-knowledge external attacker could achieve against the same infrastructure.
- No stated methodology for estimating how many vulnerabilities remain undiscovered after the campaign concludes — "fewer new findings" cannot by itself distinguish a genuinely more secure system from a campaign that has exhausted its own agents' current capability ceiling.

## Tradeoff profile

Trades cost (hundreds of billions of tokens in the reported campaign) and operational disruption (an 11-day pause to frontier training in the triggering case) for a validation method that specifically probes the exact adversary class (highly capable AI agents) the containment architecture is meant to withstand — a more realistic stress test than static code audit or human-only penetration testing, at substantially higher compute cost and without the independence an external audit would provide.

## Evaluated by

Applied as a continuous practice at OpenAI following the September 20, 2026 containment incident, producing concrete fixes (multiple CVEs across Kata Containers, gVisor, Moby/Docker, and kernel components) and the cross-sandbox covert-channel discovery; incorporated into the organization's formal safety case for resuming and continuing frontier RL training and evaluation. See [[securing-frontier-model-training-environment]] for full results.
