---
name: "Bayesian AI Consciousness Attribution Model"
slug: bayesian-ai-consciousness-attribution-model
type: evaluation
tags: [ai-consciousness, philosophy-of-mind, bayesian-inference, evaluation, ai-welfare]
source_papers: [[cacophony-hierarchy-principled-framework-assessing-ai]]
parent_methods: []
child_methods: []
realizes_concepts: [[machine-consciousness], [[consciousness-intelligence-convergence]]]
code_repo: ""
date_updated: "2026-10-11"
---

## Problem setting

Deciding whether a given system is conscious requires combining two independent sources of uncertainty that are usually conflated: disagreement about which theory of consciousness is correct (a philosophical/theoretical question) and disagreement about whether a given system actually exhibits the organisation a given theory requires (an empirical question). Collapsing both into a single yes/no verdict obscures which kind of disagreement is actually driving a dispute between two assessors looking at the same system.

## Mechanism

Model the attribution question as P(C|E) = Σᵢ₍₁..₅₎ P(L*=i) · P(Cᵢ|E): an overall posterior that is a credence-weighted average, across the five levels of the paper's supervenience hierarchy, of level-specific posteriors Cᵢ (the proposition that the system instantiates, at level i, the organisation that level-i theories take to suffice for consciousness). P(L*=i) is the theoretical credence that level i is the critical one — supplied by the assessor's philosophical commitments, and expected to differ systematically between a computer scientist, a neuroscientist, and an enactivist. P(Cᵢ|E) is computed via Bayesian inference over a five-node chain C₅→C₄→C₃→C₂→C₁ mirroring the hierarchy, with each level's indicators entering as evidence carrying their own likelihood ratios, and edges treated as probabilistic (not strictly nested) associations — motivated by complete locked-in syndrome, where a fully Level-2-conscious patient fails every Level-1 behavioral indicator, showing that satisfying a finer-grained level does not guarantee passing a coarser one.

## Procedure

1. Define indicator sets for each of the five levels (7 for Level 2; others vary; 37 total across all levels in the reported instantiation).
2. For a target system, determine which indicators are activated (via behavioral testing, architectural analysis, or interpretability evidence), noting that substrate-dependent theories gate certain indicators — an indicator counts as activated only if the functional role it tracks is realized in the theory's required substrate.
3. Propagate indicator evidence through the five-node Bayesian chain to obtain P(Cᵢ|E) for each level, with evidence most diagnostic at its own level and attenuating with distance along the chain.
4. Specify (or elicit from an assessor) a credence distribution P(L*=i) across the five levels, reflecting that assessor's theoretical commitments.
5. Compute the weighted-average aggregate posterior P(C|E).
6. Calibrate against anchor cases with uncontested status (e.g., a healthy human scoring 1.000 across all indicators; a thermostat scoring 0.000) before applying the model to a contested case.

## Assumptions

- A discoverable psychophysical mapping exists (the hard problem is bracketed, not resolved) — the model is only meaningful under this assumption.
- Indicators at each level can be meaningfully assessed as activated or not for a given system, even though several (especially Level 5's relational indicators) cannot be assessed by examining a system in isolation.
- The five-node chain's probabilistic (rather than deterministic/nested) edges are the right structural assumption; the paper argues this via the locked-in-syndrome counterexample but does not claim the specific edge-strength values are empirically validated.

## Limitations

- All reported outputs in the originating paper (human=1.000, thermostat=0.000, fly=0.913, LLM-optimist=0.397, LLM-sceptic=0.005) use author-stipulated indicator activations and credence weightings rather than measured data — the model's current demonstrated use is illustrative, not yet operational with elicited expert likelihood ratios.
- Highly sensitive to the credence-weighting input: for the same stipulated LLM evidence, the aggregate posterior swings from 0.793 (credence concentrated on Levels 1-2) to 0.099 (credence concentrated on Levels 4-5) — the model is precise about how much the verdict depends on theoretical credence, which is also exactly its chief limitation as a decision tool, since it cannot itself settle which credence weighting is correct.
- No validation yet against independently-arrived-at frameworks beyond a single informal comparison (Shiller et al.'s Digital Consciousness Model, noted to produce a qualitatively similar pattern — cognitive-complexity-favoring stances rating LLMs higher than embodiment-favoring stances — but not a quantitatively cross-calibrated comparison).

## Tradeoff profile

Trades a single confident verdict for a transparent decomposition of disagreement: rather than resolving whether a system is conscious, it localizes exactly which indicator activations and which credence weightings two disagreeing assessors differ on, trading decisiveness for diagnostic precision about the structure of the disagreement itself.

## Evaluated by

Calibrated against stipulated anchor cases (human, thermostat, fly) and applied to current transformer-based LLMs under two stipulated expert readings (LLM-optimist and LLM-sceptic); informally cross-checked against Shiller et al.'s independently developed Digital Consciousness Model for qualitative consistency. See [[cacophony-hierarchy-principled-framework-assessing-ai]] for full results. No formal validation against ground-truth consciousness judgments exists, since no such ground truth is available for any non-human case.
