---
title: "Work at the Frontier: How AI is expanding what people do at work"
slug: work-frontier-how-ai-expanding-what
arxiv: ""
venue: "OpenAI Economic Research report"
year: 2026
tags: [ai-economics, labor-market, task-based-framework, occupational-boundaries, usage-telemetry, ai-and-society]
importance: 3
date_added: 2026-08-04
source_type: pdf
s2_id: ""
tldr: "Classifying 800,000+ work-related ChatGPT messages against O*NET work activities, OpenAI finds 43.5% of occupation-specific messages concern tasks historically associated with a different occupation — evidence that AI is changing not only how work is done but who does it."
contribution_type: [analysis]
datasets: ["ChatGPT work-related message sample (>800,000 messages, US users, occupations linked from ChatGPT Business role data)", "O*NET (IWA/DWA work activities, SOC crosswalk)"]
code_url: ""
cited_by: []
---

## Problem & Context

The task-based framework (Autor, Levy & Murnane 2003) shifted labor economics from treating occupations as indivisible units to analyzing the activities that make them up, and Acemoglu & Restrepo (2019) added that technology reallocates existing tasks to capital while creating new ones where labor holds comparative advantage. Nearly every application of that framework to AI, however, starts from the bundle of activities *currently* assigned to an occupation and asks how those activities will change — implicitly assuming each worker's task set is fixed.

Gans (2026) names the limitation: when automation changes the cost of performing particular activities, firms may split jobs into narrower specialist roles *or* recombine activities into broader generalist ones. The bundle of human work, and therefore the bundle of skills the labor market rewards, is itself endogenous to the technology.

Historical evidence supports the endogeneity. Atalay, Phongthiengtham, Sotelo & Tannenbaum (2020) find a substantial share of long-run change in the task content of work happened *within* job titles rather than through changing occupational composition. Autor, Chin, Salomons & Seegmiller (2024) show technological change produces new forms of work that only later appear in occupational classifications. But both observe change only after it has been absorbed into job ads, titles, or employment patterns — years downstream.

Generative AI usage data offers a window on an earlier stage, before firms revise job descriptions. Yang et al. (2026) found Perplexity queries regularly falling outside users' inferred primary occupation; this report measures the phenomenon directly, with messages linked to self-reported occupations.

## Key idea

**Task crossover**: work historically associated with one occupation appearing in the AI use of people in another. If workers routinely use AI for activities outside their occupational boundary, then AI changes not only *how* work is done and *how fast*, but *who does it* — and the fixed-task-bundle assumption underlying most AI exposure analysis fails.

