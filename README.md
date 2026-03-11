# Autostay Skills

Autostay 전용 Claude 플러그인. PM + Marketing 스킬 통합.

> 개발자용 훅/커맨드는 [autostay-dev-skills](https://github.com/autostay-kr/autostay-dev-skills) (private)에 있습니다.

## 설치

### Claude Cowork (권장)

1. 좌측 하단 **Customize** 클릭
2. **Browse plugins** → **Personal** → **+**
3. **URL로 마켓플레이스 추가** 선택
4. 아래 둘 중 하나 입력
   - `https://github.com/autostay-kr/autostay-skills.git`
   - `https://raw.githubusercontent.com/autostay-kr/autostay-skills/main/.claude-plugin/marketplace.json`
5. 원하는 플러그인 Install:
   - **autostay-pm** — PM 스킬 (38개 스킬 + 18개 커맨드)
   - **autostay-marketing** — 마케팅 스킬 (31개)

### Claude Code (CLI)

```bash
claude plugin marketplace add autostay-kr/autostay-skills
claude plugin install autostay-pm@autostay-skills
claude plugin install autostay-marketing@autostay-skills
```

---

## PM 스킬 (autostay-pm)

### 빠른 시작

| 하고 싶은 일 | 커맨드 | 예시 |
|---|---|---|
| 새 기능 아이디어 발굴 | `/discover` | `/discover 프리미엄 디테일링 구독` |
| PRD 작성 | `/write-prd` | `/write-prd 다중 차량 가족 플랜` |
| 구독 가격 설계 | `/pricing` | `/pricing 월간/연간 티어 재설계` |
| 구독 성장 분석 | `/growth` | `/growth 월간 이탈률 8% 문제` |
| 경쟁사 분석 | `/battlecard` | `/battlecard 세차왕 vs Autostay` |
| OKR 수립 | `/plan-okrs` | `/plan-okrs 2026 Q2` |
| 유저 스토리 작성 | `/write-stories` | `/write-stories user 예약 시스템 개선` |

### 커맨드 (18개)

#### Discovery
| 커맨드 | 설명 |
|---|---|
| `/discover` | 아이디어 → 가정 식별 → 우선순위 디스커버리 사이클 |
| `/interview` | 구독자/파트너 인터뷰 준비 또는 요약 |
| `/triage-requests` | 구독자 VOC, 앱 리뷰, 파트너 피드백 분류 및 우선순위 |
| `/research-users` | 구독자 페르소나 + 고객 여정 맵 생성 |

#### Strategy
| 커맨드 | 설명 |
|---|---|
| `/strategy` | 구독 비즈니스 전략 캔버스 |
| `/pricing` | 구독 플랜 설계 (월간/연간, 티어, 번들) |
| `/plan-expansion` | 지역 확장 계획 |
| `/battlecard` | 세차 업계 경쟁사 배틀카드 |

#### Execution
| 커맨드 | 설명 |
|---|---|
| `/write-prd` | O2O 운영 섹션 포함 PRD 작성 |
| `/plan-okrs` | 구독 서비스 OKR 수립 |
| `/sprint` | 스프린트 계획/회고/릴리즈 노트 |
| `/write-stories` | 구독자/파트너 양면 유저 스토리 |
| `/test-scenarios` | 테스트 시나리오 생성 |
| `/pre-mortem` | 사전 위험 분석 |

#### Growth & Toolkit
| 커맨드 | 설명 |
|---|---|
| `/growth` | 구독 건강 분석 + 리텐션 전략 + 코호트 |
| `/analyze-subscribers` | 구독자 코호트, 건강 지표, KPI 대시보드 |
| `/north-star` | North Star Metric + 입력 지표 정의 |
| `/review-feedback` | 구독자/파트너 피드백 → 품질 분석 → 개선안 |

### 스킬 (38개)

커맨드 없이도 대화 중 자동 활성화됩니다.

- **Discovery (10)**: brainstorm-ideas-existing, identify-assumptions-existing, prioritize-assumptions, prioritize-features, analyze-feature-requests, opportunity-solution-tree, interview-script, summarize-interview, user-personas, customer-journey-map
- **Strategy (7)**: product-strategy, product-vision, pricing-strategy, lean-canvas, gtm-strategy, beachhead-segment, competitive-battlecard
- **Execution (10)**: create-prd, brainstorm-okrs, sprint-plan, release-notes, user-stories, job-stories, test-scenarios, pre-mortem, retro, prioritization-frameworks
- **Growth (8)**: north-star-metric, metrics-dashboard, cohort-analysis, ab-test-analysis, sql-queries, marketing-ideas, subscription-health, retention-playbook
- **Toolkit (3)**: grammar-check, partner-onboarding, service-quality-review

---

## Marketing 스킬 (autostay-marketing)

[coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills) 기반, 오토스테이 도메인 커스터마이징.

모든 스킬에 오토스테이 컨텍스트 (서비스, 시장, 톤, 채널, 시즈널리티)가 내장되어 있습니다.

### 스킬 (31개)

#### SEO (5)
| 스킬 | 설명 |
|---|---|
| seo-audit | 사이트 SEO 감사 및 개선 |
| ai-seo | AI 검색 최적화 (SGE, ChatGPT 등) |
| programmatic-seo | 프로그래매틱 SEO 페이지 설계 |
| schema-markup | 구조화 데이터 / Schema.org 마크업 |
| site-architecture | 사이트 구조 설계 및 내부 링크 |

#### CRO — 전환 최적화 (6)
| 스킬 | 설명 |
|---|---|
| page-cro | 랜딩 페이지 전환율 최적화 |
| form-cro | 폼/입력 전환 최적화 |
| popup-cro | 팝업/모달 전환 최적화 |
| signup-flow-cro | 가입 플로우 전환 최적화 |
| onboarding-cro | 온보딩 전환 최적화 |
| paywall-upgrade-cro | 업그레이드/페이월 전환 최적화 |

#### 카피 & 콘텐츠 (5)
| 스킬 | 설명 |
|---|---|
| copywriting | 마케팅 카피 작성 (헤드라인, CTA, 가치 제안) |
| copy-editing | 기존 카피 교정 및 개선 |
| content-strategy | 콘텐츠 전략 수립 |
| social-content | SNS 콘텐츠 작성 |
| ad-creative | 광고 크리에이티브 제작 |

#### 이메일 & 영업 (3)
| 스킬 | 설명 |
|---|---|
| cold-email | 콜드 이메일 작성 |
| email-sequence | 이메일 시퀀스 설계 (온보딩, 리텐션, 윈백) |
| sales-enablement | 세일즈 자료 제작 (원페이저, 케이스 스터디) |

#### 전략 & 분석 (6)
| 스킬 | 설명 |
|---|---|
| marketing-ideas | 마케팅 아이디어 브레인스토밍 |
| marketing-psychology | 마케팅 심리학 적용 |
| pricing-strategy | 가격 전략 설계 |
| launch-strategy | 런칭 전략 수립 |
| analytics-tracking | 분석 이벤트 트래킹 설계 |
| ab-test-setup | A/B 테스트 설계 및 셋업 |

#### 성장 & 리텐션 (4)
| 스킬 | 설명 |
|---|---|
| churn-prevention | 이탈 방지 (캔슬 플로우, 세이브 오퍼, 던닝) |
| referral-program | 추천/제휴 프로그램 설계 |
| revops | 레비뉴 오퍼레이션 |
| free-tool-strategy | 무료 도구 전략 (리드 생성) |

#### 기타 (2)
| 스킬 | 설명 |
|---|---|
| competitor-alternatives | 경쟁사 비교 페이지 작성 |
| paid-ads | 유료 광고 (네이버, 구글, 메타) |

---

## Product Marketing Context

`product-marketing-context.md` 파일에 오토스테이 도메인 정보가 정의되어 있습니다. 마케팅 스킬 실행 시 자동으로 참조됩니다.

수정이 필요하면 해당 파일을 직접 편집하세요.

## 기반

- PM: [pm-skills](https://github.com/phuryn/pm-skills) (Paweł Huryn) 기반
- Marketing: [marketingskills](https://github.com/coreyhaines31/marketingskills) (Corey Haines) 기반

## 라이선스

MIT
