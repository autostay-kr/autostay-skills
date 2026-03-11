---
name: analyze-feature-requests
description: "Analyze and prioritize feature requests from Autostay subscribers, app reviews, and partner feedback by theme, strategic alignment, impact, effort, and risk. Use when reviewing customer feature requests, triaging subscriber VOC, or making prioritization decisions."
---

## Analyze Feature Requests (Autostay)

Categorize, evaluate, and prioritize feature requests from Autostay subscribers, app store reviews, and partner feedback against product goals.

### Domain Context

**Autostay** — O2O 세차 구독 서비스
- 비즈니스 모델: 월간/연간 구독으로 세차 서비스 제공
- 고객: 차량 소유자 (구독자)
- 공급: 파트너 세차장 네트워크
- 핵심 지표: MRR, 구독자 수, Churn Rate, LTV, NPS
- O2O 루프: 온라인 예약 → 오프라인 세차 → 디지털 피드백 루프

Never allow customers to design solutions. Prioritize **opportunities (problems)**, not features. Use **Opportunity Score** (Dan Olsen) to evaluate customer-reported problems: Opportunity Score = Importance x (1 - Satisfaction), normalized to 0-1. See the `prioritization-frameworks` skill for full details and templates.

### Context

You are analyzing feature requests for **$ARGUMENTS** in the context of Autostay's car wash subscription service.

If the user provides files (spreadsheets, CSVs, app store reviews, VOC data, or documents with feature requests), read and analyze them directly. If data is in a structured format, consider creating a summary table.

### Autostay Theme Categories

When categorizing requests, use these Autostay-specific theme categories:

| Theme | Description | Examples |
|---|---|---|
| **예약 경험** | Booking flow, scheduling, availability, rescheduling | 예약 시간대 확대, 당일 예약, 예약 변경 편의성 |
| **세차 품질** | Wash quality, service options, detailing, damage | 세차 품질 균일화, 코팅 옵션, 세차 전후 사진 |
| **구독 가치** | Subscription plans, pricing, benefits, upgrades | 요금제 다양화, 가족 구독, 구독 혜택 확대 |
| **파트너 경험** | Partner tools, onboarding, revenue, operations | 파트너 대시보드, 정산 투명성, 운영 도구 |
| **결제/빌링** | Payment methods, billing, refunds, pricing | 결제 수단 추가, 자동 결제, 환불 프로세스 |
| **앱 UX** | App navigation, notifications, account management | 앱 속도 개선, 알림 설정, UI 개선 |

Requests may span multiple themes. Assign a primary theme and note secondary themes when applicable.

### Instructions

The user will describe their product goal and provide feature requests (subscriber VOC, app reviews, partner feedback, or a mix). Work through these steps:

1. **Understand the goal**: Confirm the product objective and desired outcomes that will guide prioritization. Reference Autostay metrics (MRR, Churn Rate, LTV, NPS).

2. **Identify the source**: Tag each request by source type:
   - **구독자 VOC**: Direct subscriber feedback (CS tickets, surveys, in-app feedback)
   - **앱 리뷰**: App store reviews (App Store, Google Play)
   - **파트너 피드백**: Feedback from partner car wash businesses

3. **Categorize requests into Autostay themes**: Group related requests using the theme categories above. Name each group clearly.

4. **Assess strategic alignment**: For each theme, evaluate how well it aligns with the stated goals and Autostay's subscription growth objectives.

5. **Prioritize the top 3 features** based on:
   - **Impact**: Subscriber value and number of users affected. Consider impact on MRR, Churn, and LTV.
   - **Effort**: Development and design resources required
   - **Risk**: Technical uncertainty, partner adoption risk, service quality risk
   - **Strategic alignment**: Fit with subscription growth and O2O loop optimization

6. **For each top feature**, provide:
   - Rationale (subscriber needs, partner needs, strategic alignment)
   - Alternative solutions worth considering
   - High-risk assumptions
   - How to test those assumptions with minimal effort

Think step by step. Save as markdown or create a structured output document.

---

### Further Reading

- [Kano Model: How to Delight Your Customers Without Becoming a Feature Factory](https://www.productcompass.pm/p/kano-model-how-to-delight-your-customers)
- [Continuous Product Discovery Masterclass (CPDM)](https://www.productcompass.pm/p/cpdm) (video course)