An **occupational boundary** is operationalized as the set of O*NET work activities historically associated with an occupation. Every message is assigned to one of three categories: *Within occupation* (directly linked to, or semantically near, the user's boundary), *Generic* (broadly shared across most occupations — writing emails, scheduling), and *Cross-occupation* (linked to another occupation; counted as boundary crossing).

## Method

A random sample of **over 800,000 work-related messages** from individual ChatGPT accounts of US users whose occupation was linked from ChatGPT Business Department/Role information. Users not providing both are dropped; only users mapping to a single one of eight occupation groups are retained: customer experience, design, engineering, finance, human resources, legal, marketing, sales. Note the split: role data comes from ChatGPT Business, the analyzed messages from those users' *individual* accounts. ChatGPT Enterprise is a separate product population and is excluded.

**Hierarchical classification.** A model first determines message eligibility (user occupation identifiable, US-based, work-related). Eligible messages are classified to one O*NET **Intermediate Work Activity (IWA)**, then to a **Detailed Work Activity (DWA)** drawn from that IWA or from one of the five most semantically similar IWAs by title embedding — hierarchical rather than a direct message-to-DWA label. Classification uses the message plus up to nine preceding messages as context, but labels only the selected message. Messages are never read by researchers; ChatGPT classifies them anonymously.

**Boundary construction.** Each user occupation is mapped to detailed SOC occupations using employment-share weights; O*NET task links and task ratings identify the associated DWAs; each DWA is embedded from its own title plus its parent IWA title. A DWA falls inside a boundary if directly linked to the occupation **or** if its cosine similarity to the closest boundary DWA is **≥ 0.80**.

Generic labels are assigned when a DWA resembles work traditionally linked to a majority of the eight groups, with a limited set of documented manual adjustments.

## Experiment & Results

**Headline split.** Of all work-related messages: **16.8% cross-occupation**, 21.8% within occupation, **61.5% generic**. Excluding generic work and rebasing, **43.5% of occupation-specific messages are cross-occupation** — and that share ranges from 28% to 77% depending on occupation.

**Cross-occupation work is the majority in five of eight groups**: customer experience 77%, design 75%, human resources 69%, legal 56%, marketing 53%. Across the eight groups, 11–30% of all messages involve task crossover.

**Which tasks travel.** Financial calculation and computer troubleshooting are near-universal borrowings: *calculating financial data* ranks among the top three finance-related tasks in **every** non-finance occupation (9.8% of finance-related messages from non-finance users), and *troubleshooting computer applications or systems* ranks top-three among engineering tasks in **every** non-engineering occupation (6.1%). Among non-marketing users, *developing promotional materials* is the most common marketing task at 25% of marketing-related messages.

**Two directions, not one.** Separating tasks brought *in* from tasks that *travel out* reveals three distinct roles:

- **Design** draws heavily but exports little: 35.2% of designers' messages involve other occupations' work, while design tasks make up only **1.7%** of messages from workers elsewhere.
- **Engineering** is the opposite: only 18.5% of engineering messages involve outside tasks, but engineering work accounts for **7.4%** of messages among other occupations.
- **Marketing** does both: 24.3% of marketers' messages are cross-occupation, and marketing tasks account for **8.9%** of other occupations' messages — the highest export share in the sample.

**Firm size.** Among *typical-volume* users (middle 50% by message volume), the cross-occupation share falls from **18.9% in 2–5 seat workspaces to 16.3% in workspaces of 101+ seats** — about 2.5 percentage points, or ~13% relative. Among top-quartile users there is no monotonic trend. The authors' reading: workers in small organizations turn to AI when a task would otherwise require a colleague who does not exist; heavy users may instead have stable AI workflows within their core occupation.

**Crossover adds, it does not replace.** Reclassifying generic work onto the own-occupation diagonal shows every occupation retains a meaningful core of same-occupation activity. Task bundles are becoming more mixed while preserving a recognizable occupational center.

## Limitations

- **Descriptive only.** The report explicitly does not estimate AI's effect on employment or productivity, and cannot say how the same people would have allocated work without AI.
- **Unit is a message**, not an hour, a project, or a job. It is unobserved whether the output was used, whether it was any good, how much time it saved, whether the user could have done the task unaided, or whether a specialist reviewed it.
- **Not representative.** A random sample of one vendor's US users who supplied Business role information — not the US workforce. Enterprise users are a separate population and excluded.
- **Occupations are self-reported** at signup, and only eight groups are covered; non-generic messages falling outside those eight (e.g. healthcare) are dropped entirely.
- **Boundaries are fuzzy by construction.** A message may contain several overlapping tasks; the assigned DWA is its *primary* activity only. The 0.80 cosine threshold for boundary membership is a free parameter that directly moves the headline number.
- "Closest occupation" describes taxonomic proximity, **not** that the work was delegated from or originated in that occupation.

## Open questions

- Does repeated AI use outside an occupational boundary produce *lasting* change in job responsibilities, or is it episodic substitution for an unavailable colleague? The report poses this as its central open question.
- If it does persist, who is qualified to review cross-boundary AI output? The authors note workers may need training to evaluate AI-assisted work outside their expertise, and organizations need explicit review and accountability processes.
- The measurement problem: if AI changes which workers perform which tasks, government statistics built on existing job descriptions will drift steadily away from how work is actually organized. How should official taxonomies be updated?
- Is the small-firm gradient about missing specialists, or about weaker process controls on who may do what?
- Does crossover eventually recompose into new occupations — the Autor et al. (2024) pattern — and how early could that be detected?

## My take

The conceptual contribution is worth more than the numbers: most AI-and-work analysis conditions on a fixed task bundle per worker, and this is direct evidence that the bundle is what moves first. That reframing is right, and it is a genuine early-warning instrument — usage data leads job ads and titles by years.

The asymmetry finding is the sharpest part. Design draws in 35% cross-occupation work while exporting 1.7%; engineering does the reverse. That is not one phenomenon but two, and lumping them under "AI broadens roles" loses the structure. It also suggests a testable prediction: occupations that mainly *export* tasks face different labor-market pressure than occupations that mainly *import* them.

Where I would hold back: 61.5% of messages are generic, and the headline 43.5% only exists after excluding them and rebasing. That is a defensible choice, clearly disclosed — but it means the striking number rests on a denominator decision plus a 0.80 similarity cutoff, and neither is stress-tested. And the report cannot distinguish a marketer who now competently troubleshoots a website from one who produced something plausible and wrong. The absence of any quality or verification signal is the real limitation, and it is the same gap [[google-ai-economy-atlas-v1-mapping]] leaves open from the other vendor's data.

## Related

- [[task-crossover]]
- [[privacy-preserving-usage-telemetry-classification]]
- [[human-ai-division-labor-agentic-work]]
- same_problem_as: [[google-ai-economy-atlas-v1-mapping]]
