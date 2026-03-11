---
description: Deep-dive into subscriber data — cohort retention, subscription health metrics, and KPI dashboard design
argument-hint: "<subscriber data as CSV, metrics summary, or analysis question>"
---

# /analyze-subscribers -- Autostay Subscriber Data Deep-Dive

Perform a comprehensive analysis of Autostay's subscriber data, combining cohort retention analysis, subscription health metrics, and KPI dashboard design into a unified subscriber intelligence report.

## Invocation

```
/analyze-subscribers [upload subscriber_data.csv] Analyze retention by cohort and plan type
/analyze-subscribers We have 3,000 subscribers, 60% monthly / 40% annual, churn is 6%
/analyze-subscribers Which acquisition channels produce the best long-term subscribers?
/analyze-subscribers Design a subscriber analytics dashboard for our weekly review
```

## Workflow

### Step 1: Understand the Data

Ask:
- What subscriber data is available? (CSV, metrics summary, database access)
- What is the analysis goal? (retention diagnosis, channel comparison, dashboard design)
- What time range does the data cover?
- What dimensions are available? (plan type, acquisition channel, region, signup date)
- Are there specific questions to answer or hypotheses to test?

### Step 2: Cohort Analysis

Apply the **cohort-analysis** skill:

Analyze subscriber cohorts across Autostay's key dimensions:

- **Retention by Sign-Up Month**: Build cohort retention heatmap showing month-over-month retention for each signup cohort
- **Retention by Plan Type**: Compare 월간 (monthly) vs 연간 (annual) subscriber retention curves
- **Retention by Acquisition Channel**: Which channels (아파트 제휴, SNS, 커뮤니티, referral, organic) produce the most durable subscribers?
- **Wash Frequency Decay**: Track how wash frequency changes over subscriber lifetime — identify the usage decline threshold that predicts churn
- **Upgrade/Downgrade Patterns**: When do subscribers change plans? What triggers upgrades vs downgrades?

Generate Python scripts for analysis if raw data is provided.

### Step 3: Subscription Health Assessment

Apply the **subscription-health** skill:

Layer subscription health metrics on top of the cohort analysis:

- **MRR Breakdown**: New, Expansion, Contraction, Churned MRR by cohort
- **Conversion Funnel**: Where in the funnel are different cohorts dropping off?
- **Churn Analysis**: Churn rates by plan type, tenure, and reason — correlated with cohort findings
- **Unit Economics**: LTV and CAC by acquisition channel and plan type
- **Health Score**: Overall health assessment with dimension-level scoring

### Step 4: Metrics Dashboard Design

Apply the **metrics-dashboard** skill:

Design a subscriber analytics dashboard based on the analysis findings:

- Select the most important metrics from the analysis to monitor ongoing
- Organize into the pre-built Autostay KPI categories (Revenue, Growth, Retention, Operations, Engagement)
- Define alert thresholds based on the patterns discovered in the cohort and health analysis
- Recommend visualization types and review cadence
- Suggest tool implementation (Amplitude, Looker, Metabase, etc.)

### Step 5: Synthesize Subscriber Intelligence Report

Combine all three analyses into a unified report:

```
## Autostay Subscriber Intelligence Report

### Data Overview
- Time range: [start] to [end]
- Total subscribers analyzed: [N]
- Cohorts: [number of cohort groups]
- Dimensions: [plan type, channel, region, etc.]

### Key Findings

#### Cohort Insights
1. [Most significant retention pattern]
2. [Best/worst performing cohort and why]
3. [Wash frequency decay pattern]

#### Health Assessment
- Overall Health: [🟢/🟡/🔴]
- Revenue: [score] | Conversion: [score] | Churn: [score]
- Unit Economics: [score] | Engagement: [score]

#### Critical Metrics to Track
| Metric | Current Value | Benchmark | Status |
|---|---|---|---|
| ... | ... | ... | 🟢/🟡/🔴 |

### Recommended Dashboard
[Dashboard layout with selected metrics, alert thresholds, and review cadence]

### Action Items
| Priority | Action | Based On | Expected Impact |
|---|---|---|---|
| P0 | ... | [which analysis] | ... |
| P1 | ... | [which analysis] | ... |
| P2 | ... | [which analysis] | ... |
```

Save as markdown. Include Python scripts for reproducible analysis if raw data was provided.

### Step 6: Offer Next Steps

- "Want me to **design retention strategies** based on these findings?"
- "Should I **write SQL queries** to automate these cohort calculations?"
- "Want me to **set up A/B tests** for the recommended actions?"
- "Should I **analyze marketing channels** to optimize acquisition?"

## Notes

- This command runs cohort-analysis + subscription-health + metrics-dashboard in parallel, then synthesizes
- The cohort analysis provides the "what is happening" — the health assessment provides the "how bad/good is it" — the dashboard provides the "how to monitor it going forward"
- For best results, provide at least 3 months of subscriber-level data with plan type and signup date
- If data is limited, the analysis will focus on what's available and recommend what additional data to collect
- All analysis is specific to Autostay's O2O car wash subscription model
