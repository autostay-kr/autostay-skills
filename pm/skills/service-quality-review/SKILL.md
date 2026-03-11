---
name: service-quality-review
description: "Analyze car wash service quality from subscriber feedback and partner performance data — quality scoring, issue detection, and improvement plans for Autostay. Use when reviewing service quality, investigating complaints, comparing partner performance, or designing quality improvement programs."
---

## Service Quality Review

Analyze car wash service quality using subscriber feedback and partner performance data to generate quality scores, detect issues, and create improvement plans.

### Context

You are reviewing service quality for **$ARGUMENTS**.

If the user provides files (feedback CSVs, review exports, survey data, performance reports), read and analyze them directly. If data is in a structured format, create summary tables and visualizations where helpful.

### Domain Context

**Autostay** — O2O 세차 구독 서비스
- 비즈니스 모델: 월간/연간 구독으로 세차 서비스 제공
- 고객: 차량 소유자 (구독자)
- 공급: 파트너 세차장 네트워크
- 핵심 지표: MRR, 구독자 수, Churn Rate, LTV, NPS
- O2O 루프: 온라인 예약 → 오프라인 세차 → 디지털 피드백 루프

### Instructions

The user will provide feedback data, performance metrics, or describe a quality concern. Work through these steps:

---

### Step 1: Quality Score Analysis

Evaluate service quality across 5 dimensions. For each dimension, score on a 1-5 scale based on available data:

| 차원 | 평가 항목 | 가중치 | 점수 (1-5) | 가중 점수 |
|------|----------|--------|-----------|----------|
| **세차 품질** | 외부 세차 완성도, 내부 청소 상태, 마감 디테일, Before/After 비교 | 30% | | |
| **속도/대기시간** | 예약 시간 준수, 서비스 소요 시간, 대기 시간, 피크 시간 대응 | 20% | | |
| **고객 응대** | 인사/안내, 서비스 설명, 인수인계, 클레임 처리 태도 | 20% | | |
| **시설 상태** | 세차장 청결도, 장비 관리, 대기 공간, 안전 시설 | 15% | | |
| **가격 대비 만족도** | 서비스 가치 인식, 구독 유지 의향, 추천 의향(NPS) | 15% | | |

**종합 품질 점수** = Sum of (각 차원 점수 x 가중치)

#### 등급 기준
- **A (4.5-5.0)**: 우수 — 유지 및 베스트 프랙티스 공유
- **B (4.0-4.4)**: 양호 — 소규모 개선 권장
- **C (3.5-3.9)**: 보통 — 개선 계획 필요
- **D (3.0-3.4)**: 미흡 — 즉시 개선 조치
- **F (3.0 미만)**: 심각 — 서비스 중단 검토

For each dimension, provide:
- 현재 점수 및 근거 (데이터/피드백 인용)
- 이전 기간 대비 추이 (if data available)
- 해당 차원의 주요 이슈

---

### Step 2: Partner Performance Comparison

파트너 간 성과를 비교 분석합니다:

#### 파트너 랭킹 테이블

| 순위 | 파트너명 | 종합 점수 | 세차 품질 | 속도 | 응대 | 시설 | 만족도 | 서비스 건수 | 클레임율 |
|------|---------|----------|----------|------|------|------|--------|-----------|---------|

#### 분석 항목

- **Top Performers**: 상위 파트너 분석 — 무엇을 잘하는가? 공통 특성은?
- **Underperformers**: 하위 파트너 분석 — 어떤 차원에서 부족한가? 구조적 문제인가 운영 문제인가?
- **Volume vs Quality 상관관계**: 서비스 건수가 많은 파트너의 품질 유지 여부, 과부하 징후

#### 비교 인사이트

- 파트너 유형별 품질 차이 (개인/프랜차이즈/자동/손세차)
- 지역별 품질 편차
- 운영 기간별 품질 추이 (신규 vs 기존 파트너)

---

### Step 3: Issue Pattern Detection

피드백 데이터에서 반복되는 문제 패턴을 탐지합니다:

#### 클레임 유형 분류

