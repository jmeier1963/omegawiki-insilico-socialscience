---
title: "AI-Native Firms"
slug: ai-native-firms
arxiv: ""
venue: "Harvard Business School Working Paper 26-090"
year: 2026
tags: [ai-economics, labor-market, organizational-form, startups, firm-performance, ai-and-society]
importance: 3
date_added: 2026-06-26
source_type: pdf
s2_id: ""
tldr: "AI-native startups are ~25% smaller, more technical, flatter, and more senior than comparable non-AI startups at equal valuations, driven by a product channel that embeds AI capabilities into what the firm sells rather than only into internal workflows."
contribution_type: [analysis]
datasets: ["Y Combinator (W20-F24)", "PitchBook", "Revelio Labs"]
code_url: ""
cited_by: []
---

## Problem & Context

Technology reshapes organizational form: railroads/telegraph enabled large managerial hierarchies, electricity reshaped the factory floor, and the internet lowered coordination costs to support networked organizations. The paper asks how AI reshapes firms. Existing research on generative AI has concentrated almost entirely on a **process channel** — how AI tools augment or automate work *inside* the firm (agentic coding, AI-assisted customer service, automated sales), studied through task-level productivity experiments (Peng et al. 2023; Brynjolfsson, Li, and Raymond 2023; Dell'Acqua et al. 2023; Csaszar, Ketkar, and Kim 2024; Otis et al. 2025). What the field lacked was systematic firm-level evidence on whether firms *built around* AI are organized differently, and recognition of a second channel: AI embedded directly into the firm's product.

## Key idea

There are two channels by which AI reshapes firms. The **process channel** changes how people work inside the firm (AI tools in existing workflows). The **product channel** embeds AI capabilities into what the firm sells, moving knowledge work that would have required large internal teams directly into the product through imported model capabilities. The product channel shifts productive capability *out of* the internal organization and *into* the product — so output can scale through compute rather than by expanding internal teams. This reframes the firm-as-information-processor (Simon; March and Simon; Galbraith; Garicano): AI lets firms deliver knowledge-work capabilities without building them internally through people and hierarchy. The paper argues this product channel is the primary, largely overlooked way startups scale "knowledge work" without large teams of knowledge workers.

## Method

Two complementary datasets. (1) **Primary YC sample**: all 2,891 Y Combinator startups across 11 cohorts (W20, S20, W21, S21, W22, S22, W23, S23, W24, S24, F24), classified as AI vs non-AI by whether the firm's self-applied public tags include "artificial-intelligence" or "ai" (990 / 34.2% tagged AI). (2) **Secondary PitchBook sample**: to test external validity, the authors train a text classifier on YC descriptions and apply it to the broader universe of U.S. venture-backed startups. Both samples are linked to **Revelio Labs** workforce microdata (team size, function, seniority, hierarchy depth) via LinkedIn/PitchBook URLs (2,786 / 96.4% matched to PitchBook; 2,233 / 77.2% to Revelio; zero-employee imputation for unmatched firms). Comparisons are within industry-cohort cells. To separate channels: an **LLM inductively classifies** founders' own product descriptions (product channel), and **job postings are coded** for named worker-facing AI tools — ChatGPT, GitHub Copilot, Cursor (process channel proxy). Heterogeneity is tested by whether the startup is a "services" business.

## Experiment & Results

Relative to non-AI startups in the same industry-cohort cell:

- **Size**: AI-tagged startups have ~**25% fewer employees**; the difference is larger in the abstract (and ~70% smaller for *services* firms specifically).
- **Composition**: engineer share ~**5 percentage points (13%) higher**; lower shares in sales, finance, operations, administration.
- **Seniority**: entry-level worker share roughly **15% lower**; senior worker share ~**20% higher**.
- **Hierarchy**: roughly **half a seniority level flatter** and ~**15% fewer managers**, even controlling for firm size.
- **Capital efficiency**: similar total funding and **valuations on par** with non-AI firms → ~**20% more capital per employee** and higher valuation per employee (not lower-quality entrants).
- **Labor pool**: more geographically concentrated in Silicon Valley; workforces more male, more likely to hold advanced degrees, drawn from more prestigious employers/institutions.

Channel decomposition (YC sample): **43%** of AI-tagged startups use AI to fully automate tasks workers used to do, **24%** build AI tools to augment existing workers at customer firms, **15%** build AI infrastructure. AI-native startups are **2.6×** as likely to name worker-facing AI tools in job postings (process channel) — but this process measure does **not** predict smaller firm size in log, Poisson, or hierarchy specifications. Even controlling for the process channel, embedding AI into the product remains associated with less headcount and flatter structures. Services firms (therapy, tutoring, telemedicine) show the largest AI/non-AI gap. Illustrative cases: Gamma (~30 employees, $50M ARR in two years) and FazeShift (team of ten serving dozens of enterprise AR customers).

## Limitations

AI-native status is measured by self-applied YC tags (a coarse, potentially strategically-manipulated label) and an LLM-trained classifier for PitchBook. The process-channel proxy (named tools in job postings) is acknowledged as coarse and noisy. The study is observational and cross-sectional — associations, not causal effects of AI adoption. Zero-employee imputation for unmatched firms introduces measurement assumptions. Findings are firm-level, and the authors explicitly caution against extrapolating to market-level labor outcomes: if AI yields more and faster-growing startups, aggregate labor demand could still rise (a Jevons-style expansion).

## Open questions

- Does the firm-level shift to smaller, flatter AI-native firms aggregate to lower or higher economy-wide labor demand?
- How durable is the flat/lean organizational form as AI-native firms scale beyond the startup stage?
- What career and labor-market consequences follow from compressing entry-level roles in AI-native firms?
- Can the product vs process channel distinction be measured with less coarse instruments than tags and job-posting tool mentions?

## My take

The durable contribution is naming and empirically isolating the **product channel** — the relocation of knowledge-work capability from the internal organization into the product itself — as distinct from the heavily-studied process channel. The null result on the process-channel proxy is striking: equipping workers with ChatGPT/Copilot/Cursor does not by itself predict smaller or flatter firms; what predicts it is building the firm around AI from the start. This complements the same authors' field-experimental work on the "mapping problem" (Kim, Kim, and Koning 2026): solving where AI creates value is the binding constraint, and AI-native ventures solve it by construction.

## Related

- [[ai-product-channel]]
- [[self-service-labour-displacement]]
- [[human-ai-division-labor-agentic-work]]
- [[agentic-coding-persistent-returns-expertise]]
- [[machine-job-wrong-question]]
- [[forecasting-economic-effects-ai]]
