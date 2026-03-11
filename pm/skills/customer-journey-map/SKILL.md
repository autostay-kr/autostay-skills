---
name: customer-journey-map
description: "Create an end-to-end customer journey map for Autostay subscribers with pre-built stages (인지, 탐색, 가입, 이용, 유지, 확산), touchpoints, emotions, pain points, and opportunities. Use when mapping the subscriber experience, identifying friction points, improving onboarding, or visualizing the O2O user journey."
---

## Customer Journey Map (Autostay)

Map the end-to-end Autostay subscriber experience from awareness through advocacy, identifying emotions, pain points, and improvement opportunities at each stage of the O2O car wash subscription journey.

### Domain Context

**Autostay** — O2O 세차 구독 서비스
- 비즈니스 모델: 월간/연간 구독으로 세차 서비스 제공
- 고객: 차량 소유자 (구독자)
- 공급: 파트너 세차장 네트워크
- 핵심 지표: MRR, 구독자 수, Churn Rate, LTV, NPS
- O2O 루프: 온라인 예약 → 오프라인 세차 → 디지털 피드백 루프

### Context

You are creating a customer journey map for **$ARGUMENTS** in the context of Autostay's car wash subscription service.

If the user provides files (interview transcripts, survey data, analytics, support tickets, or existing journey maps), read them first. Use web search to understand the product if a URL is provided.

### Pre-Built Journey Stages

Use these Autostay-specific journey stages as the default framework. Customize based on the user's specific needs.

| Stage | Description | Key Questions |
|---|---|---|
| **인지 (Awareness)** | 잠재 고객이 Autostay를 처음 알게 되는 단계 | 어떤 채널로 알게 되나? 어떤 메시지가 관심을 끄나? |
| **탐색 (Exploration)** | 구독 서비스를 탐색하고 비교하는 단계 | 어떤 정보를 찾나? 경쟁사와 무엇을 비교하나? |
| **가입 (Subscription)** | 구독을 결정하고 가입하는 단계 | 가입 과정이 쉬운가? 어떤 요금제를 선택하나? |
| **이용 (Usage)** | 세차 예약 → 방문 → 세차 → 피드백의 O2O 루프 | 예약이 편한가? 세차 품질은? 만족스러운가? |
| **유지 (Retention)** | 구독을 지속하거나 이탈을 고려하는 단계 | 왜 유지하나? 이탈 트리거는? 가치를 느끼나? |
| **확산 (Advocacy)** | 주변에 추천하고 서비스를 확산하는 단계 | 누구에게 추천하나? 어떻게 소개하나? |

### Instructions

1. **Define the persona**: Who is traveling this journey? Use a specific Autostay subscriber persona with JTBD, not a generic user. Reference archetypes from the `user-personas` skill if available (바쁜 직장인, 차량 관리 마니아, 가성비 추구형, 신차 오너).

