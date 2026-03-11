---
name: metrics-dashboard
description: "Design a subscription KPI dashboard for Autostay with pre-built metric categories for Revenue, Growth, Retention, Operations, and Engagement. Use when creating a metrics dashboard, defining KPIs, setting up product analytics, or building a data monitoring plan."
---

## Product Metrics Dashboard — Autostay Subscription KPIs

Design a comprehensive subscription metrics dashboard with pre-built KPI categories tailored for Autostay's O2O car wash subscription business.

### Domain Context

**Autostay** — O2O 세차 구독 서비스
- 비즈니스 모델: 월간/연간 구독으로 세차 서비스 제공
- 고객: 차량 소유자 (구독자)
- 공급: 파트너 세차장 네트워크
- 핵심 지표: MRR, 구독자 수, Churn Rate, LTV, NPS
- O2O 루프: 온라인 예약 → 오프라인 세차 → 디지털 피드백 루프

### Context

You are designing a metrics dashboard for **$ARGUMENTS**.

If the user provides files (existing dashboards, analytics data, OKRs, or strategy docs), read them first.

### Metrics vs KPIs vs NSM

**Metrics** = all measurable things. **KPIs** = a few key quantitative metrics tracked over a longer period. **North Star Metric** = a single customer-centric KPI that is a leading indicator of business success.

**4 criteria for a good metric** (Ben Yoskovitz, *Lean Analytics*): (1) Understandable — creates a common language. (2) Comparative — over time, not a snapshot. (3) Ratio or Rate — more revealing than whole numbers. (4) Behavior-changing — the Golden Rule: "If a metric won't change how you behave, it's a bad metric."

