---
description: Run a full Autostay product discovery cycle — from ideation through assumption mapping to experiment design
argument-hint: "<feature area or opportunity>"
---

# /discover -- Full Discovery Cycle (Autostay)

Run a structured product discovery process for Autostay's car wash subscription service. This command chains multiple skills into a single end-to-end workflow, always using the "existing product" path.

## Invocation

```
/discover 예약 시간대 확대 기능
/discover 파트너 세차장 품질 관리 시스템
/discover 구독 이탈 방지를 위한 리텐션 기능
/discover                    # asks what you're discovering
```

## Workflow

### Step 1: Understand the Discovery Context

This is always an **existing product** discovery — Autostay is a live O2O car wash subscription service with real subscribers and partner car wash businesses.

Ask the user:
- What are you exploring? (feature area, opportunity space, subscriber pain point, partner need)
- What do you already know? (prior research, subscriber VOC, app reviews, partner feedback, usage data)
- What decisions will this discovery inform? (build/kill, prioritize, pivot)
- Which Autostay metric are you trying to improve? (MRR, Churn Rate, LTV, NPS, 구독자 수)

Accept context from uploaded files (research, PRDs, transcripts, analytics data), links, or conversation.

### Step 2: Brainstorm Ideas (Divergent Phase)

Apply the **brainstorm-ideas-existing** skill:

- Generate ideas from PM, Designer, Engineer, 구독자, and 파트너 perspectives (5 viewpoints)
- Present the top 10 ideas with brief rationale and expected metric impact
- Ask the user to select 3-5 ideas to carry forward, or accept all

**Checkpoint**: "Here are 10 ideas from 5 perspectives. Which ones should we stress-test? Pick 3-5, or I can carry all forward."

### Step 3: Identify Assumptions (Critical Thinking Phase)

For each selected idea, apply the **identify-assumptions-existing** skill:

- Surface assumptions across seven risk categories:
  - **Value**: Will subscribers want this?
  - **Usability**: Can subscribers figure it out across app and offline touchpoints?
  - **Feasibility**: Can we build it?
  - **Viability**: Does the business case work within the subscription model?
  - **파트너 확보 (Partner Acquisition)**: Will partner car wash businesses adopt this?
  - **서비스 품질 (Service Quality)**: Can consistent quality be maintained?
  - **지역 커버리지 (Geographic Coverage)**: Does it work across all service areas?
- Use devil's advocate multi-perspective analysis
- Compile a master list of all assumptions across all ideas

### Step 4: Prioritize Assumptions (Focus Phase)

Apply the **prioritize-assumptions** skill:

- Map assumptions on an Impact x Risk matrix
- Identify the "leap of faith" assumptions — high impact, high uncertainty
- Rank assumptions by test priority
- Group related assumptions that can be tested together
- Tag each assumption with the Autostay metric it most impacts (MRR, Churn, LTV, NPS)

**Checkpoint**: "Here are your riskiest assumptions. Which ones feel most critical to validate first?"

### Step 5: Design Experiments (Validation Phase)

For the top-priority assumptions, suggest experiments:

- Design 1-2 experiments per critical assumption
- For subscriber-facing features: A/B tests, fake doors, prototypes, user tests, data analysis
- For partner-facing features: pilot with select partners, operational tests, partner surveys
- For O2O features: concierge tests at specific locations, limited rollouts
- Include success criteria, timeline, and effort for each
- Sequence experiments by dependency and effort

### Step 6: Create Discovery Plan

Compile everything into a discovery plan document:

```
## Discovery Plan: [Topic]

**Date**: [today]
**Product**: Autostay (O2O 세차 구독 서비스)
**Discovery Question**: [what we're trying to learn]
**Target Metric**: [which Autostay metric we're trying to improve]

### Ideas Explored
[Summary of brainstormed ideas from 5 perspectives with brief descriptions]

### Selected Ideas for Validation
[3-5 ideas carried forward with rationale and expected metric impact]

### Critical Assumptions
| # | Assumption | Category | Impact | Uncertainty | Metric | Priority |
|---|-----------|----------|--------|-------------|--------|----------|

### Validation Experiments
| # | Tests Assumption | Method | Success Criteria | Effort | Timeline |
|---|-----------------|--------|-----------------|--------|----------|

### Experiment Details
[For each experiment: hypothesis, setup, measurement, decision criteria]

### Discovery Timeline
Week 1: [experiments]
Week 2: [experiments]
Week 3: [analysis and decision]

### Decision Framework
- If [experiment] succeeds -> proceed to [next step]
- If [experiment] fails -> [pivot/kill/investigate further]
```

Save the plan as a markdown file to the user's workspace.

### Step 7: Offer Next Steps

- "Want me to **create interview scripts** for subscriber or partner validation?"
- "Should I **map this to the opportunity solution tree**?"
- "Want me to **prioritize this against the existing feature backlog**?"
- "Should I **estimate effort** and create user stories for the MVP?"

## Notes

- This is a 15-30 minute structured workflow — let the user know upfront
- At each checkpoint, the user can redirect, skip, or go deeper
- If the user has subscriber VOC, app reviews, or usage data, pull insights from it before brainstorming
- The discovery plan should be a living document — offer to update it as experiments run
- Always consider both subscriber and partner impact — Autostay is a two-sided marketplace
- Check if there's usage data or analytics that can inform assumptions before designing new experiments
