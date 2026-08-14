---
name: "GraphRAG"
slug: graphrag
type: system
tags: [retrieval-augmented-generation, knowledge-graph, summarization, information-retrieval, llm]
source_papers: [local-global-graphrag-approach-query-focused]
parent_methods: []
child_methods: []
realizes_concepts: []
code_repo: "https://github.com/microsoft/graphrag"
date_updated: 2026-07-05
---

## Problem setting

Answering **global**, whole-corpus "sensemaking" questions ("What are the main themes across these documents?") that naive vector RAG cannot handle (it retrieves local top-k chunks) and that classic query-focused summarization cannot scale to RAG-sized corpora.

## Mechanism

Combine graph construction, community detection, and hierarchical summarization: an LLM extracts an entity–relationship knowledge graph from the corpus; the graph is partitioned into communities; each community is pre-summarized; global queries are answered by map-reducing over the relevant community summaries.

## Procedure

1. **Index:** LLM extracts entities and relationships from source chunks into a knowledge graph.
2. **Community detection:** hierarchical clustering (e.g. Leiden) partitions the graph into nested communities.
3. **Community summarization:** generate an LLM summary for each community at multiple levels.
4. **Query (map):** for a global question, each relevant community summary yields a partial answer with a helpfulness score.
5. **Query (reduce):** combine partial answers into a final global response.

## Assumptions

- The corpus supports meaningful entity/relationship extraction.
- Global/sensemaking queries are a significant share of the workload (otherwise vector RAG suffices).
- Front-loaded indexing cost is amortizable across many queries.

## Limitations

- LLM-heavy, expensive indexing (extraction + multi-level community summarization).
- Advantage is specific to global queries; for local fact lookup, naive RAG is competitive and cheaper.
- Answer quality depends on LLM extraction fidelity and community-summary quality.

## Tradeoff profile

Trades expensive, front-loaded indexing and graph maintenance for scalable, comprehensive, diverse answers to whole-corpus questions. Best when a stable corpus is queried repeatedly with global questions; poor fit for frequently-changing corpora or purely local lookups.

## Evaluated by

- [[local-global-graphrag-approach-query-focused]] — introduces GraphRAG and shows gains in comprehensiveness and diversity over naive RAG on global sensemaking queries.