For case studies and more detail: [Are You Tracking the Right Metrics?](https://www.productcompass.pm/p/are-you-tracking-the-right-metrics) by Ben Yoskovitz

### Pre-Built Autostay Subscription KPI Dashboard

Use the following five KPI categories as the starting template. Adjust based on the user's specific needs and data availability.

#### 1. Revenue Metrics

| Metric | Definition | Visualization | Target Range |
|---|---|---|---|
| **MRR** (Monthly Recurring Revenue) | Sum of all active subscription fees in the current month | Line chart (trend) | Growth month-over-month |
| **ARR** (Annual Recurring Revenue) | MRR × 12 | Big number + sparkline | - |
| **ARPU** (Avg Revenue Per User) | MRR / Total active subscribers | Line chart | Stable or growing |
| **Revenue by Plan Type** | MRR breakdown by 월간 vs 연간 plan | Stacked bar chart | - |
| **Expansion Revenue** | Revenue from plan upgrades and add-ons | Line chart | Growing share of MRR |

#### 2. Growth Metrics

| Metric | Definition | Visualization | Target Range |
|---|---|---|---|
| **New Subscribers** | Count of new paid subscriptions started in period | Bar chart (weekly/monthly) | Increasing trend |
| **CAC** (Customer Acquisition Cost) | Total marketing spend / New subscribers acquired | Line chart | Decreasing over time |
| **Signup-to-Paid Conversion** | Paid subscribers / App registrations × 100 | Funnel chart | >5% |
| **First Wash Completion Rate** | % of new subs who complete first wash within 7 days | Gauge | >70% |
| **Referral Rate** | % of new subscribers acquired via referral | Bar chart | Growing |

#### 3. Retention Metrics

| Metric | Definition | Visualization | Target Range |
|---|---|---|---|
| **Monthly Churn Rate** | Churned subscribers / Start-of-month subscribers × 100 | Line chart | <5% |
| **Net Revenue Retention (NRR)** | (Start MRR + Expansion - Contraction - Churn) / Start MRR × 100 | Line chart | >100% |
| **Cohort Retention Curves** | Retention % by signup month cohort over time | Retention heatmap | Flattening by Month 3 |
| **Annual Plan Renewal Rate** | Renewed annual subs / Expiring annual subs × 100 | Gauge | >80% |
| **Voluntary vs Involuntary Churn** | Split of churn by reason (cancel vs payment failure) | Stacked bar | Involuntary < 20% of churn |

#### 4. Operations Metrics

| Metric | Definition | Visualization | Target Range |
|---|---|---|---|
| **Washes per Day** | Total wash completions across all partners per day | Line chart | Increasing |
| **Partner Utilization Rate** | Wash slots filled / Total available slots × 100 | Bar chart by partner | 60-85% |
| **Average Wait Time** | Mean time from booking to wash completion | Line chart | <24 hours |
| **Partner Coverage** | % of subscribers within 15-min drive of a partner | Map / Gauge | >90% |
| **Service Quality Score** | Average post-wash rating (1-5 stars) | Line chart | >4.2 |

#### 5. Engagement Metrics

| Metric | Definition | Visualization | Target Range |
|---|---|---|---|
| **DAU/MAU Ratio** | Daily active users / Monthly active users | Line chart | >0.15 |
| **Booking Frequency** | Average wash bookings per subscriber per month | Distribution chart | >2x/month |
| **App Session Duration** | Average time per app session | Line chart | - |
| **Feature Adoption** | % of subscribers using key features (scheduling, favorites) | Bar chart | Growing |
| **NPS Score** | Net Promoter Score from post-wash surveys | Gauge + trend | >40 |

### Instructions

1. **Start from the pre-built KPIs above** — select and customize based on the user's specific needs:

   **North Star Metric**: Recommended: Monthly Active Subscribers or Total Washes Completed

   **Input Metrics** (3-5): First Wash Completion Rate, Booking Frequency, Partner Coverage, Churn Rate

   **Health Metrics**: NPS, Service Quality Score, Average Wait Time

   **Business Metrics**: MRR, CAC, LTV, NRR

2. **For each selected metric, finalize**:

   | Metric | Definition | Data Source | Visualization | Target | Alert Threshold |
   |---|---|---|---|---|---|
   | [Name] | [Exact calculation] | [Where the data comes from] | [Chart type] | [Goal value] | [When to trigger an alert] |

3. **Design the dashboard layout**:

   ```
   ┌─────────────────────────────────────────────────────────┐
   │  NORTH STAR: Monthly Active Subscribers — [Value]       │
   │  Trend: [↑/↓ X% vs last month]                         │
   ├────────────────────┬────────────────────────────────────┤
   │  New Subscribers   │  First Wash Rate                   │
   │  [Sparkline]       │  [Sparkline]                       │
   ├────────────────────┼────────────────────────────────────┤
   │  Booking Frequency │  Partner Coverage                  │
   │  [Sparkline]       │  [Sparkline]                       │
   ├────────────────────┴────────────────────────────────────┤
   │  RETENTION: [Churn] [NRR] [Cohort Heatmap]             │
   ├─────────────────────────────────────────────────────────┤
   │  OPERATIONS: [Washes/Day] [Utilization] [Wait Time]    │
   ├─────────────────────────────────────────────────────────┤
   │  REVENUE: [MRR] [ARPU] [CAC] [LTV]                     │
   └─────────────────────────────────────────────────────────┘
   ```

4. **Set review cadence**:
   - **Daily**: Washes/day, partner utilization, wait time, service quality
   - **Weekly**: New subscribers, booking frequency, churn events, engagement
   - **Monthly**: MRR, NRR, cohort retention, ARPU, NPS, North Star
   - **Quarterly**: LTV, CAC payback, annual renewal rate, strategic review

5. **Define alerts**:
   - Churn rate exceeds 7% in any week → Retention team
   - Partner utilization drops below 40% → Operations team
   - NPS drops below 30 → Product + Quality team
   - MRR growth stalls for 2 consecutive months → Leadership
   - First Wash Completion Rate drops below 60% → Onboarding team

6. **Recommend tools** based on the user's context:
   - Amplitude, Mixpanel, PostHog for product analytics
   - Looker, Metabase, Mode for SQL-based dashboards
   - Datadog, Grafana for operational health

Think step by step. Save the dashboard specification as a markdown document.

---

### Further Reading

- [The Ultimate List of Product Metrics](https://www.productcompass.pm/p/the-ultimate-list-of-product-metrics)
- [The North Star Framework 101](https://www.productcompass.pm/p/the-north-star-framework-101)
- [The Product Analytics Playbook: AARRR, HEART, Cohorts & Funnels for PMs](https://www.productcompass.pm/p/the-product-analytics-playbook-aarrr)
- [AARRR (Pirate) Metrics: The 5-Stage Framework for Growth](https://www.productcompass.pm/p/aarrr-pirate-metrics)
- [The Google HEART Framework: Your Guide to Measuring User-Centric Success](https://www.productcompass.pm/p/the-google-heart-framework)
- [Funnel Analysis 101: How to Track and Optimize Your User Journey](https://www.productcompass.pm/p/funnel-analysis)
- [Are You Tracking the Right Metrics?](https://www.productcompass.pm/p/are-you-tracking-the-right-metrics)
- [Continuous Product Discovery Masterclass (CPDM)](https://www.productcompass.pm/p/cpdm) (video course)