| 카테고리 | 세부 유형 | 건수 | 비율 | 추이 |
|----------|----------|------|------|------|
| 세차 품질 | 외부 얼룩 잔여, 내부 청소 미흡, 물기 잔여 | | | |
| 시간 | 대기 시간 초과, 서비스 지연, 노쇼 | | | |
| 응대 | 불친절, 설명 부족, 연락 불가 | | | |
| 시설 | 시설 불결, 장비 불량, 안전 문제 | | | |
| 예약 | 예약 불가, 시간 변경, 취소 문제 | | | |
| 차량 | 차량 손상, 분실물, 주행 거리 의심 | | | |

#### 반복 패턴 식별

- 동일 파트너에서 반복되는 클레임 유형
- 특정 시간대/요일에 집중되는 문제
- 계절적 패턴 (우기, 혹한기 등)
- 특정 서비스 메뉴에서 빈발하는 문제

#### Top 3 이슈 근본 원인 분석

각 상위 이슈에 대해:

| 항목 | 내용 |
|------|------|
| **이슈** | [문제 설명] |
| **빈도** | [발생 건수 / 비율] |
| **영향** | [구독 해지, 평점 하락 등 비즈니스 영향] |
| **근본 원인** | [Why 분석 — 표면적 원인 → 근본 원인] |
| **관련 파트너** | [해당 이슈가 집중된 파트너] |

---

### Step 4: Improvement Action Plan

식별된 이슈에 대한 구체적인 개선 계획:

| 우선순위 | 이슈 | 근본 원인 | 개선 조치 | 담당 | 일정 |
|---------|------|----------|----------|------|------|
| P0 (긴급) | | | | | 1주 이내 |
| P1 (높음) | | | | | 2주 이내 |
| P2 (중간) | | | | | 1개월 이내 |
| P3 (낮음) | | | | | 분기 내 |

#### 우선순위 기준
- **P0 (긴급)**: 구독 해지 직결, 차량 손상, 안전 문제
- **P1 (높음)**: 반복 클레임, 평점 3.5 미만 파트너, NPS 하락
- **P2 (중간)**: 특정 차원 점수 하락, 프로세스 비효율
- **P3 (낮음)**: 개선 기회, 베스트 프랙티스 확산

각 개선 조치에 대해:
- 기대 효과 (정량적 목표)
- 필요 자원 (예산, 인력, 시스템)
- 성공 측정 기준 (KPI)
- 리스크 및 대응 방안

---

### Step 5: Quality Program Recommendations

체계적인 품질 개선 프로그램 제안:

#### 단기 (1-3개월)

- 클레임 다발 파트너 집중 관리 (주간 모니터링, 재교육)
- 품질 체크리스트 강화 및 Before/After 사진 의무화
- 고객 피드백 즉시 알림 시스템 (파트너 앱 푸시)
- 긴급 품질 이슈 에스컬레이션 프로세스 정비

#### 중기 (3-6개월)

- 파트너 등급제 도입 (품질 점수 기반 노출 우선순위, 수수료 차등)
- 미스터리 쇼퍼 프로그램 고도화 (평가 항목 세분화, 월 2회)
- 파트너 간 베스트 프랙티스 공유 프로그램 (우수 사례 워크숍)
- 품질 데이터 대시보드 구축 (실시간 모니터링)

#### 장기 (6-12개월)

- AI 기반 품질 예측 모델 (이탈 위험 파트너 조기 감지)
- 구독자 피드백 자동 분석 및 인사이트 생성
- 파트너 인증 프로그램 (Autostay Certified Partner)
- 지역별 품질 관리 매니저 배치

---

### Output Format

분석 결과를 다음 구조로 제공합니다:

```
## Service Quality Review Report

**기간**: [분석 기간]
**대상**: [파트너/지역/전체]
**데이터**: [분석한 데이터 소스]

### 1. 종합 품질 점수
[5개 차원별 점수 및 등급]

### 2. 파트너 성과 비교
[랭킹 테이블 및 인사이트]

### 3. 이슈 패턴
[클레임 분류 및 Top 3 근본 원인]

### 4. 개선 계획
[우선순위별 액션 플랜]

### 5. 프로그램 권고
[단기/중기/장기 권고사항]

### 6. 다음 단계
[즉시 실행할 액션 아이템]
```

Think step by step. Save as markdown if the output is substantial.
