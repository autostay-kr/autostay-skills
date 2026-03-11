---
name: retention-playbook
description: "Design a retention playbook for Autostay — churn signal detection, engagement triggers, win-back campaigns, and lifecycle communication plans. Use when subscriber churn is increasing, planning retention initiatives, designing win-back campaigns, or building lifecycle automation."
---

# Retention Playbook — Autostay

## Purpose
Design a comprehensive retention playbook for Autostay's car wash subscription service, covering churn signal detection, lifecycle engagement triggers, win-back campaigns, communication plans, and retention experiments.

## Domain Context

**Autostay** — O2O 세차 구독 서비스
- 비즈니스 모델: 월간/연간 구독으로 세차 서비스 제공
- 고객: 차량 소유자 (구독자)
- 공급: 파트너 세차장 네트워크
- 핵심 지표: MRR, 구독자 수, Churn Rate, LTV, NPS
- O2O 루프: 온라인 예약 → 오프라인 세차 → 디지털 피드백 루프

## When to Use
- Subscriber churn is increasing or above target
- Planning retention initiatives for the quarter
- Designing win-back campaigns for churned subscribers
- Building lifecycle automation and communication flows
- Onboarding new team members on retention strategy
- Triggers: retention playbook, reduce churn, win-back, lifecycle, engagement, retention strategy

## Instructions

Given the following context and data: **$ARGUMENTS**

If the user provides data files (churn data, subscriber activity logs, NPS results), read and analyze them directly. Use the analysis to prioritize which playbook sections are most urgent.

### 1. Churn Signal Identification

Define the early warning signals that predict subscriber churn. Each signal should have a detection method and intervention timeline.

| Signal | Detection Criteria | Risk Level | Detection Method | Intervention Window |
|---|---|---|---|---|
| **Usage Drop** | Wash frequency drops >50% vs subscriber's average over 2 weeks | High | Automated monitoring | 3-7 days |
| **Downgrade Inquiry** | Subscriber views plan comparison page or contacts support about downgrade | Medium | Event tracking + CRM | 24-48 hours |
| **Service Complaints** | 2+ negative reviews or support tickets in 30 days | High | Support ticket analysis | Immediate |
| **Payment Failure** | Failed payment attempt, card expired, insufficient funds | High | Payment processor alerts | Same day |
| **Low Engagement** | No app opens for 14+ days, no bookings for 21+ days | Medium | App analytics | 7-14 days |
| **Negative NPS** | NPS response of 0-6 (Detractor) | Medium-High | Post-wash survey | 24-48 hours |
| **Seasonal Risk** | Approaching 장마철 (rainy season) or winter — lower perceived wash value | Medium | Calendar-based | 2-4 weeks before |
| **Contract End Approaching** | 연간 plan within 30 days of renewal | Medium | Billing system | 30 days |

**Composite Churn Risk Score:**
Combine signals into a single risk score (0-100) for each subscriber:
- 0-30: Low risk (Green) — maintain standard engagement
- 31-60: Medium risk (Yellow) — trigger proactive outreach
- 61-100: High risk (Red) — immediate intervention required

### 2. Engagement Triggers by Lifecycle Stage

Design engagement touchpoints for each stage of the subscriber lifecycle:

**Week 1: Onboarding (Critical)**
| Day | Trigger | Action | Channel | Goal |
|---|---|---|---|---|
| Day 0 | Subscription activated | Welcome message + first booking guide | Push + KakaoTalk | Set expectations |
| Day 1 | No booking yet | "Book your first wash" nudge with nearby partners | Push notification | First booking within 48h |
| Day 2 | First booking made | Booking confirmation + what to expect guide | KakaoTalk | Reduce no-show anxiety |
| Day 3 | First wash completed | Post-wash survey + "How was it?" | In-app + KakaoTalk | Collect feedback, build habit |
| Day 5 | First wash done | "Your car stays clean" — suggest booking frequency | Push notification | Establish rhythm |
| Day 7 | End of week 1 | Weekly summary + tips for getting the most from subscription | Email | Reinforce value |

