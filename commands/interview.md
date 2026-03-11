---
description: Prepare an Autostay interview script (subscriber or partner) or summarize an interview transcript into structured insights
argument-hint: "[prep|summarize] <topic or transcript>"
---

# /interview -- Customer Interview Prep & Summary (Autostay)

Two modes: **prep** creates a structured interview script before you talk to Autostay subscribers or partners, **summarize** extracts insights after you've done the interview.

## Invocation

```
/interview prep 구독자 이탈 원인 조사
/interview prep 파트너 세차장 운영 효율성
/interview summarize [paste transcript or upload file]
/interview                    # asks which mode you need
```

## Modes

---

### Prep Mode

Create a structured interview script tailored to Autostay's subscriber or partner research.

#### Workflow

**Step 1: Understand the Research Goal**

Ask the user:
- What are you trying to learn? (specific research question)
- Who are you interviewing? (구독자, 이탈자, 잠재 고객, 파트너 세차장)
- Which built-in template to use?
  - **구독자 인터뷰**: Car care habits, subscription decision, satisfaction
  - **파트너 인터뷰**: Business model fit, operations, revenue share
- How much time do you have? (15 min, 30 min, 60 min)
- What decisions will this research inform?

**Step 2: Generate Interview Script**

Apply the **interview-script** skill:

- Select the appropriate built-in template (구독자 or 파트너)
- Follow "The Mom Test" principles — ask about their life, not your idea
- No leading questions, no pitching, focus on past behavior and real situations
- Structure the script in sections:

```
## Interview Script: [Research Topic]

**연구 질문**: [what we're trying to learn]
**대상**: [구독자 / 파트너 / 잠재 고객]
**소요 시간**: [X] minutes
**템플릿**: [구독자 인터뷰 / 파트너 인터뷰 / 커스텀]

### Warm-up (3-5 min)
[Rapport-building questions, car/business context understanding]

### Core Exploration (15-40 min)
[JTBD probing, past behavior, current car care workflow / business operations, pain points]
- For each question: the question + why you're asking it + follow-up prompts

### Specific Topics (5-10 min)
[Targeted questions about specific features, subscription plans, or partner tools — if needed]

### Wrap-up (3-5 min)
[Open-ended closing, referral ask, next steps]

### Note-Taking Template
[Pre-formatted template to capture insights during the interview]

### Red Flags to Watch For
[Signs the conversation is going off-track or the participant is being polite rather than honest]
```

**Step 3: Customize and Review**

- Adjust question count to fit the time slot
- Add probing questions for specific hypotheses the user wants to test
- Flag questions that might lead the witness
- Offer a printable version (markdown file saved to workspace)

---

### Summarize Mode

Transform an interview transcript into structured, actionable insights for Autostay.

#### Workflow

**Step 1: Accept the Transcript**

Accept in any format:
- **Pasted text**: Raw transcript or notes
- **Uploaded file**: Document, text file, or meeting notes export
- **Audio summary**: If the user describes what was said (not a full transcript)

If the input is rough notes rather than a full transcript, work with what's available and note the limitations.

**Step 2: Extract and Structure**

Apply the **summarize-interview** skill:

Parse the transcript to identify:
- **Participant profile**: 구독자/파트너/잠재 고객, experience level, segment, context
- **Jobs to Be Done**: What the participant is trying to accomplish with car care / car wash business
- **Current workflow**: How they manage car care / operations today
- **Pain points**: Frustrations, workarounds, time sinks in the O2O experience
- **Satisfaction signals**: What works well, moments of delight
- **Quotes**: Verbatim quotes that capture key insights (with timestamps if available)
- **Surprises**: Anything unexpected or that contradicts assumptions
- **Subscription/Partnership reactions**: How they feel about the subscription model, pricing, or partnership terms

**Step 3: Generate Interview Summary**

```
## Interview Summary

**참가자**: [anonymized profile — 구독자/파트너, segment, experience]
**날짜**: [if known]
**소요 시간**: [if known]
**인터뷰어**: [if known]

### Key Insights
1. **[Insight]** — [supporting evidence/quote]
2. **[Insight]** — [supporting evidence/quote]
3. ...

### Jobs to Be Done
- **Primary JTBD**: [When I..., I want to..., so I can...]
- **Related JTBDs**: [additional jobs]

### Current Workflow
[How the participant currently manages car care / operations, step by step]

### Pain Points
| Pain Point | Severity | O2O Stage | Quote |
|-----------|----------|-----------|-------|

### Satisfaction Signals
| What Works | Why | Quote |
|-----------|-----|-------|

### Notable Quotes
> "[quote]" — on [topic]

### Assumptions Validated / Invalidated
| Assumption | Status | Evidence | Metric Impact |
|-----------|--------|----------|---------------|

### Action Items
- [ ] [Follow-up action from this interview]
- [ ] [Research question to explore further]

### Raw Notes
[If helpful, include annotated key sections]
```

Save the summary as a markdown file.

**Step 4: Connect to Broader Research**

Offer:
- "Want me to **compare this with other interview summaries** you've done?"
- "Should I **update assumptions** based on what this participant said?"
- "Want me to **refine subscriber/partner personas** from multiple interviews?"

## Notes

- In prep mode, always include "why you're asking" annotations — they help the interviewer stay on track
- In summarize mode, distinguish between what the participant *said* vs. what they *did* (behavioral > stated)
- Flag contradictions within the same interview (says one thing, describes doing another)
- If the transcript mentions competitor car wash services, capture competitive intelligence
- For summarize mode, if multiple transcripts are provided, synthesize across them with cross-participant patterns
- Always tag insights with the relevant Autostay metric (MRR, Churn, LTV, NPS) when possible
