# autostay-growth

Autostay growth skills: subscription health analysis, retention playbooks, cohort analysis, North Star metrics, A/B testing, SQL queries, KPI dashboards, and car wash marketing ideas.

## Skills (8)

- **subscription-health** — Analyze subscription business health for Autostay: MRR breakdown, conversion funnel, churn analysis, unit economics, and health scoring.
- **retention-playbook** — Design a retention playbook for Autostay: churn signal detection, engagement triggers, win-back campaigns, and lifecycle communication plans.
- **cohort-analysis** — Perform subscriber cohort analysis: retention by sign-up month, plan type, acquisition channel, wash frequency decay, and upgrade/downgrade patterns.
- **north-star-metric** — Define a North Star Metric for Autostay's car wash subscription business with pre-classified Transaction Game and recommended NSM candidates.
- **metrics-dashboard** — Design a subscription KPI dashboard with pre-built categories for Revenue, Growth, Retention, Operations, and Engagement.
- **marketing-ideas** — Generate creative, cost-effective marketing ideas for car wash subscription with local/hyperlocal O2O channels and partnership strategies.
- **ab-test-analysis** — Analyze A/B test results with statistical significance, sample size validation, and ship/extend/stop recommendations.
- **sql-queries** — Generate SQL queries from natural language descriptions across BigQuery, PostgreSQL, MySQL, and other dialects.

## Commands (3)

- `/autostay-growth:growth` — Analyze subscription growth health and design retention strategies. Chains: subscription-health → retention-playbook → cohort-analysis.
- `/autostay-growth:analyze-subscribers` — Deep-dive into subscriber data: cohort retention, subscription health metrics, and KPI dashboard design. Chains: cohort-analysis + subscription-health + metrics-dashboard.
- `/autostay-growth:north-star` — Define Autostay's North Star Metric and supporting input metrics, pre-classified as Transaction Game.

## Domain Context

**Autostay** — O2O 세차 구독 서비스
- 비즈니스 모델: 월간/연간 구독으로 세차 서비스 제공
- 고객: 차량 소유자 (구독자)
- 공급: 파트너 세차장 네트워크
- 핵심 지표: MRR, 구독자 수, Churn Rate, LTV, NPS
- O2O 루프: 온라인 예약 → 오프라인 세차 → 디지털 피드백 루프

## License

MIT
