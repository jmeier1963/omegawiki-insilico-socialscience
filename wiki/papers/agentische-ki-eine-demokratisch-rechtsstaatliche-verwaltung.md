---
title: "Agentische KI für eine demokratisch-rechtsstaatliche Verwaltung: Potenziale nutzen, Grundsätze stärken"
slug: agentische-ki-eine-demokratisch-rechtsstaatliche-verwaltung
arxiv: ""
venue: "Agora Digitale Transformation (Studie)"
year: 2026
tags: [agentic-ai, public-administration, ai-governance, rule-of-law, e-government, germany, ai-accountability, ai-and-society]
importance: 3
date_added: 2026-08-04
source_type: pdf
s2_id: ""
tldr: "A German policy study that refuses to evaluate agentic AI in public administration by efficiency, instead deriving criteria from constitutional and administrative law, and building a four-axis property framework plus six agent archetypes and six design fields for assessing whether agentic systems strengthen or undermine democratic rule-of-law administration."
contribution_type: [analysis, position]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

Ninety percent of public institutions surveyed by the WEF (2026) plan to deploy or pilot agentic AI within two to three years, and German municipal, Land and federal authorities are already experimenting (BMDS 2026). Deployment is therefore a live design question, not a speculative one.

The debate is split between two framings. On one side, agentic AI as a *tool* used inside existing structures, competencies and procedures without changing their institutional logic. On the other, the **"Agentic State"** (Ilves et al. 2025) — a fundamental reconception of state action in which AI agents proactively deliver personalized, situationally configured services, convert rigid administrative processes into dynamically coordinated flows, and shift from traditional legislation to adaptive, evidence-based regulation.

Public discussion is likewise polarized (OECD 2025; Liang et al. 2025; WEF 2026): expectations of substantial efficiency gains — cushioning skilled-labour shortages, shortening processing times, automating routine work — against fears that agentic systems generate rule-of-law and democratic risks through opacity and hard-to-attribute decisions.

Social benefits is where this bites hardest. Good administration there fails not only on processing capacity and inefficient workflows but earlier: on orientation barriers, complex application paths, communication breakdowns, and discontinuities between jurisdictions. Agentic AI could address many of these — but the study's framing warning is that if badly designed procedures or complicated rules are simply supported unchanged by agentic systems, **the AI automates the problem instead of the solution** (Regis et al. 2026).

## Key idea

Refuse the efficiency frame. The study's guiding question is:

> *Wie muss der Einsatz agentischer KI in der öffentlichen Verwaltung gestaltet sein, damit sie die Grundlagen demokratisch-rechtsstaatlichen Verwaltungshandelns aktiv stärkt?*
> (How must agentic AI be designed so that it *actively strengthens* the foundations of democratic rule-of-law administration?)

Two moves make this more than rhetoric. First, the evaluation criteria are derived not from a theory of good governance but from **the legal rules that already bind German administrative action**: Grundrechte, Art. 20(3) and Art. 3(1) GG, the procedural provisions of the VwVfG, and — where agentic AI has particularly relevant contact points — Sozialrecht. The study is explicit that this selection is eclectic and problem-oriented rather than theoretically complete.

Second, democratic-administrative principles are treated **not as a protected good to be defended against agentic AI, but as the yardstick its design should be oriented toward**. The study also argues explicitly against Weber-only framings of administration: the bureaucracy model (rule-boundedness, hierarchy, impersonality, written record) is a useful analytical reference but omits the democratic constitution of public administration — its binding to fundamental rights and parliamentary decisions, judicial reviewability, duty to give reasons, and, in specified areas, an obligation to *actively support* people in exercising their rights. That constitutional character is the reason efficiency alone is an insufficient criterion.

## Method

A conceptual and legal analysis in four moves, tested against a worked example.

**1. Criteria.** Seven yardsticks for democratic rule-of-law administration: Gesetzmäßigkeit und Gleichbehandlung (legality and equal treatment); Zugänglichkeit und Inklusion (accessibility and inclusion); Benachteiligungsverbot (non-discrimination); Unterstützung bei der Inanspruchnahme von Rechten (support in exercising rights); Einzelfallgerechtigkeit (individual-case justice); Transparenz und Nachvollziehbarkeit; Datenschutz und informationelle Selbstbestimmung.

**2. Structural risks.** Risks arising from the architecture itself, not from misconfiguration or weak oversight:

