---
title: "LLM-Powered Agent Architecture"
aliases: ["generative agent architecture", "LLM agent", "language model agent", "LLM-backed agent", "cognitive agent architecture", "agentic LLM system", "LLM agentic continuum"]
tags: [agents, llm-agents, architecture, planning, perception, action]
maturity: active
key_papers: [generative-agents-interactive-simulacra-human-behavior, generative-agent-simulations-000-people, agentsociety-large-scale-simulation-llm-driven, beyond-static-responses-multi-agent-llm, deliberate-lab-platform-real-time-human]
first_introduced: "2023"
date_updated: 2026-04-13
related_concepts: [generative-agent-memory-stream, agent-reflection]
---

## Definition

A software agent architecture that uses a large language model as its central reasoning engine, augmented with external modules for persistent memory storage, memory retrieval, reflection synthesis, and action planning. The agent perceives its environment (in natural language), stores all perceptions in a memory module, retrieves contextually relevant memories to condition the LLM, and outputs natural-language action descriptions that are translated back to world effects.

## Intuition

LLMs alone cannot act as coherent long-running agents: they have no persistent state beyond the context window and no mechanism for action-environment coupling. Wrapping an LLM with memory, retrieval, and planning modules converts it from a stateless chatbot into an entity that can reason over its accumulated life experience, maintain identity consistency, and interact with a structured environment.

## Formal notation

At each time step t:
1. **Perceive**: agent observes world state O_t → stored as memory objects m_t
2. **Retrieve**: R_t = top-k memories scored by recency + importance + relevance(O_t)
3. **Reason**: LLM(context = [agent summary, R_t, current status, observation]) → action decision
4. **Plan**: if action involves future intent, generate plan P_t stored in memory
5. **React**: if O_t warrants re-planning, update P_t
6. **Act**: output natural-language action A_t → translated to world effect via environment module

## Variants

- **Smallville architecture** (Park et al. 2023): memory stream + reflection + planning, instantiated in a sandbox Sims-like world.
- **ReAct pattern**: interleaves reasoning traces and actions in a single prompt; no persistent external memory.
- **Toolformer / function-calling agents**: LLM selects tools (APIs) to call; memory is typically ephemeral (in-context only).
- **AutoGPT-style agents**: multi-step task decomposition with tool use; typically no social/behavioral simulation component.
- **Interview-grounded agent** (Park et al. 2024): full interview transcript + expert reflections replace the sandbox memory stream; no persistent memory needed since the entire context is injected per query. Designed for behavioral prediction of specific real individuals rather than open-ended sandbox simulation.
- **Psychologically grounded agents (AgentSociety)**: extends the architecture with explicit internal mental states — OCC-based emotions, Maslow-hierarchy needs, and cognition (attitudes + thoughts) — linked to behavior via dual-stream memory. Needs drive plan formation; emotions modulate communication tone; cognition shapes decision-making. Designed for large-scale (10K+) social simulation.
- **Six-tier agentic continuum** (Haase & Pokutta 2025): classifies LLM systems into L0 (tool) → L1 (role) → L2 (agent-like) → L3 (fully agentic) → L4 (multi-agent) → L5 (complex adaptive), each tier defined by functional thresholds (memory, autonomy, coordination, emergence) mapped to OODA loop phases.

## Comparison

- vs. rule-based agents (FSMs, behavior trees): LLM agents generalize to novel situations without hand-authored rules, at the cost of computational expense and unpredictability.
- vs. RL agents: RL agents optimize a reward signal; LLM agents use pre-trained world knowledge, making them suitable for open-ended social behavior without environment-specific training.

## When to use

Use when: (1) the agent must reason in open-ended natural language domains, (2) the state space is too large for rule-based authoring, (3) social/behavioral realism is more important than reward optimization, or (4) rapid prototyping without environment-specific training data is needed.

## Known limitations

- High LLM API cost per agent per time step.
- Behavioral unpredictability: identical prompts can yield different actions across runs.
- Instruction-tuning artifacts: agents may skew toward overly polite or cooperative behavior.
- Limited support for physical reasoning or precise quantitative tasks.

## Open problems

- How to efficiently scale to hundreds or thousands of simultaneous agents?
- How to enforce hard behavioral constraints (e.g., ethical guardrails) without destroying emergent dynamics?
- Can agent architectures be standardized (common interface for memory, tools, planning) across different LLM backends?

## Key papers

- [[generative-agents-interactive-simulacra-human-behavior]] — introduced the full generative agent architecture with memory stream, reflection, and planning
- [[beyond-static-responses-multi-agent-llm]] — proposes a six-tier taxonomy classifying LLM agent architectures from stateless tools to complex adaptive systems, mapping each tier's architectural requirements
- [[deliberate-lab-platform-real-time-human]] — operationalizes LLM agent architectures as first-class participants in hybrid human–AI experiments

## My understanding

This architecture pattern has become the foundation for a wide class of LLM agent systems (AutoGPT, LangChain agents, BabyAGI, etc.). The key contribution of Park et al. relative to contemporaneous work is the integration of all three components — memory, reflection, and planning — and the rigorous evaluation of their individual contributions via ablation in a social simulation context.
