# Module 2.2 — Analyzing Data: Funnel Analysis Without SQL

## What This Unlocks

Most PMs rely on data analysts for anything beyond basic spreadsheet math. There's a constant bottleneck: PM has a question, analyst has a queue, insight is delayed by a week.

With Gemini CLI, you can do your own first-pass analysis on CSV exports, find the signal, and come to your analyst with a specific question rather than a vague one.

You're not replacing your analyst. You're arriving at meetings better prepared.

---

## What Gemini Can Do with Data

- Read CSV files directly with @ references
- Calculate basic metrics (rates, averages, week-over-week change)
- Identify trends, drops, and anomalies
- Surface correlations worth investigating
- Translate raw numbers into plain-English narratives for execs
- Draft the "so what" recommendation from the data

---

## The Stride Activation Funnel

Stride's activation funnel has 7 steps:

```
Signup
  → Completed Setup (target: 70%)
    → Invited a Teammate (target: 60%)
      → Created First Roadmap (target: 50%)
        → Reached Day 7 (retained)
          → Converted to Paid
            → Still Active at Day 30
```

The data lives at `company-context/data/user-metrics.csv`.

---

## Step-by-Step Analysis Workflow

### Step 1: Load the Data and Get Oriented
```
@company-context/data/user-metrics.csv

Read this dataset. Tell me:
1. What time period does it cover?
2. What are the column names and what does each one measure?
3. What's the overall trend in signups over this period?
```

### Step 2: Calculate Funnel Conversion Rates
```
For the most recent 4 weeks, calculate conversion rates at each stage:
- Signup → Completed Setup
- Completed Setup → Invited Teammate
- Invited Teammate → Created First Roadmap
- Created First Roadmap → Reached Day 7
- Reached Day 7 → Converted to Paid
- Converted to Paid → Still Active at Day 30

Format as a funnel table with current rate and implied industry benchmark if you can estimate it.
```

### Step 3: Find the Biggest Drop
```
Where is the single biggest drop-off in the funnel?
What's the gap between current rate and what it would need to be to hit our activation target of 35%?
```

### Step 4: Spot Trends
```
Compare the first 4 weeks vs the last 4 weeks of data.
Is the funnel improving, degrading, or flat?
Which stage improved the most? Which degraded?
```

### Step 5: Build the Narrative
```
Now write a 5-bullet executive summary of this data analysis.
Audience: Priya (our CEO), who wants the headline, the problem, and a recommendation.
No jargon. Use plain numbers. End with one clear recommendation.
```

### Step 6: Save Your Work
```
Save this analysis to outputs/activation-funnel-analysis-april-2026.md
Include the data table, key findings, and the exec summary.
```

---

## Going Deeper

Once you have the funnel picture, these questions are worth asking:

**Segment analysis (if you have more data):**
```
Do users who invite a teammate in week 1 have higher 30-day retention than those who don't?
By how much?
```

**Hypothesis generation:**
```
@company-context/data/user-feedback.md

Based on the funnel drop at [stage] and this feedback data,
what are 3 hypotheses for why users are dropping off here?
Rank them by likelihood and testability.
```

**Experiment design:**
```
For the highest-likelihood hypothesis, design a simple A/B test.
Include: control, variant, success metric, minimum sample size, and how long to run it.
```

---

## Practice

Run `/start-2-2` in Gemini CLI to walk through the full Stride funnel analysis with guided exercises.
