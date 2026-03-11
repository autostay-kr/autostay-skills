---
name: cohort-analysis
description: "Perform subscriber cohort analysis for Autostay — retention by sign-up month, plan type, acquisition channel, wash frequency decay, and upgrade/downgrade patterns. Use when analyzing subscriber retention by cohort, studying wash frequency trends, investigating churn patterns by plan type, or identifying upgrade/downgrade behavior."
---

# Subscriber Cohort Analysis — Autostay

## Purpose
Analyze Autostay subscriber engagement and retention patterns by cohort to identify trends in wash usage, plan behavior, and long-term subscription health. Specialized for subscription-specific metrics including wash frequency decay, upgrade/downgrade patterns, and retention by plan type and acquisition channel.

## Domain Context

**Autostay** — O2O 세차 구독 서비스
- 비즈니스 모델: 월간/연간 구독으로 세차 서비스 제공
- 고객: 차량 소유자 (구독자)
- 공급: 파트너 세차장 네트워크
- 핵심 지표: MRR, 구독자 수, Churn Rate, LTV, NPS
- O2O 루프: 온라인 예약 → 오프라인 세차 → 디지털 피드백 루프

## How It Works

### Step 1: Read and Validate Your Data
- Accept CSV, Excel, or JSON data files with subscriber cohort information
- Verify data structure: cohort identifier, time periods, subscription metrics
- Check for missing values and data quality issues
- Summarize key statistics (cohort sizes, date ranges, metrics available)

### Step 2: Define Cohort Dimensions

For Autostay, cohorts should be analyzed across these dimensions:

**Primary Cohort Groupings:**
- **Sign-up Month**: When the subscriber first activated their paid plan
- **Plan Type**: 월간 (monthly) vs 연간 (annual) subscription
- **Acquisition Channel**: Organic, referral, 아파트 단지 제휴, SNS 광고, 차량 커뮤니티, etc.

**Secondary Cohort Groupings:**
- **Region/City**: Subscriber location or nearest partner wash center
- **Vehicle Type**: Sedan, SUV, premium vehicle
- **First Wash Timing**: Subscribers who completed first wash within 7 days vs later

### Step 3: Generate Quantitative Analysis

**Retention Analysis:**
- Calculate cohort retention rates month-over-month
- Build retention curves by sign-up month cohort
- Compare retention by plan type (월간 vs 연간)
- Compare retention by acquisition channel
- Identify the "critical retention window" — the month where most churn occurs

**Subscription-Specific Metrics:**
- **Wash Frequency Decay**: Track average washes per subscriber over time since signup. Identify when usage starts declining (a leading churn indicator).
- **Upgrade/Downgrade Patterns**: Track plan changes by cohort — who upgrades from 월간 to 연간? Who downgrades? At what point in the lifecycle?
- **Revenue Cohort Analysis**: Track MRR contribution of each cohort over time
- **Reactivation Rate**: Among churned subscribers per cohort, what % reactivate?

Generate Python analysis scripts using pandas and numpy if requested.

### Step 4: Create Visualizations
- **Retention Heatmap**: Cohorts (rows) vs months since signup (columns), colored by retention %
- **Wash Frequency Decay Curves**: Line charts showing avg washes/month by cohort over time
- **Upgrade/Downgrade Flow**: Sankey diagram or stacked bar showing plan transitions
- **Channel Comparison**: Retention curves overlaid by acquisition channel
- **Plan Type Comparison**: Side-by-side retention for 월간 vs 연간 subscribers
- Output as interactive charts or static images

### Step 5: Identify Insights & Patterns
- Spot significant patterns:
  - Which cohorts retain best? What was different about that period?
  - Is there a "Month X" cliff where most churn happens?
  - Do 연간 plan subscribers show different wash frequency patterns?
  - Which acquisition channels produce the highest-LTV subscribers?
  - Does wash frequency decay predict churn? What is the threshold?
  - Are upgrade patterns correlated with specific engagement triggers?
- Highlight surprising findings and deviations
- Compare cohort performance to establish baselines

### Step 6: Suggest Follow-Up Research
- Recommend qualitative research methods:
  - Targeted interviews with churning subscribers from worst-performing cohorts
  - Post-wash surveys with engaged vs declining-frequency subscribers
  - Session replays of booking flow for low-engagement cohorts
  - Win/loss analysis: Why do some subscribers upgrade while others downgrade?
- Design follow-up quantitative studies
- Suggest A/B tests or retention experiments

## Usage Examples

**Example 1: Upload Subscriber CSV Data**
```
Upload subscriber_data.csv with columns: subscriber_id, signup_date,
plan_type, acquisition_channel, monthly_washes, current_status

Request: "Analyze retention patterns by signup month and plan type.
Which cohorts are churning fastest?"
```

**Example 2: Wash Frequency Analysis**
```
"I have monthly wash counts per subscriber from Jan-Dec 2025.
Analyze wash frequency decay curves. At what point do subscribers
start washing less, and does that predict churn?"
```

**Example 3: Channel Performance**
```
Upload channel_cohorts.xlsx with acquisition channel data.

Request: "Compare subscriber retention by acquisition channel.
Which channels produce the most durable subscribers?"
```

## Key Capabilities

- **Data Reading**: Import CSV, Excel, JSON, SQL query results
- **Retention Analysis**: Calculate and visualize retention rates over time by plan type and channel
- **Wash Frequency Decay**: Track usage decline patterns as a leading churn indicator
- **Plan Transition Tracking**: Monitor upgrade, downgrade, and reactivation flows
- **Cohort Comparison**: Compare metrics across subscriber cohort groups
- **Anomaly Detection**: Flag unusual patterns or drop-offs
- **Python Scripts**: Generate reusable analysis code for ongoing analysis
- **Visualizations**: Create heatmaps, charts, and interactive dashboards
- **Research Design**: Suggest targeted follow-up studies and interview approaches

## Tips for Best Results

1. **Include time dimension**: Provide data across multiple months of subscriber history
2. **Define cohort clearly**: Specify cohort grouping (signup month, plan type, channel)
3. **Provide context**: Explain product changes, pricing changes, partner network expansions
4. **Multiple metrics**: Include retention, wash frequency, plan type, revenue, satisfaction
5. **Sufficient data**: At least 3-4 monthly cohorts for meaningful pattern identification
6. **Request specific output**: Ask for visualizations, Python scripts, or research recommendations

## Output Format

You'll receive:
- **Data Summary**: Cohort overview and data quality assessment
- **Retention Analysis**: Retention heatmap + curves by plan type and channel
- **Subscription Metrics**: Wash frequency decay curves, upgrade/downgrade patterns
- **Pattern Identification**: 2-3 significant insights from the data
- **Research Recommendations**: Specific qualitative and quantitative follow-ups
- **Analysis Scripts** (if requested): Python code for reproducible analysis
- **Next Steps**: Prioritized actions based on findings

---

### Further Reading

- [Cohort Analysis 101: How to Reduce Churn and Make Better Product Decisions](https://www.productcompass.pm/p/cohort-analysis)
- [The Product Analytics Playbook: AARRR, HEART, Cohorts & Funnels for PMs](https://www.productcompass.pm/p/the-product-analytics-playbook-aarrr)
- [Are You Tracking the Right Metrics?](https://www.productcompass.pm/p/are-you-tracking-the-right-metrics)
