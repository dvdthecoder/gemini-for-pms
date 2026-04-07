# Module 1.4 — Working with Files: @ References and File Operations

## The @ Symbol: Your Most Useful Shortcut

In Gemini CLI, typing `@` followed by a file path includes that file's entire contents in your message. Gemini reads it directly — you don't copy-paste anything.

```
@company-context/overview.md Summarize our biggest business risk in one sentence.
```

This is more powerful than it sounds. It means your AI context is always working from your actual documents, not stale copy-pastes.

---

## Common File Patterns for PMs

### Reference a single document
```
@company-context/personas.md Which persona is most at risk from our current onboarding flow?
```

### Compare two documents
```
@company-context/roadmap.md @company-context/data/user-feedback.md
Does our roadmap address the top feedback themes? What's missing?
```

### Load data for analysis
```
@company-context/data/user-metrics.csv
Calculate week-over-week change in setup completion rate.
Which week had the biggest drop? Any hypotheses why?
```

### Reference your own work-in-progress
```
@outputs/prd-draft-v1.md
This is my draft PRD. What's the weakest section and how would you strengthen it?
```

---

## Gemini Can Also Write Files

Gemini CLI doesn't just read files — it can create and edit them on your computer.

**Create a new document:**
```
Write a one-page executive summary of our activation problem.
Save it as outputs/activation-summary.md
```

**Update an existing document:**
```
@company-context/roadmap.md
Add a new item to the Q2 section: "OB-2: Fix invite email deliverability — P0, unplanned."
Save the updated version.
```

**Organize and rename:**
```
I have 8 research transcripts in /research/raw/. Read through them and save a combined synthesis document to /research/synthesis-q1-2026.md
```

---

## Practical File Workflow for PMs

Here's how a typical Gemini CLI work session looks:

```
1. Start with context
   @company-context/overview.md @company-context/personas.md
   Here's our situation. I'm working on the onboarding problem.

2. Do the work
   Draft me a problem statement for the activation issue. Include:
   - The gap (current vs. target metric)
   - Root cause hypothesis
   - Who is most affected (which persona)
   - What success looks like

3. Save the output
   Save this problem statement to outputs/problem-statement.md

4. Iterate
   @outputs/problem-statement.md
   Tighten the root cause section — it's too vague. Add a specific hypothesis.

5. Reference in future sessions
   @outputs/problem-statement.md
   Build on this to draft the PRD introduction.
```

---

## Tips

- **Paths are relative to where you started Gemini CLI.** If you opened Gemini from inside `gemini-for-pms/`, then `@company-context/overview.md` works. If you opened it from your home folder, the path would be longer.

- **@ works with any text file** — markdown, CSV, txt, JSON, even code files. It doesn't work with PDFs or Word docs directly (convert to text first).

- **You can @ multiple files in one message** — there's no limit within the 1M token window.

- **Always ask Gemini to save outputs** — otherwise the work only lives in your conversation. Give it a filename like `outputs/[descriptive-name]-[date].md`.

---

## Practice

Run `/start-1-4` in Gemini CLI to practice @ references with Stride's documents.