**Week 2-4: Habit Formation**
| Trigger | Action | Channel | Goal |
|---|---|---|---|
| 2nd wash completed | Celebrate milestone + share wash savings vs per-wash pricing | In-app message | Value reinforcement |
| No booking for 10 days | "Your car misses you" — personalized rebooking nudge | Push + KakaoTalk | Prevent usage decay |
| 3rd wash completed | Invite to rate favorite partner + earn loyalty points | In-app | Deepen partner connection |
| End of Month 1 | Monthly summary: washes completed, money saved, next month preview | Email + KakaoTalk | Value demonstration |

**Month 2-3: Value Realization**
| Trigger | Action | Channel | Goal |
|---|---|---|---|
| Wash frequency on target | Positive reinforcement + upgrade teaser (if monthly plan) | In-app | Upgrade consideration |
| Wash frequency declining | "Try a different partner" or "Schedule recurring bookings" | Push notification | Re-engage |
| 월간 plan renewal approaching | Upgrade offer: 연간 plan savings breakdown | KakaoTalk + Email | Convert to annual |
| Positive NPS response | Ask for referral + offer referral reward | In-app + KakaoTalk | Viral growth |

**Month 4+: Retention & Expansion**
| Trigger | Action | Channel | Goal |
|---|---|---|---|
| 100 days as subscriber | Loyalty milestone celebration + exclusive benefit | KakaoTalk | Emotional connection |
| Consistent high usage | VIP recognition + premium partner access | In-app | Reward loyalty |
| Usage declining gradually | Proactive check-in: "Anything we can improve?" | KakaoTalk (personal) | Early churn prevention |
| 연간 renewal 60 days out | Early renewal offer with bonus (extra washes, discount) | Email + KakaoTalk | Lock in renewal |
| 연간 renewal 30 days out | Renewal reminder + savings summary for the year | KakaoTalk + Push | Ensure renewal |

### 3. Win-Back Scenarios

Design specific win-back campaigns based on churn reason. Each scenario includes the offer, messaging, timing, and expected conversion rate.

#### Scenario A: Price-Sensitive Churn
- **Signal**: Cited price as reason, or downgraded before canceling
- **Wait Period**: 7 days after churn
- **Offer**: 첫 달 50% 할인 (50% off first month back) or lite plan option
- **Message**: "세차 구독의 가치를 다시 경험해보세요. 첫 달 반값으로 돌아오실 수 있어요."
- **Channel**: KakaoTalk + SMS
- **Follow-up**: Day 14 — last chance reminder
- **Expected Win-Back Rate**: 10-15%

#### Scenario B: Service Quality Churn
- **Signal**: Negative reviews, quality complaints before cancellation
- **Wait Period**: After quality issue is resolved (partner retrained or replaced)
- **Offer**: Free premium wash at a top-rated partner
- **Message**: "고객님의 피드백을 반영하여 서비스를 개선했습니다. 프리미엄 세차 1회를 무료로 제공합니다."
- **Channel**: Personal KakaoTalk message from CS team
- **Follow-up**: Post-wash quality check call
- **Expected Win-Back Rate**: 15-25%

#### Scenario C: Competitor Switch
- **Signal**: Mentioned competitor, or coincides with competitor promotion
- **Wait Period**: 30 days (let competitor honeymoon period end)
- **Offer**: Competitive match + exclusive feature (priority booking, partner choice)
- **Message**: "Autostay만의 파트너 네트워크와 편리한 예약으로 돌아오세요. 특별 혜택을 준비했습니다."
- **Channel**: Email + KakaoTalk
- **Follow-up**: Day 60 — second touch with different angle
- **Expected Win-Back Rate**: 5-10%

#### Scenario D: Inactive/Low-Usage Churn
- **Signal**: Stopped using before canceling, low wash frequency
- **Wait Period**: 14 days
- **Offer**: "다시 시작" package — 2 free washes + flexible scheduling tips
- **Message**: "바쁜 일상에서도 깨끗한 차를 유지하는 방법을 알려드릴게요. 무료 세차 2회와 함께 다시 시작해보세요."
- **Channel**: Push notification + KakaoTalk
- **Follow-up**: Day 30 — final outreach
- **Expected Win-Back Rate**: 8-12%

