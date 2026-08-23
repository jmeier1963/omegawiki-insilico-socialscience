---
title: "Ten Advances in Mathematics and Theoretical Computer Science"
slug: ten-advances-mathematics-theoretical-computer-science
arxiv: ""
venue: "OpenAI technical report"
year: 2026
tags: [ai-math, ai-mathematical-discovery, theorem-proving, theoretical-computer-science, frontier-capabilities, automated-research]
importance: 4
date_added: 2026-08-04
source_type: pdf
s2_id: ""
tldr: "A 249-page collection of ten research-level results in mathematics and theoretical computer science — including a disproof of Connes's rigidity conjecture and an explicit non-sofic group — presented as having been obtained by an internal OpenAI model."
contribution_type: [theory]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

Claims about AI in mathematics have until now been anchored on tasks with a verifier in the loop or a human closely steering: competition problems, formalization in Lean, evolutionary search over programs (AlphaEvolve), or hybrid workflows where AI narrows a search space and mathematicians supply direction and validation. That is the picture recorded in [[ai-mathematical-discovery]] — AI is strong at bottom-up pattern-finding and verification, humans supply the conceptual leaps.

What has been missing is the top of the difficulty distribution: open problems that senior researchers have failed to settle, where the obstacle is not search but the construction of a new argument. This report is an assertion that a model cleared that bar ten times over, across areas with no shared technique — Fourier analysis, operator algebras, arithmetic circuit complexity, quantum information, lattice cryptography, convex geometry, and extremal combinatorics.

## Key idea

Publish the results as mathematics rather than as an AI capability claim. The document is a monograph: ten self-contained chapters, each with its own abstract, introduction, proofs, acknowledgments and bibliography, in the register of a research paper. The framing that the results were "obtained by an internal OpenAI model" appears once, in the abstract and PDF subject metadata, and is then not mentioned again.

That choice is itself the argument. Rather than reporting a benchmark score, the claim is staked on artifacts that the relevant specialist communities can check line by line — and, in several cases, already have.

## Method

The report states no methodology. There is no description of the model, the scaffold, the number of attempts, the compute expended, the human role in problem selection, or the process by which candidate arguments were filtered. Only the results are given.

Two indirect signals of human involvement appear in the chapter acknowledgments:

