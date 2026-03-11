---
description: Design subscription pricing for Autostay — plan tiers, monthly vs annual, per-wash economics, add-ons, family plans, and partner revenue share
argument-hint: "<pricing question or focus area>"
---

# /pricing -- Autostay Subscription Pricing Design

Design Autostay's subscription pricing from first principles: analyze subscription models, design plan tiers, model per-wash economics, benchmark against car wash competitors, and plan pricing experiments.

## Invocation

```
/pricing Design initial subscription tiers for Seoul launch
/pricing Should we offer an unlimited wash plan?
/pricing Family plan pricing for multi-car households
/pricing Annual vs monthly — what discount makes sense?
/pricing [upload competitor pricing data or usage analytics]
```

## Workflow

### Step 1: Understand the Pricing Context

Ask:
- What is the pricing focus? (initial pricing, tier redesign, new add-on, new market pricing)
- Current pricing (if any): plan tiers, price points, packaging
- What's the trigger? (launch, competitive pressure, churn issue, upsell opportunity)
- Target subscriber profile and their budget context
- Current per-wash costs and partner payout structure
- Any constraints? (partner agreements, market expectations, competitive positioning)

### Step 2: Analyze Subscription Models

Apply the **pricing-strategy** skill:

Evaluate applicable subscription models for car wash:

| Model | Best For | Autostay Example |
|---|---|---|
| **Fixed allocation** | Predictable usage, cost control | 4 washes/month for 39,900 won |
| **Unlimited** | Heavy users, premium positioning | Unlimited washes for 69,900 won/month |
| **Tiered by service** | Segmented market, upsell path | Basic (exterior) / Standard (full) / Premium (detailing) |
| **Credits** | Flexible usage, add-on sales | 10 credits/month, washes cost 1-3 credits |
| **Family/multi-car** | Household penetration | Up to 3 cars, shared allocation |
| **Corporate/fleet** | B2B segment | Per-vehicle with volume discounts |

For each relevant model: pros, cons, fit for Autostay, revenue projection.

### Step 3: Model Per-Wash Economics

Build a detailed unit economics model:

```
Per-Wash Economics:
- Partner payout (exterior wash): [amount]
- Partner payout (full wash): [amount]
- Partner payout (detailing): [amount]
- Platform margin per wash: [amount]
- Average washes per subscriber per month: [number]
- Break-even usage per tier: [number]
- % subscribers above break-even: [estimate]
```

### Step 4: Design Tier Comparison

```
## Autostay Subscription Plans

| Feature | Basic | Standard | Premium |
|---------|-------|----------|---------|
| Monthly price | [price] | [price] | [price] |
| Annual price (per month) | [price] | [price] | [price] |
| Washes per month | [count] | [count] | [count/unlimited] |
| Exterior wash | Yes | Yes | Yes |
| Interior vacuum | No | Yes | Yes |
| Full interior cleaning | No | No | Yes |
| Wax/coating | No | No | Yes |
| Multi-car discount | No | 10% off 2nd car | 15% off 2nd car |
| Priority booking | No | No | Yes |
| Rollover unused washes | No | Yes (up to 2) | Yes (up to 4) |
| Target segment | Budget-conscious | Mainstream | Premium car owners |
```

### Step 5: Annual vs Monthly Analysis

Model the impact of annual plans:
- Annual discount rate recommendation (typically 15-25%)
- Expected annual plan adoption rate
- Impact on churn (annual subscribers typically churn 50-70% less)
- Cash flow implications of upfront annual payments
- Seasonal usage patterns and their impact on annual plan economics

### Step 6: Add-On Services

Design supplemental revenue streams:
- Interior deep cleaning (one-time add-on)
- Ceramic coating / PPF consultation
- Seasonal packages (winter salt wash, spring pollen, summer bug removal)
- Premium detailing upgrade
- Express/priority booking
- Additional vehicle add-on pricing

### Step 7: Competitive Pricing Benchmark

Research and compare:
- Self-wash station costs (per visit)
- Automated car wash pricing
- Mobile/visit car wash pricing (per session)
- Other subscription car wash services (if any)
- Calculate Autostay's value position: cost per wash vs alternatives

### Step 8: Generate Pricing Recommendation

```
## Autostay Pricing Strategy: [Focus Area]

**Date**: [today]
**Current pricing**: [if applicable]

### Recommended Model: [Model Name]

**Why this model**: [rationale tied to subscriber value delivery and partner economics]

### Subscription Tiers
| Tier | Monthly | Annual/mo | Washes/mo | Services | Target | Anchor |
|------|---------|-----------|-----------|----------|--------|--------|

### Per-Wash Economics
| Metric | Basic | Standard | Premium |
|--------|-------|----------|---------|
| Partner payout/wash | | | |
| Platform margin/wash | | | |
| Break-even usage | | | |
| Expected avg usage | | | |

### Partner Revenue Share
| Component | Amount | Notes |
|-----------|--------|-------|

### Add-On Menu
| Add-On | Price | Attach Rate Estimate |
|--------|-------|---------------------|

### Annual Plan Strategy
| Metric | Monthly Plan | Annual Plan |
|--------|-------------|-------------|
| Price per month | [price] | [discounted price] |
| Expected churn | [rate] | [rate] |
| LTV | [value] | [value] |

### Revenue Projections
| Scenario | Assumptions | Year 1 MRR | Year 1 ARR |
|----------|-----------|-----------|-----------|
| Conservative | [X] | [Y] | [Z] |
| Expected | [X] | [Y] | [Z] |
| Optimistic | [X] | [Y] | [Z] |

### Pricing Experiments
| Experiment | What We're Testing | Method | Duration |
|-----------|-------------------|--------|----------|

### Risks and Mitigations
| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|-----------|

### Key Metrics to Track
- Conversion rate by tier
- Average revenue per subscriber (ARPU)
- Upgrade/downgrade rates between tiers
- Add-on attach rate
- Churn by tier and plan duration
- Per-wash margin by service type
- Partner satisfaction with payout model
```

Save as markdown.

### Step 9: Offer Next Steps

- "Want me to **model different partner revenue share scenarios**?"
- "Should I **design the pricing page UX** for tier presentation?"
- "Want me to **create a churn analysis framework** tied to pricing?"
- "Should I **design an A/B test** for pricing experiments?"

## Notes

- Subscription pricing must work for THREE parties: subscribers (value), partners (fair payout), and Autostay (margin)
- The biggest risk in subscription car wash is heavy users — model the "unlimited" scenario carefully
- Annual plans are your best churn reducer — make the discount compelling enough to drive adoption
- Per-wash economics are the foundation — if unit economics don't work, no pricing structure will save you
- Start simple (2-3 tiers) and add complexity only when data supports it
- Family/multi-car plans drive household penetration — each additional car has near-zero acquisition cost
- Always design a migration path for existing subscribers when changing pricing
