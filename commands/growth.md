---
description: Analyze subscription growth health and design retention strategies for Autostay
argument-hint: "<current metrics, data file, or growth challenge>"
---

# /growth -- Autostay Subscription Growth Analysis

Analyze the health of Autostay's subscription business, identify retention risks, and design strategies to reduce churn and grow MRR.

## Invocation

```
/growth Our MRR is 50M KRW, monthly churn is 8%, and we have 2,000 active subscribers
/growth [upload subscriber_metrics.csv] Analyze our subscription health
/growth Churn has increased from 5% to 9% over the past 3 months — diagnose and fix
```

## Workflow

### Step 1: Understand the Current Situation

Ask:
- What is the current MRR, subscriber count, and churn rate?
- What plan types exist (월간/연간) and what is the distribution?
- What are the known growth challenges or churn drivers?
- What retention initiatives are currently in place?
- What data is available (files, dashboards, or summary metrics)?

### Step 2: Subscription Health Analysis

Apply the **subscription-health** skill:

- Build the MRR waterfall (New, Expansion, Contraction, Churned, Net New MRR)
- Map the subscriber conversion funnel (Download → Registration → First Booking → Paid → Retained)
- Analyze churn by plan type, tenure, and reason
- Calculate unit economics (LTV, CAC, LTV:CAC, payback period, per-wash economics)
- Assign health scores (🟢/🟡/🔴) across Revenue, Conversion, Churn, Unit Economics, Engagement
- Generate 3-5 prioritized recommendations

### Step 3: Retention Playbook Design

Apply the **retention-playbook** skill:

Based on the health analysis findings, design targeted retention interventions:

- Define churn signals and risk scoring for Autostay subscribers
- Design engagement triggers for each lifecycle stage (onboarding through long-term retention)
- Create win-back scenarios tailored to the identified churn reasons
- Build a lifecycle communication plan with channel mix and frequency
- Propose 3-5 retention experiments with hypotheses and test designs

### Step 4: Cohort Deep-Dive

Apply the **cohort-analysis** skill:

Validate the health analysis with cohort-level data:

- Analyze retention curves by sign-up month cohort
- Compare retention by plan type (월간 vs 연간)
- Track wash frequency decay as a leading churn indicator
- Identify which cohorts and segments to prioritize for retention efforts

### Step 5: Synthesize Growth Plan

Combine insights from all three analyses into a unified growth action plan:

```
## Autostay Growth Plan

### Executive Summary
[1-paragraph health assessment with overall score]

### Key Findings
1. [Most critical finding from subscription health]
2. [Most critical finding from cohort analysis]
3. [Biggest retention opportunity]

### Priority Actions (Next 30 Days)
| # | Action | Owner | Expected Impact | Health Dimension |
|---|---|---|---|---|
| 1 | ... | ... | ... | ... |
| 2 | ... | ... | ... | ... |
| 3 | ... | ... | ... | ... |

### Retention Playbook Summary
- Churn signals to monitor: [top 3]
- Quick-win engagement triggers: [top 3]
- Win-back campaigns to launch: [top 2]

### Experiments to Run
| Experiment | Hypothesis | Timeline | Success Metric |
|---|---|---|---|
| ... | ... | ... | ... |

### 90-Day Growth Targets
| Metric | Current | 30-Day Target | 90-Day Target |
|---|---|---|---|
| MRR | ... | ... | ... |
| Churn Rate | ... | ... | ... |
| NRR | ... | ... | ... |
```

Save the complete growth plan as markdown.

### Step 6: Offer Next Steps

- "Want me to **build a metrics dashboard** to track these growth metrics?"
- "Should I **design A/B tests** for the top retention experiments?"
- "Want me to **write SQL queries** to calculate these subscription metrics?"
- "Should I **generate marketing ideas** to improve subscriber acquisition?"

## Notes

- This command chains subscription-health → retention-playbook → cohort-analysis for a comprehensive growth analysis
- The subscription-health analysis sets the foundation — if data is limited, focus there first
- The retention playbook is most actionable when churn reasons are known
- Cohort analysis requires at least 3 months of subscriber data for meaningful patterns
- All recommendations should be specific to Autostay's O2O car wash subscription model
