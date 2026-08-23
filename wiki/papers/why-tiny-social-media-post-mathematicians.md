---
title: "‘hello there the jacobian conjecture is false thanx': Why a Tiny Social Media Post Has Mathematicians Rethinking AI"
slug: why-tiny-social-media-post-mathematicians
arxiv: ""
venue: "The Conversation"
year: 2026
tags: [ai-mathematical-discovery, jacobian-conjecture, verifiability, reproducibility, claude, mathematical-practice, attribution]
importance: 4
date_added: 2026-08-22
source_type: pdf
s2_id: ""
tldr: "Reports Levent Alpöge's counterexample to the Jacobian conjecture, found with Claude Fable 5 and announced in a casual post on X, as a case where the result is trivially verifiable while the process that produced it is not public."
contribution_type: [analysis]
datasets: []
keywords: [Jacobian conjecture, Levent Alpöge, Claude Fable 5, counterexample, verifiability, mathematical discovery, search space]
domain: "Mathematics"
code_url: ""
cited_by: []
---

## Problem & Context

The Jacobian conjecture — traceable in various forms to work between 1884 and 1939 — asks whether a polynomial map with a non-zero constant Jacobian determinant must be invertible. It stood as an open problem for the better part of a century. In July 2026 it was refuted, and the manner of the refutation is what makes the episode instructive.

Melissa Lee (Senior Lecturer, School of Mathematics, Monash University) reports it in The Conversation, 22 July 2026.

## Key idea

Levent Alpöge, a mathematician employed at the AI company Anthropic, announced a counterexample in a casual post on X. The counterexample shows the conjecture is false in **all dimensions greater than two**; the two-dimensional case remains open. It was found with **Claude Fable 5**, released weeks earlier.

The article's framing: this is AI discovering a mathematical *object* by navigating a large search space, not AI constructing a proof — a different and in some ways more consequential capability than automated theorem proving.

## Method

Journalistic reporting on the announcement and on the mathematical community's reaction.

## Experiment & Results

The salient facts, and the asymmetry between them:

- **Verification is trivial.** The counterexample is short enough that other mathematicians could check it directly and immediately. There is no dispute about the result.
- **Genesis is opaque.** Lee states explicitly that details have not been made public regarding exactly how Alpöge prompted the model or what its output looked like.

Everything human remains formally in place: a named mathematician published under his own name and stands behind the result with his reputation. What is missing is not accountability but reconstructability.

## Limitations

- Popular-science reporting, not a mathematical paper; the counterexample itself is documented elsewhere.
- The account of the model's role rests on the discoverer's statements.
- Alpöge's employment at Anthropic is relevant context for both access and disclosure, and the article does not pursue it.

## Open questions

- Does mathematics require reproducible discovery processes, or does checkable output suffice?
- What norms should apply to disclosing the prompting and search process behind a machine-assisted result?
- Does the object-finding capability generalize beyond cases where a candidate can be checked cheaply?

## My take

This case isolates a distinction that AlphaFold and AlphaEvolve leave entangled. There, output verification is itself expensive, so opacity of process and difficulty of checking arrive together. Here they come apart cleanly: the result is checkable by anyone in an afternoon, and the path to it is unavailable to everyone. Verifiability of the result and reconstructability of its genesis are independent properties, and only the first is secured.

Mathematics is the field best equipped to tolerate that split, because it has a cheap verification procedure. The question the case raises is what happens in fields that do not — where, if the process is unavailable, nothing takes over the work that reconstruction used to do.

## Related

- [[ai-mathematical-discovery]]
- [[ten-advances-mathematics-theoretical-computer-science]]
- [[novikov-alphaevolve]]
- [[verification-bandwidth]]
