---
name: subscription-health
description: "Analyze subscription business health for Autostay — MRR breakdown, conversion funnel, churn analysis, and revenue forecasting. Use when reviewing subscription metrics, diagnosing churn, planning growth initiatives, or preparing investor/board updates."
---

# Subscription Health Analysis — Autostay

## Purpose
Provide a comprehensive health check of Autostay's subscription business across revenue, conversion, churn, unit economics, and overall health scoring. Delivers actionable recommendations to improve subscription performance.

## Domain Context

**Autostay** — O2O 세차 구독 서비스
- 비즈니스 모델: 월간/연간 구독으로 세차 서비스 제공
- 고객: 차량 소유자 (구독자)
- 공급: 파트너 세차장 네트워크
- 핵심 지표: MRR, 구독자 수, Churn Rate, LTV, NPS
- O2O 루프: 온라인 예약 → 오프라인 세차 → 디지털 피드백 루프

## When to Use
- Monthly or quarterly subscription business reviews
- Diagnosing why churn is increasing or MRR is declining
- Planning growth initiatives with data-backed prioritization
- Preparing investor updates or board presentations
- Benchmarking subscription health against best practices
- Triggers: subscription health, MRR analysis, churn diagnosis, revenue review, business health

## Instructions

Given the following context and data: **$ARGUMENTS**

If the user provides data files (CSV, Excel, dashboards, or metrics summaries), read and analyze them directly. If no data is provided, ask the user for the key metrics or generate a template for them to fill in.

### 1. MRR Breakdown

Calculate and present the five components of MRR movement:

| MRR Component | Definition | Amount | % of Starting MRR |
|---|---|---|---|
| **Starting MRR** | MRR at the beginning of the period | - | 100% |
| **New MRR** | Revenue from newly acquired subscribers | + | |
| **Expansion MRR** | Revenue from upgrades (월간 → 연간, add-on services) | + | |
| **Contraction MRR** | Revenue lost from downgrades | - | |
| **Churned MRR** | Revenue lost from cancelled subscriptions | - | |
| **Net New MRR** | New + Expansion - Contraction - Churned | = | |
| **Ending MRR** | Starting + Net New | = | |

Visualize as a waterfall chart. Flag if Net New MRR is negative (business is shrinking).

**Key ratios to calculate:**
- Quick Ratio = (New MRR + Expansion MRR) / (Contraction MRR + Churned MRR)
  - >4 = Very healthy, 2-4 = Good, 1-2 = Needs attention, <1 = Shrinking
- Gross MRR Churn Rate = Churned MRR / Starting MRR
- Net MRR Churn Rate = (Churned MRR + Contraction MRR - Expansion MRR) / Starting MRR

### 2. Subscriber Conversion Funnel

Map the full subscriber journey and calculate conversion rates at each stage:

```
App Download → Registration → First Booking → Paid Subscription → 3-Month Retained → 12-Month Retained
```

| Stage | Count | Conversion Rate | Drop-off Rate | Benchmark |
|---|---|---|---|---|
| App Download | | 100% | - | - |
| Registration | | % of downloads | % drop | >30% |
| First Booking (trial/free wash) | | % of registrations | % drop | >20% |
| Paid Subscription | | % of first bookings | % drop | >15% |
| 3-Month Retained | | % of paid subs | % drop | >60% |
| 12-Month Retained | | % of paid subs | % drop | >35% |

For each drop-off point, identify:
- What barriers exist at this stage?
- What would a 10% improvement at this stage mean for MRR?
- What quick wins could improve conversion here?

### 3. Churn Analysis

Analyze churn across three dimensions:

**By Plan Type:**

| Plan Type | Subscribers | Churned | Churn Rate | Avg Tenure |
|---|---|---|---|---|
| 월간 (Monthly) | | | | |
| 연간 (Annual) | | | | |
| Total | | | | |

**By Tenure (subscriber age):**

| Tenure | Churned | Churn Rate | Key Churn Reason |
|---|---|---|---|
| Month 1 (0-30 days) | | | |
| Month 2-3 | | | |
| Month 4-6 | | | |
| Month 7-12 | | | |
| Month 12+ | | | |

**By Churn Reason:**

