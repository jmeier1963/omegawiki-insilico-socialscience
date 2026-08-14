---
title: "Directive (EU) 2019/790 on Copyright and Related Rights in the Digital Single Market"
slug: directive-eu-2019-790-copyright-related
arxiv: ""
venue: "Official Journal of the European Union"
year: 2019
tags: [ai-policy, copyright, data-economy, eu-regulation, text-and-data-mining, ai-and-society]
importance: 3
date_added: 2026-07-05
source_type: pdf
s2_id: ""
tldr: "The EU's Digital Single Market copyright directive, whose text-and-data-mining exceptions (Articles 3–4) — including a rightholder opt-out for commercial TDM — became the central legal framework governing whether AI systems may train on copyrighted works in the EU."
contribution_type: [position]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

EU copyright law predated large-scale machine processing of text and data. The Digital Single Market (DSM) Directive (2019/790, adopted 17 April 2019) modernized copyright for the digital era, amending earlier directives and, crucially for AI, creating exceptions for text and data mining (TDM).

## Key idea

Provide harmonized copyright exceptions for text and data mining — a mandatory exception for research organizations and cultural heritage institutions (Art. 3), and a broader exception for anyone (Art. 4) subject to rightholders' ability to expressly reserve their rights (opt-out) — establishing the legal basis (and the opt-out lever) for training AI on copyrighted material in the EU.

## Method

EU legislative instrument (directive) that member states must transpose into national law. Relevant provisions: Art. 3 (TDM for scientific research), Art. 4 (general TDM with machine-readable opt-out for commercial use), plus platform-liability provisions (Art. 17) and press-publisher rights (Art. 15).

## Experiment & Results

No empirics. The load-bearing content for AI is the Art. 4 opt-out: commercial TDM (including AI training) is permitted unless rightholders reserve their rights in an appropriate (machine-readable) manner, shifting the debate from "is training legal?" to "how do rightholders reserve, and how do trainers respect, opt-outs?"

## Limitations

- A directive, not a regulation — transposition varies by member state.
- Predates generative AI; applicability to LLM training is contested and being litigated.
- The opt-out mechanism's practical enforceability (machine-readable reservations at web scale) is unclear.

## Open questions

- Does the Art. 4 opt-out actually let rightholders control AI training in practice?
- How does the DSM TDM regime interact with the EU AI Act's training-data transparency duties?
- Is opt-out the right default, versus opt-in or compulsory licensing?

## My take

The DSM Directive is the legal backdrop the entire AI-training-data debate reacts to: its Art. 4 opt-out is the EU's answer to "can you train on copyrighted text?", and it is precisely the regime that market-based proposals (data compensation, data equity) try to make workable at scale. The unresolved knot is enforceability — an opt-out only means something if reservations are machine-readable and respected, which is exactly where the litigation and the compensation proposals converge.

## Related

- [[ai-training-data-copyright]]
