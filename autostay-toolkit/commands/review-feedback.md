---
description: Analyze subscriber and partner feedback — categorize issues, assess quality, and generate improvement plans
argument-hint: "<feedback data as CSV, reviews, or text>"
---

# /review-feedback -- Feedback Analysis & Quality Review

Take subscriber reviews, partner feedback, survey responses, or complaint data and turn them into a categorized quality assessment with actionable improvement plans.

## Invocation

```
/review-feedback                              # asks for input
/review-feedback [paste feedback text]
/review-feedback [upload a CSV/spreadsheet]
```

## Cross-Plugin Dependency

This command chains two skills from different plugins:

- **analyze-feature-requests** (from `autostay-discovery` plugin) — for categorizing and prioritizing feedback themes
- **service-quality-review** (from `autostay-toolkit` plugin) — for quality scoring, issue detection, and improvement plans

Both plugins must be available for full functionality. If `autostay-discovery` is not installed, the command will still perform quality analysis but skip feature-request categorization.

## Workflow

### Step 1: Accept Feedback Data

Accept feedback in any format:
- **Pasted text**: Reviews, comments, complaint descriptions
- **Uploaded file**: CSV, Excel, or text file with feedback records
- **Structured data**: If the input has columns (subscriber, date, rating, comment, partner, etc.), preserve them

If no input is provided, ask the user to paste or upload their feedback data.

Parse each feedback entry to extract:
- The core feedback (what the subscriber/partner is saying)
- Context (who, when, which partner, which service type — if available)
- Sentiment signals (satisfaction, frustration, churn risk)
- Rating data (numerical scores if present)

### Step 2: Gather Analysis Context

Ask the user (conversationally, not all at once):
- What time period does this feedback cover?
- Are there specific partners or regions to focus on?
- Any known issues or recent changes that might explain patterns?
- What is the primary goal? (identify quality issues, compare partners, improve retention, etc.)

### Step 3: Categorize Feedback

Apply the **analyze-feature-requests** skill (from `autostay-discovery`):

- **Theme clustering**: Group feedback into themes (e.g., "세차 품질", "대기 시간", "고객 응대", "예약 시스템", "가격/가치")
- **Feedback count per theme**: How many entries map to each theme
- **Sentiment distribution**: Positive / Neutral / Negative per theme
- **Segment analysis**: Which subscriber segments or partner types are driving which themes
- **Feature requests vs complaints**: Separate improvement suggestions from quality complaints

### Step 4: Assess Quality

Apply the **service-quality-review** skill:

For each theme and the overall service:

| Dimension | Score (1-5) | Key Findings |
|-----------|------------|--------------|
| **세차 품질** | | |
| **속도/대기시간** | | |
| **고객 응대** | | |
| **시설 상태** | | |
| **가격 대비 만족도** | | |

Perform:
- Partner performance comparison (if multiple partners in data)
- Issue pattern detection (recurring complaints, time-based patterns)
- Root cause analysis for the top 3 issues

### Step 5: Generate Report

```
## Feedback Analysis & Quality Review

**Date**: [today]
**Period**: [feedback time period]
**Entries analyzed**: [count]
**Themes identified**: [count]
**Overall quality score**: [score/5.0] — [grade]

### Feedback Summary
| # | Theme | Entries | Sentiment | Top Issue | Quality Impact |
|---|-------|---------|-----------|-----------|---------------|

### Quality Assessment
[5-dimension quality scores with evidence]

### Top Issues
#### Issue 1: [Name]
- **Frequency**: [X entries, Y% of total]
- **Affected partners**: [list]
- **Root cause**: [analysis]
- **Subscriber impact**: [churn risk, NPS impact]

#### Issue 2: [Name]
[Same structure]

#### Issue 3: [Name]
[Same structure]

### Partner Comparison
[If multiple partners in data — ranking table with quality dimensions]

### Improvement Plan
| Priority | Issue | Root Cause | Action | Owner | Timeline |
|----------|-------|-----------|--------|-------|----------|
| P0 | | | | | |
| P1 | | | | | |
| P2 | | | | | |

### Feature Requests from Feedback
[Improvement suggestions extracted from feedback, prioritized]

### Recommendations
- **Short-term** (1-3 months): [actions]
- **Medium-term** (3-6 months): [actions]
- **Long-term** (6-12 months): [actions]
```

Save the report as a markdown file to the user's workspace.

### Step 6: Offer Next Steps

- "Want me to **deep-dive into a specific partner's** quality issues?"
- "Should I **create an onboarding improvement plan** based on these findings?"
- "Want me to **draft a partner communication** about the quality standards?"
- "Should I **design a quality monitoring dashboard** based on these metrics?"
- "Want me to **prioritize the feature requests** extracted from this feedback?"

## Notes

- If feedback is in Korean, keep the analysis and report in Korean
- Look for the underlying need behind complaints — "세차 후 물기가 남아있다" might indicate a process issue, not just a one-time miss
- Flag feedback entries that suggest imminent churn risk (strong negative sentiment + long-term subscribers)
- If feedback volume is large (100+), summarize themes first and offer to drill into specific themes on request
- Cross-reference quality scores with subscriber retention data if available
- Output the enriched data as a downloadable CSV if the input was structured data
