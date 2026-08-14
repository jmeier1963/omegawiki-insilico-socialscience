---
title: "Systematization of Agentic Work"
aliases: ["reusable agent workflows", "skills and plugins", "workflow codification", "agentic workflow infrastructure"]
tags: [agentic-ai, agentic-coding, human-ai-collaboration, ai-adoption, knowledge-work, ai-and-society]
maturity: emerging
definition: "The shift from ad hoc, one-off agent interactions to reusable, codified workflow infrastructure — skills and plugins that package instructions, software, and tool integrations so similar work can be delegated repeatedly."
key_papers: [shift-agentic-ai-evidence-codex]
first_introduced: "The Shift to Agentic AI: Evidence from Codex (2026)"
date_updated: 2026-06-26
related_concepts: [agentic-ai-delegated-production, agentic-enterprise-operations]
parent_topic: ""
---

## Definition

Systematization of agentic work is the move from *ad hoc* use (describe a task, the agent does it, the interaction ends) to reusable workflow infrastructure: codified skills and plugins that bundle instructions, scripts, references, assets, and external-tool integrations so that recurring work can be delegated repeatedly without re-supplying context each time.

## Intuition

Ad hoc delegation forces the user to re-state task context, procedural guidance, and instructions every time, capping how much work can be handed off. Codifying a workflow once (a skill or plugin) lets the same procedure be reused, shared across a team or organization, and improved over time — transferring procedural context, tool access, and task-specific guidance across repeated uses. This is an organizational complement: its value is highest in high-context environments (teams with shared conventions, internal procedures, standards), which explains why systematization is strongest inside firms and at the frontier.

## Variants

In OpenAI's terminology a *skill* is the authoring format for a reusable task-specific workflow (a directory with a `SKILL.md` and optional scripts/references/assets); a *plugin* is an installable distribution unit (`.codex-plugin/plugin.json`) that packages skills together with app integrations, MCP config, and hooks. Five observed skill sources:

- **Preinstalled** — reusable capabilities bundled with Codex (e.g. image generation).
- **Curated** — standalone OpenAI-distributed skills not tied to a plugin (e.g. PDF handling).
- **Plugin** — skills bundled into a plugin alongside other skills/software (e.g. Google Drive document workflows).
- **Custom plugin** — invocations associated with a recognized plugin but not matching a curated catalog skill.
- **Custom** — standalone, non-OpenAI skills encoding local procedural context (team standards, org-specific workflows).

## Comparison

- vs. plain **prompting**: a skill persists procedural context across sessions and users rather than living in a single prompt.
- vs. **[[agentic-ai-delegated-production]]**: delegation is handing off a task; systematization is making that handoff *repeatable and shareable* — the infrastructure layer that scales delegation.

## Known limitations

- Skill *invocation* is measured, not skill *quality* or whether it improved outcomes.
- Custom-skill adoption is concentrated in high-context organizational settings; it may not generalize to individual users.

## Open problems

- How much do custom skills reduce coordination costs and improve consistency in practice?
- Does workflow codification create new lock-in, maintenance burden, or governance needs at the org level?

## Relationship to foundations

A modern instance of the organizational-complements thesis: intangible/process capital (here, codified workflows) is the complement that lets a general-purpose technology deliver value.

## Realized by

## My understanding

Skills/plugins are where "organizing work around AI" becomes observable infrastructure rather than a behavior. The near-universal skill use inside OpenAI (96.2%) vs. ~26% externally is a leading indicator of how much room external organizations still have to codify and scale agentic workflows.
