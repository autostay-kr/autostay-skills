---
description: Analyze, categorize, and prioritize feature requests from Autostay subscribers, app reviews, and partner feedback
argument-hint: "<feature requests as text, file, or paste>"
---

# /triage-requests -- Feature Request Triage (Autostay)

Take a pile of feature requests from Autostay subscribers (VOC, surveys), app store reviews, or partner feedback and turn them into a prioritized, actionable backlog.

## Invocation

```
/triage-requests                           # asks for input
/triage-requests [paste subscriber VOC]
/triage-requests [upload app review CSV]
/triage-requests [paste partner feedback]
```

## Workflow

### Step 1: Accept Feature Requests

Accept requests in any format:
- **구독자 VOC**: CS tickets, in-app feedback, survey responses
- **앱 리뷰**: App Store or Google Play reviews (pasted or CSV)
- **파트너 피드백**: Partner car wash business feedback
- **Mixed sources**: Any combination of the above
- **Uploaded file**: CSV, Excel, or text file with request data

If no input is provided, ask the user to paste or upload their feature requests.

Parse each request to extract:
- The core ask (what the user/partner wants)
- Source type (구독자 VOC, 앱 리뷰, 파트너 피드백)
- Context (who asked, when, why — if available)
- Frequency signals (how many people asked for similar things)
- Sentiment (frustration level, churn risk, delight)

### Step 2: Gather Prioritization Context

Ask the user (conversationally, not all at once):
- What are the current Autostay strategic goals or OKRs? (helps assess alignment)
- Which metric matters most right now? (MRR growth, Churn reduction, NPS improvement, 파트너 확대)
- Any constraints to consider? (team size, technical debt, upcoming deadlines, partner dependencies)
- Are there segments whose requests should carry more weight? (high-LTV subscribers, churning subscribers, key partners)

### Step 3: Categorize and Analyze

Apply the **analyze-feature-requests** skill:

- **Theme clustering**: Group requests using Autostay theme categories:
  - 예약 경험 (Booking experience)
  - 세차 품질 (Wash quality)
  - 구독 가치 (Subscription value)
  - 파트너 경험 (Partner experience)
  - 결제/빌링 (Payment/billing)
  - 앱 UX (App UX)
- **Request count per theme**: How many unique requests map to each theme
- **Source breakdown**: Which sources (구독자, 앱 리뷰, 파트너) drive which themes
- **Strategic alignment**: Rate each theme against stated goals (High/Medium/Low/None)
- **Segment analysis**: Which subscriber/partner segments are driving which themes
- **Sentiment signals**: Are requests accompanied by frustration, churn threats, or delight?

### Step 4: Prioritize

Apply the **prioritize-features** skill:

For each theme (and the top individual requests within each theme):

| Factor | Assessment |
|--------|-----------|
| **Impact** | How many subscribers/partners affected? How severely? |
| **Metric impact** | Which Autostay metric does it move? (MRR, Churn, LTV, NPS) |
| **Strategic alignment** | Does it serve current goals? |
| **Effort estimate** | T-shirt size (S/M/L/XL) |
| **Risk** | What happens if we don't do this? Churn risk? Partner attrition? |
| **O2O complexity** | Does it require changes to both online (app) and offline (partner) operations? |

Rank themes and produce a prioritized list.

### Step 5: Generate Triage Report

```
## Feature Request Triage Report (Autostay)

**Date**: [today]
**Requests analyzed**: [count]
**Sources**: 구독자 VOC [X], 앱 리뷰 [Y], 파트너 피드백 [Z]
**Themes identified**: [count]

### Theme Summary
| # | Theme | Requests | Source | Top Ask | Alignment | Metric | Effort | Priority |
|---|-------|----------|--------|---------|-----------|--------|--------|----------|

### Priority 1: Act Now
[Themes/requests to include in near-term planning]
- **[Theme]**: [X] requests — [why it's urgent, which metric it impacts]
  - Top requests: [list]
  - Recommended action: [build / prototype / investigate]

### Priority 2: Plan Next
[Themes worth planning but not urgent]

### Priority 3: Collect More Signal
[Themes with potential but insufficient evidence]

### Priority 4: Decline or Defer
[Requests that don't align with strategy — with rationale]

### Notable Individual Requests
[High-value one-off requests that didn't cluster into themes]

### Patterns and Insights
- [Key insight about what subscribers are telling you]
- [Key insight about what partners need]
- [Gaps between what users ask for and underlying needs]
- [O2O loop friction patterns]
```

Save the report as a markdown file to the user's workspace.

### Step 6: Offer Next Steps

- "Want me to **brainstorm solutions** for any of these themes?"
- "Should I **design experiments** to validate demand before building?"
- "Want me to **create interview scripts** to dig deeper on a specific theme?"
- "Should I **map these to the opportunity solution tree**?"

## Notes

- If the user provides a CSV with columns, preserve the data structure and enrich it
- Look for the need behind the request — "예약 시간대 추가" might really mean "내 스케줄에 맞는 유연한 예약"
- Flag requests that conflict with each other (e.g., "요금 낮춰주세요" vs. "프리미엄 옵션 추가")
- If request volume is large (50+), summarize themes first and offer to drill into specific themes on request
- Always consider the two-sided nature: subscriber requests may require partner changes and vice versa
- Output the enriched data as a downloadable CSV if the input was structured data
