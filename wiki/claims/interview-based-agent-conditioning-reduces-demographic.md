---
title: "Interview-based agent conditioning reduces demographic accuracy bias"
slug: interview-based-agent-conditioning-reduces-demographic
status: weakly_supported
confidence: 0.65
tags: [generative-agents, fairness, demographic-bias, interview, llm-agents, demographic-parity]
domain: "NLP"
source_papers: [generative-agent-simulations-000-people]
evidence:
  - source: generative-agent-simulations-000-people
    type: supports
    strength: moderate
    detail: "Interview-based agents consistently reduce Demographic Parity Difference (DPD) across political ideology (12.35% → 7.85% on GSS), race (3.33% → 2.08% on GSS), and Big Five (0.165 → 0.063 correlation DPD for ideology) compared to demographic-based agents."
conditions: "Validated across political ideology, race, and gender subgroups on GSS, Big Five, and economic games; U.S. population only; bias measured via DPD (difference between best and worst performing subgroup)."
date_proposed: 2026-04-13
date_updated: 2026-04-13
---

## Statement

Grounding LLM agent behavior in qualitative interview transcripts rather than demographic attribute descriptions systematically reduces accuracy disparities between demographic subgroups (as measured by Demographic Parity Difference), particularly along political ideology and racial dimensions.

## Evidence summary

Park et al. (2024) compare three agent conditioning approaches across 1,052 participants. Interview-based agents show lower DPD than demographic-based agents on all tasks: GSS ideology DPD drops from 12.35% to 7.85%, racial DPD from 3.33% to 2.08%. Big Five ideology DPD drops from 0.165 to 0.063 (correlation). Economic game ideology DPD drops from 0.50 to 0.19. Gender DPD remains low across all conditions. The mechanism: interviews capture idiosyncratic individual variation that demographic stereotypes flatten, reducing the extent to which agent accuracy depends on group membership.

## Conditions and scope

- Bias reduction is strongest for political ideology, moderate for race, minimal for gender
- Requires 2-hour interviews — bias-reduction benefit must be weighed against interview cost
- DPD measures worst-vs-best group gap; does not capture within-group fairness
- U.S. only; bias patterns may differ in other cultural contexts

## Counter-evidence

None recorded yet. This is a novel finding with no prior contradicting evidence.

## Linked ideas

## Open questions

- Can shorter or less resource-intensive methods (e.g., written surveys) achieve comparable bias reduction?
- Does interview-based conditioning also reduce bias for intersectional subgroups (e.g., Black conservative women)?
- How does bias reduction interact with model capability — do weaker models show the same pattern?
