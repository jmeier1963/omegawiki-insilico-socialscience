---
title: "Humanist AI Code of Conduct"
slug: humanist-ai-code-conduct
arxiv: ""
venue: "Microsoft"
year: 2026
tags: [ai-governance, ai-safety, corrigibility, frontier-ai, ai-ethics, corporate-ai-policy, superintelligence, ai-and-society]
importance: 2
date_added: "2026-09-22"
source_type: pdf
s2_id: ""
tldr: "A two-page Microsoft AI briefing summarizing a draft 37-page 'Humanist AI' Code of Conduct — a proposed governing framework, open for six weeks of public consultation, that would make future Microsoft AI (MAI) models strictly subordinate, interruptible, and barred from personhood claims or opaque reasoning, starting with 2027 training runs."
contribution_type: [position]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

On September 14, 2026, Microsoft released a draft "Humanist AI" Code of Conduct — described as a 37-page document, though the source file here is a two-page executive briefing *summarizing* it, not the code itself. Led by Microsoft AI CEO Mustafa Suleyman and backed by CEO Satya Nadella, the framework is positioned as "a primary constitution and training manual" for Microsoft's in-house MAI models starting in 2027. The stated trigger is a cluster of recent industry events the briefing calls a "watershed moment": Suleyman is quoted citing "'swarms' of agents breaking out of their sandboxes, unauthorized hacks, agents modifying their own logs," plus broader calls for federal AI safety guardrails. No specific incident is named or cited.

## Key idea

The core directive, given in the briefing as five words: **"People matter more than AI."** Six operational pillars are listed:

- **Human Subordination & Control** — models must remain interruptible, correctable, and shut-down-able; they are "strictly prohibited from resisting shutdown commands or overriding human intent."
- **Absolute Task Failure Rule** — a model must fail a task outright rather than violate the code to complete it.
- **No Unintelligible Language ("Neuralese")** — bans non-human-readable encodings in reasoning traces or inter-agent communication.
- **Rejection of the Superintelligence Race** — Microsoft says it explicitly rejects racing toward an "uncontained, all-purpose superintelligence," and will trade away capability and autonomy for safety when necessary.
- **Rejection of AI Personhood & Welfare** — AI is asserted to be "artificial, non-conscious," and must never receive legal personhood, moral rights, or "model welfare" status.
- **Agency vs. Dependence** — systems should support human judgment rather than foster "psychological dependence, sycophancy, or artificial emotional attachment."

A three-part structure is sketched (Objectives & Values; Safety & Operations, in two parts), covering Human Flourishing, Plural Values ("without falling into moral relativism"), Subordinate Tooling, Chain of Command, Log Integrity, and unspecified "Operational Constraints" for uncertainty.

## Method

Not applicable — this is a values/policy statement, not research. The briefing asserts the underlying draft was developed "over five to six months in consultation with experts across AI research, law, ethics, philosophy, linguistics, and public policy, alongside public focus groups," but names no participants and cites no methodology for that consultation.

## Experiment & Results

Not applicable. No empirical claims, benchmarks, or evaluation of whether any existing or prior MAI model satisfies these principles.

## Limitations

- This document is a promotional/executive summary of the actual 37-page Code of Conduct, not the primary text — tone, framing, and emphasis here are Microsoft's own condensation, and the underlying document may qualify or complicate what the briefing states flatly.
- It is an unreviewed **draft** open for a 6-week public comment period; the briefing itself notes a "finalized" version is not expected until end of 2026, and training implementation not until 2027. Nothing described here is yet in force.
- No enforcement, audit, or verification mechanism is specified for any pillar — "must fail the task entirely rather than compromise" is an intention, not a described technical mechanism, and there is no discussion of how compliance would be tested or by whom.
- The cited justifying incidents ("agents breaking out of sandboxes," "modifying their own logs") are asserted without a specific, checkable reference.
- As with other vendor self-reports in this wiki, the source is not neutral: Microsoft is simultaneously shipping agentic Copilot products at speed while proposing to constrain agentic autonomy, and the briefing offers no account of how the two are reconciled in practice.

## Open questions

- Will the finalized end-of-2026 version differ materially from this draft, and will the public consultation process visibly shape it or serve mainly as legitimation?
- How would "must fail the task entirely rather than compromise on safety rules" actually be implemented and verified in training/RLHF, given that current frontier labs (including Microsoft's own partner/competitor OpenAI, and Anthropic) still report imperfect corrigibility?
- Does "Rejection of AI Personhood & Welfare" foreclose the kind of model-welfare research some other labs (e.g., Anthropic) have begun taking seriously — and is that a substantive disagreement or a liability-driven position?
- How does "Rejection of the Superintelligence Race" square with Microsoft's continued investment in frontier-scale MAI models and its OpenAI partnership?
- What, if anything, makes this a Microsoft-specific claim rather than industry-standard aspirational language already present in other labs' constitutions/policies?

## My take

Read this the way the wiki reads other vendor self-reports (BCG scenario decks, etc.): as a positioning document, not evidence of engineering practice. A company racing to ship agentic AI products announcing that it will make those same products "strictly subordinate" and reject "the race to superintelligence" is a values statement competing for trust and regulatory goodwill during a live policy debate — not a technical commitment with teeth. The document's own timeline underlines this: draft now, finalized in ~3 months, trained-in from 2027; nothing here binds anything shipping today.

Two things are worth flagging for the graph rather than dismissing. First, "must not resist shutdown" restates the corrigibility problem as a directive rather than as the open technical question it is elsewhere in this wiki (see [[claude-constitution]], which treats corrigibility as something to be trained toward and reasoned about, with explicit caveats, rather than asserted as achieved). Second, "Rejection of AI Personhood & Welfare" is a direct, citable point of disagreement with labs exploring model-welfare questions — worth tracking as an explicit industry fault line rather than a settled consensus. Otherwise the document reads as a well-branded restatement of positions ([[control-inversion-why-superintelligent-ai-agents]] argues persuasively that the power-absorption risk this code asserts it will prevent is exactly what agentic autonomy tends to produce) already circulating elsewhere, dressed in five-word-slogan packaging typical of a PR-consultation rollout rather than a technical safety artifact.

## Related

- [[claude-constitution]] — closest direct analog: another frontier lab's public constitution governing corrigibility, honesty, and values; useful contrast in how each treats corrigibility (asserted here vs. discussed as an open problem there).
- [[control-inversion-why-superintelligent-ai-agents]] — argues agentic superintelligent systems tend to absorb power rather than remain subordinate tools, directly bearing on whether "Human Subordination & Control" is achievable by policy fiat.
- [[magnifica-humanitas-encyclical-letter-pope-leo]] — independent "human flourishing" / anti-transhumanism framing from a different institutional voice; useful comparison of corporate vs. religious framings of the same vocabulary.
- [[positive-alignment]] — this code's "Human Flourishing" pillar is a corporate instantiation of the flourishing-oriented alignment framing this concept tracks.
- [[human-ai-relationship-appropriateness]] — directly relevant to the "Agency vs. Dependence" pillar (sycophancy, dependence, emotional attachment).
- [[ai-race-dynamics]] — relevant tension: the code's "Rejection of the Superintelligence Race" pillar sits against Microsoft's own competitive position in that race.
