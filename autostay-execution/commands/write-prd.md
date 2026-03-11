---
description: Create a comprehensive Product Requirements Document for Autostay's O2O car wash subscription service, including O2O operations and partner integration
argument-hint: "<feature or problem statement>"
---

# /write-prd -- Autostay Product Requirements Document

Create a structured PRD that aligns stakeholders and guides development for Autostay's O2O car wash subscription platform. Accepts anything from a vague idea to a detailed brief.

## Invocation

```
/write-prd Subscription plan upgrade flow for premium tier
/write-prd Subscribers are churning after the first month — we need better onboarding
/write-prd Partner car wash quality scoring system
/write-prd [upload a brief, research doc, or strategy deck]
```

## Workflow

### Step 1: Understand the Feature

Accept the input in any form:
- A feature name ("Partner dashboard redesign")
- A problem statement ("Subscribers can't find nearby partner car washes during peak hours")
- A user request ("Partners want to see their monthly earnings breakdown")
- A vague idea ("We should reduce churn in the first 30 days")
- An uploaded document (brief, research, Slack thread, email)

### Step 2: Gather Context

Ask conversationally — most important questions first, fill gaps as you go:

1. **User problem**: What problem does this solve? Does it affect subscribers, partners, or both?
2. **Target users**: Which subscriber segment(s) or partner type(s)? How many? What's their current workaround?
3. **Success metrics**: How will we know this worked? Which Autostay KPIs move? (MRR, churn, NPS, partner utilization)
4. **O2O impact**: How does this feature affect the online-to-offline-to-online loop?
5. **Constraints**: Technical constraints, timeline, regulatory, dependencies on other teams?
6. **Prior art**: Has this been attempted before? Existing solutions in the market?
7. **Scope preference**: Full solution or phased approach?

If the user provides a document with context, extract what's available and only ask about gaps.

### Step 3: Generate the PRD

Apply the **create-prd** skill to produce the PRD document:

```
## Product Requirements Document: [Feature Name]

**Author**: [user]
**Date**: [today]
**Status**: Draft
**Stakeholders**: [if known]

### 1. Executive Summary
[2-3 sentences: what, for whom, why now]

### 2. Background & Context
[Problem space, prior research, market context, what prompted this]

### 3. Objectives & Success Metrics
**Goals** (what success looks like):
1. [Specific, measurable goal]
2. [...]

**Non-Goals** (explicitly out of scope):
1. [What we're not doing, and why]
2. [...]

**Success Metrics**:
| Metric | Current | Target | Measurement |
|--------|---------|--------|-------------|
| Monthly churn rate | X% | Y% | Subscription analytics |
| Subscriber NPS | X | Y | Post-service survey |
| MRR impact | $X | $Y | Billing system |

### 4. Target Users & Segments
**Subscribers:**
[Segment breakdown — casual, regular, premium, fleet/corporate]

**Partners:**
[Partner types — independent, chain, specialty]

### 5. User Stories & Requirements

**P0 — Must Have**:
| # | User Story | Acceptance Criteria |
|---|-----------|-------------------|

**P1 — Should Have**:
| # | User Story | Acceptance Criteria |
|---|-----------|-------------------|

**P2 — Nice to Have / Future**:
| # | User Story | Acceptance Criteria |
|---|-----------|-------------------|

### 6. Solution Overview
[High-level approach, key design decisions, technical approach if known]

### 7. O2O Operations
**7.1 Partner Integration**
[How partners onboard, receive bookings, report completion]

**7.2 Service Flow**
[Booking → Assignment → Check-in → Service → Quality Check → Confirmation → Feedback]

**7.3 Quality Assurance**
[Service quality monitoring across the partner network]

### 8. Open Questions
| Question | Owner | Deadline |
|----------|-------|----------|

### 9. Timeline & Phasing
[Milestones, dependencies, phasing if applicable]
```

### Step 4: Review and Iterate

After generating, offer:
- "Want me to **tighten the scope**? I can challenge which P1s should really be P2s."
- "Should I **run a pre-mortem** on this PRD? (`/pre-mortem`)"
- "Want me to **break this into user stories** for engineering? (`/write-stories`)"
- "Should I **create test scenarios** for the key flows? (`/test-scenarios`)"

Save the PRD as a markdown file to the user's workspace.

## Notes

- Be opinionated about scope — a tight PRD is better than an expansive vague one
- If the idea is too big, proactively suggest phasing and spec only Phase 1
- Non-goals are as important as goals — they prevent scope creep
- Success metrics must be specific: "improve NPS" is bad, "increase subscriber NPS from 32 to 45 within 90 days of launch" is good
- Open questions should be genuinely unresolved — don't list things you can answer from context
- If the user provides research, weave insights into the Background section with attribution
- Always consider both sides of the marketplace — subscriber experience and partner experience
- For O2O features, describe the complete loop: online reservation → offline service → digital feedback
