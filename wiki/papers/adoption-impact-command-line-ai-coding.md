---
title: "Adoption and Impact of Command-Line AI Coding Agents"
slug: adoption-impact-command-line-ai-coding
arxiv: "2607.01418"
venue: "arXiv preprint (Microsoft)"
year: 2026
tags: [coding-agents, adoption, developer-productivity, enterprise-rollout, claude-code, copilot-cli]
importance: 3
date_added: "2026-11-11"
source_type: pdf
s2_id: ""
tldr: "A study of tens of thousands of Microsoft engineers finds first use of CLI coding agents spreads through social networks, retention tracks coding activity rather than demographics, and adopters merged about 24% more pull requests."
contribution_type: [analysis]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

Organizations rolling out agentic command-line tools (Claude Code, Copilot CLI) need to know who will try them, who will keep using them and whether the output justifies token costs that can reach millions of dollars annually.

## Key idea

Separate initial use from retention and measure impact on a clear output proxy (merged pull requests), exploiting an enterprise setting that provides the full denominator of engineers who could adopt.

## Method

Observational analysis of Microsoft's early-2026 rollout over roughly four months, with an adoption study (Copilot CLI: who tries, who persists) and an impact study covering both Copilot CLI and Claude Code, comparing adopters with counterfactual PR output. The window ends before Claude Code was discontinued for most engineers to avoid contamination from migration.

## Experiment & Results

First use spreads primarily through social networks (visible peer use); retention is associated more with engineers' coding activity than with demographics; adopters merged roughly **24% more PRs** than they would have otherwise, and the lift persisted over the four-month window, suggesting not merely a novelty effect.

## Limitations

Merged PRs are a proxy for output, not value delivered; observational causal inference at a single firm with a sophisticated engineering culture; selection into adoption; tools were changing during the window.

## Open questions

Does extra PR output translate into quality and business value? What are the cost-per-PR economics at token prices?

## My take

Complements the METR RCT: with newer agentic tools, field data show gains, so conclusions depend on tool generation. The social-spread finding is practical for rollout design.

## Related

- [[coding-agent-as-a-tool]]
- [[ai-research-productivity-paradox]]
- [[measuring-impact-early-2025-ai-experienced]]
- [[effects-generative-ai-high-skilled-work]]