#### Scenario E: Moved/No Nearby Partner
- **Signal**: Reported no convenient partner location
- **Wait Period**: When new partner is added in their area
- **Offer**: Notification of new partner + welcome-back wash
- **Message**: "[지역명]에 새로운 파트너 세차장이 오픈했습니다! 환영 세차 1회를 무료로 제공합니다."
- **Channel**: KakaoTalk + SMS
- **Follow-up**: N/A (triggered by network expansion)
- **Expected Win-Back Rate**: 20-30%

### 4. Lifecycle Communication Plan

Define the communication framework across the subscriber lifecycle:

**Channel Mix & Usage:**

| Channel | Best For | Frequency Limit | Personalization Level |
|---|---|---|---|
| **Push Notification** | Urgent nudges, booking reminders, time-sensitive offers | Max 3/week | Medium (name, partner, timing) |
| **KakaoTalk** | Primary communication, offers, milestones, win-back | Max 4/month | High (full personalization) |
| **Email** | Monthly summaries, detailed content, renewal notices | Max 2/month | Medium (segment-based) |
| **SMS** | Payment failures, critical alerts, win-back last resort | As needed | Low (transactional) |
| **In-App** | Feature discovery, celebrations, contextual tips | Contextual | High (behavior-based) |

**Communication Principles:**
1. **Value-first**: Every message should demonstrate or deliver value, not just ask for engagement
2. **Right channel, right moment**: Match urgency and personalization to the channel
3. **Frequency respect**: Never exceed channel frequency limits — over-communication accelerates churn
4. **Personalization**: Use subscriber name, favorite partner, wash history, and savings data
5. **Bilingual**: Primary in Korean, with personalized data points

**Monthly Communication Calendar Template:**

| Week | Monday | Wednesday | Friday |
|---|---|---|---|
| Week 1 | Booking reminder (Push) | Tips/content (KakaoTalk) | — |
| Week 2 | — | Engagement nudge if inactive (Push) | — |
| Week 3 | Monthly summary (Email) | Partner spotlight (KakaoTalk) | — |
| Week 4 | — | Referral/upgrade prompt (In-app) | — |

### 5. Retention Experiments

Design 3-5 experiments to test retention hypotheses:

#### Experiment 1: Onboarding Concierge
- **Hypothesis**: Subscribers who receive a personal onboarding call within 24h of signup will have 20% higher 3-month retention than those who receive only automated onboarding.
- **Test Design**: Split new subscribers 50/50. Control: standard automated onboarding. Variant: automated + personal KakaoTalk message from concierge offering booking help.
- **Duration**: 4 months (1 month enrollment + 3 months observation)
- **Sample Size**: 200 subscribers per group (400 total)
- **Success Metric**: 3-month retention rate (variant > control by >10pp)
- **Guardrail**: CAC (concierge cost should not exceed LTV improvement)

#### Experiment 2: Wash Frequency Rewards
- **Hypothesis**: Subscribers who receive progressive rewards for wash frequency (3rd wash = badge, 5th = bonus wash, 10th = premium upgrade trial) will maintain higher wash frequency and have 15% lower churn.
- **Test Design**: A/B test on existing subscribers. Control: no reward system. Variant: gamified wash frequency rewards.
- **Duration**: 3 months
- **Sample Size**: 300 per group
- **Success Metric**: Monthly churn rate, average washes per subscriber
- **Guardrail**: Per-wash economics (bonus washes cost)

