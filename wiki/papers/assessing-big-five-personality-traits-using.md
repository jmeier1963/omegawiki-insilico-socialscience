---
title: "Assessing the Big Five Personality Traits Using Real-Life Static Facial Images"
slug: assessing-big-five-personality-traits-using
arxiv: ""
venue: "Scientific Reports"
year: 2020
tags: [big-five, personality, facial-recognition, neural-network, computer-vision, prediction]
importance: 3
date_added: 2026-04-23
source_type: pdf
s2_id: ""
keywords: [Big Five, personality, facial images, neural network, conscientiousness, prediction]
domain: "CV"
code_url: ""
cited_by: []
---

## Problem

Can machine learning models predict Big Five personality traits from static facial photographs, and if so, which traits are most predictable?

## Key idea

Neural networks trained on 12,447 participants (31,367 photos) with Big Five personality assessments can statistically predict personality traits from facial images. Conscientiousness shows the strongest signal (r ≈ 0.36 men, 0.34 women). Demonstrates that facial features contain personality signals, but effect sizes remain moderate.

## Method

- Dataset: 12,447 participants, 31,367 static photos, self-reported Big Five assessments
- Neural network trained to predict trait scores from image features
- Evaluated by trait, gender, and correlation with ground truth
- Analysis of which facial features drive predictions

## Results

- Statistically significant prediction of all Big Five traits
- Conscientiousness: highest correlation (r ≈ 0.36 men, 0.34 women)
- Effect sizes are moderate — not diagnostic-quality, but above chance
- Suggests specific facial features encode personality signals detectable by CNNs

## Limitations

- Self-reported personality assessments as ground truth (noisy labels)
- Possible confounding: personality may affect expressions/grooming rather than facial structure per se
- Ethical implications of personality prediction from faces not addressed
- May reflect societal stereotypes rather than genuine personality signals

## Open questions

- Do predictions hold across cultures and demographics?
- Are models learning physical structure or transient expressions/grooming?
- What are the ethical implications for deployment?

## My take

An interesting empirical finding but ethically fraught. The moderate effect sizes suggest a genuine signal, but the gap between "statistically significant" and "diagnostically useful" is large. The bigger concern is misuse: this type of system could enable surveillance-based personality profiling, which has obvious potential for harm. Relevant to this wiki as context for AI personality modeling and the limits of trait inference from observable features.

## Related

- [[ai-driven-scientific-discovery]]
