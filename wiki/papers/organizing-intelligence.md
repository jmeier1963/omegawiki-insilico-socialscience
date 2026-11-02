---
title: "Organizing Intelligence"
slug: organizing-intelligence
arxiv: ""
venue: "Google DeepMind (working paper)"
year: 2026
tags: [ai-economics, firm-theory, organizational-economics, labor-market, ai-coordination, general-equilibrium, mosaic-intelligence]
importance: 5
date_added: "2026-11-02"
source_type: pdf
s2_id: ""
tldr: "Imas, Koh, and Legg build a formal equilibrium model in which humans and AI agents sort endogenously into firms along two capability axes — competence (task-level skill) and coordination (returns to firm scale) — showing that complementary human teams can out-produce a more competent AI (\"mosaic intelligence\"), that AI coordination gains (not competence gains) drive optimal firm size, and that once AI coordination crosses a critical threshold the market undergoes a sharp phase transition from fragmented small firms to a single concentrated AI-heavy firm (breaking the \"Coasean ceiling\"), with human wages shaped by a decomposable technology effect and reorganization effect that can even reverse each other."
contribution_type: [theory, analysis]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

Why has rapid AI capability growth across many domains so far produced comparatively little visible economic transformation — leaner startups, flatter org charts, but no mass displacement or giant AI-run firms? Standard treatments of AI in economics model it either as a tool that raises worker productivity or as a factor that substitutes for humans task-by-task. Both framings evaluate AI in isolation, the way benchmarks do, rather than asking how AI capability interacts with the *organization* — the firm — as the actual unit of economic production (Legg and Hutter's "ability to achieve goals" framing of intelligence, applied at the organizational rather than the single-agent level).

The paper identifies three features that make AI qualitatively different from past automating technologies: (1) human capability is fixed and scarce (Ricardian rents), while AI capability is reproducible at the cost of compute, which erodes those rents; (2) human capability is jagged and heterogeneous across people in ways that create gains from *complementary sorting*, while copies of the same AI model overlap in their jaggedness; (3) unlike machines of the past, AI agents can coordinate directly with each other and potentially form standalone organizations without the frictions that bound human firm size.

## Key idea

Every agent (human or AI) carries a multidimensional capability vector combining *task skills* (e.g. coding, writing) and a *coordination* capability. A firm's productivity decomposes into two independent channels:

- **Competence** `L` — the harmonic mean of the firm's average task skills, which shifts output *level* at a given size and penalizes bottlenecks (a firm is held back by its weakest domain).
- **Coordination** `ȳ*` — governs *returns to scale*: how output per worker changes as the firm adds members, trading off division-of-labor gains against finite managerial attention and incentive misalignment (the classic Coase/span-of-control literature).

Firms with coordination below a critical threshold (`ȳ* < 1`) have an interior optimal size — the "Coasean ceiling" — that grows with coordination but is *unchanged* by competence gains (competence only shifts the output level). Firms with coordination above the threshold are **supercooperative**: output per worker rises without bound in firm size, and the Coasean ceiling disappears.

**Mosaic intelligence** is the paper's central mechanism for why humans can remain competitive: because competence is a harmonic (bottleneck-penalizing) aggregator, no single generalist — human or AI — need dominate specialized humans who sort into complementary roles. A team of a coder and a writer, each weak in the other's domain, can jointly reach a *capability envelope* (the convex hull of their combined skills) that strictly exceeds either member's solo competence, and can even exceed a single AI model that beats each human individually on every task in isolation.

## Method

The authors build the model bottom-up through a sequence of increasingly complex human-only toy economies (one skill type → two complementary skill types → adding "coordinators" who are the weakest individual workers but raise everyone else's output by relaxing the span-of-control bottleneck) before introducing AI. They define four AI regimes by whether AI capability exceeds the best human on every task and whether it crosses the `ȳ*=1` coordination threshold: *minimal AGI*, *supercompetent AI*, *supercooperative AI*, and *ASI* (exceeds humans on both axes and crosses the threshold). Firms sell into competitive markets (a "deep market" that absorbs any output at a fixed price, and a finite "niche market" whose price falls to zero at a output cap); the equilibrium concept requires zero profit, no profitable entry, and that the realized industry structure maximizes total surplus. Each worker's equilibrium wage equals the shadow value of her marginal contribution to that surplus, and the paper derives an explicit *bid* firms place for each human capability profile, affine in capability.

## Experiment & Results

The model is analytical (propositions and theorems with closed-form or asymptotic characterizations), illustrated throughout with numerically calibrated toy economies rather than empirical estimation. Key results: (1) **Proposition 3** — as market size grows, if AI coordination stays below the threshold, every equilibrium firm's share of total output vanishes (replication into many small firms); once AI becomes supercooperative, the market concentrates sharply toward a single dominant AI-heavy firm (a relaxed Herfindahl index converges to 1), a genuine phase transition rather than a gradual shift. (2) **Theorem 2** gives an explicit affine wage/sorting rule: firms bid for human capability in proportion to how much it would let them substitute away from AI, and humans sort into firms according to which firm's bid is highest for their specific profile — meaning humans whose strengths lie where AI is comparatively weak (often coordination) can earn well above the AI rental rate even when AI dominates them on raw task skill. (3) Competence gains by AI leave a firm's optimal size unchanged (shifting only the output level), while coordination gains by AI shift optimal firm size and can break the Coasean ceiling — so the model predicts most near-term change will show up as *within-firm composition* shifts (leaner teams, flatter hierarchies) rather than employment collapse, consistent with cited early evidence (AI-native startups run ~25% leaner with fewer entry-level/managerial roles; entry-level wages/hiring falling 7.7–19% in exposed occupations while senior pay holds or rises; online freelance markets — where coordination plays the least role — showing the sharpest disruption). (4) **Proposition 6** decomposes wage changes into a *technology effect* (AI capability change holding firm inputs fixed) and a *reorganization effect* (the firm adjusting size, machine share, and worker mix in response) — the paper shows numerically that reorganization can reverse the sign of the technology effect, e.g. an initial wage increase for human coordinators turning into a decline as sufficiently large AI-coordinated firms outcompete human-staffed ones entirely.

## Limitations

The model is a stylized two-task, low-dimensional abstraction calibrated on illustrative (not estimated) parameters; its quantitative predictions are explicitly framed by the authors as model-conditional scenarios, not forecasts. Real-world frictions the authors note could prevent the sharpest predictions (a single giant AI firm under supercooperation) include regulation, competition among AI providers, capacity constraints, and rigid supply contracts — none of which are modeled. Whether real AI systems ever cross the `ȳ* = 1` coordination threshold is left as an open empirical question, and the equilibrium concept (competitive, surplus-maximizing, break-even firms) abstracts from market power, adjustment costs, and transition dynamics.

## Open questions

The authors' own research agenda: benchmarks should measure how output scales with *number of coordinating AI copies at fixed compute* (not just isolated task competence); firm-level datasets should track total organizational scale (human payroll + AI compute rental) and its composition over time; and employer-employee panel data is needed to separate the technology effect from the reorganization effect empirically, and to determine whether human displacement is happening *within* mixed firms (gradual) or *across* firms as human-only firms get undercut entirely (sudden).

## My take

The paper's most durable contribution for this wiki may be less the specific equilibrium mechanics and more the reframing it offers of why jagged, benchmark-measured AI capability gains can coexist with "relatively little economic transformation" ([[llm-capability-funnel]], [[ai-adoption-depth-breadth-gap]]): competence and coordination are economically distinct axes, and most current AI progress is competence progress, which the model says should *not* be expected to change optimal firm size or trigger concentration on its own. This gives a sharper, falsifiable complement to [[firm-level-ai-complementarities]] (which explains *whether* task-gains aggregate to firm performance) by adding *where humans remain employed* and *why firm size might jump discontinuously* rather than drift. The "mosaic intelligence" mechanism is a clean formalization of an intuition already present in [[gradual-disempowerment]]-adjacent and [[automation-augmentation-employment-divide]] discussions — that complementary human specialization is a moat even against a more capable generalist AI — and ties it to a concrete, testable threshold (the coordination parameter) rather than leaving it qualitative.

## Related

- [[firm-level-ai-complementarities]] — adjacent but distinct: that concept explains when task-level AI gains aggregate to firm performance via reorganization; this paper's competence/coordination split explains firm *size* and *composition* outcomes and adds the concentration phase-transition result.
- [[mosaic-intelligence]] — concept introduced by this paper.
- [[coasean-ceiling-ai-coordination]] — concept introduced by this paper.
- [[shane-legg]] — co-author.
