---
title: "Artificial General Intelligence and the Sectoral Transition to a Post-Labor Economy: A Dynamic General Equilibrium Analysis"
slug: artificial-general-intelligence-sectoral-transition-post
arxiv: ""
venue: "SSRN Working Paper (preprint, not peer reviewed)"
year: 2025
tags: [ai-economics, automation, post-labor-economy, universal-basic-income, value-added-tax, general-equilibrium, labor-displacement, inequality, agi]
importance: 3
date_added: 2026-06-26
source_type: pdf
s2_id: ""
tldr: "A dynamic general equilibrium model in which AGI capital substitutes asymmetrically for human labor across sectors, driving the economy to a post-labor steady state of vanishing wages and concentrated capital rents — which a VAT on AGI-attributed output, rebated as targeted UBI, can fully offset."
contribution_type: [theory, analysis]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

The paper asks what happens to macroeconomic structure and income distribution when artificial general intelligence (AGI) diffuses through the economy as a general-purpose technology that substitutes for human labor across sectors and skill classes — and what fiscal architecture can keep the transition equitable. Where the field stood before: a large automation literature (Acemoglu and Restrepo's task-based models; empirical work by Autor, Graetz–Michaels, Bloom et al.) shows automation can lower labor demand, shift the labor share, and polarize labor markets, but it typically treats automation as exogenous or partial and does not address economy-wide consequences of *general-purpose* AGI. A newer strand (Korinek 2021; Korinek–Stiglitz; Trajtenberg's GPT framing; Erdil et al.'s GATE model) engages AGI's systemic impact but, the author argues, mostly abstracts from redistributive policy design and sectoral heterogeneity. Partial-equilibrium approaches miss the endogenous feedbacks among factor prices, income distribution, and fiscal flows that matter when technological change is pervasive and nonlinear. The contribution is to embed AGI inside a dynamic, sectorally heterogeneous general equilibrium where AGI capital is simultaneously a productive input and a taxable base.

## Key idea

Model AGI not as a wage-earning agent but as **capital-embedded labor**: a derived service flow `L_{i,AGI}(t) = ψ_i α_i(t) K_i^{(AGI)}(t)` that is activated by a sector-specific automation intensity `α_i(t)` following logistic diffusion. As automation spreads, AGI-capital increasingly delivers labor-equivalent functionality, the marginal product of human labor falls, and — absent intervention — the economy converges to a **post-labor steady state** with vanishing wages, a labor income share tending to zero, and rising income concentration (since capital is owned by a small set of agents). The fiscal remedy is a **value-added tax levied on the AGI-attributed share of output**, whose proceeds finance a **targeted UBI calibrated to displaced workers**. Because the VAT base scales with automation intensity (rather than shrinking like the payroll base), it can dynamically replace lost wage income and fully offset labor-income losses, while leaving capital investment untaxed so innovation incentives are preserved.

## Method

A continuous-time dynamic general equilibrium (DGE) model over `t ∈ [0,∞)`, populated by three labor classes `j ∈ {c, m, h}` (cognitive / manual / hybrid, with early / late / intermediate automation risk) and `n` sectors. Structure:

- **Automation diffusion**: sector automation intensity follows a logistic `α_i(t) = 1/(1 + e^{-κ_i(t − t_i^*)})` with sector-specific diffusion rate `κ_i` and inflection `t_i^*`. Labor-class automation exposure `γ_j(t) = Σ_i β_{ij} α_i(t)` is a convex combination over the labor-allocation matrix `β = [β_{ij}]`.
- **Effective labor**: `L_{ij}(t) = β_{ij} N_j (1 − γ_j(t))`; AGI labor is the capital-embedded flow `ψ_i α_i(t) K_i^{(AGI)}(t)`.
- **Production**: a three-level nested CES aggregator (Eq. 8) combining a labor nest (human labor `L_{i,h}` vs. AGI labor `L_{i,AGI}`, curvature `ρ_1`) and a capital nest (traditional capital `K^{(H)}` vs. AGI-specific capital `K^{(AGI)}`, curvature `ρ_2`), joined by an outer elasticity `η`; share parameters `θ_1 + θ_2 = 1`. `ρ_1 < 1` makes human and AGI labor gross substitutes.
- **Capital accumulation**: traditional capital with constant depreciation; AGI capital with a *convex* adjustment/depreciation cost `φ_i(I,K) = (ϑ_i/2)(I/K)^2 K`, capturing organizational restructuring, compatibility, training, and coordination frictions that make rapid AGI scaling costly.
- **Households**: log utility `U_j = ∫ e^{−ρt} log C_j(t) dt`, budget `C_j ≤ (1 − γ_j(t)) w_j(t) + UBI(t)`. For tractability all capital is firm-owned, so household income is wages + UBI only (isolating the labor/redistribution channel).
- **Firms**: perfectly competitive, price = marginal cost (Eq. 9–11, Shephard's lemma); wages = marginal product of human labor (Eq. 18). Marginal cost has no closed form under nested CES, so dynamics are characterized analytically and via calibrated simulation/log-linearization.
- **Fiscal mechanism**: VAT rate `τ_i(t) = τ_0 · C_{i,AGI}(t)/(P_i Q_i)` scales with the AGI cost share; revenue `T(t) = Σ_i τ_i P_i Q_i` is rebated only to displaced workers, `UBI(t) = T(t)/N_disp(t)` where `N_disp(t) = Σ_j N_j γ_j(t)`. A fiscal-adequacy constraint requires `T(t) ≥ Σ_j N_j γ_j(t) w_j(t)`.

A formal Dynamic General Equilibrium is defined (Def. 2.1) as time paths satisfying household optimization, firm profit maximization, capital accumulation, labor consistency, wage determination, goods-market clearing, government budget balance, and price setting.

## Experiment & Results

This is a theory paper; "results" are eleven analytical propositions (3.1–3.11) with proofs:

- **3.1 (Asymmetric automation exposure)**: any two labor classes with distinct sectoral exposure vectors `β_j` have strictly different automation-exposure trajectories `γ_j(t)` — classes concentrated in early/fast-automating sectors are displaced sooner.
- **3.2 (VAT captures AGI-attributed value)**: VAT on AGI's marginal revenue product, `VAT_i = θ_i P_i MP_i^{AGI} L_{i,AGI}`; setting `θ_i = 1` taxes the full marginal revenue product of AGI labor.
- **3.3 (Targeted-UBI sustainability)**: under balanced budget, targeted UBI is fiscally sustainable iff `UBI(t) = R^{VAT}(t)/N_disp(t)`.
- **3.4 (Declining labor income share)**: with `ρ_1 < 1`, `α_i → 1`, `L_{i,h} → 0`, and bounded aggregate output, the aggregate labor income share converges to zero.
- **3.5 (S-curve displacement dynamics)**: effective labor `L_{ij}(t)` follows an S-shaped path with curvature changing sign at the weighted-average inflection `t^* = Σ_i β_{ij} t_i^*` — displacement is gradual, then accelerates, then saturates.
- **3.6 (Rising inequality)**: absent redistribution, with labor income broadly distributed and AGI capital income concentrated, the Gini coefficient rises over time (`dG/dt > 0`).
- **3.7 (UBI fully offsets income loss)**: a sufficient condition `UBI(t) ≥ max_j [γ_j(t) w_j(t)]` guarantees every class's total income (wages + UBI) stays at or above its pre-automation wage baseline.
- **3.8 (VAT as substitute payroll base)**: `T(t) ≥ W^{loss}(t) = Σ_j N_j γ_j(t) w_j(t)` — AGI-VAT scales with automation intensity and capital deepening, acting as a fiscal mirror of the shrinking payroll base.
- **3.9 (Post-labor balanced growth path)**: with `L_{i,h} = 0`, the CES collapses to linear-in-AGI-capital `Q_i = Ξ_i K_i^{(AGI)}`, yielding a constant endogenous growth rate `g_i = s_i Ξ_i − δ_i` — the economy sustains exponential growth without human labor.
- **3.10 (Transitional disequilibrium)**: convex AGI adjustment costs can make aggregate consumption fall temporarily even while output rises, during investment surges.
- **3.11 (Welfare gains from AGI-funded UBI)**: if the UBI-regime consumption path weakly dominates the laissez-faire path at all `t`, lifetime utility is weakly higher under UBI.

Together: absent policy, AGI diffusion drives a secular fall in labor income, rising concentration, and a post-labor steady state; an AGI-linked VAT rebated as targeted UBI can fully offset income losses and improve intertemporal welfare, despite transitional frictions, while the economy remains on a balanced growth path.

## Limitations

- All physical and AGI capital is firm-owned and households earn no capital income — a strong simplification that, by construction, maximizes the inequality/displacement channel and removes asset-holding heterogeneity (the model's inequality result is partly baked into this assumption).
- No closed-form marginal cost under nested CES; quantitative claims rest on log-linearization/calibrated simulation that the paper sketches rather than executes — there is no numerical calibration or data.
- Proposition 3.7's full-offset condition may be fiscally infeasible under widespread displacement, and ensures income replacement but not welfare equivalence — non-pecuniary value of work (identity, structure, purpose) is unmodeled.
- Single-author SSRN preprint, explicitly not peer reviewed; some derivations (e.g. the Gini argument in 3.6) rely on auxiliary monotonicity assumptions stated informally.
- AGI is treated as a smooth diffusion process; takeoff discontinuities, capability thresholds, and political-economy feasibility of the VAT/UBI scheme are outside scope.

## Open questions

- How large is the VAT base in practice, and does it grow fast enough to fund the prescribed UBI when displacement is broad? (The paper flags endogenous VAT-rate adjustment, fiscal buffers, and real-time automation monitoring as needed.)
- How do results change once households hold AGI capital (relaxing the firm-ownership assumption)?
- What governs `τ_0`, the diffusion parameters `κ_i, t_i^*`, and the labor-allocation matrix empirically?
- How to handle non-pecuniary losses from the disappearance of work that income transfers cannot offset?

## My take

A clean, internally consistent formalization of the "what if AGI substitutes for labor across the whole economy" question, with the distinctive move of modeling AGI as capital-embedded labor and tying the redistributive tax base to the AGI cost share so it grows as the payroll base shrinks. Its value is as a tractable analytical scaffold (the eleven propositions are the deliverable), not as an empirical or calibrated result — there are no numbers. The firm-owns-all-capital assumption does a lot of work in generating the inequality conclusion, so the model is best read as characterizing a mechanism and a policy lever rather than forecasting magnitudes. It sits squarely in the 2025–26 "distribution question" conversation alongside the wiki's [[sharing-ai-prosperity]] cluster, supplying the formal general-equilibrium plumbing those more policy-narrative pieces lack.

## Related

- [[post-labor-economy]] — the concept this paper introduces and characterizes (post-labor steady state with vanishing labor income share).
- [[agi-dynamic-general-equilibrium-vat-financed]] — the named, reusable DGE-with-AGI-VAT-and-targeted-UBI modeling framework introduced here.
- [[sharing-ai-prosperity]] — the broader redistribution-of-AI-gains problem; this paper supplies one concrete mechanism (AGI-VAT → targeted UBI).
- [[self-service-labour-displacement]] — a different (customer-side) displacement mechanism; contrast with this paper's CES factor-substitution displacement.
- [[forecasting-economic-effects-ai]] — complementary macro-forecasting framing of AI's economic effects.
