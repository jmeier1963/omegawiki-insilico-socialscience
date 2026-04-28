---
title: "Language Decision Process"
aliases: ["LDP", "language-grounded POMDP", "language agent formalism", "stochastic computation graph agent"]
tags: [language-agents, pomdp, stochastic-computation-graphs, agent-formalism, reinforcement-learning, llm-agents]
maturity: emerging
key_papers: [aviary-training-language-agents-challenging-scientific]
first_introduced: "2024"
date_updated: 2026-04-28
related_concepts: [llm-powered-agent-architecture]
---

## Definition

A Language Decision Process (LDP) is a language-grounded partially observable Markov decision process (POMDP) in which actions and observations are expressed in natural language (or code). Language agents are formalized as policies solving LDPs, represented as stochastic computation graphs that decompose the agent into modular, trainable components (memory, planning, tool-call generation, response parsing).

## Intuition

Classical RL formalizes agents as functions mapping state observations to actions in a fixed action space. LDPs extend this to the case where observations are textual descriptions of the world and actions are natural language strings (or code strings invoking tools). The stochastic computation graph representation makes explicit which operations are deterministic (parsing, formatting) and which are stochastic (LLM sampling), enabling gradient-free optimization of the full agent.

## Formal notation

An LDP is a tuple $(S, O, A, T, R, \gamma)$ where:
- $S$: state space (underlying world states)
- $O$: natural language observations
- $A$: natural language actions
- $T: S \times A \to \Delta(S)$: transition function
- $R: S \times A \to \mathbb{R}$: reward function
- $\gamma$: discount factor

The agent $\pi: O \to \Delta(A)$ is a policy expressed as a stochastic computation graph with components:
- **Memory module**: maps observation history to working memory
- **Planning module**: generates candidate action sequences
- **Tool-call generator**: emits structured tool invocations
- **Response parser**: extracts structured output from LLM completions

## Variants

- **Behavior-cloned LDP agent**: trained on expert demonstrations via supervised learning on (observation, action) pairs
- **Expert-iteration LDP agent**: trained by alternating between behavior cloning on current-best trajectories and online exploration
- **Majority-vote LDP agent**: samples N completions at inference time and selects the most common answer (pass@N)

## Comparison

| Framework | Agent representation | Training | Scope |
|---|---|---|---|
| LDP (Aviary) | Stochastic computation graph | Gradient-free (BC + EI) | Language tasks |
| ReAct | Unstructured CoT + tool calls | Prompt engineering | Language tasks |
| RL agent | Tabular or DNN policy | Gradient-based | State-action spaces |
| Classic POMDP | Belief + policy | Dynamic programming | Discrete state/action |

## When to use

- When formally specifying and comparing language agent architectures
- When training language agents with online RL methods (expert iteration, RLHF)
- When ablating agent components (memory vs. planning vs. tool use) systematically
- Most applicable to multi-step scientific or tool-use tasks

## Known limitations

- LDP formalism assumes tool interactions can be fully expressed in natural language; some domains (continuous control, vision-heavy tasks) require adaptation
- Gradient-free optimization (expert iteration) is sample-inefficient compared to gradient-based methods
- Requires an initial policy or demonstration set to bootstrap expert iteration

## Open problems

- Formal analysis of convergence properties of expert iteration in LDP setting
- Extensions to multi-agent LDPs (several interacting language agents)
- Scaling laws for LDP agent performance as a function of training data and model size

## Key papers

- [[aviary-training-language-agents-challenging-scientific]] — introduces LDP formalism and Aviary gymnasium

## My understanding

LDP is the missing theoretical abstraction for language agents — it gives a vocabulary to describe what agent components exist, how they interact, and how to train them. The stochastic computation graph representation makes the "what is stochastic" question explicit, which is crucial for principled optimization. The main open question is whether this formalism will become community standard or remain one of several competing formalizations (ReAct, Toolformer, etc.).