2. **Map each journey stage** with the following details:

   #### 인지 (Awareness)
   | Element | Details |
   |---|---|
   | **터치포인트** | SNS 광고, 지인 추천, 블로그/리뷰, 검색 광고, 오프라인 세차장 안내 |
   | **사용자 행동** | 광고 클릭, 검색, 지인에게 질문 |
   | **생각 & 질문** | "세차 구독이 뭐지?", "구독이 건당보다 나을까?" |
   | **감정** | 호기심, 반신반의 |
   | **Pain Points** | 구독 세차 개념이 생소함, 신뢰 부족 |
   | **기회** | 명확한 가치 전달, 후기/사례 활용 |

   #### 탐색 (Exploration)
   | Element | Details |
   |---|---|
   | **터치포인트** | 앱스토어, 웹사이트, 리뷰 페이지, 요금제 비교 |
   | **사용자 행동** | 앱 다운로드, 요금제 비교, 리뷰 확인, 근처 세차장 검색 |
   | **생각 & 질문** | "내 근처에 세차장이 있나?", "어떤 요금제가 맞지?", "품질은 괜찮을까?" |
   | **감정** | 탐색적 관심, 비교 불안 |
   | **Pain Points** | 요금제 차이 이해 어려움, 근처 파트너 세차장 정보 부족 |
   | **기회** | 간편한 요금제 비교, 위치 기반 파트너 노출, 무료 체험 |

   #### 가입 (Subscription)
   | Element | Details |
   |---|---|
   | **터치포인트** | 앱 가입 플로우, 결제 화면, 환영 메시지 |
   | **사용자 행동** | 회원가입, 요금제 선택, 결제 정보 입력, 첫 예약 |
   | **생각 & 질문** | "해지가 쉬운가?", "첫 달에 못 쓰면 어떡하지?", "어떤 요금제가 나한테 맞지?" |
   | **감정** | 기대감, 약간의 불안 (결제 commitment) |
   | **Pain Points** | 가입 절차가 길면 이탈, 요금제 선택 장애 |
   | **기회** | 원클릭 가입, 첫 이용 유도 온보딩, 추천 요금제 |

   #### 이용 (Usage) -- O2O 루프 핵심
   | Element | Details |
   |---|---|
   | **터치포인트** | 앱 예약 화면, 알림, 파트너 세차장 방문, 세차 완료 알림, 피드백/평가 |
   | **사용자 행동** | 예약 → 방문 → 세차 대기/수령 → 결과 확인 → 평가 |
   | **생각 & 질문** | "언제 시간이 되지?", "세차가 잘 됐나?", "다음에도 이 세차장 가야지/바꿔야지" |
   | **감정** | 편리함 (좋은 경험), 실망 (나쁜 경험), 무관심 (반복 이용) |
   | **Pain Points** | 원하는 시간대 예약 불가, 세차 품질 불균일, 오프라인 대기 시간, 세차 결과 확인 어려움 |
   | **기회** | 실시간 예약 가용성, 세차 전후 사진, 품질 보증, 단골 세차장 기능 |

   #### 유지 (Retention)
   | Element | Details |
   |---|---|
   | **터치포인트** | 월간 리포트, 갱신 알림, 혜택/프로모션, CS |
   | **사용자 행동** | 이용 내역 확인, 요금제 변경 고려, 이탈 고민, 갱신 |
   | **생각 & 질문** | "이번 달에 충분히 썼나?", "구독료가 아깝지 않나?", "더 좋은 서비스 없나?" |
   | **감정** | 만족 (가치 체감 시), 의심 (미이용 시), 귀찮음 (관성 유지) |
   | **Pain Points** | 이용 빈도 부족 시 가치 의심, 품질 불만 누적, 경쟁사 비교 |
   | **기회** | 이용 리마인더, 미사용 시 혜택 제공, 연간 구독 전환 인센티브, 차량 관리 리포트 |

   #### 확산 (Advocacy)
   | Element | Details |
   |---|---|
   | **터치포인트** | 추천 프로그램, SNS 공유, 지인 대화 |
   | **사용자 행동** | 추천 코드 공유, 리뷰 작성, SNS 포스팅 |
   | **생각 & 질문** | "추천하면 나한테 혜택이 있나?", "이 서비스 괜찮다고 말해도 될까?" |
   | **감정** | 자부심 (만족 시), 무관심 (보통일 때) |
   | **Pain Points** | 추천 동기 부족, 추천 프로세스 번거로움 |
   | **기회** | 양면 추천 혜택, 간편한 공유 기능, 추천인 전용 혜택 |

3. **For each stage, document** (customize from the pre-built content above based on actual research data):
   - **Touchpoints**: Where the subscriber interacts with Autostay (app, website, partner car wash, notification, CS)
   - **User actions**: What they do at this stage
   - **Thoughts & questions**: What's on their mind
   - **Emotions**: How they feel — rate on a scale or describe qualitatively
   - **Pain points**: Friction, confusion, drop-off risks
   - **Opportunities**: How to improve the experience at this point

4. **Identify critical moments**:
   - **Aha moment**: When the subscriber first experiences the core value of Autostay (likely: first completed wash with visible quality)
   - **Moments of truth**: Decision points — first booking, first wash result, first renewal decision
   - **Churn triggers**: Unused subscription, quality complaint, competitor offer, price sensitivity

5. **Create the journey map table**:

   | Stage | 터치포인트 | 사용자 행동 | 감정 | Pain Point | 기회 |
   |---|---|---|---|---|---|

6. **Recommend prioritized improvements**:
   - Which pain points have the highest impact on conversion, retention, or churn?
   - What quick wins can improve the subscriber experience immediately?
   - What requires deeper investment but has the biggest payoff for MRR and LTV?

Think step by step. Save as a markdown document. For visual journey maps, suggest the user create one in Miro or FigJam using this analysis as the foundation.

---

### Further Reading

- [User Journey Mapping 101](https://www.productcompass.pm/p/user-journey-mapping-101)
- [Funnel Analysis 101: How to Track and Optimize Your User Journey](https://www.productcompass.pm/p/funnel-analysis)
- [Market Research: Advanced Techniques](https://www.productcompass.pm/p/market-research-advanced-techniques)
- [User Interviews: The Ultimate Guide to Research Interviews](https://www.productcompass.pm/p/interviewing-customers-the-ultimate)
