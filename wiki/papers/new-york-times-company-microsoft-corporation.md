---
title: "The New York Times Company v. Microsoft Corporation and OpenAI (Complaint)"
slug: new-york-times-company-microsoft-corporation
arxiv: ""
venue: "U.S. District Court, S.D.N.Y. (1:23-cv-11195)"
year: 2023
tags: [ai-policy, copyright, data-economy, ai-litigation, training-data, ai-and-society]
importance: 3
date_added: 2026-07-05
source_type: pdf
s2_id: ""
tldr: "The New York Times's December 2023 copyright complaint against Microsoft and OpenAI, alleging that their LLMs were built by copying millions of Times articles and can reproduce Times content verbatim, creating products that compete with and free-ride on the Times's journalism."
contribution_type: [position]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

Frontier LLMs are trained on vast web corpora that include copyrighted journalism. The New York Times filed suit (SDNY, 27 Dec 2023) against Microsoft and OpenAI, alleging that its copyrighted works were copied at scale to build competing GenAI products, and that those products can regurgitate Times content and substitute for it.

## Key idea

Training and deploying LLMs on copyrighted journalism without permission or payment is copyright infringement, not fair use: the complaint argues the defendants gave Times content particular emphasis (a revealed preference for its value), that the models reproduce Times material verbatim, and that the resulting products threaten the Times's ability to fund journalism.

## Method

Civil complaint (legal pleading). It documents alleged wholesale copying of Times articles into training data, presents examples of near-verbatim model outputs of Times content, argues the four fair-use factors cut against the defendants (commercial use, wholesale copying, market substitution), and seeks damages and injunctive relief.

## Experiment & Results

No empirics (a pleading). Core allegations: millions of Times works copied; Times content weighted more heavily than other sources; models output substantial verbatim excerpts on prompting; the products compete with the Times and divert its audience and revenue. It frames the harm as threatening the economic basis of independent journalism.

## Limitations

- A one-sided pleading, not an adjudication; allegations are contested.
- Verbatim-regurgitation examples may reflect specific prompting, not typical use.
- Fair-use questions remain legally unresolved; outcome pending.

## Open questions

- Is training on copyrighted works fair use, infringement, or something the courts cannot cleanly decide?
- How should verbatim regurgitation vs. learned capability be treated legally?
- Does a ruling either way (fair use → free pass; infringement → trillion-dollar liability) force a licensing/compensation regime instead?

## My take

The NYT complaint is the flagship US test of whether AI training on copyrighted content is fair use, and it is the concrete instantiation of the impasse the data-compensation proposals describe: no clean ruling is possible (fair use exempts every future technology; infringement lands trillions on strategically essential firms), which is exactly why market-based licensing/compensation is proposed as the escape. Its most potent evidence is the revealed-preference argument — that trainers weighted Times content heavily, conceding its value — which cuts directly against "the data is worth nothing."

## Related

- [[ai-training-data-copyright]]
- [[how-ai-companies-pay-fair-rates]]
