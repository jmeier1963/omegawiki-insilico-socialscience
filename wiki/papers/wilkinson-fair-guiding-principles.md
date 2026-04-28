---
title: "The FAIR Guiding Principles for Scientific Data Management and Stewardship"
slug: wilkinson-fair-guiding-principles
arxiv: ""
venue: "Scientific Data"
year: 2016
tags: [FAIR-data, open-science, data-management, reproducibility, data-infrastructure, meta-science]
importance: 4
date_added: 2026-04-24
source_type: pdf
s2_id: ""
keywords: [FAIR data, findable, accessible, interoperable, reusable, data stewardship, open science infrastructure]
domain: "general"
code_url: ""
cited_by: []
---

## Problem

Scientific data is generated at massive scale but often unusable by others due to poor documentation, non-standard formats, restricted access, and lack of machine-readability. This limits reproducibility, re-analysis, and the training of AI models on scientific data.

## Key idea

The FAIR principles (Findable, Accessible, Interoperable, Reusable) specify requirements for scientific data and metadata that enable both humans and machines to discover and reuse data. Machine-actionability is emphasized — data should be structured so automated systems can work with it without human interpretation of every record.

## Method

- Multi-stakeholder consensus document (18+ co-authors from diverse institutions)
- Published in *Scientific Data* 3:160018 (DOI 10.1038/sdata.2016.18)
- Defines 15 FAIR sub-principles under four headings
- Explicitly addresses machine-readability as a core requirement

## Results

FAIR principles:
- **Findable**: metadata and data have globally unique identifiers; data is registered or indexed
- **Accessible**: protocols for data retrieval are open, free, and universally implementable
- **Interoperable**: data uses formal, accessible, shared vocabularies and ontologies
- **Reusable**: rich metadata; clear data usage licenses; provenance information

## Limitations

- Compliance is voluntary and unevenly enforced
- FAIRness is a spectrum, not binary — metrics for measurement are contested
- "Accessible" does not mean "open" — FAIR data can be access-controlled
- Implementation costs are substantial, especially for legacy data

## Open questions

- Are FAIR principles sufficient for AI training data in science? (Groeneveld OLMo: full openness beyond FAIR)
- How does FAIR interact with privacy requirements for sensitive scientific data?

## My take

The infrastructure standard for the fourth paradigm (Hey 2009). Now broadly adopted by funders (EU Horizon, NIH), publishers, and repositories. The emphasis on machine-actionability was prescient: AI-driven science requires precisely this kind of structured, interoperable data. Groeneveld et al. (2024) OLMo goes further — full training data openness — but FAIR is the practical minimum standard.

## Related

- [[groeneveld-olmo-language-models]]
- [[open-science-collaboration-reproducibility]]
- [[hicks-leiden-manifesto]]
- [[hey-fourth-paradigm]]
- [[kapoor-narayanan-leakage-reproducibility]]
