---
title: "LLM-Agent-based Social Simulation for Attitude Diffusion"
slug: llm-agent-based-social-simulation-attitude
arxiv: "2604.03898"
venue: "arXiv preprint"
year: 2026
tags: [multi-agent-simulation, attitude-diffusion, opinion-dynamics, social-networks, belief-dynamics]
importance: 2
date_added: 2026-04-14
source_type: pdf
s2_id: ""
keywords: [agentic memory, opinion polarisation, live news retrieval, multidimensional belief structures, Observe-Think-Act loop]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

How do attitudes diffuse and polarize in response to real-world events? Standard agent-based models use simplified belief rules; LLM agents offer richer behavioral realism but lack grounding in real-world events and multi-dimensional psychological belief structures.

## Key idea

**Discourse Simulator**: a generative agent-based model integrating (1) LLMs with multidimensional belief structures (economic, cultural, security, humanitarian dimensions), (2) real-time live news retrieval, and (3) a small-world network topology. An Observe-Think-Act loop grounds agent behavior in real events. Designed as a theory-testing framework, not a prediction black box.

## Method

1. Construct small-world agent network with LLM-backed agents
2. Assign multidimensional belief profiles (economic, cultural, security, humanitarian attitudes)
3. Implement Observe-Think-Act loop: agents observe news, reason about implications, act/share
4. Integrate live news retrieval to ground simulations in real-world events
5. Simulate attitude diffusion and polarization dynamics over time
6. Validate against empirical belief dynamics and event timelines

## Results

- Realistic attitude diffusion patterns emerge under real-world event grounding
- Multidimensional belief structures produce richer polarization dynamics than unidimensional models
- Observe-Think-Act loop avoids confirmation bias through empirically calibrated dynamics
- Framework enables testing of social polarization theories without requiring human participants

## Limitations

- Validation is qualitative; quantitative calibration against empirical polarization data not established
- Live news retrieval introduces recency bias and coverage limitations
- Small-world network may not capture real social network topology

## Open questions

- How accurately do multidimensional LLM beliefs track real population opinion changes?
- Can the framework distinguish causal influence from correlation in attitude diffusion?
- Does real-time news grounding improve or worsen hallucination tendencies?

## My take

A technically interesting extension of opinion dynamics modeling with LLM agents. The multidimensional belief structure and real-time news integration are methodologically sound additions. The theory-testing framing (rather than prediction) is epistemically honest. Main limitation is lack of quantitative validation.

## Related

- supports: [[multi-agent-llm-systems-enable-qualitatively]]
- [[generative-agent-based-modeling]]
- [[llm-powered-agent-architecture]]
