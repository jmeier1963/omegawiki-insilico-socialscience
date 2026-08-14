---
title: "From Local to Global: A GraphRAG Approach to Query-Focused Summarization"
slug: local-global-graphrag-approach-query-focused
arxiv: ""
venue: "arXiv (Microsoft Research)"
year: 2024
tags: [retrieval-augmented-generation, knowledge-graph, llm, summarization, information-retrieval]
importance: 3
date_added: 2026-07-05
source_type: pdf
s2_id: ""
tldr: "Microsoft Research's GraphRAG builds an LLM-derived entity knowledge graph from a corpus, detects communities, pre-summarizes them, and answers global 'sensemaking' queries by map-reducing over community summaries — outperforming naive RAG on comprehensiveness and diversity for whole-corpus questions."
contribution_type: [method, system]
datasets: []
code_url: "https://github.com/microsoft/graphrag"
cited_by: []
---

## Problem & Context

Standard retrieval-augmented generation (RAG) retrieves the chunks most similar to a query, which works for local, fact-lookup questions but fails on **global** questions directed at an entire corpus ("What are the main themes?") — these are query-focused summarization (QFS) tasks, not retrieval tasks. Classic QFS methods, in turn, don't scale to RAG-sized corpora. GraphRAG (Edge, Trinh, Larson et al., Microsoft Research) combines the two.

## Key idea

Build an entity knowledge graph from the source corpus with an LLM, partition it into communities, pre-generate summaries of each community, and answer a global query by summarizing over relevant community summaries in a map-reduce fashion — turning whole-corpus sensemaking into a scalable, graph-structured summarization problem.

## Method

Two-stage pipeline: (1) **Indexing** — LLM extracts entities/relationships into a knowledge graph, hierarchical community detection (e.g. Leiden) partitions it, and each community gets an LLM-generated summary. (2) **Query** — for a global question, community summaries are mapped to partial answers and reduced into a final response. See the [[graphrag]] method page for the reusable mechanism.

## Experiment & Results

- On global sensemaking questions over large corpora, GraphRAG substantially improves the **comprehensiveness** and **diversity** of answers over naive (vector) RAG baselines, as judged by an LLM evaluator.
- Community summaries at coarser levels give competitive answers at lower query-time token cost than the finest level.

## Limitations

- Indexing is LLM-heavy and expensive (graph extraction + community summarization over the whole corpus).
- Benefits are specific to global/sensemaking queries; for local fact lookup, naive RAG is competitive and cheaper.
- Graph/community quality depends on LLM extraction fidelity.

## Open questions

- How to amortize or reduce the indexing cost for frequently-updated corpora?
- When should a system route a query to graph-based vs. vector RAG?
- How robust are the community summaries to extraction errors?

## My take

GraphRAG's contribution is recognizing that "what are the themes of this whole corpus?" is summarization, not retrieval, and that a pre-computed community-summary hierarchy makes it scalable — a clean structural insight. The cost is front-loaded indexing, so the method earns its keep when the corpus is queried many times with global questions. In this wiki it matters as the canonical named technique behind graph-structured retrieval in agentic research pipelines.

## Related

- [[graphrag]]
