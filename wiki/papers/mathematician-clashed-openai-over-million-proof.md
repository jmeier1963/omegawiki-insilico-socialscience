---
title: "An N.Y.U. Mathematician Clashed With OpenAI Over a $1 Million Proof"
slug: mathematician-clashed-openai-over-million-proof
arxiv: ""
venue: "The New York Times"
year: 2026
tags: [ai-and-mathematics, millennium-prize-problems, navier-stokes, ai-lab-rivalry, media-coverage, research-attribution, ai-research-automation]
importance: 2
date_added: "2026-09-22"
source_type: pdf
s2_id: ""
tldr: "NYT feature (by Kenneth Chang, Sept. 10, 2026; alternate/original headline: 'The Mathematician Crushed Between OpenAI and Anthropic Over a Math Problem') reporting that OpenAI announced a proof of a Navier-Stokes Millennium Prize problem days after NYU mathematician Tristan Buckmaster and Anthropic researcher Levent Alpöge made 'significant progress' on the same problem, and recounting the ensuing dispute over authorship, inter-lab rivalry, and suspected (but explicitly unproven and denied) leakage of Buckmaster's Codex prompts into OpenAI's training."
contribution_type: [position]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

Over August 2026, Tristan Buckmaster (NYU) and Levent Alpöge (a mathematician employed by Anthropic, working on this as a personal side project) made "significant progress," using AI tools from both OpenAI and Anthropic, on a longstanding open problem involving the Navier-Stokes equations — specifically whether these equations can produce solutions in which a fluid accelerates to infinite speed ("blow-up"), one of the seven Clay Mathematics Institute Millennium Prize problems (each carrying a $1 million bounty). Reported motivation for OpenAI's own push: rumors that rival Anthropic had solved one or two Millennium Prize problems spurred OpenAI leadership to attack the same list. In under a week, OpenAI announced that it had found a proof — for at least some circumstances — that Navier-Stokes solutions can indeed blow up, beating Buckmaster, Alpöge, and, per the article's framing, "all of the world's other human mathematicians" to the answer.

## Key idea

The article's news content is the human/institutional fallout, not the mathematics: a same-weekend negotiation in which Sébastien Bubeck (leading OpenAI's effort) offered Buckmaster the chance to publish first, to be lead author on OpenAI's paper, to receive OpenAI compute, and an implicit endorsement that Buckmaster and Alpöge deserved the $1M prize — contingent on dropping Alpöge (an Anthropic employee) from authorship. Buckmaster refused ("The big sticking point was that they didn't want Levent on the paper"), instead publishing three unpolished papers and a 1,870-word account of the dispute himself just before midnight the following Monday; OpenAI announced its own proof publicly the next afternoon.

A secondary, contested claim: Buckmaster suspected (but the article is explicit he offered "no proof") that OpenAI's agents may have incorporated his and Alpöge's unpublished work via his use of OpenAI's Codex tool to clean up AI-generated mathematical drafts during the two months before OpenAI's announcement. OpenAI's on-record response, quoted directly, states "categorically" that Buckmaster's Codex prompts over the prior two months could not have influenced the system "in any way, including training," and that "no user inputs past July 3rd could have influenced this system in any way."

## Method

Not applicable — journalism (a reported feature with on-record interviews and quoted statements from both principals, not a research method). Sourcing: a two-hour in-person interview with Buckmaster at his NYU office, an interview with Sébastien Bubeck (OpenAI), a quoted written OpenAI statement, and a supporting quote from Peter Sarnak (Institute for Advanced Study). The article discloses The New York Times's own pending copyright litigation against OpenAI and Microsoft in a parenthetical, appropriately flagging its own institutional conflict of interest.

## Experiment & Results

No empirical content in the research sense. Documented facts: OpenAI announced a completed Navier-Stokes blow-up proof (for at least some cases) within roughly a week of intensifying its effort; the article credits the underlying mathematical strategy (a "kicks" construction driving fluid to infinite speed) primarily to Diego Córdoba and Luis Martínez-Zoroa's prior work, a credit attribution Buckmaster himself insists on ("The main intellectual credit has to go to Luis and Diego"); OpenAI states in its Wednesday-evening statement that, since completing Navier-Stokes, it has "made substantial progress on another Millennium Prize problem" and is "working through how to share these results thoughtfully" — an unverified forward-looking claim reported without independent confirmation.