- *Nachvollziehbarkeit* — LLM internals are not fully explainable; outputs follow statistical weightings rather than explicitly coded rules, so why an agent reached an intermediate result often cannot be reconstructed in a form compatible with administrative law's reason-giving logic. Multistep agentic processes compound this: early intermediate steps shape later outputs through dependencies invisible to caseworkers and affected parties.
- *Gesetzmäßigkeit / Gleichbehandlung / Benachteiligungsverbot* — hallucination (factually wrong but linguistically plausible output) and algorithmic bias from flawed training data.
- *Datenschutz* — agents drawing on multiple sources and holding information across process steps can merge personal data from different procedural and life domains even where unnecessary, undermining purpose limitation *de facto* without this being transparent to data subjects or supervisory bodies.
- *IT-Sicherheit* — a qualitatively new attack surface. Unlike passive processing systems, a compromised agent can *act*: transmit data, trigger procedures, alter system states. Prompt-injection through application documents, register data or official communication channels is flagged as particularly serious.

**3. A four-axis property framework.** Existing taxonomies of agentic systems focus predominantly on degree of autonomy (cf. Mirsky 2026), which the study argues is too narrow for administrative assessment. It separates:

- *Immanent* properties (the system itself, independent of deployment): **Autonomie** A1–A4 (reactive → selective → planning → adaptive) and **Berechtigung** B1–B4 (up to reading → writing → transactional permissions).
- *Contextual* properties (embedding in the administrative context): **Wirkung** W1–W4 (informing → supporting → decision-preparing → decision-triggering) and **Rolle** R1–R4 (citizen-side → administration-side → mediating → coordinating).

The load-bearing claim: these do not covary. High autonomy does not imply high effect; broad permissions say nothing about role; and a system with limited autonomy can have substantial procedural effect if its outputs feed directly into administrative workflows.

**4. Six ideal-typical Funktionsmuster**, each specified by its guiding question, its position on all four axes, and its opportunities and risks against the seven criteria:

| Agent | Guiding question | Axis position |
|---|---|---|
| **Orientierungsagent** | Which administrative services fit my life situation? | translates citizens' circumstances into candidate services |
| **Antragsagent** | What information and evidence does this procedure require? | renders requirements comprehensible and puts them into submittable form |
| **Verfahrensagent** | Where does my procedure stand and what is next? | A2–A3, B2–B3, W2–W3, R1–R3 |
| **Kommunikationsagent** | How is administrative action made comprehensible? | A1–A3, B2–B3, W1–W3, R2–R3 |
| **Orchestrierungsagent** | How are multiple procedures, bodies or benefit systems coordinated? | A3–A4, B3–B4, W3–W4, R3–R4 |
| **Monitoringagent** | What structural problems appear in aggregate implementation? | observes at aggregate level without intervening in individual cases |

**5. Verprobung** against the **Wohngeld** (housing benefit) process end to end: navigation, application, processing, decision and notice, and transitions between benefits. A building-permit example illustrates the Verfahrensagent; a BAföG notice the Kommunikationsagent; a business registration spanning Gewerbeamt, Finanzamt, Berufsgenossenschaft and Kammer the Orchestrierungsagent.

## Experiment & Results

No empirical study; the output is a normative framework. Its substantive result is six **Gestaltungsfelder**, each with a guiding question and three concrete principles:

