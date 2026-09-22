---
title: "How Claude is Accelerating Protein Design and Analytical Chemistry"
slug: how-claude-accelerating-protein-design-analytical
arxiv: ""
venue: "Anthropic (blog post / Claude Science)"
year: 2026
tags: [ai-for-science, protein-design, drug-discovery, analytical-chemistry, life-sciences, agentic-ai, claude-science, vendor-report]
importance: 3
date_added: "2026-09-22"
source_type: pdf
s2_id: ""
tldr: "Anthropic reports that Claude (Opus 4.8 / Mythos Preview), left to autonomously orchestrate existing open-source protein-design tools inside Claude Science, produced 354 externally-validated binders across 14 of 15 targets at hit rates of 22-35% (vs. 10-15% typical), and that a generally-available Claude Opus 5, given only raw instrument files and a two-sentence prompt, reverse-engineered undocumented vendor formats to reproduce a contract lab's NMR and LC-MS analysis in under 25 minutes."
contribution_type: [application, analysis]
datasets: ["Adaptyv Bio BenchBB", "Adaptyv Bio protein-design competition targets"]
code_url: ""
cited_by: []
---

## Problem & Context

De novo protein binder design — a key early step in drug discovery — has historically taken protein engineers weeks to months of computation, optimization, and screening per target, even with modern ML structure-design tools, because those tools still require days of laborious expert orchestration. Separately, confirming a synthesized compound's identity and purity via NMR and LC-MS spectroscopy is one of the most time-consuming routine steps in synthetic chemistry: raw instrument output must be manually matched, peak by peak, against a proposed structure, and results are typically returned to the requesting chemist days after the sample was run. Anthropic asks whether a general-purpose reasoning model (not a purpose-built scientific model) can compress both bottlenecks by autonomously running the surrounding workflow rather than the underlying science itself.

## Key idea

**Claude as an autonomous orchestrator, not a new domain model.** Rather than train a new protein-structure or spectroscopy model, Anthropic gave Claude access to existing open-source structure-design, sequence-design, and co-folding tools (PXDesign, RFdiffusion3, Genie 3, FreeBindCraft, BoltzGen, SoluableMPNN, etc.) plus GPU compute, and let it autonomously choose which tools to combine, how to sequence them, how many optimization rounds to run, and which candidates to keep — end-to-end, with "no additional scientific, technical, or operational guidance after initiation." For the chemistry task, Claude Opus 5 was instead asked to work as a zero-shot interpreter: parse raw, undocumented, proprietary instrument binary files directly (no vendor software, no operator) and return a finished analysis.

## Method

Two independent experiments run inside Claude Science:

**Protein design campaign.** 15 (of 16 attempted) protein targets, chosen from Adaptyv Bio's BenchBB set (for comparability against published hit rates) plus two intentionally novel targets not in training data or public search results (15-PGDH, GDF-8). Opus 4.8 and Mythos Preview ran in two modes: *multi-target* (single 48-hour session designing against all targets at once, up to 12,500 NVIDIA H100-hours) and *single-target* (24-hour sessions per target run in parallel, up to 2,500 H100-hours each). For each target, Claude was asked for 30 binder designs; it chose the target site, orchestrated structure/sequence/co-folding models, ran multiple rounds of in silico optimization, and screened for soluble, diverse, binding candidates. Designs were sent to two independent external labs, Adaptyv Bio and Twist Bioscience, for wet-lab validation (surface plasmon resonance binding assays).

