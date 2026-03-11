# Autostay Skills

Autostay 팀 전용 Claude Code 플러그인 마켓플레이스.
자체 제작 스킬 + 커맨드 + 보호 훅을 제공합니다.

## 플러그인 목록

| 플러그인 | 대상 | 내용 |
|----------|------|------|
| **autostay-common** | 전체 | 보호 훅 (main 보호, 민감파일 차단) + Git 워크플로 커맨드 3개 |
| **autostay-pm** | PM | PM 스킬 38개 + PM 커맨드 18개 |

## 설치

```bash
# 1. 마켓플레이스 등록 (최초 1회)
claude plugin marketplace add autostay-kr/autostay-skills

# 2. 플러그인 설치
claude plugin install autostay-skills@autostay-common   # 전원 필수
claude plugin install autostay-skills@autostay-pm        # PM
```

## 권장 3rd party 스킬

마켓플레이스에서 직접 설치하세요. 원본 업데이트가 자동 반영됩니다.

### Common (전원 권장)

```bash
claude skill install find-skills
claude skill install tdd
claude skill install docker-deployment
```

### Backend (백엔드 개발자)

```bash
claude skill install nestjs-best-practices
claude skill install graphql-architect
claude skill install graphql-schema
claude skill install apollo-server
claude skill install prisma-cli
claude skill install prisma-client-api
claude skill install mysql
claude skill install redis-development
claude skill install kafka-development
```

> **Note**: 서버 프로젝트 전용 스킬 (dashboard-builder, dataloader-generator 등 11개)은
> `autostay-server` 레포의 `.claude/skills/`에 있습니다.

### Frontend (프론트엔드 개발자)

```bash
claude skill install vercel-react-best-practices
claude skill install nextjs-app-router
claude skill install tailwindcss
claude skill install typescript-strict
```

> **Note**: 프론트엔드 프로젝트 전용 스킬은 해당 레포의 `.claude/skills/`에 추가 예정.

## 업데이트

```bash
# Autostay 플러그인 업데이트
claude plugin update autostay-skills@autostay-common
claude plugin update autostay-skills@autostay-pm
```

## 구조

```
autostay-skills/
├── common/              ← 보호 훅 + Git 워크플로 커맨드
│   ├── commands/        (3개: commit-push-pr, commit-push-review-fix, review-and-fix)
│   └── hooks/           (protect-git.sh, protect-files.sh)
└── pm/                  ← PM 스킬 + 커맨드
    ├── skills/          (38개)
    └── commands/        (18개)
```

## 보호 훅

| 훅 | 트리거 | 동작 |
|---|---|---|
| `protect-git.sh` | Bash | main 브랜치 커밋/푸시 차단, force push/hard reset 차단 |
| `protect-files.sh` | Write\|Edit | .env, credentials, *.pem, *.key 수정 차단 |

## Git 워크플로 커맨드

| 커맨드 | 설명 |
|---|---|
| `/commit-push-pr` | 커밋 → 푸시 → PR 생성 |
| `/commit-push-review-fix` | 커밋 → PR → 코드 리뷰 → 수정 |
| `/review-and-fix` | PR 리뷰 코멘트 확인 → 수정 → 푸시 |

## PM 커맨드 (18개)

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

## PM 스킬 (38개)

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

PM 스킬: [pm-skills](https://github.com/phuryn/pm-skills) (Paweł Huryn) 기반, Autostay 도메인 커스터마이징.

## 라이선스

MIT
