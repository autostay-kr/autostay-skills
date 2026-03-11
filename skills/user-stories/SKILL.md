---
name: user-stories
description: "Create dual-sided user stories for Autostay's O2O car wash subscription service — subscriber stories and partner car wash stories — following the 3 C's (Card, Conversation, Confirmation) and INVEST criteria with descriptions, design links, and acceptance criteria. Use when writing user stories, breaking down features into backlog items, or defining acceptance criteria."
---
# User Stories

Create user stories following the 3 C's (Card, Conversation, Confirmation) and INVEST criteria. Generates dual-sided stories for Autostay's O2O platform: subscriber stories and partner car wash stories.

**Use when:** Writing user stories, breaking down features into stories, creating backlog items, or defining acceptance criteria.

**Arguments:**
- `$PRODUCT`: The product or system name
- `$FEATURE`: The new feature to break into stories
- `$DESIGN`: Link to design files (Figma, Miro, etc.)
- `$ASSUMPTIONS`: Key assumptions or context

## Domain Context

**Autostay** — O2O car wash subscription service
- Business model: Monthly/annual subscriptions for car wash services
- Customers: Vehicle owners (subscribers)
- Supply: Partner car wash network
- Core metrics: MRR, subscriber count, Churn Rate, LTV, NPS
- O2O loop: Online reservation → Offline car wash → Digital feedback loop

## Step-by-Step Process

1. **Analyze the feature** based on provided design and context
2. **Identify user roles** — determine if the feature involves subscribers, partners, or both
3. **Create dual-sided stories** when the feature spans the O2O loop
4. **Apply 3 C's framework:**
   - Card: Simple title and one-liner
   - Conversation: Detailed discussion of intent
   - Confirmation: Clear acceptance criteria
5. **Respect INVEST criteria:** Independent, Negotiable, Valuable, Estimable, Small, Testable
6. **Use plain language** a primary school graduate can understand
7. **Link to design files** for visual reference
8. **Output user stories** in structured format

## Subscriber Story Template

**Title:** [Feature name — Subscriber side]

**Description:** As a subscriber (구독자), I want to [action], so that [benefit].

**Design:** [Link to design files]

**Acceptance Criteria:**
1. [Clear, testable criterion]
2. [Observable behavior]
3. [System validates correctly]
4. [Edge case handling]
5. [Performance or accessibility consideration]
6. [Integration point]

## Partner Car Wash Story Template

**Title:** [Feature name — Partner side]

**Description:** As a partner car wash operator (파트너 세차장), I want to [action], so that [benefit].

**Design:** [Link to design files]

**Acceptance Criteria:**
1. [Clear, testable criterion]
2. [Observable behavior]
3. [System validates correctly]
4. [Edge case handling]
5. [Performance or accessibility consideration]
6. [Integration point]

## Example: Subscriber Story

**Title:** Reserve a Car Wash

**Description:** As a subscriber, I want to reserve a car wash at a nearby partner location, so that I can get my car cleaned at a convenient time without waiting.

**Design:** [Figma link]

**Acceptance Criteria:**
1. The reservation screen shows available partner car wash locations within 10km, sorted by distance.
2. Each location displays available time slots for the next 7 days.
3. The subscriber can select a date, time slot, and car wash type included in their subscription plan.
4. A confirmation screen shows the reservation details (location, date, time, service type) before final booking.
5. After booking, the subscriber receives a push notification and email confirmation with the reservation details and location map.
6. The subscriber can cancel or reschedule the reservation up to 2 hours before the scheduled time.
7. If the subscriber's subscription does not cover the selected service, they see an upgrade prompt with pricing.

## Example: Partner Car Wash Story

**Title:** Receive and Manage Reservations

**Description:** As a partner car wash operator, I want to receive and manage incoming subscriber reservations, so that I can plan my staff schedule and service capacity efficiently.

**Design:** [Figma link]

**Acceptance Criteria:**
1. New reservations appear in the partner dashboard in real-time with subscriber name, vehicle type, and service type.
2. The partner can accept or decline a reservation within 30 minutes; unresponded reservations are auto-accepted.
3. The partner can view a daily/weekly calendar of all confirmed reservations.
4. The partner can mark a reservation as "in progress" when the subscriber arrives and "completed" when the wash is finished.
5. The partner can upload before/after photos upon service completion.
6. If the partner needs to cancel, the system automatically notifies the subscriber and suggests alternative locations.

## Example: Autostay-Specific Acceptance Criteria Patterns

When writing acceptance criteria for Autostay features, consider these common patterns:

- **Subscription validation**: "The system verifies the subscriber's active subscription plan and remaining service credits before allowing [action]."
- **Partner matching**: "Available partners are filtered by service capability, distance, and current capacity."
- **O2O handoff**: "Upon subscriber check-in at the partner location, the reservation status updates in real-time for both subscriber and partner."
- **Quality loop**: "After service completion, the subscriber receives a feedback request within 1 hour, including before/after photos uploaded by the partner."
- **Plan boundaries**: "If the requested service exceeds the subscriber's plan tier, the system displays the upgrade path with price difference."

## Output Deliverables

- Complete set of user stories for the feature
- Each story includes title, description, design link, and 4-6 acceptance criteria
- Stories are split into subscriber-side and partner-side where applicable
- Stories are independent and can be developed in any order
- Stories are sized for one sprint cycle
- Stories reference related design documentation

---

### Further Reading

- [How to Write User Stories: The Ultimate Guide](https://www.productcompass.pm/p/how-to-write-user-stories)
