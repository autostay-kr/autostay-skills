---
name: pricing-strategy
description: "Design subscription pricing strategies for Autostay's O2O car wash service — monthly vs annual plans, tier structure, add-ons, per-wash economics, bundle pricing, family plans, and partner revenue share modeling. Use when setting subscription prices, designing plan tiers, evaluating pricing models, or optimizing subscription economics."
---

## Pricing Strategy — Autostay Subscription

Design a subscription pricing strategy for Autostay's O2O car wash service, grounded in value delivery, competitive positioning, and willingness to pay.

### Domain Context

**Autostay** — O2O car wash subscription service
- Business model: Monthly/annual subscriptions for car wash services
- Customers: Vehicle owners (subscribers)
- Supply: Partner car wash network
- Key metrics: MRR, subscriber count, Churn Rate, LTV, NPS
- O2O loop: Online booking -> Offline car wash -> Digital feedback loop

### Context

You are developing a subscription pricing strategy for **$ARGUMENTS** within Autostay's O2O car wash subscription service.

If the user provides files (competitor pricing, survey data, financial models, or usage data), read them first. Use web search to research competitor pricing if needed.

### Instructions

1. **Understand the value delivered**:
   - What is the core value proposition of a car wash subscription?
   - What is the customer's alternative (and its cost)? Consider: self-wash, drive-through, ad-hoc mobile wash, other subscription services
   - What quantifiable outcomes does the subscription deliver? (time saved, money saved vs pay-per-wash, convenience, consistent car cleanliness)
   - What is the customer's willingness to pay based on that value?
   - Per-wash economics: What does each wash cost to deliver through the partner network?

2. **Evaluate subscription pricing models** — recommend the best fit:

   | Model | Best For | Example |
   |---|---|---|
   | **Fixed allocation** | Predictable usage, cost control | 4 washes/month for 39,900 won |
   | **Unlimited** | Heavy users, premium positioning | Unlimited washes for 69,900 won/month |
   | **Tiered by service level** | Segmented market, upsell path | Basic (exterior) / Standard (full) / Premium (detailing) |
   | **Credits/points** | Flexible usage, add-on sales | 10 credits/month, each wash = 1-3 credits |
   | **Family/multi-car** | Household penetration | Up to 3 cars, shared wash allocation |
   | **Corporate/fleet** | B2B segment | Per-vehicle pricing with volume discounts |

3. **Subscription-specific pricing frameworks**:

   **Per-Wash Economics**:
   - Partner payout per wash (by wash type)
   - Platform margin per wash
   - Average washes per subscriber per month
   - Break-even point: at what usage does a subscriber become unprofitable?
   - Usage distribution: what % of subscribers are light/medium/heavy users?

   **Bundle Pricing**:
   - Base wash + add-on services (interior, wax, coating, tire shine)
   - Seasonal packages (winter salt removal, spring pollen wash, summer bug removal)
   - Frequency bundles: weekly vs bi-weekly vs monthly wash cycles

   **Family/Multi-Car Plans**:
   - Discount structure for additional vehicles
   - Shared vs separate wash allocations per vehicle
   - Vehicle type pricing (sedan vs SUV vs truck)

   **Annual vs Monthly**:
   - Annual discount rate (typically 15-25% off monthly)
   - Annual commitment reduces churn — model the LTV impact
   - Monthly flexibility attracts trial users — conversion funnel design
   - Seasonal usage patterns: higher in spring/summer, lower in winter

4. **Partner revenue share modeling**:
   - Fixed payout per wash vs percentage of subscription revenue
   - Volume-based incentives for high-performing partners
   - Quality bonuses tied to customer ratings
   - Geographic pricing variations (Seoul metro vs regional cities)
   - Partner tier system: basic partners vs premium/certified partners
   - Minimum guaranteed volume vs variable payouts

5. **Analyze competitive pricing**:
   - Map competitor pricing tiers and what's included
   - Compare: self-wash costs, drive-through car wash, mobile/visit car wash, other subscription services
   - Car wash competitor categories: self-wash stations, automated car wash machines, mobile detailing services, other subscription car wash services
   - Identify where Autostay sits (premium, mid-market, value)
   - Find pricing gaps or opportunities
   - Note any industry pricing conventions in Korean car wash market

6. **Design the pricing structure**:
   - **Tiers**: Define 2-4 subscription tiers with clear differentiation
   - **Feature gating**: Which services go in which tier? (exterior only, full wash, detailing, coating)
   - **Value metric**: What unit do you charge on? (washes per month, service level, vehicle count)
   - **Anchor pricing**: Set the most popular tier to feel like the obvious choice
   - **Annual discount**: Typically 15-25% off monthly pricing for annual commitment
   - **First-month promotion**: Free trial wash, discounted first month, or money-back guarantee

7. **Estimate price sensitivity**:
   - Van Westendorp Price Sensitivity Meter (if survey data available):
     - Too cheap -> quality concerns
     - Cheap -> good value
     - Expensive -> starting to hesitate
     - Too expensive -> won't buy
   - Alternatively, estimate based on competitor pricing and value delivered
   - Consider regional willingness to pay differences

8. **Plan pricing experiments**:
   - A/B test pricing pages (different price points, tier names, feature bundles)
   - Test annual vs monthly conversion rates
   - Pilot different partner revenue share models in different regions
   - Cohort analysis of conversion rates by price point
   - Test add-on attach rates at different price points

9. **Output a pricing recommendation**:
   ```
   Recommended Model: [Model type]
   Value Metric: [What you charge on]

   | Tier | Monthly Price | Annual Price | Washes/Month | Services Included | Target Segment |
   |---|---|---|---|---|---|

   Per-Wash Economics:
   - Average partner payout: [amount]
   - Platform margin per wash: [amount]
   - Break-even usage: [X washes/month]

   Partner Revenue Share:
   - Base payout model: [fixed/percentage/hybrid]
   - Quality incentives: [description]

   Key Assumptions:
   - [Assumption] -> [How to test]

   Risks:
   - [Risk] -> [Mitigation]
   ```

Think step by step. Save as markdown. Flag any assumptions that need validation before launch.

---

### Further Reading

- [Product Pricing Strategies 101](https://www.productcompass.pm/p/product-pricing-strategies-101)
- [The AI Product Pricing Masterclass: OpenAI Product Lead on Why SaaS Pricing Fails in AI (and How to Fix It)](https://www.productcompass.pm/p/ai-product-pricing) (video course)
