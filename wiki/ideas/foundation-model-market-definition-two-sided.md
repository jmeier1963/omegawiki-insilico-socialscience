---
title: "Foundation Model Market Definition: Two-Sided Platform Economics Approach"
slug: foundation-model-market-definition-two-sided
status: proposed
origin: "ideate — direction: architectures of regulation and market boundary-setting for AI; gap: no agreed antitrust market definition for foundation models despite clear structural concentration"
origin_gaps:
  - platform-scale-threatens-democracy-middleware-solution
  - ai-policy-must-target-outcomes-just
tags: [ai-governance, antitrust, market-definition, foundation-models, two-sided-markets, platform-economics, structural-remedy]
domain: "AI Governance"
priority: 5
pilot_result: ""
failure_reason: ""
linked_experiments: []
date_proposed: 2026-05-14
date_resolved: ""
---

## Motivation

The inability of antitrust authorities to agree on a relevant market definition for foundation models is the binding constraint on structural AI antitrust enforcement. Without a market definition, no structural remedy — divestiture, interoperability mandate, access obligation — can be legally designed or defended. Courts have retreated from structural remedies in AI-adjacent cases precisely where market boundaries remained fluid (*US v. Google*, 2024). Yet the four-layer AI stack (GPU → cloud → foundation model → application) exhibits clear concentration: ~80-90% chip market share (Nvidia), ~65% cloud compute (AWS/Azure/GCP), and ~85% of 2025 AI investment flowing to five labs. The structural antitrust problem is visible; the market definition that would enable structural remedies is not. Yale Law and Policy Review's four-layer framework identifies cloud-model interface foreclosure as the core problem (Microsoft-OpenAI, Amazon-Anthropic vertical relationships), but does not apply two-sided market theory (Rochet-Tirole, Parker-Van Alstyne), which is the standard analytical framework for multi-sided platforms and the most natural lens for foundation model ecosystems. Developing this market definition would unlock structural remedy design in every jurisdiction simultaneously.

## Hypothesis

The foundation model ecosystem constitutes a two-sided (multi-sided) platform market in the Rochet-Tirole sense: with distinct buyer sides (developers, enterprises, end-users) cross-subsidized by supply-side advantages (training compute, proprietary data, model weights) and reinforced by cross-side network effects and high switching costs. Formalizing this market definition using two-sided market theory would (1) satisfy antitrust evidentiary requirements that simple product-market definitions fail, (2) identify the specific interfaces where structural foreclosure risk is highest (cloud-model, chip-model, data-model), and (3) provide the analytical foundation for structural remedies that regulators currently lack.

## Approach sketch

1. **Market definition formalization**: Apply two-sided market theory to the foundation model ecosystem. Define the buyer sides (developers building on foundation models; enterprises deploying them; end-users via APIs/products) and supply-side factors (compute concentration, training data moats, fine-tuning lock-in). Characterize network effects: cross-side (more developer use → richer ecosystems → more enterprise adoption); same-side (more fine-tuning data → better personalization → stickier enterprise lock-in). Calculate a SSNIP-compatible "small but significant non-transitory increase in price" test adapted for platform markets (following Filistrucchi 2013's two-sided SSNIP test).

2. **Multi-homing and switching cost analysis**: Map multi-homing patterns using public API pricing and developer surveys — which developer groups can simultaneously operate on multiple foundation model providers, and at what cost? Identify switching cost components: fine-tuning data lock-in, evaluation infrastructure re-build, safety certification redos, and embedding dimension incompatibility. Quantify switching cost estimates where public data allow (e.g., API migration effort from GPT to Claude to Gemini from developer forums).

3. **Vertical integration foreclosure analysis**: Apply the market definition to analyze Microsoft-OpenAI and Amazon-Anthropic relationships as vertical ties at the cloud-model interface. Assess foreclosure risk using the Salop-Scheffman "raising rivals' costs" framework: does vertical integration allow Microsoft to raise OpenAI competitors' cloud costs? Does Amazon's arrangement disadvantage competing foundation model providers seeking AWS infrastructure? Map which market boundary — chip-cloud, cloud-model, or model-application — is the primary foreclosure site.

4. **Structural remedy derivation**: From the market definition and foreclosure analysis, derive the minimal structural remedy that restores contestability at the identified interface. Evaluate: API interoperability mandates (reduce switching costs), compute access obligations (reduce supply-side foreclosure), behavioral remedies (disclosure, non-discrimination), and divestiture (as a ceiling case). Assess which remedies pass the "minimum effective intervention" criterion — elegant structural boundary-setting rather than KPI-heavy micromanagement.

5. **Jurisdiction comparison**: Compare how the derived market definition would interact with existing legal frameworks in US (DOJ/FTC 2023 merger guidelines, Section 2 Sherman Act), EU (DMA Art. 2 gatekeeper designation criteria, proposed AI Act extensions), and South Korea (AI Basic Act 2026). Identify which jurisdictions' frameworks are most ready to operationalize the two-sided market definition.

## Expected outcome

A publishable market definition for foundation models grounded in two-sided market theory, with SSNIP-compatible operationalization, foreclosure analysis at the cloud-model interface, and a derived structural remedy menu. The output would directly address the binding antitrust bottleneck and provide a decision-theoretic framework for regulators designing structural AI market boundaries.

## Risks

- Antitrust market definition evidentiary requirements (SSNIP tests, demand-side substitution) may not be satisfiable with public data alone; proprietary market evidence would be needed for litigation
- Two-sided market theory may not overcome judicial skepticism: courts may still prefer behavioral remedies where market boundaries are dynamic
- The cloud-model interface analysis may be under-identified: Microsoft-OpenAI and Amazon-Anthropic relationships involve multiple dimensions (equity stakes, compute agreements, API preferencing) that are not fully disclosed
- Open-weight models (Llama, Mistral) represent a competitive constraint that complicates the foreclosure narrative — the market definition must account for this competitive alternative

## Pilot results

*Empty — to be filled after pilot*

## Lessons learned

*Empty — to be filled after completion*
