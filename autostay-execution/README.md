# autostay-execution

Product execution skills for **Autostay**, an O2O car wash subscription service. Provides PRDs with O2O operations, OKRs for subscription business metrics, dual-sided user stories (subscribers + partner car washes), sprint planning, test scenarios, pre-mortem risk analysis, and prioritization frameworks.

## Domain

- **Business model**: Monthly/annual subscriptions for car wash services
- **Customers**: Vehicle owners (subscribers)
- **Supply**: Partner car wash network
- **Core metrics**: MRR, subscriber count, Churn Rate, LTV, NPS
- **O2O loop**: Online reservation → Offline car wash → Digital feedback loop

## Commands

| Command | Description |
|---------|-------------|
| `/write-prd` | Create a PRD with O2O operations, partner integration, and subscriber/partner segments |
| `/plan-okrs` | Brainstorm OKRs with subscription-specific examples (retention, partner network, revenue) |
| `/sprint` | Sprint lifecycle — plan, retro, or release-notes |
| `/write-stories` | Break features into user stories or job stories with dual-sided (subscriber + partner) support |
| `/test-scenarios` | Generate test scenarios from user stories or feature specs |
| `/pre-mortem` | Pre-launch risk analysis using Tigers/Paper Tigers/Elephants framework |

## Skills

### Customized for Autostay

| Skill | What it does |
|-------|-------------|
| `create-prd` | PRD template with Section 7.5 O2O Operations (partner integration, service flow, quality assurance) and subscriber/partner market segments |
| `brainstorm-okrs` | OKR generation with built-in Autostay examples — subscriber retention, partner network expansion, subscription revenue growth |
| `user-stories` | Dual-sided story templates — subscriber stories + partner car wash stories — with Autostay-specific acceptance criteria patterns |

### Copied as-is from pm-execution

| Skill | What it does |
|-------|-------------|
| `sprint-plan` | Sprint planning with capacity estimation, story selection, and risk identification |
| `release-notes` | User-facing release notes from tickets, PRDs, or changelogs |
| `job-stories` | JTBD-style stories using "When/I want/so I can" format |
| `test-scenarios` | Test scenarios with objectives, preconditions, steps, and expected outcomes |
| `pre-mortem` | Risk analysis using Tigers/Paper Tigers/Elephants framework |
| `retro` | Sprint retrospective facilitation with actionable improvement items |
| `prioritization-frameworks` | Reference guide to 9 prioritization frameworks (RICE, ICE, Kano, etc.) |

## Usage Examples

```
# Write a PRD for a new feature
/write-prd Partner car wash real-time availability dashboard

# Plan quarterly OKRs
/plan-okrs Growth team Q3 — company goal is reduce churn to 3%

# Break a feature into stories
/write-stories user Subscription upgrade flow from basic to premium

# Plan a sprint
/sprint plan 2-week sprint, 5 engineers, focus on partner onboarding

# Generate test scenarios
/test-scenarios Subscriber reservation and check-in flow

# Run a pre-mortem
/pre-mortem Launch of annual subscription plan with 20% discount
```
