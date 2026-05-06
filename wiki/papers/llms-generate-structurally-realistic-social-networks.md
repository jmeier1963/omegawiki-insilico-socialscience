---
title: "LLMs generate structurally realistic social networks but overestimate political homophily"
slug: llms-generate-structurally-realistic-social-networks
arxiv: "2408.16629"
venue: "arXiv 2024"
year: 2024
tags: [social-network, llm, network-generation, homophily, social-simulation, graph, bias]
importance: 3
date_added: 2026-05-05
source_type: pdf
s2_id: ""
keywords: [social network generation, LLM, homophily, political bias, network realism, zero-shot network generation]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

Synthetic social networks are needed for epidemic modeling, social simulations, and platform research. Deep learning methods require many training networks; classical models (Erdős–Rényi, stochastic block) are too rigid. LLMs offer zero-shot, flexible generation — but it is unclear whether they generate realistic networks and what biases they introduce.

## Key idea

Use LLMs to generate social networks via persona-based prompting. Three prompting strategies evaluated: (1) "global" — ask LLM to generate full network at once; (2) "local" — ask LLM to construct each node's connections separately, one persona at a time; (3) hybrid. Compare generated networks against real social networks on structural properties (density, clustering, community structure, degree distribution) and demographic biases (homophily patterns).

## Method

- Define a set of synthetic personas with demographic attributes (age, gender, political affiliation, education)
- Prompt LLM with persona descriptions and ask it to generate social ties
- Local method: for each persona, prompt the LLM to select which other personas they would form ties with
- Compare generated networks to real social networks on: degree distribution, clustering coefficient, community structure, density
- Evaluate demographic homophily: how much do people tend to connect with those sharing the same political affiliation, gender, age, etc.

## Results

- Local methods generate more realistic networks than global methods (better structural statistics)
- Generated networks match real networks on: density, clustering, community structure, degree distribution
- **Key finding**: LLMs substantially overestimate political homophily — they over-cluster nodes by political affiliation more than observed in real social networks
- LLMs underweight other types of homophily (gender, age) relative to real networks
- "Politics first" bias in LLM-generated networks reflects the politicization of LLM training data

## Limitations

- Only evaluated on US-style networks with English-language personas
- Political homophily finding may vary across LLMs and time periods
- Evaluation networks may not represent all real social network types
- Local generation is slow at scale (one persona at a time)

## Open questions

- Can prompting or fine-tuning correct the political homophily overestimation?
- Do LLMs overestimate political homophily more in certain political climates (election years)?
- How do LLM-generated networks perform for downstream tasks like epidemic modeling?

## My take

Interesting empirical finding: LLMs can generate structurally plausible networks but encode systematic political biases that matter for simulation validity. The political homophily finding is particularly relevant for researchers using LLM-generated social networks for polarization or opinion dynamics studies. Importance: 3.

## Related

- [[llm-social-network-generation]] (introduces this use case)
- [[silicon-sampling]] (related: LLM social simulation, demographic bias)
- supports: [[llm-social-network-generation-structurally-realistic]]
