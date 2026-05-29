---
title: "Harness Specification as Legal-Technical Liability Bridge for AI Governance"
slug: harness-specification-legal-technical-liability-bridge
status: proposed
origin: "ideate — direction: strengthening AI governance regulation architecture arguments; inspired by ISO/IEC 42006:2025 and AIUC-1 behavioral specification standard"
origin_gaps:
  - agentic-llm-systems-exhibit-security-governance-failures-live
  - ai-policy-must-target-outcomes-just
tags: [ai-governance, harness, liability, audit, certification, legal-attribution, behavioral-specification, agentic-ai]
domain: "AI Governance"
priority: 5
pilot_result: ""
failure_reason: ""
linked_experiments: []
date_proposed: 2026-05-14
date_resolved: ""
---

## Motivation

The argument that AI harnesses — machine-readable, version-controlled behavioral specifications covering rules, capability modules, role definitions, and orchestration logic — could serve as the operational unit for audit, certification, and liability is intellectually compelling but lacks formal grounding. ISO/IEC 42006:2025 establishes AI audit certification; AIUC-1 establishes behavioral specification standards for agentic AI. But the legal-technical bridge between these emerging standards and existing product liability and tort doctrine has not been formally constructed. Aviation's Safety Management Systems (SMS) and nuclear's IAEA safeguard agreements offer historical precedents for how formal artifacts can anchor liability attribution — but the analogy has not been mapped to AI harnesses. Without this formalization, the "harnesses as liability anchor" argument remains a suggestive intuition rather than an actionable governance proposal.

## Hypothesis

Machine-readable, version-controlled AI harness specifications (covering behavioral rules, capability modules, role definitions, and orchestration logic) satisfy the core legal requirements for liability attribution — completeness, verifiability, chain-of-custody, and version history — if and only if designed to meet criteria derivable from existing safety management system law (aviation SMS, nuclear IAEA safeguards, EU Product Liability Directive). Formalizing these criteria would make harness specification the legal-technical bridge between AI capability regulation and tort/criminal liability, transforming the current audit gap into a tractable regulatory architecture problem.

## Approach sketch

1. **Legal mapping**: Map ISO/IEC 42006:2025 (AI management system audit certification) and AIUC-1 (AI agent behavioral specification) against existing product liability frameworks: EU Product Liability Directive (2024 update), US Restatement Third of Torts (Products Liability), and UK Consumer Protection Act. Identify which harness properties map to which liability elements (design defect, manufacturing defect, failure to warn).

2. **Historical analogy analysis**: Conduct structured case analysis of aviation SMS (ICAO Annex 19) and nuclear IAEA safeguards agreements as precedents for artifact-based liability attribution. Extract the minimal formal properties (completeness criteria, attestation chain, version control requirements, audit artifact specifications) that made these systems legally defensible.

3. **Formal model**: Derive a formal model of harness-as-liability-anchor: define the minimum harness specification that satisfies legal attribution requirements, the verification properties an auditor must confirm, and the chain-of-custody requirements for version history. Model the conditions under which harness specifications fail as liability anchors (incomplete specs, post-deployment drift, adversarial gaming).

4. **Design requirements for robustness**: Address spec gaming and post-deployment drift — the principal weaknesses identified in review — by deriving design requirements for harness specifications that are robust to adversarial completion and drift detection, drawing on formal verification literature (model checking, runtime monitoring).

5. **Governance implications**: Translate the formal model into governance recommendations: what regulatory mandates on harness specification format, audit requirements, and certification body independence would make harness-based liability attribution legally viable.

## Expected outcome

A formal taxonomy of harness specification requirements that satisfy product liability attribution in at least two major jurisdictions (EU, US), grounded in the aviation/nuclear SMS analogy. The output would be a publishable legal-technical framework that operationalizes the "harnesses as audit, certification, and liability anchor" claim with formal precision, and identifies the regulatory mandates needed to make this architecture functional.

## Risks

- Legal doctrine may not hinge on "specification artifacts" in the way the analogy implies; doctrinal engagement may reveal that liability attribution in AI cases will follow a different path (e.g., insurance-based, strict liability)
- "Completeness" and "verifiability" may be technically ill-defined for harness specifications that cover natural-language behavioral rules
- Post-deployment drift means the harness at deployment time may not reflect the behavioral envelope at incident time; version-history requirements may be insufficient to close this gap
- The aviation/nuclear analogies may fail because AI systems have no equivalent of the deterministic failure physics that made SMS formalization tractable

## Pilot results

*Empty — to be filled after pilot*

## Lessons learned

*Empty — to be filled after completion*