1. **Verhältnismäßigkeit** — *Is agentic AI the right instrument, and is the depth of intervention proportionate to the benefit?* Principles: **Alternativenprüfung** (first check whether comprehensible forms, better interfaces, clear responsibilities or process simplification would solve the problem with a simpler, more robust, less intrusive means); **Einbettung** (writing and transactional agents must be integrated *through* existing interfaces, roles and approval paths of the specialist procedures, not around them, so established controls survive); **Wirkungsangemessenheit** ("so much as necessary, as little as possible" — the further an agent moves up the effect scale, the stronger the justification required).
2. **Verantwortung** — *Who bears the decision, who is liable for errors?* Responsibility cannot be delegated to the system; decisions remain with the authority regardless of how automated their preparation. Principles: **menschliche Autonomie** (agent action must remain independently and rule-based comprehensible to citizens and caseworkers, with decision-relevant information, uncertainties, alternatives and verification needs surfaced so the responsible person can assess them independently — which also catches errors the agent does not recognize); **menschliche Entscheidungsverantwortung** (legal responsibility for administrative acts must sit with an identifiable body within the authority); **Zurechenbarkeit bei systemübergreifendem Handeln** (for cross-authority action, every part-action must remain attributable to a specific body, or a "black box between authorities" emerges).
3. **Verbindlichkeit** — *Is the legal status of agent action recognizable?* Addresses the gap between technical effect and legal qualification. Principles: **Klarheit** (is this non-binding information, procedural preparation, or a binding decision?); **Maßgeblichkeit** (an agent's explanations, summaries or translations must not legally overlay the underlying administrative act — it must stay clear which text binds); **Konsistenz** (agent explanations must not generate divergent requirements, deadlines or options from the authoritative documents).
4. **Nachvollziehbarkeit** — *Can what the system did, and why, be reconstructed?* Classical administrative law secures reviewability through written record, reason-giving duties and documentation; agentic systems extend the requirement because not only the result and its justification but the *path* must remain examinable — the data accessed, the intermediate steps, the resulting recommendations or actions, and the system conditions under which this occurred. Explicitly: not merely technical explainability, but **translatability of agentic action into the language of administrative procedure**.
5. **Datenhoheit** — *Who controls the data the agent processes?*
6. **Reformvorrang** — *Does deploying agentic AI merely treat symptoms of structural deficits?* The counterpart to the framing warning: where the underlying problem is bad rules or bad process design, reform takes precedence over automation.

## Limitations

- **Self-declared eclecticism.** The authors state their criteria selection is problem-oriented, not theoretically complete, and "in several respects attackable."
- **No empirical evaluation.** Six ideal-typical patterns and a Wohngeld walkthrough, not deployed systems. Nothing here has been tested against a running agent in a real authority.
- **German legal frame** — Grundgesetz, VwVfG, Sozialrecht. Portability to other administrative-law traditions is asserted nowhere and would need separate work.
- The four-axis framework has no operationalization: no rubric, no inter-rater agreement, no worked classification of an existing system. It is a vocabulary, not yet an instrument.
- Written from a policy-institute perspective (Agora Digitale Transformation, publicly funded); "the state should invest in institutional redesign" is a conclusion its authors were disposed to reach.
- Structural risks are enumerated but not weighted. The study does not say which failure modes are most likely or most damaging in practice.

## Open questions

- Can the Nachvollziehbarkeit requirement — reconstructing data accessed, intermediate steps and system conditions — actually be met by current LLM-based agents, or does the study's own analysis of statistical rather than rule-based processing make it unattainable? This is the sharpest internal tension in the document.
- Where is the legal threshold at which W3 (decision-preparing) becomes W4 (decision-triggering) for the purposes of administrative-act attribution?
- How is cross-authority attribution organized in practice for orchestration agents spanning several bodies with separate legal responsibilities?
- Can the four axes be turned into an assessable rubric for procurement and oversight?
- If Reformvorrang is taken seriously, how many currently discussed use cases survive an honest Alternativenprüfung?
- Does an agentic layer that improves accessibility for most people worsen exclusion for those dependent on personal, telephone or written channels — and how is that traded off against Benachteiligungsverbot?

## My take

The most valuable move is the refusal to treat legal-democratic principles as constraints on an efficiency optimization, and instead to make them the objective function. That inverts the usual public-sector AI framing and produces different conclusions — most visibly **Reformvorrang**, which says that when the real problem is a badly designed procedure, automating it is the wrong intervention regardless of how well the automation works. That principle is portable well beyond German administration and is the single idea here most worth carrying elsewhere.

The four-axis separation is the second durable contribution. Autonomy-level taxonomies dominate agentic-AI governance discussion, and the argument that autonomy, permissions, effect and role vary independently — so that a low-autonomy system feeding directly into a workflow can have greater procedural consequence than a high-autonomy advisory one — is correct and generalizes past public administration.

Where it is weakest: the study demands a reconstructability standard that its own risk analysis suggests LLM-based agents cannot meet. It resolves this by shifting the target from technical explainability to "translatability into the language of administrative procedure," which is a reasonable move but leaves the hard question open — a faithful-sounding translation of an unexplainable process is exactly the failure mode that would be hardest to detect.

Worth reading directly against [[applied-ai-most-impactful-agentic-enterprise]], which prescribes consolidating accountability into a single outcome-accountable agentic process owner. In this study's frame that consolidation is unavailable: responsibility is distributed by statute, cannot be delegated to the system, and must remain attributable per part-action. The private-sector and public-sector prescriptions for agentic process redesign are not merely different in emphasis — on governance they point in opposite directions.

## Related

- [[agentic-ai-public-administration]]
- [[ai-accountability-gap]]
- [[agentic-ai-security-vulnerabilities]]
- [[agentic-democratic-mediation]]
- challenges: [[applied-ai-most-impactful-agentic-enterprise]]
