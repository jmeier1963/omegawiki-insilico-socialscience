---
title: "Math, Inc.: Gauss and the Autoformalization of Mathematical Proofs"
slug: math-inc-gauss-autoformalization
arxiv: ""
venue: "Math, Inc. Technical Blog / Press Coverage"
year: 2025
tags: [ai-math, autoformalization, lean, theorem-proving, formal-proofs, math-inc, gauss]
importance: 2
date_added: 2026-04-23
source_type: pdf
s2_id: ""
keywords: [Math Inc, Gauss, autoformalization, Lean, proof verification, prime number theorem, sphere packing]
domain: "NLP"
code_url: "https://github.com/math-inc/OpenGauss"
cited_by: []
---

## Problem

Can AI automate the translation of informal mathematical proofs into machine-verifiable formal code (Lean), dramatically reducing the cost of formal verification?

## Key idea

**Gauss**, developed by Math, Inc. (founded 2025 by Christian Szegedy and colleagues), is an autoformalization agent that autonomously converts informal mathematical proofs into Lean code. It completed Terry Tao and Alex Kontorovich's Strong Prime Number Theorem project in 3 weeks (vs 18+ months of partial human progress) and formalized Viazovska's 24-dimensional sphere-packing proof (Fields Medal result) in two weeks (~120,000 lines of Lean).

## Method

- Startup: Math, Inc. (founded late summer 2025)
- Agent: Gauss — autonomous autoformalization agent
- Tasks: Strong Prime Number Theorem (Lean formalization), Viazovska sphere-packing in 8D and 24D
- Output: ~25,000 lines of Lean (PNT); ~120,000 lines (sphere packing)
- OpenGauss released as open source (github.com/math-inc/OpenGauss)

## Results

- Strong PNT formalization: completed in 3 weeks (human experts stalled for 18+ months)
- 24D sphere packing: first formalization of a Fields Medal result from this century
- Works autonomously for hours without human intervention
- Goal: "make it possible to automatically transfer the content of a paper or book into Lean code and check it immediately"

## Limitations

- System described via company blog and press — peer-reviewed methodology paper not yet published
- Lean formalization verifies *correctness* but does not discover new theorems
- Scaling to entire mathematical literature would require vast compute

## Open questions

- Can Gauss move from autoformalization (verifying known proofs) to automated conjecture generation?
- How does autoformalization interact with AI theorem proving (suggesting new proofs)?

## My take

A concrete breakthrough in automated mathematics: the 3-week PNT formalization (vs 18+ months) demonstrates that AI can dramatically compress the most laborious phase of formal mathematics. Complements [[numina-lean-agent-open-general-agentic]] (open-source theorem proving) and positions Math Inc. as a key player in the [[ai-mathematical-discovery]] space.

## Related

- [[ai-mathematical-discovery]]
- [[numina-lean-agent-open-general-agentic]]
- [[semi-autonomous-mathematics-discovery-gemini-case]]
- [[mathematics-rise-machines]]
