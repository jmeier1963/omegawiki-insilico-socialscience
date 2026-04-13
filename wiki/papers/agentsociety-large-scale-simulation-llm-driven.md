---
title: "AgentSociety: Large-Scale Simulation of LLM-Driven Generative Agents Advances Understanding of Human Behaviors and Society"
slug: agentsociety-large-scale-simulation-llm-driven
arxiv: "2502.08691"
venue: "arXiv"
year: 2025
tags: [multi-agent, social-simulation, llm-agents, large-scale, emergent-behavior, policy-evaluation, opinion-dynamics, economic-simulation]
importance: 4
date_added: 2026-04-13
source_type: pdf
s2_id: ""
keywords: [AgentSociety, large-scale social simulation, generative agents, LLM-driven agents, opinion polarization, UBI, inflammatory messages, hurricane impact, emergent social dynamics]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Prior LLM-based social simulations (notably Generative Agents with 25 agents in Smallville) demonstrated emergent social behavior at small scale but did not address three critical gaps: (1) agents lacked psychologically grounded internal states — emotions, needs, motivations, and cognition were either absent or simplistic; (2) societal environments were sandbox toy-worlds rather than realistic urban/social/economic spaces; (3) simulation scale was limited to tens of agents, whereas real social phenomena emerge from interactions among thousands. Without closing these gaps, the vision of "generative social science" — using bottom-up simulation to replace costly real-world social experiments — remained unrealized.

## Key idea

AgentSociety is a large-scale social simulator that integrates three components: (1) **psychologically grounded LLM agents** endowed with internal mental states (emotions via OCC model, needs via Maslow hierarchy, cognition including attitudes and thoughts) whose behaviors (mobility, employment, consumption, social interaction) are dynamically driven by these states; (2) a **realistic societal environment** seamlessly integrating urban space (road networks, AOI/POI), social space (social networks with relationship strength, online/offline interaction, content moderation supervisor), and economic space (firms, government, banks, NBS, macroeconomic indicators); (3) a **large-scale simulation engine** using Ray-based distributed computing and MQTT messaging to simulate 10K+ agents with ~500 interactions/agent/day.

## Method

- **Agent architecture**: agents have a "mind" comprising emotional states (updated via OCC cognitive appraisal theory), needs (Maslow hierarchy driving behavior priorities), cognition (attitudes + thoughts about external events), and a **stream memory** with two flows — Event Flow (chronological action/event log) and Perception Flow (cognitive appraisals linked to events). This dual-stream design links internal states to behavior in a continuous loop.
- **Behaviors**: four main categories — mobility (driving/walking/bus/taxi via urban space with IDM/MOBIL models), social interaction (choose partner by relationship type/strength, compose message influenced by emotions/beliefs, respond based on context), economic activity (work propensity → income, consumption propensity → spending, modulated by prices/taxes/interest rates), and other (sleeping, eating, leisure).
- **Environment**: urban space built on OpenStreetMap abstractions with multi-modal traffic simulation; social space with mutable social networks (family/friends/colleagues, strength 0-100) and a content moderation supervisor; economic space with firms, government taxation (Taylor Rule for interest rates), banks, and NBS tracking GDP/income/consumption.
- **Simulation engine**: Ray framework for distributed multi-process execution; agents grouped into Ray actors sharing LLM/MQTT/DB clients; asyncio for I/O-bound parallelism within groups; MQTT (via EMQX) for agent-to-agent messaging (tested: 43K msg/s throughput for 100K agents). PostgreSQL for storage, MLflow for metrics.
- **Experiment toolbox**: interventions (agent config modification, memory injection, environmental changes), structured surveys (distributed via MQTT, sequential question answering), and interviews (real-time Q&A without interrupting agent behavior).
- **Scale**: experiments with 100–10,000 agents; 10K agents × 5 rounds = ~54K LLM calls, ~5M interactions total.
- **LLM backbone**: OpenAI-compatible APIs (GPT, DeepSeek, Qwen, ChatGLM); supports local deployment via vLLM/Ollama.

## Results

**Performance evaluation**:
- Environment handles up to 1M agents; mean step time grows from 8.6ms (1K) to 168ms (1M).
- MQTT throughput: 43,198 msg/s (vs. Redis 94K, RabbitMQ 22K; Kafka failed initialization for 100K agents). MQTT chosen for built-in monitoring tools.
- 10K agents with 32 groups: 458s/round total; LLM calls remain the primary bottleneck.

**Social experiments replicating real-world findings**:

1. **Polarization (gun control)**: 100 agents debating gun control. Control group: 39% more polarized, 33% more moderate. Homophilic-only interactions: 52% more polarized (echo chamber effect). Heterogeneous interactions: 89% more moderate, 11% switched sides. Aligns with real-world echo chamber findings.

2. **Inflammatory message spread**: 100 agents on social network. Inflammatory messages spread faster and trigger higher emotional intensity than non-inflammatory content. Node intervention (account suspension) more effective than edge intervention (connection removal) for content moderation. Agent interviews reveal emotional factors and social responsibility as sharing motivations.

3. **Universal basic income**: 100 agents in Texas-based demographic distribution. UBI ($1,000/month) increased consumption and reduced depression (CES-D scores), consistent with real Texas UBI experiment results (Bartik et al. 2024).

4. **Hurricane external shock**: 1,000 agents in Columbia, SC. Hurricane event reduced outdoor activity and increased indoor behavior; aligned with real mobility data patterns observed during hurricanes.

## Limitations

- Economic model simplified: no goods market dynamics, no labor market (unemployment, job negotiation), no financial markets.
- Social interactions primarily online messaging; offline interactions are primitive.
- Agent behavioral richness limited by LLM call budget — more complex cognition requires more API calls per timestep.
- LLM API cost and latency remain the primary scaling bottleneck.
- Fixed agent grouping can create load imbalance; adaptive scheduling is future work.
- Experiments replicate qualitative patterns but quantitative precision is not validated.
- All experiments are English-language, predominantly US-centric cultural context.

## Open questions

- Can the emergent macro-patterns (polarization dynamics, UBI effects) be quantitatively calibrated against real-world data rather than just qualitatively matched?
- How do different LLM backbones (open-source vs. proprietary, different sizes) affect simulation fidelity?
- What is the minimum agent complexity (mental model depth) needed to reproduce specific social phenomena?
- Can the platform support longitudinal simulations (months/years of simulated time) without identity and behavioral drift?
- How should researchers validate that emergent patterns reflect genuine social dynamics rather than LLM training data artifacts?

## My take

AgentSociety represents the most ambitious LLM social simulation to date in terms of scale (10K agents) and environmental realism (integrated urban/social/economic spaces). The psychologically grounded agent design — with explicit emotion, needs, and dual-stream memory — is a significant step beyond the memory-retrieval-reflection-planning pattern of Park et al. The four replicated experiments (polarization, misinformation, UBI, hurricanes) are well-chosen to demonstrate different research methods (surveys, interviews, interventions) and different social dynamics. However, the validation remains qualitative: "patterns align with real findings" is encouraging but not rigorous quantitative calibration. The engineering contribution (Ray + MQTT scaling to 10K agents) is substantial and addresses a real bottleneck in the field.

## Related

- [[generative-agent-based-modeling]]
- [[llm-powered-agent-architecture]]
- [[generative-agent-memory-stream]]
- supports: [[llm-agents-simulate-believable-human-social]]
- supports: [[large-scale-llm-agent-simulations-reproduce]]
- supports: [[concordia-enables-grounded-llm-agent-simulations-of-human-social-behavior]]
