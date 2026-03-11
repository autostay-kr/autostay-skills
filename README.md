# Autostay PM Skills

O2O 세차 구독 서비스 Autostay를 위한 PM 스킬 플러그인. 38개 스킬, 18개 커맨드.

[pm-skills](https://github.com/phuryn/pm-skills) 기반으로 Autostay 도메인에 맞게 커스터마이징.

## 설치

```bash
# 1. 마켓플레이스 등록 (최초 1회)
claude plugin marketplace add autostay-kr/autostay-skills

# 2. 플러그인 설치
claude plugin install autostay-skills@autostay-skills
```

## 업데이트

레포에 변경사항이 push되면:

```bash
claude plugin update autostay-skills@autostay-skills
```

## 빠른 시작

| 하고 싶은 일 | 커맨드 | 예시 |
|---|---|---|
| 새 기능 아이디어 발굴 | `/discover` | `/discover 프리미엄 디테일링 구독` |
| PRD 작성 | `/write-prd` | `/write-prd 다중 차량 가족 플랜` |
| 구독 가격 설계 | `/pricing` | `/pricing 월간/연간 티어 재설계` |
| 구독 성장 분석 | `/growth` | `/growth 월간 이탈률 8% 문제` |
| 구독자 데이터 분석 | `/analyze-subscribers` | `/analyze-subscribers [CSV 첨부]` |
| 지역 확장 계획 | `/plan-expansion` | `/plan-expansion 부산 진출` |
| 경쟁사 분석 | `/battlecard` | `/battlecard 세차왕 vs Autostay` |
| OKR 수립 | `/plan-okrs` | `/plan-okrs 2026 Q2` |
| 스프린트 관리 | `/sprint` | `/sprint plan`, `/sprint retro` |
| 유저 스토리 작성 | `/write-stories` | `/write-stories user 예약 시스템 개선` |

## 커맨드 (18개)

### Discovery
| 커맨드 | 설명 |
|---|---|
| `/discover` | 아이디어 → 가정 식별 → 우선순위 디스커버리 사이클 |
| `/interview` | 구독자/파트너 인터뷰 준비 또는 요약 (`prep`/`summarize`) |
| `/triage-requests` | 구독자 VOC, 앱 리뷰, 파트너 피드백 분류 및 우선순위 |
| `/research-users` | 구독자 페르소나 + 고객 여정 맵 생성 |

### Strategy
| 커맨드 | 설명 |
|---|---|
| `/strategy` | 구독 비즈니스 전략 캔버스 |
| `/pricing` | 구독 플랜 설계 (월간/연간, 티어, 번들) |
| `/plan-expansion` | 지역 확장 계획 (GTM + 비치헤드 + 경쟁 분석) |
| `/battlecard` | 세차 업계 경쟁사 배틀카드 |

### Execution
| 커맨드 | 설명 |
|---|---|
| `/write-prd` | O2O 운영 섹션 포함 PRD 작성 |
| `/plan-okrs` | 구독 서비스 OKR 수립 |
| `/sprint` | 스프린트 계획/회고/릴리즈 노트 (`plan`/`retro`/`release`) |
| `/write-stories` | 구독자/파트너 양면 유저 스토리 (`user`/`job`) |
| `/test-scenarios` | 테스트 시나리오 생성 |
| `/pre-mortem` | 사전 위험 분석 |

### Growth
| 커맨드 | 설명 |
|---|---|
| `/growth` | 구독 건강 분석 + 리텐션 전략 + 코호트 |
| `/analyze-subscribers` | 구독자 코호트, 건강 지표, KPI 대시보드 |
| `/north-star` | North Star Metric + 입력 지표 정의 |

### Toolkit
| 커맨드 | 설명 |
|---|---|
| `/review-feedback` | 구독자/파트너 피드백 → 품질 분석 → 개선안 |

## 스킬 (38개)

커맨드 없이도 대화 중 자동 활성화됩니다.

### Discovery (10)
- `brainstorm-ideas-existing` — PM/디자이너/엔지니어/구독자/파트너 5관점 아이디어 발굴
- `identify-assumptions-existing` — O2O 리스크 포함 7카테고리 가정 식별
- `prioritize-assumptions` — Impact × Risk 매트릭스 우선순위
- `prioritize-features` — 기능 백로그 우선순위
- `analyze-feature-requests` — 구독자 VOC/리뷰 분석 (6개 테마 카테고리)
- `opportunity-solution-tree` — OST (Teresa Torres)
- `interview-script` — 구독자/파트너 인터뷰 스크립트 (템플릿 내장)
- `summarize-interview` — 인터뷰 요약
- `user-personas` — 구독자 페르소나 (4개 아키타입 내장)
- `customer-journey-map` — 세차 구독 여정 맵 (인지→확산 6단계)

### Strategy (7)
- `product-strategy` — 구독/O2O 전략 캔버스
- `product-vision` — 제품 비전
- `pricing-strategy` — 구독 플랜 가격 설계
- `lean-canvas` — Autostay 프리셋 린 캔버스
- `gtm-strategy` — 지역 확장 GTM 전략
- `beachhead-segment` — 비치헤드 세그먼트
- `competitive-battlecard` — 세차 업계 경쟁 배틀카드

### Execution (10)
- `create-prd` — O2O 운영 섹션 포함 PRD
- `brainstorm-okrs` — 구독 서비스 OKR (예시 내장)
- `sprint-plan` — 스프린트 계획
- `release-notes` — 릴리즈 노트
- `user-stories` — 구독자/파트너 양면 유저 스토리
- `job-stories` — 잡 스토리
- `test-scenarios` — 테스트 시나리오
- `pre-mortem` — 사전 위험 분석
- `retro` — 스프린트 회고
- `prioritization-frameworks` — 9개 우선순위 프레임워크 레퍼런스

### Growth (8)
- `north-star-metric` — 구독 비즈니스 NSM
- `metrics-dashboard` — 구독 KPI 대시보드 (MRR, Churn, LTV, CAC)
- `cohort-analysis` — 구독자 코호트 리텐션 분석
- `ab-test-analysis` — A/B 테스트 분석
- `sql-queries` — SQL 쿼리 생성
- `marketing-ideas` — 세차 구독 마케팅 (지역/하이퍼로컬)
- `subscription-health` — 구독 건강 지표 (MRR, 퍼널, 이탈, 유닛 이코노믹스)
- `retention-playbook` — 이탈 방지 플레이북 (신호 감지, 윈백, 라이프사이클)

### Toolkit (3)
- `grammar-check` — 문법/논리/흐름 검수
- `partner-onboarding` — 파트너 세차장 온보딩 체크리스트/SLA/교육 가이드
- `service-quality-review` — 세차 서비스 품질 리뷰 분석

## 도메인 컨텍스트

모든 커스터마이징된 스킬에 Autostay 맥락이 내장되어 있습니다:

- **비즈니스 모델**: 월간/연간 구독 세차 서비스
- **고객**: 차량 소유자 (구독자)
- **공급**: 파트너 세차장 네트워크
- **핵심 지표**: MRR, 구독자 수, Churn Rate, LTV, NPS
- **O2O 루프**: 온라인 예약 → 오프라인 세차 → 디지털 피드백

## 기반

[pm-skills](https://github.com/phuryn/pm-skills) (Paweł Huryn, The Product Compass) 기반.
Teresa Torres, Marty Cagan, Alberto Savoia 등의 PM 프레임워크 적용.

## 라이선스

MIT
