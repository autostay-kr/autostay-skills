---
description: Break a feature into backlog items — user stories or job stories with acceptance criteria for Autostay's dual-sided O2O platform
argument-hint: "[user|job] <feature description or PRD>"
---

# /write-stories -- Autostay Backlog Item Generator

Break a feature into well-structured backlog items. Choose from two formats based on your team's preference, each with full acceptance criteria. Stories are generated for both sides of the marketplace — subscribers and partner car washes — when applicable.

## Invocation

```
/write-stories user Subscription plan upgrade flow
/write-stories job Partner car wash onboarding experience
/write-stories user [upload a PRD or feature spec]
/write-stories                                      # asks for feature and format
```

## Formats

### User Stories
**Format**: "As a [subscriber/partner], I want [capability], so that [benefit]"
Apply the **user-stories** skill:
- Follow the 3 C's: Card (brief), Conversation (context), Confirmation (acceptance criteria)
- Validate against INVEST: Independent, Negotiable, Valuable, Estimable, Small, Testable
- Generate dual-sided stories: subscriber stories + partner car wash stories where applicable
- Include design links or mockup references where relevant

### Job Stories
**Format**: "When [situation], I want to [motivation], so I can [outcome]"
Apply the **job-stories** skill:
- Focus on the situation and context, not the user role
- Ground in real user scenarios observed in research
- Ideal for JTBD-oriented teams

## Workflow

### Step 1: Accept the Feature

Accept in any form: PRD, feature description, user research finding, or verbal idea. If a PRD is provided, extract the requirements to decompose.

### Step 2: Determine Format

If not specified in the invocation, ask:
- "Which format does your team use? **User stories** or **Job stories**?"
- If unsure, recommend user stories as the default

### Step 3: Identify Marketplace Sides

Determine which sides of the Autostay marketplace this feature touches:
- **Subscriber-only**: Features that only affect the subscriber experience (e.g., subscription management, wash history)
- **Partner-only**: Features that only affect partner operations (e.g., staff scheduling, earnings reports)
- **Dual-sided**: Features that span the O2O loop and require stories for both sides (e.g., reservation flow, quality feedback, check-in/check-out)

### Step 4: Decompose the Feature

- Break the feature into 5-15 independent stories (small enough to complete in one sprint)
- For dual-sided features, create separate stories for subscriber and partner perspectives
- Ensure each story is independently valuable (delivers user value on its own)
- Order by dependency and priority
- Write 3-5 acceptance criteria per story
- Flag stories that need design input or technical spikes
- Apply Autostay-specific acceptance criteria patterns:
  - Subscription validation (plan tier, remaining credits)
  - Partner matching (distance, capacity, capability)
  - O2O handoff (check-in, service status, completion)
  - Quality loop (ratings, photos, feedback)
  - Plan boundaries (upgrade prompts, tier limits)

### Step 5: Generate Stories

```
## Backlog: [Feature Name]

**Format**: [User Stories / Job Stories]
**Total stories**: [count]
**Estimated total effort**: [if possible]

### Subscriber Stories

#### Story 1: [Short title]
**[The story in chosen format]**

Acceptance Criteria:
- [ ] [Criterion 1]
- [ ] [Criterion 2]
- [ ] [Criterion 3]

Priority: [P0/P1/P2] | Effort: [S/M/L] | Dependencies: [none or list]

---
[Repeat for each subscriber story]

### Partner Car Wash Stories

#### Story 1: [Short title]
**[The story in chosen format]**

Acceptance Criteria:
- [ ] [Criterion 1]
- [ ] [Criterion 2]
- [ ] [Criterion 3]

Priority: [P0/P1/P2] | Effort: [S/M/L] | Dependencies: [none or list]

---
[Repeat for each partner story]

### Story Map
[Visual ordering: must-have → should-have → nice-to-have]

### Technical Notes
[Cross-cutting concerns: API changes, data migration, infrastructure]

### Open Questions
[Things that need answers before implementation can start]
```

Save as markdown.

### Step 6: Offer Next Steps

- "Want me to **generate test scenarios** for these stories? (`/test-scenarios`)"
- "Want me to **estimate sprint capacity** for these stories? (`/sprint plan`)"
- "Should I **run a pre-mortem** on this feature? (`/pre-mortem`)"

## Notes

- One story = one deployable unit of value — if it needs another story to be useful, they should be combined
- Acceptance criteria should be testable by QA without additional interpretation
- Error handling and edge cases deserve their own stories, not bullet points within a happy-path story
- If the feature is large (15+ stories), suggest grouping into epics or phases
- Flag any story that requires a spike (technical investigation before estimation is possible)
- For dual-sided features, clearly indicate which stories block which — subscriber check-in stories may depend on partner acceptance stories
