---
title: "Understanding the planning of LLM agents: A survey"
slug: understanding-planning-llm-agents-survey
arxiv: "2402.02716"
venue: "arXiv 2024"
year: 2024
tags: [llm-agents, planning, survey, task-decomposition, reflection, memory, agent-design]
importance: 4
date_added: 2026-05-05
source_type: pdf
s2_id: "7e281e8ab380affd3c5724feae038274df378511"
keywords: [LLM agents, planning, task decomposition, plan selection, reflection, memory, external module]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

LLM-based agent planning has seen rapid development, but individual works use disparate terminology and approaches, making it hard to compare methods or identify the key dimensions along which planning ability can be improved.

## Key idea

A taxonomy of LLM agent planning methods organized into five categories:
1. **Task Decomposition**: break complex tasks into manageable sub-tasks (e.g., CoT, Plan-and-Solve)
2. **Plan Selection**: choose among multiple candidate plans (e.g., tree/graph search, sampling)
3. **External Module**: use external planners, code interpreters, or specialized tools to enhance planning
4. **Reflection**: self-evaluate and revise plans based on feedback (e.g., Reflexion, ReAct)
5. **Memory**: leverage stored experiences to improve future planning

## Method

- Systematic literature review of LLM agent planning papers (2022-2024)
- Taxonomy construction across five orthogonal dimensions
- Comparative analysis within each category
- Discussion of open challenges (long-horizon planning, formal verification, grounded execution)

## Results

- Organizes ~40+ papers into a coherent taxonomy
- Shows that reflection and memory mechanisms address the most critical planning failures (hallucination, error propagation)
- 415 citations (arXiv 2024) — widely adopted survey reference

## Limitations

- Survey snapshot: rapidly evolving field; many important 2024 papers not covered
- Five-category taxonomy may not capture all relevant dimensions (e.g., multi-agent coordination, tool discovery)
- Mostly NLP-focused; limited coverage of embodied planning

## Open questions

- How does planning quality scale with LLM size vs. architectural choices?
- Can external verifiers (formal or learned) replace heuristic self-reflection?
- Is there a unified training objective that directly optimizes multi-step planning?

## My take

A clean, well-organized survey that provides a useful reference taxonomy for LLM agent planning. The five categories are mutually intelligible and cover the main directions well. Most valuable as a navigation tool for the literature; less valuable for deep analysis of any single approach.

## Related

- [[llm-powered-agent-architecture]] (extends this concept; planning is a key architectural component)
- supports: [[llm-agent-planning-taxonomy-five-dimensions]]