## Limitations

- Single-source-dependent on two parties with directly adversarial interests (Buckmaster vs. Bubeck/OpenAI) whose accounts of tone and intent diverge; the reporter notes both sides "largely agree on what was discussed" factually but does not resolve the tone dispute.
- The central technical claim — that OpenAI actually possesses a valid proof of a Navier-Stokes Millennium Prize case — is reported as OpenAI's announcement, not as independently verified by peer review or the Clay Mathematics Institute at the time of writing; Millennium Prize verification is normally a multi-year process.
- The suspicion that OpenAI's proof was built on leaked/incorporated Buckmaster-Alpöge work is explicitly unproven ("There's no proof that they did that") and is reported as Buckmaster's subjective read of timeline and approach similarity, alongside OpenAI's categorical denial — the article does not (and likely cannot) adjudicate this.
- No named, on-record mathematician other than Sarnak comments on the underlying mathematical validity or novelty of either side's work; the piece is a story about institutional conduct, not a peer assessment of the proof.
- News hook is time-sensitive and inherently ephemeral (a single-week dispute); durable value for the wiki is as a documented instance of a broader pattern (AI-lab rivalry racing on prestige math problems, tension over human-AI-collaboration credit) rather than as a math-capabilities data point per se.

## Open questions

- Will OpenAI's claimed Navier-Stokes proof survive independent peer verification, and on what timescale (Millennium Prize verification norms suggest years, not weeks)?
- What actually determines credit/authorship norms when human researchers, using AI tools from competing labs, converge on adjacent results — is there an emerging convention, or is this dispute evidence there is currently none?
- Is there a real mechanism by which prompts to a coding-assistant tool (Codex) could influence a concurrent frontier-model training run, and if OpenAI's "no user inputs past July 3rd" claim is accurate, does that fully rule out the concern Buckmaster raised, or only rule out training-data leakage specifically?
- Buckmaster's closing question — "What's the human part of it?" — is left genuinely open: as AI-assisted proof search compresses years of mathematical progress into days, what is the evolving division of labor and credit between the human who poses/steers the problem and the AI system that produces intermediate results?

## My take

This is well-sourced, appropriately hedged access journalism about a real and telling episode: two frontier labs racing on prestige mathematics as a proxy war, with a human researcher caught in the middle of a dispute that was never really about him. Its durable value to this wiki is not "OpenAI can now prove Millennium Prize results" (unverified, and the article is careful not to claim otherwise) but as a documented case study in how AI-lab competitive dynamics are starting to reshape mathematical research culture and credit norms — concretely, a company reportedly willing to trade authorship, funding, and prize-money endorsement for the removal of a rival's employee from a paper. That is a sharper, more specific data point about [[ai-race-dynamics]] spilling into academic science than most abstract commentary on the topic.

The article is properly skeptical of its most dramatic possible claim (training-data leakage) — it reports the suspicion, reports the categorical denial, and does not adjudicate, which is the right call given the evidence available. Read alongside [[why-tiny-social-media-post-mathematicians]] and [[ai-co-mathematician-accelerating-mathematicians-agentic]], this piece is the human-conflict counterpart to the more measured "AI is entering mathematics" coverage already in the wiki — it is the story of what that entry looks like when it is adversarial rather than collaborative.

## Related

- [[ai-race-dynamics]] — a concrete instance of frontier-lab competitive racing dynamics, playing out as a race to claim prestige mathematics results rather than the more commonly tracked compute/capability race.
- [[why-tiny-social-media-post-mathematicians]] — closely adjacent existing wiki page on how AI is unsettling working norms and credit practices in the mathematics community.
- [[ai-co-mathematician-accelerating-mathematicians-agentic]] — this article is a real-world, adversarial data point for the same phenomenon (AI systems materially accelerating mathematical proof-finding) that page treats more programmatically.
- [[new-york-times-company-microsoft-corporation]] — this article's own outlet is mid-litigation against one of its subjects (OpenAI/Microsoft) over training-data copyright, which the article discloses.
