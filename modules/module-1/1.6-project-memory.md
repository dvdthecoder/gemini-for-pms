# Module 1.6 — Project Memory: The GEMINI.md File

## The Problem with AI Conversations

Every time you start a new Gemini CLI session, it starts fresh. No memory of last week's conversation, no recollection of your company context, no knowledge of what you decided last time.

For a PM who works on the same product every day, this is friction. You'd have to re-explain Stride, re-load your personas, and re-establish context every single session.

`GEMINI.md` solves this.

---

## What Is GEMINI.md?

`GEMINI.md` is a plain markdown file that Gemini CLI automatically reads at the start of every session when it's present in your project folder.

Think of it as a briefing document you hand to a new consultant on their first day — except it works automatically, every day, before you say a word.

You write it once. It loads forever (until you update it).

---

## What to Put in GEMINI.md

### 1. Company context (brief)
Who you are, what your company does, what problem you're trying to solve.

### 2. Your role
What decisions you're empowered to make, what your current focus is.

### 3. Active projects
What you're working on right now, with links to relevant files.

### 4. Preferences and constraints
How you like Gemini to respond. What format, what tone, what to avoid.

### 5. Glossary
Any internal terms or abbreviations Gemini might misinterpret.

---

## Example Structure

```markdown
# My PM Workspace — Gemini Project Memory

## Company: Stride
- Product management platform for distributed teams
- Series A, $10M raised, 6,500 active users
- Company context: @company-context/overview.md
- User personas: @company-context/personas.md

## My Role
Senior PM, Growth & Onboarding. Focused on improving activation rate from 23% to 35%.

## Active Projects
- OB-1: Guided setup flow (in progress — @company-context/roadmap.md)
- OB-2: Team invite nudge (planning)
- Competitive analysis (starting this week)

## How I Like to Work with Gemini
- Default output format: short bullets unless I ask for docs
- Always pressure-test ideas against all 3 personas (Aisha, Dev, Marcus)
- When writing for execs: concise, metric-backed, no jargon
- When writing for engineering: specific, unambiguous, include acceptance criteria

## Glossary
- OB = Onboarding
- TTF = Time to First Value
- Activation = User completes setup AND invites 1 teammate within 7 days
```

---

## The GEMINI.md Already in This Course

This course folder already has a `GEMINI.md` that tells Gemini you're a PM student learning through the Stride scenario. You don't need to edit it to complete the course.

But once you understand how it works, you should create your own `GEMINI.md` in any folder where you do real PM work — and let it carry your context automatically.

---

## When to Update Your GEMINI.md

- When your focus changes ("I'm now working on monetization, not onboarding")
- When you complete a major project (archive it, update active projects)
- When you have a new preference for how Gemini should respond
- When you onboard a new team member who will use the same folder

---

## Multi-User GEMINI.md

If your team uses a shared project folder, a shared `GEMINI.md` means everyone's Gemini sessions start with the same baseline context. This is powerful:

- New team members get ramped up faster
- Everyone uses consistent terminology
- Shared constraints (e.g., "we don't discuss pricing with engineers") are enforced automatically

---

## Practice

Run `/start-1-6` in Gemini CLI to write your own GEMINI.md for a hypothetical new project.
