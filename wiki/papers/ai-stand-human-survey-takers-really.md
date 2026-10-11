---
title: "Can AI Stand In for Human Survey-Takers? Not Really"
slug: ai-stand-human-survey-takers-really
arxiv: ""
venue: "Pew Research Center (methodological report)"
year: 2026
tags: [synthetic-data, survey-methodology, silicon-sampling, public-opinion, algorithmic-fidelity, llm-evaluation]
importance: 4
date_added: "2026-10-11"
source_type: pdf
s2_id: ""
tldr: "A large-scale empirical test replicating three American Trends Panel survey waves (~300 questions, thousands of panelists) with AI 'digital twins' finds synthetic responses differ from matched human responses by an average of 12 percentage points, systematically flatten within-group diversity into near-unanimity, understate uncertainty (4% 'not sure' vs. humans' 16%), overstate factual knowledge, miss fast-moving real-world opinion shifts, and shift substantially depending on which LLM is used — concluding AI is not currently an adequate substitute for human survey respondents on topics of broad public importance."
contribution_type: [analysis, benchmark]
datasets: [American Trends Panel Wave 185, American Trends Panel Wave 190, American Trends Panel Wave 192]
code_url: ""
cited_by: []
---

## Problem & Context

As AI-based "synthetic sample" polling gains interest as a faster, cheaper alternative to traditional probability-based surveys, Pew Research Center — a major, non-advocacy public-opinion research institution with no plans to adopt AI-generated samples itself — ran a direct, controlled comparison to evaluate how well AI-generated survey responses reproduce the results of its own high-quality human polling, extending the growing "silicon sampling" / [[algorithmic-fidelity]] literature with a large-scale, real-world replication rather than a lab-scale or synthetic benchmark.

## Key idea

Build a per-respondent AI "digital twin" for each human panelist in three American Trends Panel (ATP) survey waves — giving each twin the panelist's self-reported demographics and prior political-typology-survey answers — then have each twin answer the exact same questions, in the same order, with the same split-form/randomization/language assignment as its human counterpart, and compare the resulting synthetic response distributions question-by-question and subgroup-by-subgroup against the real human results from the same panel at nearly the same point in time.

## Method

