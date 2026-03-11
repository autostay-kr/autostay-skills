# Autostay PM Skills

Autostay PM 전용 Claude 플러그인. 38개 스킬 + 18개 워크플로 커맨드.

> 개발자용 훅/커맨드는 [autostay-dev-skills](https://github.com/autostay-kr/autostay-dev-skills) (private)에 있습니다.

## 설치

### Claude Cowork (권장)

1. 좌측 하단 **Customize** 클릭
2. **Browse plugins** → **Personal** → **+**
3. **Add marketplace from GitHub** 선택
4. `autostay-kr/autostay-skills` 입력
5. **autostay-pm** Install

### Claude Code (CLI)

```bash
claude plugin marketplace add autostay-kr/autostay-skills
claude plugin install autostay-skills@autostay-pm
```

## 빠른 시작

| 하고 싶은 일 | 커맨드 | 예시 |
|---|---|---|
| 새 기능 아이디어 발굴 | `/discover` | `/discover 프리미엄 디테일링 구독` |
| PRD 작성 | `/write-prd` | `/write-prd 다중 차량 가족 플랜` |
| 구독 가격 설계 | `/pricing` | `/pricing 월간/연간 티어 재설계` |
| 구독 성장 분석 | `/growth` | `/growth 월간 이탈률 8% 문제` |
| 경쟁사 분석 | `/battlecard` | `/battlecard 세차왕 vs Autostay` |
| OKR 수립 | `/plan-okrs` | `/plan-okrs 2026 Q2` |
| 유저 스토리 작성 | `/write-stories` | `/write-stories user 예약 시스템 개선` |

## 커맨드 (18개)

### Discovery
| 커맨드 | 설명 |
|---|---|
| `/discover` | 아이디어 → 가정 식별 → 우선순위 디스커버리 사이클 |
| `/interview` | 구독자/파트너 인터뷰 준비 또는 요약 |
| `/triage-requests` | 구독자 VOC, 앱 리뷰, 파트너 피드백 분류 및 우선순위 |
| `/research-users` | 구독자 페르소나 + 고객 여정 맵 생성 |

### Strategy
| 커맨드 | 설명 |
|---|---|
| `/strategy` | 구독 비즈니스 전략 캔버스 |
| `/pricing` | 구독 플랜 설계 (월간/연간, 티어, 번들) |
| `/plan-expansion` | 지역 확장 계획 |
| `/battlecard` | 세차 업계 경쟁사 배틀카드 |

### Execution
| 커맨드 | 설명 |
|---|---|
| `/write-prd` | O2O 운영 섹션 포함 PRD 작성 |
| `/plan-okrs` | 구독 서비스 OKR 수립 |
| `/sprint` | 스프린트 계획/회고/릴리즈 노트 |
| `/write-stories` | 구독자/파트너 양면 유저 스토리 |
| `/test-scenarios` | 테스트 시나리오 생성 |
| `/pre-mortem` | 사전 위험 분석 |

### Growth & Toolkit
| 커맨드 | 설명 |
|---|---|
| `/growth` | 구독 건강 분석 + 리텐션 전략 + 코호트 |
| `/analyze-subscribers` | 구독자 코호트, 건강 지표, KPI 대시보드 |
| `/north-star` | North Star Metric + 입력 지표 정의 |
| `/review-feedback` | 구독자/파트너 피드백 → 품질 분석 → 개선안 |

## 스킬 (38개)

커맨드 없이도 대화 중 자동 활성화됩니다.

### Discovery (10)
brainstorm-ideas-existing, identify-assumptions-existing, prioritize-assumptions, prioritize-features, analyze-feature-requests, opportunity-solution-tree, interview-script, summarize-interview, user-personas, customer-journey-map

### Strategy (7)
product-strategy, product-vision, pricing-strategy, lean-canvas, gtm-strategy, beachhead-segment, competitive-battlecard

### Execution (10)
create-prd, brainstorm-okrs, sprint-plan, release-notes, user-stories, job-stories, test-scenarios, pre-mortem, retro, prioritization-frameworks

### Growth (8)
north-star-metric, metrics-dashboard, cohort-analysis, ab-test-analysis, sql-queries, marketing-ideas, subscription-health, retention-playbook

### Toolkit (3)
grammar-check, partner-onboarding, service-quality-review

## 기반

[pm-skills](https://github.com/phuryn/pm-skills) (Paweł Huryn) 기반, Autostay 도메인 커스터마이징.

## 라이선스

MIT
