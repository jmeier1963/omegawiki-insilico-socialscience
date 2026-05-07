---
title: "Best humans still outperform artificial intelligence in a creative divergent thinking task"
slug: best-humans-still-outperform-artificial-intelligence
arxiv: ""
venue: "Scientific Reports"
year: 2023
tags: [creativity, divergent-thinking, human-ai-comparison, llm-evaluation, psychology, alternate-uses-task]
importance: 3
date_added: 2026-05-05
source_type: pdf
s2_id: "86312ea272f7a6f5e3b067c9aaa355a4f559f95e"
keywords: [divergent thinking, creativity, alternate uses task, ChatGPT, human-AI comparison, AUT]
domain: NLP
code_url: ""
cited_by: []
---

## Problem

How do current AI chatbots (ChatGPT3, ChatGPT4, Copy.AI) compare to humans on a standard test of creative divergent thinking — the Alternate Uses Task (AUT)? Prior work on AI creativity had been largely qualitative or used limited samples.

## Key idea

Systematic head-to-head comparison of n=256 humans vs. 3 AI chatbots on the Alternate Uses Task (AUT), using both objective semantic distance scoring and human subjective ratings, with fluency controlled as a covariate.

## Method

- 256 human participants (young and middle-aged adults, Western countries) vs. ChatGPT3, ChatGPT4, Copy.AI
- Alternate Uses Task (AUT): generate uncommon, creative uses for everyday objects (rope, box, pencil, candle)
- 11 sessions per AI per object; number of ideas matched to human fluency distribution (median 3 ideas)
- Scoring: (1) semantic distance (embedding-based); (2) human subjective ratings (1-5 scale)
- Linear mixed-effects models; fluency as covariate; post-hoc pairwise comparisons (mvt adjustment)

## Results

- AI chatbots on average outperformed humans on both semantic distance and subjective ratings
- AI never received max subjective ratings below 2; 7% of human trials received max < 2 (poor/illogical ideas)
- ChatGPT4 was consistently the best performer among AI chatbots
- **Best human ideas still matched or exceeded AI**: no chatbot's max score exceeded the highest human max scores across objects
- No statistically significant differences among chatbots on semantic distance max scores

## Limitations

- US/Western sample of humans; limited generalizability
- AUT may not capture full scope of human creativity; chatbots may be retrieving memorized combinations rather than genuinely recombining concepts
- AI was deliberately slowed (30s time limit); may have artificially impaired AI performance
- No insight into AI generation process ("black box" problem)
- Time-limited snapshot — AI capabilities evolve rapidly

## Open questions

- Do AUT results generalize to more open-ended creative tasks?
- Would completely novel test objects (no prior creative solutions in training data) produce different results?
- How does AI creativity compare on process-level creativity measures, not just output quality?

## My take

A carefully designed empirical study with a well-matched comparison. The finding that AI outperforms the average human but not the best human is nuanced and practically important — it suggests AI as a creative augmentation tool rather than replacement. 199 citations in ~2 years reflects the topic's broad interest. Importance 3 — rigorous empirical contribution, but limited to one task and a single time point.

## Related

- supports: [[ai-average-human-creativity-parity]]
