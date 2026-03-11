---
description: Build Autostay subscriber personas and map the customer journey from research data
argument-hint: "<research data, survey results, or subscriber description>"
---

# /research-users -- User Research Synthesis (Autostay)

Turn raw research data into actionable Autostay subscriber personas and customer journey maps. Accepts survey data, interview notes, feedback, analytics, or a subscriber description for exploratory research.

## Invocation

```
/research-users [upload survey results or interview notes]
/research-users 30대 직장인 구독자 — 이 세그먼트를 이해하고 싶어요
/research-users [paste subscriber feedback or app review data]
```

## Workflow

### Step 1: Accept Research Inputs

Accept from any combination:
- Survey responses (CSV, spreadsheet, pasted)
- Interview notes or transcripts
- Support tickets or feature requests (subscriber VOC)
- App store reviews
- Product analytics / behavioral data
- NPS or satisfaction data
- Subscriber description (for exploratory research without data)

Ask:
- What research do you have? What format?
- What do you want to understand? (who are our subscribers, how do they differ, where's the friction)
- What decisions will this inform? (roadmap, pricing, onboarding, retention strategy, partner expansion)

### Step 2: Build Personas

Apply the **user-personas** skill:

- Start from the pre-built Autostay subscriber archetypes:
  - **바쁜 직장인**: Time-poor professional, values convenience
  - **차량 관리 마니아**: Car enthusiast, quality-sensitive
  - **가성비 추구형**: Value seeker, cost-conscious
  - **신차 오너**: New car owner, high initial motivation
- Refine archetypes with actual research data, or identify new archetypes not covered
- For each persona: name, demographics, car type, JTBD, pains, gains, behavioral patterns, subscription behavior
- Include unexpected insights — things that surprised you in the data
- Note persona prevalence (what % of subscriber base each represents, if data allows)
- Assess churn risk and LTV potential for each persona

### Step 3: Map the Customer Journey

Apply the **customer-journey-map** skill:

- Map the end-to-end Autostay subscriber journey using pre-built stages:
  - **인지 (Awareness)**: How they first learn about Autostay
  - **탐색 (Exploration)**: Comparing options, evaluating the subscription
  - **가입 (Subscription)**: Signing up and choosing a plan
  - **이용 (Usage)**: The O2O loop — 예약 -> 방문 -> 세차 -> 피드백
  - **유지 (Retention)**: Staying subscribed or considering churn
  - **확산 (Advocacy)**: Recommending to others
- For each stage: touchpoints, emotions, pain points, aha moments
- Identify the biggest drop-off points in the funnel
- Highlight moments of delight worth amplifying
- Map journey variations by persona (e.g., 바쁜 직장인 vs. 차량 관리 마니아 have different journeys)

### Step 4: Generate Research Report

```
## User Research Report: Autostay Subscribers

**Date**: [today]
**Data sources**: [what was analyzed]
**Sample size**: [if applicable]

### Executive Summary
[3-5 sentences: key findings and implications for Autostay]

### Personas

#### Persona 1: [Name] — "[Quote that captures them]"
- **Archetype**: [바쁜 직장인 / 차량 관리 마니아 / 가성비 추구형 / 신차 오너 / New]
- **Who**: [age, occupation, car type, characteristics]
- **Primary JTBD**: [When..., I want to..., so I can...]
- **Key pains**: [top 3, with O2O stage where pain occurs]
- **Key gains**: [what delights them]
- **Subscription behavior**: [plan type, usage frequency, renewal pattern]
- **Churn risk**: [High/Medium/Low with triggers]
- **LTV potential**: [High/Medium/Low]
- **Prevalence**: [X% of subscriber base]

[Repeat for each persona]

### Customer Journey Map
| Stage | 터치포인트 | 감정 | Pain Points | 기회 |
|-------|-----------|------|-------------|------|

### Key Insights
1. [Insight with supporting evidence]
2. ...

### Recommendations
1. [Actionable recommendation tied to findings, with expected metric impact]
2. ...

### Open Questions
[What the data didn't answer — suggested follow-up research]
```

Save as markdown.

### Step 5: Offer Next Steps

- "Want me to **create interview scripts** to go deeper on a specific persona?"
- "Should I **brainstorm retention strategies** for the highest churn-risk persona?"
- "Want me to **prioritize the journey map pain points** as feature opportunities?"
- "Should I **run a full discovery cycle** on the biggest pain point?"

## Notes

- If data is thin, be transparent about confidence levels — 5 interviews -> hypotheses, not conclusions
- Personas should be useful, not decorative — every persona should influence a product decision
- Behavioral segments are more actionable than demographic segments for product decisions
- The journey map should surface emotions, not just actions — where subscribers feel frustrated vs. delighted drives prioritization
- If no data is provided, use the pre-built archetypes and journey stages as hypothesis templates and recommend how to validate them
- Always consider the O2O nature of Autostay — online (app) and offline (car wash) experiences are inseparable
