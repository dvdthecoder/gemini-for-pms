# Module 1.2 — The 1M Context Window: A PM's Superpower

## What Is a Context Window?

Every AI model has a limit to how much text it can "hold in mind" at once. This is called the context window, measured in tokens (roughly 0.75 words per token).

Most AI tools: 8,000–32,000 tokens
GPT-4: 128,000 tokens
**Gemini 2.5 Pro: 1,000,000 tokens**

One million tokens is roughly 750,000 words — or about 1,500 typical product documents.

---

## Why This Matters for PMs Specifically

Product managers deal with information overload by profession. You're constantly context-switching between:
- User research from last quarter
- Engineering constraints from this sprint
- Stakeholder opinions from last week's meeting
- Market data from a report you half-read
- Your own PRDs from 6 months ago

Normally you hold all of this in your own head (badly) or lose it across 15 open tabs.

With a 1M token context window, you can load all of it into Gemini at once and ask questions that span all of it.

---

## Concrete Examples

### Synthesizing Across Many Sources
```
Load all five of these research transcripts and tell me:
1. What's the single most common frustration across all respondents?
2. Does it differ by company size?
3. Quote 3 users who described it most clearly.
```

### Finding Contradictions
```
Here are our Q3 OKRs and our Q3 product roadmap. Find anywhere they contradict each other or where the roadmap doesn't support any OKR.
```

### Cross-Document Reasoning
```
Read our activation data from the last 6 months, our user personas, and our feedback dump. 
What's the most likely root cause of our low activation rate?
```

### Historical Pattern Matching
```
Read all 23 PRDs we shipped in 2025. What types of features had the highest engineering complexity estimates? Did those correlate with delayed launches?
```

---

## How to Use It in Practice

### Reference Files with @
In Gemini CLI, prefix any filename with `@` to include it in your context:

```
@company-context/data/user-feedback.md What are the top 3 themes in this feedback?
```

Or load multiple files:
```
@company-context/overview.md @company-context/personas.md 
Given this company and these personas, what's missing from our onboarding flow?
```

### Paste Large Docs Directly
You can paste thousands of words directly into Gemini CLI and it handles it. No "document too long" errors.

### Start with a Focused Question
The context window holds everything — but your questions should still be specific. "What does this mean?" with 50 docs loaded is less useful than "What does the feedback from enterprise users say about our onboarding?"

---

## The Competitive Advantage

Other teams are using AI to answer small, isolated questions. You'll be using it to reason across your entire information landscape at once — finding patterns that aren't visible when you look at any single document.

That's not a productivity improvement. That's a different way of working.

---

## Practice

Run `/start-1-2` in Gemini CLI to practice loading Stride's documents and asking cross-document questions.
