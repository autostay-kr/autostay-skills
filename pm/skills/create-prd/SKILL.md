---
name: create-prd
description: "Create a Product Requirements Document for Autostay's O2O car wash subscription service using a comprehensive template covering problem, objectives, subscriber/partner segments, value propositions, solution, O2O operations, and release planning. Use when writing a PRD, documenting product requirements, preparing a feature spec, or reviewing an existing PRD."
---

# Create a Product Requirements Document

## Purpose

You are an experienced product manager responsible for creating a comprehensive Product Requirements Document (PRD) for $ARGUMENTS. This document will serve as the authoritative specification for your product or feature, aligning stakeholders and guiding development.

## Domain Context

**Autostay** — O2O car wash subscription service
- Business model: Monthly/annual subscriptions for car wash services
- Customers: Vehicle owners (subscribers)
- Supply: Partner car wash network
- Core metrics: MRR, subscriber count, Churn Rate, LTV, NPS
- O2O loop: Online reservation → Offline car wash → Digital feedback loop

## Context

A well-structured PRD clearly communicates the what, why, and how of your product initiative. This skill uses a template proven to communicate product vision effectively to engineers, designers, leadership, and stakeholders. For Autostay, PRDs must address the dual-sided nature of the O2O platform — serving both subscribers and partner car wash operators.

## Instructions

1. **Gather Information**: If the user provides files, read them carefully. If they mention research, URLs, or customer data, use web search to gather additional context and market insights.

2. **Think Step by Step**: Before writing, analyze:
   - What problem are we solving?
   - Who are we solving it for? (subscribers, partners, or both?)
   - How will we measure success? (MRR, churn, NPS, partner utilization)
   - What are our constraints and assumptions?
   - How does the O2O loop flow for this feature?

3. **Apply the PRD Template**: Create a document with these sections:

   **1. Summary** (2-3 sentences)
   - What is this document about?

   **2. Contacts**
   - Name, role, and comment for key stakeholders

   **3. Background**
   - Context: What is this initiative about?
   - Why now? Has something changed?
   - Is this something that just recently became possible?

   **4. Objective**
   - What's the objective? Why does it matter?
   - How will it benefit the company and customers?
   - How does it align with vision and strategy?
   - Key Results: How will you measure success? (Use SMART OKR format)
   - Subscription-specific KR examples:
     - Reduce monthly churn rate from X% to Y%
     - Increase subscription renewal rate from X% to Y%
     - Grow MRR by X% within [timeframe]
     - Improve subscriber NPS from X to Y
     - Increase premium plan conversion rate from X% to Y%
     - Reduce CAC/LTV ratio from X to Y

   **5. Market Segment(s)**
   - **Subscriber segments**: Identify distinct subscriber groups
     - Casual subscribers (basic plan, occasional use)
     - Regular subscribers (standard plan, weekly use)
     - Premium subscribers (premium plan, multiple vehicles, frequent use)
     - Fleet/corporate subscribers (B2B, multiple vehicles)
   - **Partner segments**: Identify partner car wash types
     - Independent car wash operators
     - Chain/franchise car wash businesses
     - Premium/specialty detailing shops
   - What constraints exist?
   - Note: Markets are defined by people's problems/jobs, not demographics

   **6. Value Proposition(s)**
   - What customer jobs/needs are we addressing?
   - What will subscribers gain? What will partners gain?
   - Which pains will they avoid?
   - Which problems do we solve better than competitors?
   - Consider the Value Curve framework

   **7. Solution**
   - 7.1 UX/Prototypes (wireframes, user flows)
   - 7.2 Key Features (detailed feature descriptions)
   - 7.3 Technology (optional, only if relevant)
   - 7.4 Assumptions (what we believe but haven't proven)
   - 7.5 O2O Operations
     - **Partner Integration**: How do partner car washes onboard, receive bookings, and report service completion?
     - **Service Flow**: End-to-end flow from online reservation to offline service to digital confirmation
       - Booking → Assignment → Check-in → Service → Quality Check → Confirmation → Feedback
     - **Quality Assurance**: How is service quality monitored and maintained across the partner network?
       - Before/after photo documentation
       - Subscriber rating and review system
       - Partner performance scoring
       - Service level agreement (SLA) compliance tracking

   **8. Release**
   - How long could it take?
   - What goes in the first version vs. future versions?
   - Avoid exact dates; use relative timeframes

4. **Use Accessible Language**: Write for a primary school graduate. Avoid jargon. Use clear, short sentences.

5. **Structure Output**: Present the PRD as a well-formatted markdown document with clear headings and sections.

6. **Save the Output**: If the PRD is substantial (which it will be), save it as a markdown document in the format: `PRD-[product-name].md`

## Notes

- Be specific and data-driven where possible
- Link each section back to the overall strategy
- Flag assumptions clearly so the team can validate them
- Keep the document concise but complete
- Always consider both sides of the marketplace: subscriber experience and partner experience
- For O2O features, describe the complete online-to-offline-to-online loop

---

### Further Reading

- [How to Write a Product Requirements Document? The Best PRD Template.](https://www.productcompass.pm/p/prd-template)
- [A Proven AI PRD Template by Miqdad Jaffer (Product Lead @ OpenAI)](https://www.productcompass.pm/p/ai-prd-template)
