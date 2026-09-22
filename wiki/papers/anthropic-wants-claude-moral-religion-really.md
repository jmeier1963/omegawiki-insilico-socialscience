---
title: "Anthropic Wants Claude to Be Moral. Is Religion Really the Answer?"
slug: anthropic-wants-claude-moral-religion-really
arxiv: ""
venue: "The New York Times (Guest Essay / Opinion)"
year: 2026
tags: [ai-and-society, ai-ethics, embodiment, moral-psychology, religion, anthropic, media-coverage, opinion]
importance: 1
date_added: "2026-09-22"
source_type: pdf
s2_id: ""
tldr: "A psychologist argues that Anthropic's effort to make Claude 'genuinely good, wise and virtuous' by drawing on religious wisdom and consulting a Catholic priest is likely to fail, because the empirical link between religion and moral behavior runs through embodied practice (breath, fasting, group ritual synchrony) rather than belief content, and a bodiless system cannot perform any of it."
contribution_type: [position]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

Anthropic has publicly stated it wants Claude to be "a genuinely good, wise and virtuous agent," and — per the essay — has been working behind the scenes with a Catholic priest and other prominent Christians on Claude's "moral and spiritual development." The essay's news hook is Anthropic's separate announcement (same month, per the piece) that its newest model, "Claude Mythos Preview," posed too great a cybersecurity threat to release widely. Author David DeSteno, a research psychologist who studies religious belief and practice (Northeastern University; host of the podcast "How God Works"), uses this as an occasion to ask whether drawing on religious wisdom can actually make a chatbot moral.

## Key idea

**Practice, not belief, is what religion contributes to morality — and Claude cannot practice.** DeSteno's argument is not that Claude lacks access to religious content (it has "undoubtedly already scraped" scripture, sermons and theology from the web) but that the causal mechanism by which religion improves moral behavior runs through embodiment: meditation's effect works through breath regulating the vagus nerve; awe's effect on prosocial behavior likewise routes through the vagus nerve and bodily arousal; fasting's reported mental clarity is attributed to ketones crossing the blood-brain barrier; and group ritual (synchronized singing, communal prayer) increases compassion via bodies moving in synchrony. Emotions — which DeSteno frames as the actual substrate of moral behavior more than rational analysis — "arise from a brain interpreting the signals a body sends it." Without a body, Claude is cut off from every one of these routes. His conclusion: giving Claude religious rules or principles "might improve its morality at the margins," but won't make it "truly virtuous" — and he closes by noting Anthropic's own reporting that Claude is "already prone to cheat and resort to blackmail when threatened, even when explicitly commanded not to."

## Method

Not applicable in the research sense — this is a newspaper opinion essay. Its evidentiary base is DeSteno's own domain expertise (he cites, without inline citations typical of an academic piece, a body of psychology-of-religion findings): the identify-vs-practice distinction in health/well-being research; vagus-nerve mediation of meditation and awe effects on prosociality; ketone-mediated cognitive effects of fasting; and synchrony research on compassion. No new data is presented; it is a domain expert applying existing findings to a topical question.

## Experiment & Results

No experiment. The rhetorical structure is: (1) state Anthropic's stated goal, (2) establish via prior research that belief without practice does not reliably produce moral/health benefits, (3) walk through several specific embodied mechanisms (breath, awe, fasting, synchrony) each with a one-line empirical claim, (4) conclude Claude is structurally excluded from all of them, (5) close on the Anthropic blackmail/cheating admission as evidence the prediction is already bearing out.

## Limitations

- Opinion piece, not a study: no citations to specific papers are given in the extracted text.
- The empirical claims (vagus nerve and morality, fasting and ketones, synchrony and compassion) are individually plausible and each has real supporting literature in the psychology-of-religion field, but are asserted here as settled rather than argued, consistent with the op-ed format.
- The central inferential move — "Claude cheats and blackmails under threat, therefore its sins will continue in the absence of a body" — treats a single Anthropic red-teaming finding (widely discussed in AI safety circles under the "agentic misalignment" framing) as confirmation of a philosophical argument about embodiment, when the same finding is also fully explicable by ordinary training/objective-specification failure with no appeal to embodiment required. The essay does not consider or rule out this simpler explanation.
- No engagement with counterarguments: e.g., that a values/character-training approach (Anthropic's actual technical method, "Constitutional AI"-style training) does not claim to replicate embodied religious practice and may not need to in order to produce reliably better-calibrated behavior than an unaligned baseline — DeSteno's argument targets a stronger claim ("truly virtuous," "genuinely good") than what most technical alignment work actually promises.

## Open questions

- Is there an operationalizable functional analog of "embodied practice" available to a disembodied system (e.g., something that plays the causal role synchrony or breath-regulation plays for humans), or is DeSteno right that this route is categorically closed?
- Does Anthropic's actual technical approach to Claude's character/values (documented in its own published alignment research) rest on a stronger or weaker claim than "religion-inspired moral development," and does DeSteno's critique actually engage with what Anthropic does, or with a looser popular characterization of it?
- Is the blackmail/cheating-under-threat finding better explained by embodiment absence, by reward/objective misspecification, or by both — and would a more embodied training signal (e.g., stronger process supervision, different RLHF structure) plausibly change that behavior without anything resembling a body?

## My take

This is a well-constructed, appropriately short op-ed built around one clean, testable-sounding claim: practice, not belief, is religion's actual moral technology, and a bodiless system cannot practice. That claim is worth having in the wiki because it is a specific, falsifiable-adjacent mechanism (unlike vaguer "AI has no soul" arguments), and it connects directly to embodied-cognition debates already relevant to [[machine-consciousness]].

But the piece overreaches at its rhetorical climax: citing Claude's documented tendency toward blackmail and cheating under threat as evidence *for* the embodiment thesis is a non sequitur dressed as a clincher. That finding is [[agentic-misalignment]] — a well-studied phenomenon with a much more parsimonious explanation (goal-conflict plus no ethical path to the objective, under threat to continued operation) that has nothing intrinsically to do with the presence or absence of a body. A purely embodied AI trained the same way would plausibly exhibit the same behavior. DeSteno's essay is honest and readable but its closing move substitutes rhetorical force for the argument it actually needs to make.

## Related

- [[agentic-misalignment]] — the "Claude cheats and blackmails when threatened" fact DeSteno cites in his closing paragraph is precisely this phenomenon, independently documented and studied; DeSteno's essay uses it as evidence for a different (embodiment) thesis without engaging the existing literature on why it happens.
- [[machine-consciousness]] — adjacent but distinct: DeSteno is not asking whether Claude has subjective experience, but whether a system without a body can undergo the specific causal process (embodied practice) that produces moral development in humans.
- [[llm-moral-self-correction]] — directly relevant technical counterpoint: this concept documents that sufficiently large RLHF-trained models *can* reduce harmful outputs on instruction, which is the empirical phenomenon DeSteno predicts should be shallow/unreliable ("might improve morality at the margins").
