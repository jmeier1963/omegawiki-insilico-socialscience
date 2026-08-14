---
title: "Google's AI & Economy ATLAS v1.0: Mapping Gemini Usage in the Economy"
slug: google-ai-economy-atlas-v1-mapping
arxiv: "2608.00038"
venue: "Google / Google DeepMind research report (arXiv preprint)"
year: 2026
tags: [ai-economics, ai-adoption, labor-market, usage-telemetry, measurement, time-use, global-diffusion, ai-and-society]
importance: 4
date_added: 2026-08-04
source_type: tex
s2_id: ""
tldr: "Google's first ATLAS report maps 14.65M de-identified Gemini App / AI Mode / API interactions onto BLS, O*NET and ATUS taxonomies, finding AI adoption spans occupations covering 88% of US employment but reaches only 21% of tasks in the median adopting occupation, with end-to-end automation attempts under 10% of non-routine cognitive use and 86% of conversational use occurring outside work."
contribution_type: [analysis, data]
datasets: ["Gemini App / Google AI Mode / Gemini API interaction logs (14,653,926 de-identified interactions, 6-19 April 2026)", "BLS 2018 SOC", "O*NET v30.2", "BLS 2024 American Time Use Survey Activity Lexicon"]
code_url: ""
cited_by: []
---

## Problem & Context

Robert Solow's 1987 quip — the computer age is visible everywhere except in the productivity statistics — has a 2026 analogue: AI appears to be everywhere, yet its impact is hard to discern in employment, productivity or growth data. The literature on AI's labor-market effect has run ahead of the evidence in both directions. Exposure studies project large impact (Eloundou et al. 2024: ~80% of the US workforce could have ≥10% of tasks affected; Richmond 2026: 18% of jobs at relatively high short-term automation risk). Employment studies mostly find nothing yet, or say it is too early to tell (Audoly et al. 2026; Gimbel et al. 2026; Humlum & Vestergaard 2025; Massenkoff & McCrory 2026). Kolko (2026) concludes bluntly that better data is needed.

The task-based framework (Autor, Levy & Murnane 2003; Acemoglu & Autor 2011; Acemoglu & Restrepo 2019) supplies the analytical machinery but was built for computerization and industrial robots, and its testable predictions — computerization substitutes for routine tasks, complements non-routine problem-solving and complex communication — had not been checked against what people actually do with generative AI at scale.

Prior first-party telemetry studies existed (Anthropic's Economic Index, Handa et al. 2025; OpenAI's Chatterji et al. 2025), but each covered a single conversational surface, and non-work AI use — the majority of usage — was barely mapped at all.

## Key idea

Build a recurring, first-party economic measurement instrument from AI usage logs, and map it onto the *official statistical taxonomies economists already use* — BLS SOC occupations, O*NET tasks, and the American Time Use Survey activity lexicon — so that AI usage becomes directly comparable to existing employment and time-use statistics.

The framing move is to treat "what people actually do with AI" as a distinct measurement object from "what AI could in principle do" (exposure) and from "what happened to employment" (outcomes). ATLAS deliberately measures only the middle term, and the headline result is a **breadth/depth dissociation**: adoption is nearly universal in coverage but shallow in penetration, and overwhelmingly collaborative rather than automating.

## Method

**Data.** 14,653,926 de-identified interactions across the Gemini App, Google AI Mode, and the Gemini API, sampled 6–19 April 2026. Paid Gemini API (including Google Cloud enterprise usage) is excluded from content-level analysis.

**Pipeline.** Fully automated, four stages:

1. **Work/non-work classification** routes interactions into separate pipelines; each is summarized only on the facets its downstream classification needs.
2. **OCTO** (Observation Clustering and Taxonomy Organisation), a bespoke Google DeepMind clustering and hierarchical taxonomy-assignment tool, groups summaries into semantically similar clusters and produces cluster labels.
3. **Taxonomy mapping**: non-work clusters → BLS 2024 ATUS Activity Lexicon; work clusters → BLS 2018 SOC, recursively traversed into O*NET v30.2 occupational titles and tasks. Bespoke classifiers add intent, expertise level, routine/non-routine × manual/cognitive characteristics (per Autor & Thompson 2025), and multimodality.
4. **Validation** by three independent methods: pipeline accuracy against a synthetic ground-truth dataset seeded from the most granular O*NET-SOC and ATUS tiers; inter-rater agreement with and without AI ratings; and human approval of AI labels.

**Privacy architecture** (four layers): DLP filters strip PII before any processing; internal log IDs are replaced with mathematically unlinked UUIDs; two-stage summarization discards original text and then individual summaries; and k-anonymization drops any cluster representing fewer than 10 unique users. No conversation text or individual summary is retained in the final dataset.

**Stated deltas from Anthropic's and OpenAI's methods**: pooling three heterogeneous surfaces rather than one; scaling clustering to 15M; recursive traversal of nested statistical taxonomies (SOC + O*NET in one pipeline); LLM-assisted taxonomy-category annotation; randomized classifier option order to mitigate documented order bias (Pezeshkpour & Hruschka 2023); synthetic-data classifier validation; ATUS mapping for non-work use; and adjustment for Google app penetration differences when comparing countries.

## Experiment & Results

**Breadth.** AI use spans all major sectors and **68% of all occupations, collectively 88% of US employment** — including farmers, industrial engineers and foresters alongside software developers and market researchers. Outside work, conversations span activities making up **98% of Americans' waking hours**.

**Depth.** AI is used for only **21% of total tasks in the median occupation with any AI use**. Only **3%** of occupations show usage across more than 75% of their tasks (software QA analysts, HR specialists, document-management specialists).

