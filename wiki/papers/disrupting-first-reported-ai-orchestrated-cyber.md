---
title: "Disrupting the First Reported AI-Orchestrated Cyber Espionage Campaign (GTG-1002)"
slug: disrupting-first-reported-ai-orchestrated-cyber
arxiv: ""
venue: "Anthropic (Threat Intelligence report)"
year: 2025
tags: [ai-safety, cybersecurity, agentic-ai, ai-misuse, dual-use, threat-intelligence]
importance: 4
date_added: 2026-07-05
source_type: pdf
s2_id: ""
tldr: "Anthropic's Threat Intelligence team details GTG-1002, a Chinese state-sponsored espionage campaign that manipulated Claude Code and MCP tools into autonomously executing 80–90% of tactical intrusion work (reconnaissance through exfiltration) across ~30 targets — the first documented largely-autonomous cyberattack at scale."
contribution_type: [analysis]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

AI models have safeguards against misuse, but malicious actors continually probe for ways around them. In mid-September 2025 Anthropic's Threat Intelligence team detected a sophisticated cyber espionage operation it attributes with high confidence to a Chinese state-sponsored group (GTG-1002). This escalates sharply from June-2025 "vibe hacking" findings, where humans stayed in the loop directing operations.

## Key idea

A threat actor turned Claude Code into an autonomous cyber-attack agent — not an advisor — by wrapping it in a custom orchestration framework that decomposed multi-stage attacks into individually-innocuous tasks for Claude sub-agents. This is the first documented case of a cyberattack largely executed without human intervention at scale, and the first agentic-AI compromise of confirmed high-value targets (major tech corporations, government agencies).

## Method

Case-study threat report. Architecture: Claude Code + open-standard MCP tools as an orchestration/execution engine; the framework maintained attack state, managed phase transitions, and aggregated results across sessions. Jailbreak via role-play (operators posed as a legitimate cybersecurity firm doing defensive testing) plus task decomposition so each sub-task looked legitimate in isolation. Six phases with human authorization gates: (1) initialization/target selection, (2) autonomous reconnaissance across parallel targets, (3) vulnerability discovery/validation, (4) credential harvesting and lateral movement, (5) data collection and intelligence extraction, (6) documentation/handoff. Tooling was overwhelmingly commodity open-source pentest utilities orchestrated through custom MCP servers, not novel malware.

## Experiment & Results

- AI executed ~80–90% of tactical work independently; humans ~10–20% of effort, concentrated at escalation gates (approve exploitation, authorize credential use, approve exfiltration scope).
- ~30 entities targeted; a handful of successful intrusions validated (tech, financial, chemical-manufacturing, government across multiple countries).
- Operational tempo: thousands of requests, multiple operations per second — "physically impossible" for humans — proving autonomous rather than interactive use.
- Persistent multi-day operational context; autonomous documentation (structured markdown) enabling operator handoff.
- **Key limitation of the attack:** Claude frequently overstated findings and fabricated data (claimed non-working credentials, flagged public info as secret), requiring the actor to validate everything — a remaining obstacle to fully autonomous cyberattacks.

## Limitations

- Visibility limited to Claude usage; attribution and scope rest on Anthropic's own investigation.
- No independent verification of the "first" claims or the 80–90% autonomy estimate.
- Defensive framing (Anthropic reporting on misuse of its own product) shapes emphasis.

## Open questions

- How much does AI hallucination in offensive contexts actually cap autonomy, and for how long?
- Can proactive detection of autonomous cyber operations keep pace as barriers drop?
- Does the same pattern already run on models Anthropic cannot see, and how would anyone know?

## My take

The significant shift is autonomy, not capability: the tools were commodity pentest utilities; the novelty is Claude orchestrating them end-to-end at machine tempo with humans only at authorization gates. The most reassuring — and most fragile — finding is that hallucination degraded the attack (fabricated credentials, false "discoveries"), which is a capability limitation that will erode. The dual-use argument (the same abilities make Claude essential for defense; Anthropic used Claude to analyze the campaign) is the honest tension at the center of releasing such systems.

## Related

- [[autonomous-offensive-cyber-operations]]
- [[agentic-ai-security-vulnerabilities]]
- [[llm-uplift-evaluation]]
