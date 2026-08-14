---
title: "Moffatt v. Air Canada"
slug: moffatt-air-canada
arxiv: ""
venue: "Civil Resolution Tribunal, BC (2024 BCCRT 149)"
year: 2024
tags: [ai-accountability, chatbot-liability, legal, consumer-protection, deployer-liability, ai-and-society]
importance: 2
date_added: 2026-07-05
source_type: pdf
s2_id: ""
tldr: "A British Columbia tribunal held Air Canada liable for its website chatbot's incorrect advice about retroactive bereavement fares, rejecting the airline's argument that it was not responsible for information provided by the chatbot — an early ruling that deployers are accountable for their AI systems' outputs."
contribution_type: [analysis]
datasets: []
code_url: ""
cited_by: []
---

## Problem & Context

After his grandmother's death (Nov 2022), Jake Moffatt used Air Canada's website chatbot, which told him he could apply for bereavement fares retroactively. He booked accordingly; Air Canada staff later said retroactive applications were not permitted. Moffatt sought a partial refund; Air Canada argued it could not be held liable for information the chatbot provided.

## Key idea

A company is responsible for the information its AI chatbot gives customers: the tribunal treated the chatbot's statement as a representation by Air Canada, rejecting the notion that the chatbot is a separate entity for which the company bears no responsibility (a negligent-misrepresentation framing).

## Method

Small-claims decision (Civil Resolution Tribunal, BC; Tribunal Member Rivers, Feb 2024). The tribunal weighed the chatbot's advice, Air Canada's own contradictory webpage, the duty of care/negligent-misrepresentation standard, and the airline's tariff arguments.

## Experiment & Results

No empirics (a tribunal decision). Outcome: Air Canada was found liable for negligent misrepresentation and ordered to pay damages (the fare difference plus fees). The tribunal explicitly rejected the argument that Air Canada was not responsible for its chatbot's statements, and noted it was reasonable for the customer to rely on the chatbot.

## Limitations

- Small-claims, single jurisdiction; limited precedential weight.
- Turns on consumer-facing misrepresentation, not agentic/high-stakes AI.
- Modest monetary stakes.

## Open questions

- Does deployer liability for chatbots extend to more autonomous, higher-stakes agents?
- How should companies disclaim or bound chatbot representations, if at all?
- What verification/guardrail duties does deploying a customer-facing AI impose?

## My take

Air Canada is the deployer-liability counterpart to Avianca's user liability: together they bracket AI accountability — the user must verify AI output *and* the deployer is responsible for the AI it puts in front of customers. The tribunal's refusal to treat the chatbot as a separate legal actor ("not responsible for its own chatbot" fails) is the quietly important holding, foreclosing the most obvious corporate escape hatch and prefiguring the EU's product-liability direction.

## Related

- [[ai-accountability-gap]]
- [[mata-avianca]]
