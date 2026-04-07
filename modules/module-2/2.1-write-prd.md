# Module 2.1 — Writing a PRD with Gemini CLI

## Why PRDs Are Hard

Writing a PRD isn't about writing — it's about thinking. A good PRD forces you to:
- Articulate the exact problem you're solving
- Define success before you know what you're building
- Make tradeoffs explicit before engineering starts
- Anticipate objections from engineering, design, sales, and legal

Most PRDs are weak because PMs write them in isolation, without stress-testing their thinking against all those perspectives simultaneously.

Gemini CLI changes that. You can get feedback from Aisha, Dev, Marcus, Priya, and your engineering lead — all before sending the doc.

---

## The Gemini-Assisted PRD Process

### Step 1: Start with the Problem, Not the Solution

```
@company-context/overview.md @company-context/data/user-feedback.md

I need to write a PRD for improving Stride's onboarding.

Before I start writing, help me sharpen the problem statement.
Ask me 5 clarifying questions that a good PM should answer before starting a PRD.
Then wait for my answers.
```

Let Gemini interview you. Answer the questions. This surfaces assumptions you'd otherwise bury.

### Step 2: Generate the First Draft

```
Based on my answers, write a PRD first draft for [feature name].
Use this structure:
- Problem Statement (2-3 sentences)
- Success Metrics (3 max, measurable)
- User Stories (3-5, in "As a [persona], I want to..." format)
- Out of Scope (3-5 explicit exclusions)
- Open Questions (unresolved decisions)
- Risks (top 3)

Keep it under 600 words. This is a working draft, not a final doc.
```

### Step 3: Get Multi-Perspective Feedback

```
Now review this PRD from three perspectives. For each, give 2 strengths and 2 gaps:

1. Aisha (enterprise PM lead, needs exec-ready clarity)
2. Marcus (EM, needs enough spec to start building without a meeting)
3. Dev (startup PM, skeptical of anything heavyweight or over-engineered)
```

### Step 4: Add Engineering Constraints

```
@company-context/roadmap.md

Given our current roadmap and team size (45 people, 10 engineers), 
flag any parts of this PRD that seem unrealistic to ship in Q2.
What would you cut to keep it achievable?
```

### Step 5: Final Polish

```
Rewrite the PRD incorporating the feedback. 
Then write a 3-sentence TL;DR I can paste into Slack when I share it.
Save the final version to outputs/prd-ob1-guided-setup.md
```

---

## PRD Anti-Patterns to Avoid (and How Gemini Catches Them)

**Solutioning in the problem statement**
Ask Gemini: "Does my problem statement describe the problem or does it assume the solution? Rewrite it to be solution-agnostic."

**Unmeasurable success metrics**
Ask: "Are my success metrics SMART? Which ones can't be measured with our current analytics stack?"

**Missing out-of-scope section**
Ask: "What is obviously NOT in scope for this PRD that an engineer might assume is included? List them."

**No explicit risks**
Ask: "What's the most likely way this feature fails in production? What's the most likely way it gets delayed? What's the stakeholder most likely to object?"

---

## Practice

Run `/start-2-1` in Gemini CLI to write a real PRD for Stride's OB-1 feature with coached exercises at each step.
