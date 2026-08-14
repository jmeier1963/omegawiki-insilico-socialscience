---
name: "AGI Dynamic General Equilibrium with VAT-Financed Targeted UBI"
slug: agi-dynamic-general-equilibrium-vat-financed
type: other
tags: [ai-economics, general-equilibrium, automation, value-added-tax, universal-basic-income, nested-ces, dynamic-model]
source_papers: [artificial-general-intelligence-sectoral-transition-post]
parent_methods: []
child_methods: []
realizes_concepts: [post-labor-economy]
code_repo: ""
date_updated: 2026-06-26
---

## Problem setting

A modeling framework for analyzing the macroeconomic and distributive consequences of AGI when it diffuses as a general-purpose technology substituting for human labor across heterogeneous sectors and skill classes, and for evaluating fiscal interventions (an automation-linked tax plus redistributive transfer) inside a single general-equilibrium system where factor prices, income distribution, and fiscal flows feed back on one another.

## Mechanism

A continuous-time dynamic general equilibrium with three components wired together:

1. **AGI as capital-embedded labor.** AGI labor in sector `i` is a derived service flow `L_{i,AGI}(t) = ψ_i α_i(t) K_i^{(AGI)}(t)`, activated by a sector-specific automation intensity `α_i(t)` that follows logistic diffusion `1/(1 + e^{−κ_i(t − t_i^*)})`. Labor-class exposure is the convex combination `γ_j(t) = Σ_i β_{ij} α_i(t)`.
2. **Three-level nested CES production.** Inner labor nest (human vs. AGI labor, curvature `ρ_1`), inner capital nest (traditional vs. AGI-specific capital, curvature `ρ_2`), outer nest joining the labor and capital composites (elasticity `η`); shares `θ_1 + θ_2 = 1`. With `ρ_1 < 1` human and AGI labor are gross substitutes. Convex adjustment costs `φ_i(I,K) = (ϑ_i/2)(I/K)^2 K` on AGI capital generate transitional frictions.
3. **Automation-linked fiscal loop.** A VAT whose rate `τ_i(t) = τ_0 · C_{i,AGI}/(P_i Q_i)` scales with the AGI cost share is levied on AGI-attributed output; revenue is rebated only to displaced workers as a targeted UBI `UBI(t) = T(t)/N_disp(t)`, with `N_disp(t) = Σ_j N_j γ_j(t)`, under a balanced-budget and fiscal-adequacy constraint `T(t) ≥ Σ_j N_j γ_j(t) w_j(t)`.

## Procedure

1. Specify the labor-allocation matrix `β`, sector diffusion parameters `(κ_i, t_i^*)`, CES curvatures `(ρ_1, ρ_2, η)`, shares `(θ_1, θ_2)`, AGI productivity `ψ_i`, adjustment costs `ϑ_i`, depreciation, discount rate `ρ`, and policy parameter `τ_0`.
2. Solve household log-utility intertemporal optimization, firm profit maximization over capital and investment, and price = marginal cost under perfect competition.
3. Close the model with the eight equilibrium conditions of Def. 2.1 (household optimization, firm optimization, capital accumulation, labor consistency, wage = MP of human labor, goods-market clearing, government budget balance, price setting).
4. Because marginal cost has no closed form under nested CES, characterize dynamics analytically (the propositions) and/or via local log-linearization or calibrated simulation.
5. Read off transitional and steady-state behavior of wages, labor share, Gini, consumption, output, and the VAT/UBI balance.

## Assumptions

- All physical and AGI capital is firm-owned; households earn only wages + UBI (isolates the labor and redistribution channels, removes asset heterogeneity).
- Human and AGI labor are gross substitutes (`ρ_1 < 1`); automation intensity saturates (`α_i → 1`).
- Perfect competition, constant returns to scale, log household utility, exogenous logistic diffusion of automation.
- VAT targets output (not capital directly), preserving investment incentives.

## Limitations

- No closed-form equilibrium; quantitative use requires calibration/simulation the originating paper does not perform.
- Firm-owns-all-capital and gross-substitutes assumptions drive the central inequality and vanishing-wage results.
- Smooth diffusion abstracts from takeoff discontinuities; political-economy feasibility of the VAT/UBI scheme is outside the model.
- Income replacement under the UBI rule is not welfare equivalence (non-pecuniary value of work unmodeled).

## Tradeoff profile

Buys analytical tractability and a clean fiscal lever (a tax base that grows with automation rather than shrinking with the payroll) at the cost of strong structural assumptions and absence of empirical calibration. Best suited for characterizing mechanisms and policy levers in AGI-economics, not for forecasting magnitudes.

## Evaluated by

Analytically, via Propositions 3.1–3.11 in [[artificial-general-intelligence-sectoral-transition-post]] (asymmetric exposure, VAT capture, UBI sustainability, declining labor share, S-curve displacement, rising inequality, full income offset, payroll-base substitution, post-labor balanced growth path, transitional consumption dip, welfare gains). No numerical or empirical evaluation.