Three ATP waves (Wave 185, Jan. 2026, N=6,700 subsampled from 8,512 for cost reasons; Wave 190, March 2026, N=3,398; Wave 192, April 2026, N=4,981 — all restricted to panelists who had also completed a 2025 political-typology survey used to build each digital twin's profile) were replicated question-by-question: each digital twin received the survey one question at a time, with its own prior answers fed back into the prompt to promote internal consistency, rather than having the model generate aggregate point estimates directly (a deliberate methodological choice, since aggregate-estimate approaches average away exactly the within-subgroup variance and internal-consistency properties the study wanted to examine). All synthetic results reported (unless noted) use Anthropic's Claude Opus 4.6, selected after testing against OpenAI's GPT-5.1 and GPT-5 nano for best performance; a secondary comparison reran a subset of questions with GPT-5.1 against Opus 4.6 to test model sensitivity. Error was measured as the average absolute percentage-point difference between human and synthetic response-option shares, averaged across response options per question and then across questions/subgroups.

## Experiment & Results

Across nearly 300 questions, synthetic responses differed from human responses by an average of 12 percentage points (range 11-15 across the three waves), exceeding 15 points on ~28% of questions, with some individual-answer differences exceeding 40 points. No major demographic/behavioral subgroup had an average error below 12 points; errors were especially large (≥15 points) for Republicans/Republican leaners, Black adults, those without college education, and infrequent internet users. The model systematically **flattened diversity into near-unanimity**: nearly half of all questions had at least one answer choice selected by zero synthetic respondents (e.g., the real population splits on abortion legality — 23% "legal in all cases," 11% "illegal in all cases" — were substantially underestimated by the synthetic sample even though its overall pro-choice-majority estimate was directionally correct), and group-common-but-not-universal views were portrayed as near-universal (e.g., 97% of synthetic Hispanic respondents said they were likely to follow the World Cup vs. 42-43% of real Hispanic adults; 95% of synthetic Republicans had favorable views of Israel vs. an actual 58%; 86% of synthetic Democrats thought billionaires were bad for the country vs. an actual 45%). The model **understated expressed uncertainty**: among questions offering a "not sure" option, humans chose it 16% of the time versus 4% for synthetic respondents (~4x difference), and the synthetic panel answered factual-knowledge questions correctly ~80% of the time (vs. ~50% for real humans, with no human question exceeding 75% correct, while six synthetic-panel questions showed ≥98% "correct"). The model **missed fast-moving, timely/topical shifts**: Trump approval was estimated at a flat 46% across both January and April 2026 replications despite real approval falling from 37% to 34% over that period (a case where the January replication, run some weeks after the real fielding, also failed to track any post-knowledge-cutoff real-world movement); across all trend questions (120+) the average error was the same 12 points regardless of how much real opinion had actually moved, meaning trend-stability did not predict synthetic accuracy. **Model choice substantially changed results**: on a shared question subset, GPT-5.1-based synthetic respondents depicted a public with more extreme opinions than reality, while Opus-4.6-based synthetic respondents depicted a public that was more moderate than reality — opposite directions of bias from the same underlying real population.

## Limitations

- Scope restricted to using AI as a direct survey-respondent substitute; explicitly does not evaluate other AI uses in polling (open-ended response coding, analysis-code generation, missing-data imputation) that the Center states it continues to use.
- Only one AI architecture (Claude Opus 4.6) was used for the primary analysis across all three waves; the GPT-5.1/Opus comparison was run on only a subset of questions, limiting how far the "model choice matters a lot" finding can be generalized across the wider space of frontier models.
- The digital-twin profile was built from self-reported demographics plus one prior political-typology survey; richer or differently-sourced persona information might change fidelity, and the study does not systematically vary the richness or kind of persona information as its central experimental manipulation (brief exploratory testing on this is mentioned in supplementary methodology but not as a main finding).
- Cost constraints forced subsampling (6,700 of 8,512 panelists for the most expensive wave) and limited the number of model configurations tested, meaning the headline error estimates reflect the specific operational choices and budget available to this study, not necessarily a methodology-optimal silicon-sampling pipeline.
- As an institutional report rather than a peer-reviewed paper, the methodology (while detailed and transparently documented) has not been through external academic peer review at the time of ingestion.

## Open questions

- Would richer, higher-bandwidth digital-twin profiles (longer interview histories, multiple prior surveys, free-text self-descriptions) meaningfully close the ~12-point average error, or is the gap structural to current LLMs' modeling of individual human opinion variance?
- Does the GPT-5.1-vs-Opus-4.6 bias asymmetry (toward extremity vs. toward moderation) generalize across other model pairs and other populations, and can it be predicted from a model's training/RLHF process rather than discovered post hoc per model?
- Can post-training or prompting interventions specifically targeting the uncertainty-understatement and diversity-flattening failure modes (e.g., explicitly calibrating "not sure" base rates per subgroup) close those specific gaps without degrading accuracy elsewhere?
- How does synthetic-survey accuracy degrade as a function of time since a model's knowledge cutoff, and could retrieval-augmented or continually-updated digital twins meaningfully close the "timely and topical" gap this study documents?

## My take

This report is a direct, well-powered falsification of the optimistic end of the silicon-sampling literature already extensively catalogued in this wiki's [[silicon-sampling]] and [[algorithmic-fidelity]] concepts — rather than a single lab-scale demonstration, it is a large institutional replication across ~300 real questions and thousands of matched human/AI respondent pairs, which gives its negative result unusual weight relative to many of the smaller validation studies already in the key_papers lists of those concepts. Its most generalizable finding is probably not the 12-point headline error itself but the *pattern* of errors: diversity-flattening, uncertainty-understatement, and knowledge-overstatement are all structural consequences of how LLMs represent "what a typical member of group X thinks," consistent with [[llm-simulation-validity-guardrails]]'s point that LLM outputs violate the statistical assumptions (exchangeability, calibrated self-reported uncertainty) that survey inference from human samples relies on. The model-choice-reverses-the-bias-direction finding is arguably the most practically important result for anyone currently deploying silicon sampling in production: it means a given model's synthetic-survey bias is not a fixed, correctable offset but can flip direction entirely when the underlying model changes, undermining any strategy of calibrating against one model's known biases.

## Related

- [[silicon-sampling]] — uses: the digital-twin replication methodology is a direct, large-scale instance of the silicon-sampling practice this concept catalogues, and this paper's result is strong empirical evidence against current-generation fidelity for broad public-opinion topics.
- [[algorithmic-fidelity]] — uses: directly measures algorithmic fidelity (subgroup-level replication accuracy) across ~300 questions and multiple demographic/behavioral subgroups, finding none below a 12-point average error.
- [[llm-simulation-validity-guardrails]] — uses: the diversity-flattening and uncertainty-understatement failure modes documented here are concrete empirical instances of the statistical-assumption violations (non-exchangeability, introspective hallucination) this concept's guardrails framework warns about.
- [[digital-twin-survey-replication]]
- part_of: [[synthetic-survey-research]]
- [[pew-research-center]]