#### Experiment 3: Annual Plan Incentive Timing
- **Hypothesis**: Offering the 연간 plan upgrade at the end of Month 2 (when value is proven) converts better than at signup or Month 1.
- **Test Design**: Three groups — upgrade offer at signup, end of Month 1, end of Month 2. Track conversion to annual plan.
- **Duration**: 3 months enrollment + 1 month observation
- **Sample Size**: 200 per group (600 total)
- **Success Metric**: Monthly-to-annual conversion rate
- **Guardrail**: Overall churn (ensure the offer doesn't create pressure that causes cancellation)

#### Experiment 4: Partner Quality Matching
- **Hypothesis**: Matching subscribers to their highest-rated nearby partner (vs showing all partners equally) increases satisfaction and reduces quality-related churn by 25%.
- **Test Design**: A/B test on booking flow. Control: all partners shown equally. Variant: personalized partner recommendation based on ratings and proximity.
- **Duration**: 2 months
- **Sample Size**: 500 per group
- **Success Metric**: Post-wash NPS, quality-related churn rate
- **Guardrail**: Partner utilization balance (avoid overloading top partners)

#### Experiment 5: Pre-Churn Save Offer
- **Hypothesis**: Subscribers flagged as high churn risk (score >60) who receive a proactive "stay" offer (1 month free or plan discount) will retain at 30% higher rate than those who receive no intervention.
- **Test Design**: Split high-risk subscribers. Control: no intervention. Variant: proactive save offer via KakaoTalk.
- **Duration**: 2 months
- **Sample Size**: 100 per group (limited by high-risk population)
- **Success Metric**: 60-day retention rate post-intervention
- **Guardrail**: Revenue impact (cost of free months vs saved MRR)

### 6. Retention Dashboard Metrics

Track these metrics to monitor retention playbook effectiveness:

**Primary Retention Metrics:**

| Metric | Definition | Target | Review Cadence |
|---|---|---|---|
| Monthly Subscriber Churn Rate | Churned / Start-of-month subscribers | <5% | Weekly |
| Net Revenue Retention (NRR) | (Start MRR + Expansion - Contraction - Churn) / Start MRR | >100% | Monthly |
| 3-Month Retention Rate | Subscribers active at Month 3 / Subscribers at Month 0 | >65% | Monthly |
| 12-Month Retention Rate | Subscribers active at Month 12 / Subscribers at Month 0 | >40% | Quarterly |

**Leading Indicators:**

| Metric | Definition | Alert Threshold | Review Cadence |
|---|---|---|---|
| Churn Risk Score Distribution | % of subscribers at Green/Yellow/Red risk | Red >15% | Weekly |
| Wash Frequency Trend | Avg washes/subscriber over rolling 4 weeks | <1.5/month | Weekly |
| First Wash Completion Rate | % of new subs completing first wash in 7 days | <65% | Weekly |
| NPS Trend | Rolling 30-day NPS | <30 | Monthly |
| Payment Failure Rate | Failed payments / Total payment attempts | >5% | Daily |

**Win-Back Metrics:**

| Metric | Definition | Target | Review Cadence |
|---|---|---|---|
| Win-Back Attempt Rate | Win-back campaigns sent / Total churned | >80% | Monthly |
| Win-Back Conversion Rate | Reactivated / Win-back campaigns sent | >10% | Monthly |
| Reactivated Subscriber Retention | % of won-back subs retained at 3 months | >50% | Quarterly |
| Win-Back Revenue | MRR from reactivated subscribers | Growing | Monthly |

## Tips for Best Results

- Provide current churn rate and churn reason distribution
- Share subscriber lifecycle data (signup dates, wash history, plan types)
- Include NPS or satisfaction survey results
- Mention existing retention initiatives and their performance
- Share communication channel preferences and engagement rates
- Specify team capacity for executing manual vs automated interventions

## Output Format

Save the complete retention playbook as a markdown document with all six sections. Prioritize sections based on the user's most urgent retention challenge. Include implementation timelines and ownership assignments where possible.

---

### Further Reading

- [Cohort Analysis 101: How to Reduce Churn and Make Better Product Decisions](https://www.productcompass.pm/p/cohort-analysis)
- [The Product Analytics Playbook: AARRR, HEART, Cohorts & Funnels for PMs](https://www.productcompass.pm/p/the-product-analytics-playbook-aarrr)
- [Funnel Analysis 101: How to Track and Optimize Your User Journey](https://www.productcompass.pm/p/funnel-analysis)
