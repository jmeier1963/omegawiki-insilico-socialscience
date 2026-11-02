---
title: "Coasean Ceiling and AI Coordination Threshold"
aliases: ["Coasean ceiling", "supercooperative AI", "AI coordination phase transition", "firm-size coordination threshold"]
tags: [ai-economics, firm-theory, organizational-economics, market-structure, general-equilibrium]
maturity: emerging
definition: "The firm-size limit implied by Coase's theory of the firm — that finite managerial attention and coordination costs bound optimal organization size — reframed in a model of AI-staffed firms as a coordination capability threshold: below it, firms (human or AI) face an interior optimal size that grows with coordination ability; above it ('supercooperative'), output per worker rises without bound in firm size, and the equilibrium market structure undergoes a sharp phase transition from many small firms to concentration in one or a few giant firms."
key_papers: [organizing-intelligence]
first_introduced: "2026"
date_updated: 2026-11-02
related_concepts: [mosaic-intelligence, firm-level-ai-complementarities]
---

## Definition

The classical Coasean question — why doesn't one giant firm employ everyone? — is answered by bounded managerial attention and coordination frictions that make output-per-worker eventually decline with firm size, producing a finite optimal firm size (the "Coasean ceiling"). In a formal model where a firm's returns to scale are governed by a *coordination* capability parameter, this ceiling exists exactly when that parameter sits below a critical value; crossing the threshold flips the firm from decreasing to *increasing* returns to scale, so output per worker rises without bound as the firm grows, and no finite optimal size exists.

## Intuition

Human organizations hit this ceiling for well-understood reasons: finite attention and memory, tacit knowledge that degrades across handoffs, and individual incentive misalignment that compounds with headcount. Reproducible AI agents need not share these constraints — identical model copies can share full working state and execute a common objective without lossy communication — so if AI coordination capability crosses the threshold where building on colleagues' work outpaces the cost of split attention, firm size is no longer self-limiting. In market equilibrium, this produces a discontinuous jump (not a gradual trend) from an economy of many small, replicating firms to one dominated by a single large AI-heavy firm, because large firms below the threshold cannot scale efficiently, while large firms above it have a strict cost advantage that smaller firms cannot match.

## Variants

- **Sub-threshold (decreasing returns)** — optimal firm size is finite and increases with coordination ability; competence gains shift the output level but not the optimal size.
- **Supercooperative (increasing returns)** — no finite optimal size; market structure concentrates toward near-total output share in one or a few giant firms as market size grows (formalized via a relaxed Herfindahl–Hirschman index converging to 1).

## Known limitations

The phase transition is a property of the idealized model's production technology, not an empirical finding; the paper explicitly notes real-world frictions (regulation, competition among AI providers, capacity constraints, rigid supply contracts) that could prevent a literal firm singularity even if a model crossed the coordination threshold. Whether any current or near-term AI system approaches this threshold is an open empirical question.

## Open problems

[[organizing-intelligence]] proposes that evaluation practice start measuring how firm/team output scales with the number of coordinating AI copies at fixed compute per copy, as a leading indicator for proximity to this threshold — alongside isolated single-agent competence benchmarks, which do not capture it.

## My understanding

This gives [[gradual-disempowerment]]/concentration-of-power concerns in this wiki a specific economic mechanism and testable trigger condition (an AI coordination parameter crossing 1, in the paper's notation) rather than treating market concentration as a vague directional worry — useful for connecting AI-safety concentration arguments to formal industrial-organization theory.
