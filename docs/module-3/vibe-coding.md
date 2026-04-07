# Module 3.1 — Vibe Coding: Build a PM Tool Without Writing Code

## What Is Vibe Coding?

Vibe coding is building software by describing what you want in plain English, letting AI write the code, and iterating until it works.

You're not a developer. You're not going to become one. But you can build things.

Not complex enterprise systems — but simple, specific tools that solve real PM problems:
- A weekly update template generator
- A PRD scoring checklist
- A meeting note summarizer
- A backlog prioritization calculator
- A competitive feature comparison tracker

These are tools that would cost thousands in agency fees or sit months on an engineering backlog. With Gemini CLI, you build them in an afternoon.

---

## What You'll Build in This Module

**A one-page Activation Dashboard** for Stride:
- Displays key funnel metrics from your CSV data
- Shows week-over-week changes highlighted in red/green
- Generates a plain-English summary below the numbers
- Works as a shareable HTML file you open in any browser

---

## The Vibe Coding Mindset

**You are the PM. Gemini is the engineer.**

Your job: define outcomes, review the build, give feedback, decide when it's done.
Gemini's job: write code, fix bugs, iterate.

You never need to understand the code. You only need to know if it works.

---

## The Build Workflow

### Step 1: Define the Outcome

```
I want to build a simple HTML page that displays Stride's activation funnel data.
It should:
- Display the last 4 weeks of data from company-context/data/user-metrics.csv
- Show a table with conversion rates at each funnel stage
- Highlight the biggest week-over-week drop in red
- Show our key metric: signup-to-paid conversion rate as a big number at the top
- Include a one-paragraph plain English summary at the bottom

Keep it simple — shareable as a file, not deployed.
Create it at outputs/activation-dashboard.html
```

### Step 2: Review and Give Feedback

Open the file in your browser. Then:

```
The dashboard loaded but:
1. The table is hard to read — add alternating row colors
2. The headline number is too small — make it much larger
3. The summary is too technical — rewrite it for a CFO audience
Update the file.
```

### Step 3: Add Features

```
Add a "Recommended Actions" section below the dashboard.
Based on the data, generate 3 bullet points with specific actions for the PM team this week.
Keep each bullet under 15 words.
```

### Step 4: Polish

```
Final changes:
1. Add title: "Stride Activation Dashboard — Week of [current date]"
2. Add footer: "Generated with Gemini CLI | Data: Jan–Mar 2026"
Save the final version.
```

---

## Going Further

**PRD Template Generator:** Describe a feature, get a structured PRD pre-filled with your personas.

**Meeting Notes Summarizer:** Paste notes, get decisions, action items, and open questions.

**Backlog Prioritizer:** Input features with impact/effort scores, get a ranked recommendation list.

**Weekly Update Generator:** Reads your roadmap, drafts update emails for exec, engineering, and sales.

---

## The Key Insight

A scrappy HTML file that saves your team 2 hours per week is better than a perfectly designed app that takes 3 months to build.

Build ugly. Ship fast. Improve what gets used.

---

## Practice

Run `/start-3-1` in Gemini CLI to build the Stride Activation Dashboard step by step.
