# Module 1.3 — Your First PM Tasks: Prompting That Gets Results

## The Mindset Shift

Most people approach AI like a search engine — short query, expect magic.

PMs should approach it like a smart contractor: give context, give the deliverable format, give the constraints, then get out of the way.

The quality of your output is almost entirely determined by the quality of your input.

---

## The PM Prompting Framework

Every good PM prompt has four elements:

### 1. Role
Tell Gemini who it's being in this conversation.
> "You are a senior product manager reviewing a PRD..."
> "You are an engineering lead skeptical of scope..."
> "You are a churned user from a startup..."

### 2. Context
Give the background. Reference your files.
> "@company-context/overview.md Here's our company situation..."
> "We have 6,500 users and a 23% activation rate..."

### 3. Task
Be specific about the output format and scope.
> "Write a one-pager (not a full PRD)..."
> "Give me 5 bullet points, each under 20 words..."
> "Create a table comparing these three options..."

### 4. Constraints
State what NOT to do, or what limits apply.
> "Don't suggest adding new features — we're in a freeze..."
> "Keep it suitable for a non-technical exec audience..."
> "Focus only on onboarding, not core product..."

---

## Prompt Patterns for Common PM Work

### Synthesize Feedback
```
Role: PM analyst
Context: @company-context/data/user-feedback.md
Task: Identify the top 3 themes in this feedback. For each theme:
  - Name it in 5 words or fewer
  - Summarize in 2 sentences
  - Quote 2 users verbatim
  - Rate severity: High / Medium / Low
Constraints: Don't include themes with fewer than 3 data points
```

### Prioritization Help
```
I have these 5 features to prioritize: [list them]
Evaluate each against: activation impact (1-5), engineering effort (1-5), and strategic alignment with our OKR of improving time-to-first-value.
Output as a table, sorted by priority score.
```

### Draft an Update
```
Draft a Slack message to our engineering team about the OB-1 launch delay.
Context: @company-context/roadmap.md
Tone: Direct, not defensive. Explain the why. State the new date.
Length: Under 100 words.
```

### Get Feedback on Your Own Work
```
Here is a PRD I wrote: [paste PRD]
Review it from three perspectives and give feedback:
1. As Aisha (enterprise PM) — is the scope clear enough to present to execs?
2. As Marcus (EM) — is there enough spec for an engineer to start building?
3. As Dev (startup PM) — is this too heavyweight for a fast-moving team?
For each: 2 strengths and 2 specific suggestions for improvement.
```

---

## Common Mistakes

**Too vague:**
> "Tell me about our users" 
— No file context, no output format, no constraint. Gemini will give generic advice.

**Too prescriptive:**
> "Write exactly 3 bullet points each with exactly 15 words about onboarding from a PM perspective based only on these 3 documents and no other information"
— Over-constraining kills the response quality.

**Not iterating:**
First response isn't perfect? Good. Build on it:
> "The second point is too vague. Make it more specific and add an example."

---

## The "Keep Going" Technique

Gemini is better at starting than knowing when to stop. If you want deeper analysis:
> "Go deeper on point 2. What's actually causing this?"

If you want broader coverage:
> "What did you leave out of that analysis that a good PM would have considered?"

If you want it challenged:
> "Now argue the opposite. What if that's the wrong conclusion?"

---

## Practice

Run `/start-1-3` in Gemini CLI for hands-on practice with these patterns using real Stride data.
