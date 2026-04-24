---
title: "AI-Assisted Mathematical Discovery"
aliases: ["AI math discovery", "formal reasoning agent", "ai theorem proving", "semi-autonomous mathematics", "LLM for mathematics"]
tags: [ai-math, formal-reasoning, theorem-proving, mathematical-discovery, llm]
maturity: emerging
key_papers: [triumvirate-ai-driven-theoretical-discovery, semi-autonomous-mathematics-discovery-gemini-case, numina-lean-agent-open-general-agentic]
first_introduced: "2023"
date_updated: 2026-04-23
related_concepts: [llm-powered-agent-architecture, automated-research-pipeline]
---

## Definition

AI-assisted mathematical discovery refers to the use of AI/ML systems — including language models, formal proof assistants, and hybrid human-AI workflows — to discover new mathematical results, verify conjectures, or formalize proofs. The field ranges from top-down (hypothesis-driven) to bottom-up (pattern-finding) and meta-mathematical approaches.

## Intuition

Mathematics has two complementary directions: top-down (start from theory, derive results) and bottom-up (observe patterns, conjecture, prove). AI excels at bottom-up: searching vast combinatorial spaces, recognizing patterns in data, and verifying candidate proofs. Human mathematicians remain necessary for conceptual leaps and intuition. The most successful approaches are hybrid: AI narrows the search space, humans provide direction and validate results.

## Formal notation

Not applicable — architectural/methodological concept.

## Variants

- **Formal verification agents** (Numina-Lean-Agent): LLM coding agents interact with Lean theorem prover via MCP to solve and formalize mathematical problems
- **Semi-autonomous conjecture resolution** (Gemini + Erdős problems): LLM evaluates open conjectures via natural-language reasoning, narrows to plausible solutions, human experts validate
- **AI for theoretical physics** (He, Yang-Hui): top-down, bottom-up, and meta-mathematical frameworks for AI-assisted discovery in pure math and physics

## Comparison

| Approach | AI role | Human role | Domain |
|----------|---------|------------|--------|
| Formal agent (Numina) | Writes Lean proofs autonomously | Sets problems, provides MCP tools | Competition math, formal theorems |
| Semi-autonomous (Gemini+Erdős) | Verifies/narrows candidates | Evaluates novelty and correctness | Open conjecture resolution |
| AI Triumvirate | Framework analysis | Central — theorist | Math/physics broadly |

## When to use

When mathematical problems can be represented formally (Lean/Coq/Isabelle) or when large libraries of conjectures need systematic evaluation. Less useful for problems requiring genuinely new conceptual frameworks.

## Known limitations

- Gemini resolved 13 Erdős problems; 8 were resolved by locating existing literature — "obscurity not difficulty" explains many open problems
- "Subconscious plagiarism" risk: AI solutions may inadvertently reproduce known results without attribution
- Formal verification (Lean) requires significant tooling and prompt engineering overhead

## Open problems

- Can AI prove problems that require genuinely new mathematical concepts?
- How to reliably distinguish AI novelty from sophisticated pattern-matching on training data?

## Key papers

- [[triumvirate-ai-driven-theoretical-discovery]] — taxonomy of AI roles in mathematical/physics discovery
- [[semi-autonomous-mathematics-discovery-gemini-case]] — Gemini resolves 13 Erdős problems via hybrid human-AI workflow
- [[numina-lean-agent-open-general-agentic]] — general coding agent solves Putnam 2025 via Lean MCP integration

## My understanding

The most significant result to date (Numina-Lean solving all Putnam 2025) demonstrates that general coding agents can match top human performance on competition math when equipped with the right tools. The Erdős result reveals a subtler insight: many "open" problems are open due to knowledge silos, not intrinsic difficulty — AI as a literature search tool may be as valuable as AI as a theorem prover.
