# Autostay Skills

Autostay 팀 전용 Claude Code 플러그인 마켓플레이스.
역할에 맞는 플러그인을 선택 설치하거나, 전체를 한번에 설치할 수 있습니다.

## 플러그인 목록

| 플러그인 | 대상 | 내용 |
|----------|------|------|
| **autostay-all** | 전체 (한번에) | 아래 3개 전부 포함 (50 스킬, 21 커맨드, 보호 훅) |
| **autostay-common** | 전체 | 보호 훅 + Git 워크플로 커맨드 3개 + find-skills |
| **autostay-pm** | PM | PM 스킬 38개 + PM 커맨드 18개 |
| **autostay-server** | 백엔드 | NestJS, GraphQL, Prisma, MySQL, Redis, Kafka, TDD 스킬 11개 |

## 설치

```bash
# 1. 마켓플레이스 등록 (최초 1회)
claude plugin marketplace add autostay-kr/autostay-skills

# 2-A. 전체 설치 (권장)
claude plugin install autostay-skills@autostay-all

# 2-B. 역할별 설치
claude plugin install autostay-skills@autostay-common   # 필수
claude plugin install autostay-skills@autostay-server    # 백엔드
claude plugin install autostay-skills@autostay-pm        # PM
```

## 업데이트

```bash
claude plugin update autostay-skills@autostay-all
```

## 구조

```
autostay-skills/
├── common/          ← 보호 훅 + Git 커맨드 + find-skills
├── pm/              ← PM 스킬 38개 + 커맨드 18개
├── server/          ← 엔지니어링 스킬 11개
└── all/             ← 위 3개 전체 (symlinks)
```

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

## Git 워크플로 커맨드 (3개)

| 커맨드 | 설명 |
|---|---|
| `/commit-push-pr` | 커밋 → 푸시 → PR 생성 |
| `/commit-push-review-fix` | 커밋 → PR → 코드 리뷰 → 수정 |
| `/review-and-fix` | PR 리뷰 코멘트 확인 → 수정 → 푸시 |

## 엔지니어링 스킬 (11개)

| 스킬 | 설명 |
|---|---|
| `apollo-server` | Apollo Server 5.x 가이드 |
| `docker-deployment` | Docker 컨테이너화 및 배포 |
| `graphql-architect` | GraphQL 스키마 설계, Federation, 구독 |
| `graphql-schema` | GraphQL 스키마 베스트 프랙티스 |
| `kafka-development` | Kafka 이벤트 스트리밍 베스트 프랙티스 |
| `mysql` | MySQL/InnoDB 스키마, 인덱싱, 쿼리 튜닝 |
| `nestjs-best-practices` | NestJS 아키텍처 패턴 |
| `prisma-cli` | Prisma CLI 커맨드 레퍼런스 |
| `prisma-client-api` | Prisma Client API 레퍼런스 |
| `redis-development` | Redis 데이터 구조, 성능 최적화 |
| `tdd` | TDD red-green-refactor |

## 보호 훅

| 훅 | 트리거 | 동작 |
|---|---|---|
| `protect-git.sh` | Bash | main 브랜치 커밋/푸시 차단, force push/hard reset 차단 |
| `protect-files.sh` | Write\|Edit | .env, credentials, *.pem, *.key 수정 차단 |

## 기반

PM 스킬: [pm-skills](https://github.com/phuryn/pm-skills) (Paweł Huryn) 기반, Autostay 도메인 커스터마이징.

## 라이선스

MIT
