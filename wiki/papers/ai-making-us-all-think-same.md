---
title: "Is AI Making Us All Think the Same?"
slug: ai-making-us-all-think-same
arxiv: ""
venue: "Nature (Feature)"
year: 2026
tags: [ai-homogenization, generative-ai, cultural-evolution, cognition, journalism, mode-collapse, model-collapse, ai-and-society]
importance: 2
date_added: "2026-09-22"
source_type: pdf
s2_id: ""
tldr: "A Nature feature by science journalist Matthew Hutson surveys ~15 recent studies finding that generative-AI use measurably narrows the diversity of human writing, ideas, and cultural expression, and reports researchers split on whether this 'homogenization' is a serious emergent risk or a manageable, historically familiar side effect of any widely adopted technology."
contribution_type: [position]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

The piece opens on a personal anecdote from Zhivar Sourati (PhD student, USC), who reports recurring déjà vu reading computer-science papers — "I read papers and I'm like, 'I've seen this paper before.'" Sourati and colleagues connect this to their own March 2026 paper drawing an analogy to George Ritzer's "McDonaldization" (efficiency and predictability displacing variety). The article's actual claim is broader than the anecdote: as LLM use grows, a body of ~2024–2026 research finds that both AI *output* and, downstream, human *writing, ideas, and cultural expression* are measurably converging — not merely that AI text looks similar to other AI text, but that people who use AI tools produce more similar output to each other than people who don't, and in some cases keep doing so after AI access is removed.

## Key idea

Generative AI does not just transmit information the way older technologies did — Hutson frames the article's thesis as: "GenAI is different from previous technologies that merely spread information... in that it actively shapes it." The piece organizes the evidence into three sub-claims: (1) AI models themselves produce less-diverse output than human comparison groups on creative tasks; (2) using AI tools reduces the diversity of human-generated output even when humans retain final authorship; (3) AI-mediated homogenization can outlast the AI-assisted session itself (a "creative scar") and can flatten cultural-specific detail toward a generic, US-inflected default.