| Reason | Count | % of Total Churn | Preventable? |
|---|---|---|---|
| Price too high | | | Yes — test pricing/plans |
| Not using enough | | | Yes — engagement campaigns |
| Service quality issues | | | Yes — partner QA |
| Moved / no nearby partner | | | Partially — coverage expansion |
| Switched to competitor | | | Yes — competitive positioning |
| Payment failure (involuntary) | | | Yes — dunning optimization |
| Other | | | |

### 4. Unit Economics

Calculate and evaluate key unit economics:

| Metric | Value | Benchmark | Status |
|---|---|---|---|
| **LTV** (Lifetime Value) | ARPU / Monthly Churn Rate | >3x CAC | |
| **CAC** (Customer Acquisition Cost) | Marketing Spend / New Subscribers | Decreasing trend | |
| **LTV:CAC Ratio** | LTV / CAC | >3:1 healthy, >5:1 excellent | |
| **CAC Payback Period** | CAC / Monthly ARPU | <12 months | |
| **Per-Wash Economics** | Revenue per wash - Cost per wash | Positive margin | |
| **Gross Margin** | (Revenue - COGS) / Revenue | >50% | |

**Per-Wash Economics Detail:**
- Average revenue per wash = Monthly subscription fee / Average washes per subscriber per month
- Cost per wash = Partner payment + platform overhead per wash
- Per-wash margin = Revenue per wash - Cost per wash
- Flag if high-usage subscribers are unprofitable (unlimited plan risk)

### 5. Health Score

Assign a health score to each dimension:

| Dimension | Score | Key Indicator | Action Required |
|---|---|---|---|
| **Revenue Growth** | 🟢 / 🟡 / 🔴 | MRR trend, Quick Ratio | |
| **Conversion Efficiency** | 🟢 / 🟡 / 🔴 | Funnel conversion rates | |
| **Churn Control** | 🟢 / 🟡 / 🔴 | Monthly churn rate, churn trend | |
| **Unit Economics** | 🟢 / 🟡 / 🔴 | LTV:CAC, payback period | |
| **Engagement** | 🟢 / 🟡 / 🔴 | Wash frequency, DAU/MAU | |

**Scoring Criteria:**
- 🟢 Green: At or above benchmark, improving trend
- 🟡 Yellow: Below benchmark but stable, or at benchmark but declining
- 🔴 Red: Below benchmark and declining, requires immediate action

**Overall Health**: [🟢 Healthy / 🟡 Needs Attention / 🔴 Critical] with a 1-sentence summary.

### 6. Actionable Recommendations

Provide 3-5 prioritized recommendations based on the analysis:

For each recommendation:

| # | Recommendation | Addresses | Expected Impact | Effort | Priority |
|---|---|---|---|---|---|
| 1 | [Specific action] | [Which health dimension] | [Quantified if possible] | [Low/Med/High] | [P0/P1/P2] |
| 2 | ... | ... | ... | ... | ... |

Each recommendation should include:
- **What**: Specific action to take
- **Why**: Which health score dimension it improves
- **How**: 2-3 concrete implementation steps
- **Impact**: Expected improvement in the target metric
- **Timeline**: When results should be visible

## Tips for Best Results

- Provide at least 3 months of MRR data for trend analysis
- Include subscriber counts by plan type and acquisition channel
- Share known churn reasons if you have exit survey data
- Include marketing spend data for CAC calculations
- Mention any recent pricing changes, promotions, or product launches
- Share partner wash center data for per-wash economics

## Output Format

Save the full analysis as a markdown document with all six sections. Include:
- Summary dashboard at the top with health scores
- Detailed analysis for each section
- Visualizations (waterfall charts, funnels, tables)
- Prioritized recommendations at the end
- If raw data is provided, generate Python scripts for reproducible analysis

---

### Further Reading

- [The North Star Framework 101](https://www.productcompass.pm/p/the-north-star-framework-101)
- [The Product Analytics Playbook: AARRR, HEART, Cohorts & Funnels for PMs](https://www.productcompass.pm/p/the-product-analytics-playbook-aarrr)
- [Are You Tracking the Right Metrics?](https://www.productcompass.pm/p/are-you-tracking-the-right-metrics)
- [Cohort Analysis 101: How to Reduce Churn and Make Better Product Decisions](https://www.productcompass.pm/p/cohort-analysis)