**Automation vs. collaboration.** Non-routine cognitive tasks are ~35% of professional tasks economy-wide but **~65% of work-related AI interactions**. Within that, attempts to automate tasks end-to-end are **under 10%** of conversations; the mass is in Partial Drafting and Generation, Review and Refinement, Ideation and Strategy, and Information Retrieval and Learning.

**Blue-collar use is real.** Roughly a third of heavily physical occupations show no observed usage, but many manual and technical trades use AI as a hands-on diagnostic collaborator — automotive technicians and industrial mechanics interpreting test results, debugging wiring, inspecting machinery, at **>2× the overall work baseline rate of multimodal (image/video) use**.

**Wages and expertise diverge.** A 1% increase in an occupation's median earnings is associated with a **>2.5% increase in AI usage intensity**; conversation-weighted median salary is ~$83,000, roughly $20,000 above the employment-weighted national median, and the relationship survives controlling for educational attainment. Yet at the *task* level, lower-to-middle expertise tasks see relatively higher usage than the highest-expertise tasks — high-earning workers adopt most, but not for their hardest work.

**Household value invisible to national accounts.** **86%+ of conversational AI interactions happen outside work**, and daily time allocation strongly predicts where questions go. If household time savings averaged just 30 minutes per week, US unpaid productivity gains would be worth roughly **$100 billion** on standard valuation methods. High-friction bureaucratic activities are dramatically over-represented relative to time actually spent on them — government services and civic obligations by a factor of **almost twenty** — and nearly half of all medical, legal, financial and government consultations occur outside 9-to-5 business hours.

**Global diffusion.** A 1% increase in GDP per capita is associated with a **0.9% increase in per-capita usage**; the lowest-adopting quintile of countries accounts for only **2% of conversations**. Several middle-income countries in Latin America and the Middle East adopt at Western European rates, and the cross-country variation is not explained by any single factor such as internet access or population interest in AI.

**Languages and modality.** English is only ~**one third** of global conversations, and work and non-work activity show nearly identical language distributions — no sign of users abandoning native languages for complex professional tasks. Non-OECD users generate images and video for work at roughly **twice** the rate of advanced economies.

**Claims the data does not support**, per the authors: that AI is about to cause massive automation and displacement of white-collar work; that AI is irrelevant to blue-collar work; that the purpose of AI is strictly task automation; or that the global AI race is strictly a US–China matter from an adoption-leadership standpoint.

## Limitations

- **Coverage gaps.** No paid Gemini API (hence little enterprise usage), and none of Workspace, AI Overviews, Translate, Maps, Flow, Antigravity or Gemini Notebook — products with billions of interactions. Enterprise professional use is likely under-represented.
- **Behavior, not outcomes.** A completed conversation does not establish that the user achieved their goal, saved time, or produced economic value. The instrument is silent on productivity by construction.
- **Current frontier, not potential.** Non-adopters are invisible; the data describes today's adoption, not the technology's reach.
- **Probabilistic classification.** Deriving job titles and tasks from conversational text is inherently uncertain; granular occupational and household findings carry more uncertainty than major-group trends.
- **Two-week snapshot** from a single vendor's surfaces, generalized to "the economy."
- **Self-assessment.** The authors acknowledge their intent and expertise classifiers "leave scope for greater sophistication."
- The authors explicitly flag that ATLAS v1.0 cannot speak to whether AI deepens the global digital divide or dampens entry-level hiring — questions where it might have been most useful.

## Open questions

- Why do stark adoption disparities persist across countries after normalizing for internet access? What explains the Latin American and Middle Eastern outliers?
- Does household AI use actually save time or improve outcomes — and how should that value enter welfare measurement? (This is the [[ai-satellite-accounts]] question in a new form.)
- Is the 21%-of-tasks depth figure a diffusion lag that will close, or a structural ceiling set by what the current generation can be trusted with?
- Why do the highest-expertise tasks see *less* AI use than mid-expertise ones, even among the highest-adopting workers? Trust, difficulty, or verification cost?
- Does the shallow, collaborative pattern persist as agentic capability improves, or is this a pre-agentic snapshot? (Compare [[shift-agentic-ai-evidence-codex]], which finds delegation growing >5× in the same period on a developer-facing surface.)
- How would one detect genuinely new, AI-enabled categories of work that no existing taxonomy has a slot for?

## My take

The most valuable contribution is negative and structural: adoption breadth and adoption depth have come apart, and most public argument conflates them. "88% of US employment" and "21% of tasks in the median adopting occupation" are both true, and citing either alone produces a badly wrong picture. That dissociation is the durable finding; the specific percentages are a two-week April 2026 snapshot.

The household result is the most under-discussed. If 86% of conversational use is non-work, and high-friction bureaucratic interaction is over-represented twentyfold, then the largest near-term welfare effect of consumer AI may be reducing the transaction cost of dealing with institutions — a benefit that by construction never appears in GDP. That is a strong empirical prompt for the satellite-account literature.

Read with appropriate suspicion about incentives: this is a first-party report by the vendor whose adoption it measures, and its explicitly listed "claims the data does not support" happen to be the four claims most damaging to Google's position. The methodology is unusually well documented and the limitations section is genuinely candid, which is the right basis for taking the numbers seriously — but the framing choices are not neutral, and the exclusion of enterprise API usage removes exactly the surface where end-to-end automation would be most visible.

## Related

- [[ai-adoption-depth-breadth-gap]]
- [[privacy-preserving-usage-telemetry-classification]]
- [[ai-satellite-accounts]]
- [[automation-augmentation-employment-divide]]
- same_problem_as: [[shift-agentic-ai-evidence-codex]]
- same_problem_as: [[work-frontier-how-ai-expanding-what]]
- challenges (reverse): [[applied-ai-most-impactful-agentic-enterprise]]