**Analytical chemistry.** Claude Opus 5 (Anthropic's generally-available model, distinct from the life-science-gated Mythos/Opus 4.8 protein-design work) was given a contract lab's raw NMR free-induction-decay file and LC-MS binary run file for a routine quality-control sample, with only a two-sentence prompt ("process the raw 1H FID... give me a table"; "process the raw LCMS file... summarize with figures") and no vendor software.

## Experiment & Results

**Protein design.** Across 1,320 total designs, Claude produced 354 confirmed binders against 14 of 15 targets — a contribution comparable in scale to the two largest existing public de novo binder collections (~770 binders across 40 targets combined). Pooled hit rates: 22.6% (Opus 4.8 multi-target) and 26.7% (Mythos Preview multi-target), rising to 35.1% in single-target mode — against a stated 10-15% typical hit rate in current protein-design campaigns. High-affinity binders (KD < 10 nM) were produced against at least six targets, some exceeding the best previously published affinity for at least four targets. On Adaptyv Bio's own RBX1 competition, Mythos Preview single-target mode achieved a 40% hit rate versus 3.7% among the 245 human-competition entries, and its top design outperformed the competition's own winning entry on affinity. Claude also designed 15 confirmed binders containing β-sheets (a harder-to-design secondary structure) across six targets. It struggled on two targets: BBF-14 (a de novo-designed β-barrel with no natural analogue) yielded only three binders with modest sub-micromolar-to-micromolar affinity, and maltose-binding protein (MBP, a large flexible protein with a smooth surface) yielded zero confirmed binders out of 90 designs, though one showed a weak, reproducible binding signal. Notably, Opus 4.8 (not Mythos Preview) succeeded in designing cross-reactive binders against TNFα — a clinically important but structurally difficult multimeric target multiple expert groups have struggled with — that bound human, cynomolgus monkey, and mouse TNFα; Anthropic states it does not know why Opus 4.8 succeeded where the otherwise-stronger Mythos Preview did not.

**Analytical chemistry.** Given only the raw files, Claude converted the NMR free-induction decay into a phased, baseline-corrected spectrum, fit and integrated 18 peaks with hydrogen counts, flagged four peaks as likely exchangeable (N/O-attached) hydrogens, proposed the standard heavy-water exchange follow-up check the lab had itself independently run three days later, caught and corrected its own overstated first-pass claim (reporting all four flagged peaks had exchanged when only two had), and matched the lab's own hydrogen counts to within 0.08 ¹H — all in 23 minutes. For the LC-MS file (an undocumented, proprietary vendor binary), Claude reverse-engineered the encoding, verified its read against the instrument's own recorded scan totals (exact match across 2,664 scans), and extracted a single-component chromatogram with 96.4% purity by UV area versus the lab's own 96.33% — in 19 minutes, run in parallel with the NMR task. Anthropic states ordinary hands-on processing takes 30-60 minutes for the NMR spectrum alone, with the LC-MS report typically following days later; here both were delivered, with a written report, inside 25 minutes.

## Limitations

- Entirely Anthropic-run and Anthropic-narrated; while the wet-lab protein assays and part of the NMR ground truth came from independent external labs (Adaptyv Bio, Twist Bioscience, the unnamed contract lab), the framing, target selection, and headline comparisons are all Anthropic's own.
- The chemistry result rests on a single QC sample; no distribution of difficulty or failure cases is reported for that task.
- Targets for the protein campaign were partly chosen from an existing competition/benchmark set specifically to enable comparison against known published hit rates — a favorable, already-legible setting rather than a genuinely novel, unverified target.
- Anthropic explicitly states it does not know why Opus 4.8 succeeded on TNFα where the more capable Mythos Preview failed — an unexplained result reported as a strength ("holistic" capability) rather than flagged as a reliability concern.
- Protein design and other dual-use life-science capabilities remain blocked from general access in Claude Fable 5 specifically because of bioweapon dual-use risk; the capabilities described are not yet broadly available, and no technical mitigation beyond access-gating is described.
- The MBP failure (0/90 confirmed binders) is disclosed but positioned as a minor caveat rather than examined for what it implies about generalization to difficult surface topologies.

## Open questions

- Do these hit rates hold on genuinely novel therapeutic targets with no published affinity data to sanity-check against, rather than targets chosen partly for benchmark comparability?
- What explains the Opus 4.8 / Mythos Preview asymmetry on TNFα, and does it recur — is "holistic" model evaluation actually masking specific, unpredictable capability gaps?
- How much does active human guidance during the design campaign (rather than fully autonomous execution) improve hit rates, as Anthropic speculates but does not test here?
- What will the "trusted access program" for dual-use life-science capability actually gate on, and on what timeline?

## My take

Flag the vendor-interest angle explicitly: this is Anthropic marketing Claude Science and its own frontier models, and the framing shows it — the headline win (beating Adaptyv Bio's own competition winner on RBX1) is foregrounded, while the clearest failure (zero confirmed binders against MBP from 90 designs) is disclosed but immediately softened with "although one demonstrated a weak, reproducible binding signal." That said, the independent-lab wet-lab validation (Adaptyv Bio, Twist Bioscience) is real and is a meaningfully higher evidentiary bar than a self-graded internal benchmark, which is more than can be said for many capability announcements. The two examples in this post actually make an unintentionally sharp methodological point against each other: the chemistry result is the one worth trusting more, precisely because it has cheap, fast, objective ground truth (96.4% vs. the lab's own 96.33%, minutes not days) — exactly the kind of result [[verification-bandwidth]] predicts should be crisp and reproducible — while the protein hit rates require weeks of wet-lab assay time to confirm and are reported by the same company that designed and ran the campaign. Read against [[jumper-alphafold-protein-structure]], the interesting distinction is that AlphaFold was a new predictive model trained for the task, while this is agentic orchestration of pre-existing specialist tools by a general reasoning model — a different, more immediately generalizable (and more Anthropic-favorable) kind of progress, and one that depends entirely on those specialist tools already existing and being good.

## Related

- [[agentic-orchestration-specialist-scientific-models]]
- [[claude-science-ai-workbench-scientists]] — the underlying agentic research platform this campaign ran on; this page is a concrete result generated on that platform.
- [[jumper-alphafold-protein-structure]] — precedent AI-native structural-biology breakthrough; useful contrast between a new predictive model (AlphaFold) and orchestration of existing tools (this post).
- [[automated-research-pipeline]] — concrete instance of an agent autonomously executing multiple pipeline stages (design, optimization, screening) end-to-end with minimal human input.
- [[verification-bandwidth]] — the two examples in this post sit at opposite ends of the concept's central axis: cheap/fast ground truth (chemistry) vs. weeks-long wet-lab confirmation (protein binders).
- [[when-ai-builds-itself]] — same genre of Anthropic self-reported internal/external capability numbers; comparable skepticism about vendor framing applies.
- part_of: [[ai-driven-scientific-discovery]]
