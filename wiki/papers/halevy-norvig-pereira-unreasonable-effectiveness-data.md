---
title: "The Unreasonable Effectiveness of Data"
slug: halevy-norvig-pereira-unreasonable-effectiveness-data
arxiv: ""
venue: "IEEE Intelligent Systems"
year: 2009
tags: [data-driven-ai, nlp, big-data, scaling, machine-learning, data-versus-algorithms]
importance: 3
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [unreasonable effectiveness, data, NLP, scale, simple models, Halevy, Norvig, Pereira, Google]
domain: "NLP"
code_url: ""
cited_by: []
---

## Problem

In NLP and other complex tasks, should researchers focus on developing more sophisticated algorithms or on gathering more data? The conventional wisdom favored better algorithms; empirical results increasingly favored more data.

## Key idea

For complex NLP tasks, simple models trained on massive, noisy datasets outperform sophisticated models trained on small curated corpora. Echoing Wigner's "unreasonable effectiveness of mathematics," data quantity often matters more than algorithmic elegance — and this has implications for what AI research should prioritize.

## Method

- Empirical analysis across multiple NLP tasks: machine translation, image analysis, question answering
- Authors: Alon Halevy, Peter Norvig, Fernando Pereira (Google Research)
- Published: *IEEE Intelligent Systems* 24(2):8–12 (DOI 10.1109/MIS.2009.36)

## Results

- N-gram language models (simple + data) beat sophisticated syntactic models on MT tasks
- Google's approach: massive web data → simple models → state-of-the-art performance
- Key insight: the "long tail" of rare events, covered only by massive datasets, carries critical information
- Data > algorithms for many tasks, especially at scale

## Limitations

- Written before the deep learning era; some conclusions need updating (architecture matters more again)
- "Simple models" has changed meaning: modern "simple" models (transformers) are complex by earlier standards
- The message is nuanced but often misread as "just get more data"

## Open questions

- At what scale does the "more data" advantage diminish? (Scaling laws, LLM research)
- Does the unreasonable effectiveness of data apply to scientific discovery beyond NLP?

## My take

The companion piece to Anderson's "End of Theory" but from serious researchers. Norvig et al. are more careful: they don't claim theory is dead, just that data often wins over clever algorithms in practice. This insight drove the scaling era of ML. In retrospect, both the data and the architecture turned out to matter — but the data-emphasis was underrated at the time. The scaling law literature (Kaplan et al. 2020) is the direct descendent of this argument.

## Related

- [[anderson-end-of-theory-wired]]
- [[groeneveld-olmo-language-models]]
- [[hey-fourth-paradigm]]
- [[pearl-mackenzie-book-of-why]]
