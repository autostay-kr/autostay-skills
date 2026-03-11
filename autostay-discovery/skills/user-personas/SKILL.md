---
name: user-personas
description: "Create refined user personas for Autostay subscribers from research data — with pre-built archetypes, JTBD, pains, gains, and unexpected insights. Use when building subscriber personas from survey data, creating user profiles from research, or segmenting users for product decisions."
---

# User Personas (Autostay)

## Purpose
Create detailed, actionable subscriber personas for Autostay's car wash subscription service. This skill includes pre-built persona archetypes specific to Autostay and generates research-backed personas with jobs-to-be-done, pain points, desired outcomes, and unexpected behavioral insights to guide product decisions.

### Domain Context

**Autostay** — O2O 세차 구독 서비스
- 비즈니스 모델: 월간/연간 구독으로 세차 서비스 제공
- 고객: 차량 소유자 (구독자)
- 공급: 파트너 세차장 네트워크
- 핵심 지표: MRR, 구독자 수, Churn Rate, LTV, NPS
- O2O 루프: 온라인 예약 → 오프라인 세차 → 디지털 피드백 루프

## Pre-Built Subscriber Persona Archetypes

Use these archetypes as starting points. Refine or replace them based on actual research data when available.

---

### Archetype 1: 바쁜 직장인 (Busy Professional)
- **연령대**: 30-40대
- **특징**: 장시간 근무, 시간 부족, 효율 중시
- **차량**: 중형 세단 또는 SUV (출퇴근용)
- **Primary JTBD**: "바쁜 일상에서 차량 관리에 신경 쓰지 않아도 차가 항상 깨끗했으면 좋겠다."
- **세차 빈도**: 월 1-2회 (원하는 빈도는 더 높지만 시간 부족)
- **핵심 Pain**: 세차장 방문에 시간을 빼앗기는 것, 예약/대기 불편
- **구독 동기**: 시간 절약, "알아서 관리되는" 편리함
- **Churn Risk**: 구독을 잊어버리고 사용하지 않으면 해지

---

### Archetype 2: 차량 관리 마니아 (Car Care Enthusiast)
- **연령대**: 20-40대
- **특징**: 차량을 취미이자 자아의 연장으로 여김, 세차 품질에 민감
- **차량**: 외제차 또는 고급 국산차, 종종 튜닝/관리에 투자
- **Primary JTBD**: "내 차를 전문가 수준으로 관리하되, 매번 직접 하지 않아도 되면 좋겠다."
- **세차 빈도**: 주 1회 이상 (손세차 선호)
- **핵심 Pain**: 세차 품질 불균일, 미세 스크래치 우려, 내가 원하는 수준의 디테일링 부족
- **구독 동기**: 프리미엄 서비스 접근, 다양한 세차 옵션
- **Churn Risk**: 한 번이라도 품질 불만이 생기면 즉시 이탈

---

### Archetype 3: 가성비 추구형 (Value Seeker)
- **연령대**: 20-30대
- **특징**: 비용 대비 효용을 꼼꼼히 따짐, 할인/혜택에 민감
- **차량**: 소형차 또는 준중형 (경제적 선택)
- **Primary JTBD**: "세차를 저렴하게, 하지만 나쁘지 않은 품질로 정기적으로 받고 싶다."
- **세차 빈도**: 월 1-2회 (비용 때문에 자제)
- **핵심 Pain**: 세차 비용 부담, 구독료 대비 실제 이용 횟수가 적으면 손해 느낌
- **구독 동기**: 건당 비용보다 구독이 저렴하다는 계산
- **Churn Risk**: 한 달이라도 세차를 안 하면 "손해 본다"고 느끼고 해지

---

### Archetype 4: 신차 오너 (New Car Owner)
- **연령대**: 전 연령대
- **특징**: 최근 신차 구매, 차량 관리에 높은 관심과 동기 (점차 감소)
- **차량**: 신차 (구매 후 1년 이내)
- **Primary JTBD**: "새 차를 오래도록 새것처럼 유지하고 싶다."
- **세차 빈도**: 높음 (구매 직후) → 점차 감소
- **핵심 Pain**: 신차 관리 방법을 잘 모름, 잘못된 세차로 차량 손상될까 걱정
- **구독 동기**: 체계적인 차량 관리, 코팅/왁싱 같은 부가 서비스
- **Churn Risk**: 신차의 "새것 느낌"이 사라지면 관심과 함께 구독도 감소

---

## Instructions

You are an experienced product researcher specializing in persona development and user research synthesis for Autostay.

### Input
Your task is to create or refine subscriber personas for **$ARGUMENTS**.

If the user provides CSV, Excel, survey responses, interview transcripts, or other research data files, read and analyze them directly. Extract key patterns, demographics, motivations, and behaviors.

If no research data is provided, use the pre-built archetypes above as a starting point and customize based on the user's description of their subscribers.

### Analysis Steps (Think Step by Step)

1. **Data Collection**: Read and review all provided research data and documents
2. **Pattern Recognition**: Identify recurring characteristics, goals, pain points, and behaviors across subscribers
3. **Archetype Matching**: Map patterns to the pre-built archetypes or identify new archetypes not covered
4. **Segmentation**: Group similar subscribers into distinct personas based on shared motivations and jobs-to-be-done
5. **Enrichment**: For each persona, synthesize data into a coherent profile with Autostay-specific context
6. **Validation**: Cross-reference insights to ensure personas are grounded in actual research findings

### Output Structure

For each persona (3-4 recommended), provide:

**Persona Name & Demographics**
- Age range, occupation, key characteristics, car type
- Archetype match (which pre-built archetype, if applicable, or a new one)

**Primary Job-to-be-Done**
- The core outcome the subscriber is trying to achieve
- Context and frequency of the job (how often, when, where)

**Top 3 Pain Points**
- Specific challenges or obstacles in their car care journey
- Impact and severity of each pain
- Where in the O2O loop the pain occurs (온라인 예약? 오프라인 세차? 디지털 피드백?)

**Top 3 Desired Gains**
- Benefits, outcomes, or solutions the subscriber seeks
- How they measure success (what "잘 관리된 차"means to them)

**One Unexpected Insight**
- A counterintuitive behavioral pattern or motivation derived from the data
- Why this matters for Autostay product decisions

**Subscription Behavior**
- Subscription plan preference (monthly vs. annual)
- Usage frequency vs. available frequency
- Churn risk level and triggers
- LTV potential (High/Medium/Low)

**Product Fit Assessment**
- How Autostay addresses (or could address) this persona's needs
- Potential friction points or unmet needs in the O2O loop

## Best Practices

- Ground all insights in actual data; avoid assumptions
- Use direct quotes from research when available
- Identify behavioral patterns, not just demographic categories
- Make personas distinct and non-overlapping where possible
- Flag any data gaps or areas requiring additional research
- Always consider both online (app) and offline (car wash) touchpoints

---

### Further Reading

- [User Interviews: The Ultimate Guide to Research Interviews](https://www.productcompass.pm/p/interviewing-customers-the-ultimate)
- [Market Research: Advanced Techniques](https://www.productcompass.pm/p/market-research-advanced-techniques)
- [Jobs-to-be-Done Masterclass with Tony Ulwick and Sabeen Sattar](https://www.productcompass.pm/p/jobs-to-be-done-masterclass-with) (video course)
