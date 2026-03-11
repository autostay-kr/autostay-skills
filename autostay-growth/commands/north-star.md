---
description: Define Autostay's North Star Metric and supporting input metrics — pre-classified as Transaction Game with subscription-specific candidates
argument-hint: "<current stage, metrics, or specific question about what to measure>"
---

# /north-star -- Autostay North Star Metric Definition

Identify the single metric that best captures the value Autostay delivers to car wash subscribers, plus the input metrics that drive it. Pre-classified as a Transaction Game business with recommended NSM candidates.

## Invocation

```
/north-star We're an early-stage car wash subscription with 500 subscribers
/north-star Help us choose between Monthly Active Subscribers vs Total Washes Completed
/north-star We're tracking MRR but it doesn't feel right as our North Star — help us fix it
/north-star We need to align our growth and operations teams around a single metric
```

## Workflow

### Step 1: Understand Autostay's Current State

Ask:
- What stage is Autostay at? (pre-launch, early, growth, mature)
- Current metrics being tracked (MRR, subscriber count, churn, washes/month)
- Current values for those metrics (if known)
- How many partner wash centers? Coverage area?
- Team structure (growth, product, operations, marketing)
- Why is this needed now? (alignment issue, new strategy, investor request)

### Step 2: Confirm Business Game Classification

Apply the **north-star-metric** skill:

Autostay is pre-classified as a **Transaction Game** business:
- Revenue comes from recurring subscription transactions
- Core value loop: subscribe → book wash → receive service → renew
- The key question is: how many valuable transactions (washes) are subscribers completing?

Validate this classification. Consider if Autostay's model has evolved — for example, if they've added community features (Attention Game elements) or car care tools (Productivity Game elements).

### Step 3: Evaluate NSM Candidates

Start from the three pre-classified candidates:

| Candidate | Definition | Strengths | Weaknesses |
|---|---|---|---|
| **Monthly Active Subscribers** | Subscribers who completed ≥1 wash booking this month | Customer-centric, easy to understand | Doesn't capture depth of engagement |
| **Total Washes Completed** | Total car washes delivered per month | Measures value delivery volume | Can grow by adding subscribers without improving retention |
| **Subscription Renewal Rate** | % of subscribers who renew at billing cycle end | Directly captures satisfaction | Lagging indicator, hard to move quickly |

Validate each against 7 criteria:
1. Expresses value delivered to customers
2. Is a leading indicator of revenue
3. Is measurable and trackable
4. Is understandable by the whole team
5. Is actionable (teams can influence it)
6. Is not a vanity metric
7. Is not gameable without delivering real value

Recommend the strongest candidate with rationale.

### Step 4: Define Input Metrics

Start from the pre-filled input metrics and refine:

| Input Metric | Drives NSM By | Owner | Current | Target |
|---|---|---|---|---|
| New Subscriber Signups | Growing the subscriber base | Growth | | |
| First Wash Completion Rate | Converting signups to active users | Onboarding | | |
| Average Washes per Subscriber | Deepening engagement and value delivery | Product | | |
| Partner Coverage Score | Ensuring subscribers can access the service | Operations | | |
| NPS / Satisfaction Score | Predicting renewal and word-of-mouth | Quality | | |

Adjust based on Autostay's current stage, team structure, and data availability.

### Step 5: Generate Metrics Framework

```
## North Star Framework: Autostay

**Business Game**: Transaction Game (O2O Car Wash Subscription)

### North Star Metric
**Metric**: [selected NSM]
**Definition**: [precise formula]
**Why this metric**: [explains value, leads revenue, is actionable]
**Current value**: [if known]
**Target**: [goal]

### Validation
| Criterion | Pass? | Notes |
|----------|-------|-------|
| Expresses value | [Y/N] | [explanation] |
| Leading indicator | [Y/N] | [explanation] |
| Measurable | [Y/N] | [explanation] |
| Understandable | [Y/N] | [explanation] |
| Actionable | [Y/N] | [explanation] |
| Not vanity | [Y/N] | [explanation] |
| Not gameable | [Y/N] | [explanation] |

### Input Metrics
| Input Metric | Drives North Star By | Owner | Current | Target |
|-------------|---------------------|-------|---------|--------|

### Metrics Constellation
[Visual tree: NSM → Input Metrics → Team Actions]
Example:
Monthly Active Subscribers
├── New Subscriber Signups (Growth Team)
│   ├── Marketing campaigns
│   ├── Partnership activations
│   └── Referral program
├── First Wash Completion Rate (Onboarding Team)
│   ├── Booking flow optimization
│   └── New subscriber concierge
├── Avg Washes per Subscriber (Product Team)
│   ├── Booking reminders
│   ├── Scheduling features
│   └── Partner quality management
├── Partner Coverage Score (Operations Team)
│   ├── New partner acquisition
│   └── Geographic expansion
└── NPS Score (Quality Team)
    ├── Partner training
    └── Service quality audits

### Counter-Metrics
| Metric | Protects Against |
|--------|-----------------|
| Per-Wash Margin | Growing washes at unprofitable cost |
| Partner Utilization | Overloading partners, degrading quality |
| CAC | Acquiring low-quality subscribers |

### Anti-Patterns Avoided
- MRR is not the North Star — it's a lagging indicator that doesn't capture subscriber value
- DAU is not the North Star — opening the app ≠ receiving car wash value
- Total Subscribers is not the North Star — it includes inactive/zombie subscribers
```

Save as markdown.

### Step 6: Offer Next Steps

- "Want me to **build a full metrics dashboard** around this North Star?"
- "Should I **analyze current subscriber cohorts** to baseline these metrics?"
- "Want me to **write SQL queries** to compute these metrics from your database?"
- "Should I **design retention strategies** based on the input metrics?"

## Notes

- The North Star should measure *value delivered*, not just *activity* — for Autostay, a wash completed = value delivered
- Revenue (MRR) is never a good North Star — it's a lagging indicator that doesn't capture subscriber value
- Input metrics are what make the framework actionable — without them, the NSM is just a vanity dashboard
- Counter-metrics prevent Goodhart's Law — e.g., don't optimize washes completed at the expense of per-wash margins
- Revisit the North Star annually or when the business model changes significantly
- For Autostay specifically, consider the O2O constraint: online metrics (app engagement) and offline metrics (wash completion) both matter