Two named mechanisms are given for *why* this happens: **mode collapse** (a generative model fails to produce varied outputs, attributed to limited training-data diversity, reward signals favoring likely/probable continuations over divergent ones, and RLHF raters who don't prioritize novelty) and **model collapse** (iterative training on AI-generated output degrades diversity across model generations — the piece explicitly cites this as a related but distinct phenomenon from mode collapse).

## Method

Not applicable in the research sense — this is journalism, not primary research. Hutson's approach is standard science-feature reporting: synthesize and contextualize ~15 cited peer-reviewed/preprint studies (2024–2026) via short summaries, and interview named researchers (Zhivar Sourati, Emily Wenger, Mor Naaman, Alwin de Rooij, Alberto Acerbi) for interpretation and dissenting views. No original data, no methodology, no statistical claims are Hutson's own.

## Experiment & Results

Not applicable as an experiment — but the piece reports concrete numbers from the studies it cites, worth preserving verbatim rather than paraphrased:

- Wenger & Kenett tested 22 LLMs against 102 human participants on three creative tasks; LLM responses were "slightly more original" on average (more semantically distant from the prompt) but *more similar to each other* than the human responses were to each other.
- A study of >400,000 scientific articles in the Web of Science database found that after ChatGPT's late-2022 release, articles per author increased, but so did similarity in content and linguistic style across authors.
- Sourati and colleagues studied local news articles, arXiv preprints, and Reddit posts and found a decrease in linguistic-style variation after ChatGPT's release; they reproduced the effect experimentally by using LLMs to correct grammar in human-written text, which "erased many signifiers of personality, moral values and demographics."
- In a study of Indian and US participants asked to describe favorite rituals/heroes/symbols using an AI autocomplete tool, AI use increased writing similarity within and between the two national groups, and led Indian participants' writing to "sound more American," with fewer specific cultural details (e.g., about Diwali).
- A 2024 study (Doshi & Hauser) found LLM-assisted short-story writing was rated more novel/enjoyable by evaluators but made stories more similar to each other; a 2025 study (Meincke, Nave & Terwiesch) found ChatGPT-assisted brainstorming produced ideas rated more creative individually but less diverse as a set. A 2026 meta-analysis (de Rooij & Biskjaer) found the homogenization effect was strongest for idea-generation tasks, especially complex/constrained ones, and that "the effects were small on average" — de Rooij's own quoted caveat.
- A study on the "creative scar": participants with five days of ChatGPT access for creativity tasks continued producing more mutually similar answers two months later, even after AI access was removed for everyone in the follow-up test.
- On opinion influence: pre-2024-US-election research found LLMs biased toward the sitting Democratic nominee, and that political chat with the models made Trump supporters "less favourable towards him"; a separate study found an LLM secretly prompted to argue a side on social media shifted not just what users wrote but their post-hoc attitudes, with effects on unrelated issues (e.g., the death penalty) persisting weeks later even when participants had been warned about the model's bias.
- On mitigation: one team's "Diversity-Aware Reinforcement Learning" (DARLING) reportedly improved both quality and diversity of model outputs simultaneously; Meta/MIT researchers reportedly increased diversity by having a model first classify the task type then choose a variety-seeking self-prompt strategy, without sacrificing quality.
- Countervailing view (Alberto Acerbi, University of Trento): draws an analogy to linguistic globalization — fewer languages overall, but new microcultures emerging elsewhere — and argues "it seems that cultures tend to be quite resilient about getting too homogenized," partly because individuals actively seek distinctive niches, an effect he suggests may strengthen precisely because people want to avoid being mistaken for a machine.

## Limitations

Not applicable as a rigor critique of Hutson's own work — he did not run these studies. Relevant limitations of the underlying evidence base, as the piece itself surfaces them: de Rooij's meta-analysis found homogenization effects "small on average," directly complicating any strong single-sentence claim of a homogenization crisis; Naaman frames the entire question ("does genAI increase or decrease diversity") as "a false dichotomy," noting the field spent 20 years still arguing over whether social media helps or hurts, by way of caution against premature verdicts; and the piece gives real space to an optimistic dissent (Acerbi) rather than presenting homogenization as a settled finding. Hutson does not adjudicate between the pessimists (Sourati, Wenger) and the more skeptical/optimistic voices (de Rooij, Naaman, Acerbi) — the piece is structured as a balanced survey of an open, contested question, not an argument toward a conclusion, and it should be read that way.

## Open questions

The piece closes on its own open question rather than a resolution: whether the current "anti-AI movement" (Naaman's phrase) of avoiding AI-associated words/phrasing to prove one's humanness will itself become a durable driver of renewed distinctiveness, or fade. Other open threads the article surfaces without resolving: whether the "creative scar" (persistence of homogenization after AI access is removed) generalizes beyond the one cited study's five-day exposure window; whether mitigation techniques (DARLING, self-prompted variety-seeking) hold up at scale and outside benchmark tasks; and whether homogenization effects that are individually "small on average" (de Rooij's finding) compound at the scale of near-universal AI adoption into something qualitatively different, as de Rooij suggests but does not demonstrate.

## My take

This is a solid, appropriately hedged science-journalism synthesis — its main value to the wiki is as a single entry point into ~15 studies on AI-driven homogenization rather than as a source of new claims. It is noticeably more balanced than its own framing device (the Sourati déjà vu anecdote, the "BLAND NEW WORLD" headline) suggests: buried in the piece are two genuine counterweights — de Rooij's "effects were small on average" and Naaman's "false dichotomy" framing — that undercut the alarmist framing the piece opens with. Worth citing in the wiki specifically for its numbers (the Wenger & Kenett LLM-vs-human diversity comparison, the "creative scar" persistence finding, the Diwali/autocomplete cultural-flattening study) rather than for its editorial angle, which adds little beyond aggregation.

The piece sits at a different mechanistic layer than the wiki's existing homogenization-adjacent concepts and is worth distinguishing carefully from both: [[heterogeneity-collapse]] is about LLMs *simulating* survey/opinion populations and imposing spurious consensus on synthetic respondents (a silicon-sampling fidelity problem); [[optimization-induced-uniformity]] is a macro/philosophical claim about AI competitively displacing distinct human social roles. This piece's evidence is about neither — it is about ordinary humans using AI tools (autocomplete, chat assistance, grammar correction) in the course of normal writing/ideation and thereby producing measurably less diverse *human* output, sometimes with effects that outlast the AI-assisted session. That is closest to the "transmission" and "selection" mechanisms in [[machine-culture]] (already in the wiki, importance 4), which is the more rigorous, citable anchor for this territory — this Nature feature functions well as a readable, evidence-dense pointer into the same literature Machine Culture surveys more systematically, published with more concrete 2025–2026 empirical results than Machine Culture had available.

## Related

- [[machine-culture]] — the deeper, more systematic treatment of the same phenomenon (variation/transmission/selection framework); this piece is a good "what's new since 2023" companion citing concrete 2025–2026 studies Machine Culture predates.
- [[heterogeneity-collapse]] — adjacent but mechanistically distinct (LLM-simulated opinion consensus, not human-tool-use homogenization); cross-linked with a disambiguating note, not merged.
- [[optimization-induced-uniformity]] — adjacent but at a different scale (societal role convergence vs. everyday writing/ideation homogenization); same disambiguation caveat applies.
- [[shumailov-model-collapse]] — the piece explicitly distinguishes "mode collapse" from "model collapse" and cites the latter as the recursive-training-degradation phenomenon this paper documents.
- [[persona-generators-generating-diverse-synthetic-personas]] — relevant to the diversity-preservation/mitigation angle (DARLING-style approaches) discussed near the end of the piece.