- Chapter 3 (non-sofic groups) thanks Henry Bradford, Michael Chapman, Alon Dogon and Francesco (surname truncated in extraction).
- Chapter 4 (Connes's conjecture) thanks **Sorin Popa** — whose conjecture-adjacent question the chapter answers — for comments on historical context, the countability theorem, and the finite-to-one question, and **François Charles** and **Cyril Houdayer** for careful readings.

The same chapter notes independent concurrent work by Shuoxing Zhou also producing a counterexample to Connes's rigidity conjecture, "developed in part with the assistance of GPT-5.6 Sol" — an outside data point that frontier models were contributing to this specific problem at this time.

Bibliographies throughout are extensive and current (including 2026 arXiv preprints), so the arguments are situated in the live literature rather than assembled from textbook material.

## Experiment & Results

The ten claimed results:

1. **High-dimensional sphere packing.** The exact exponential decay rate of the Cohn–Elkies linear program is determined: lim LP_d^(1/d) = √(e/2π), giving an improved general packing bound in high dimensions and settling the corresponding Fourier sign-uncertainty problem asymptotically (both radii (1/π + o(1))√d). This resolves the rate conjectured by Afkhami-Jeddi, Cohn, Hartman, de Laat and Tajdini, and goes beyond Cohn–Zhao's result that the program is at least as strong as the Kabatianskii–Levenshtein bound.
2. **Binary and spherical codes.** Classical upper bounds for fixed-distance binary and spherical codes improved by *exponential factors for all parameters*; the spherical construction also recovers the sphere-packing exponent of Chapter 1.
3. **Non-sofic groups.** An explicit non-sofic group is constructed, resolving whether every countable group admits finite permutation approximations — using property-(T) expanders and the binary Leavitt algebra.
4. **Connes's rigidity conjecture — disproved.** Infinitely many pairwise nonisomorphic property-(T) groups with the same group von Neumann algebra, also answering a related finite-to-one question of Popa. The groups are ICC, property-(T), and mutually commensurable.
5. **Arithmetic circuit complexity.** For the permanent: division-free circuits require Ω(n² log log n) gates; formulas require Ω(n⁴/log n) leaves.
6. **Quantum parallel repetition.** Exponential parallel repetition proved for *every* finite two-player entangled game, extending the classical repetition principle beyond the special classes previously treated.
7. **Closest vector problem.** A direct reduction from 3SAT gives n^(1/400)-factor hardness for Euclidean CVP, with consequences for binary decoding and other lattice norms.
8. **Ehrhart's volume conjecture.** The sharp bound (n+1)ⁿ/n! proved in every dimension for convex bodies whose barycenter is their only interior lattice point.
9. **Multicolor Ramsey numbers.** A superexponential lower bound establishing R_k(3) = k^Θ(k).
10. **Compactness and degeneracy.** Two separate bipartite graph constructions disproving the Erdős–Simonovits compactness conjecture and a degeneracy conjecture of Erdős.

Several of these are decades-old named open problems, and items 3, 4, 8, 9 and 10 are settlements or disproofs rather than incremental improvements.

## Limitations

- **No methodology at all.** Without the model, scaffold, attempt count, compute budget, or human contribution, the report is uninterpretable as evidence about AI capability. It cannot be reproduced, and the base rate — how many problems were attempted for these ten — is unknown. This is the single largest gap.
- **Human involvement is undisclosed but demonstrably nonzero.** Named mathematicians gave "careful readings" and comments on at least two chapters. Where the line falls between reading a finished proof and shaping it is exactly what is not stated.
- **Correctness is asserted, not established.** These are long, technical arguments in specialist areas; nothing here is machine-checked, and community verification of ten research-level results takes months to years.
- **Selection is invisible.** A collection titled "Ten Advances" is by construction a set of successes. Nothing indicates the denominator.
- **No comparison to a human baseline** or to prior AI-for-mathematics systems, so the result cannot be positioned against AlphaEvolve, formal-proof-search agents, or human researchers on the same problems.
- Publishing as a self-contained monograph rather than through peer review means the usual filter has not yet run.

## Open questions

- Do the proofs hold? Independent verification by the operator-algebra, extremal-combinatorics and complexity communities is the only thing that settles this, and it is the prerequisite for every other question here.
- What was the human contribution — problem selection, direction, error correction, exposition? Without this the capability claim is unfalsifiable.
- What is the success rate? Ten results from how many attempts, at what compute cost, tells a completely different story at 10/12 than at 10/10,000.
- Does the ability generalize, or does it depend on problems where a strong argument exists to be found within reach of literature-recombination?
- The concurrent Zhou counterexample to Connes's conjecture, GPT-5.6-assisted, suggests convergent AI-assisted attacks on the same targets. Are frontier models finding the same problems tractable, and what does that say about which problems are now within reach?
- If results at this level arrive without methodology, how should mathematics adapt its norms for attribution, verification and priority?

## My take

If the proofs hold, this is a discontinuity in [[ai-mathematical-discovery]], and the wiki's existing framing of that concept — AI does bottom-up search, humans supply conceptual leaps — needs rewriting rather than extending. Disproving Connes's rigidity conjecture and constructing an explicit non-sofic group are not search results; they are constructions requiring a genuinely new idea, in an area where the ideas are scarce.

The conditional is doing all the work. The report withholds precisely what would make it evidence: no model, no method, no attempt count, no statement of human contribution beyond acknowledgment lines that clearly indicate expert mathematicians read and commented on the arguments. Publishing as pure mathematics is defensible as a way of putting the claim where it can be checked — but it also happens to route around every question a capability evaluation would ask, and OpenAI is not a disinterested party. The right posture is to treat the mathematical content as the claim under review and the capability narrative as unsubstantiated until the methodology appears.

Worth watching against [[ai-agents-conduct-open-ended-ai]], which found frontier agents failing badly at open-ended empirical ML research in the same month. Those two results are not straightforwardly compatible, and the most likely reconciliation is that mathematics — where a proof is self-verifying once written and the search space is symbolic — is the domain most favorable to current models, while open-ended empirical research requiring judgment about evidence is the least. That reading is testable and worth holding explicitly.

## Related

- [[ai-mathematical-discovery]]
- [[automated-research-pipeline]]
- [[marginal-returns-to-intelligence]]
- challenges: [[ai-agents-conduct-open-ended-ai]]
- challenges (reverse): [[intelligence-wise]]
- part_of: [[ai-driven-scientific-discovery]]
- [[why-tiny-social-media-post-mathematicians]] — the Jacobian conjecture case, where verification is cheap and genesis unavailable
