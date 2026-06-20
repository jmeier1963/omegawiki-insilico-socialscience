---
title: "Making AI Less \"Thirsty\": Uncovering and Addressing the Secret Water Footprint of AI Models"
slug: making-ai-less-thirsty-uncovering-addressing
arxiv: "2304.03271"
venue: "Communications of the ACM"
year: 2023
tags: [sustainable-ai, water-footprint, data-centers, environmental-impact, ai-and-society]
importance: 4
date_added: 2026-06-20
source_type: pdf
s2_id: "05fae03311d24e3f4a82e8021153f3d68d3bdf63"
keywords: [water footprint, water usage effectiveness, data center cooling, sustainable AI, scope-1/2/3 water, freshwater scarcity]
domain: ML Systems
code_url: ""
cited_by: []
---

## Problem

The carbon footprint of AI has been heavily scrutinized, but its **water footprint** — the freshwater evaporated for cooling servers and for electricity generation — has stayed "under the radar." Optimizing only for carbon efficiency does not guarantee, and can even worsen, water efficiency. As AI is the fastest-growing data-center workload, its hidden water consumption risks becoming a sustainability roadblock and a source of social conflict amid worsening freshwater scarcity.

## Key idea

Provide a **principled, scope-based methodology** to estimate AI's total water footprint (operational + embodied), distinguish water *withdrawal* from water *consumption*, and show that runtime water efficiency varies sharply across space and time — so deciding *when* and *where* to train/serve a model materially changes its water cost. The paper argues water must be reported and managed **holistically alongside carbon**, not as a substitute.

## Method

- Defines three scopes mirroring carbon accounting: **scope-1** on-site cooling water (cooling towers / evaporation-assisted air cooling), **scope-2** off-site water for electricity generation, **scope-3** supply-chain water (chip/server fabrication).
- Introduces **WUE (Water Usage Effectiveness)** as the efficiency metric; combines it with PUE and grid water-intensity factors.
- Applies the model to GPT-3 (175B) trained in Microsoft US data centers and to per-inference estimates.
- Projects global AI water demand for 2027 using GPU-shipment-based electricity forecasts.

## Results

- Training GPT-3 in US data centers can consume ~5.4 million liters total, including ~700,000 L of scope-1 on-site consumption.
- GPT-3 "drinks" ~500 ml per 10–50 medium responses, depending on deployment time/place.
- Global AI is projected to withdraw **4.2–6.6 billion m³** of water in 2027 (more than 4–6× Denmark's annual withdrawal, or ~half the UK) and consume 0.38–0.60 billion m³.
- On-site evaporation ranges ~1–9 L/kWh (1 L/kWh Google annualized vs 9 L/kWh Arizona summer), showing large spatio-temporal variability.

## Limitations

Estimates rely on self-reported operator data and public efficiency factors with substantial uncertainty; embodied (scope-3) water is hard to attribute; market-based offsets (renewable purchasing) can lower reported footprints versus location-based estimates.

## Open questions

How to standardize water reporting in AI model cards? How to jointly optimize carbon and water (which can trade off)? How to allocate water cost fairly across regions already under freshwater stress?

## My take

A foundational reference for the *environmental externalities* strand of AI-and-society: it reframes "sustainable AI" beyond carbon and gives the field a measurable water vocabulary (withdrawal/consumption, WUE, scopes). Pairs naturally with debates over compute-driven growth and its uneven local burdens.

## Related

- [[ai-water-footprint]]
- [[green-ai-kuznets-curve-energy-emissions]]
- supports: [[ai-water-footprint-large-and-hidden]]
- [[shaolei-ren]]
