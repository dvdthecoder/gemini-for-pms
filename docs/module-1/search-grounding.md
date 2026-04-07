# Module 1.5 — Google Search Grounding: Real-Time Research Built In

## What Is Search Grounding?

Most AI models are trained on data with a cutoff date. Ask about a competitor's latest feature, a recent funding round, or current market trends — and you get either outdated information or a polite admission that the model doesn't know.

Gemini CLI has Google Search built in. When it needs current information, it searches and returns real, cited results. No plugins, no setup, no extra steps.

This is on by default. You don't need to enable anything.

---

## Why This Matters for PMs

Product management is one of the most information-hungry jobs in a company:

- Competitive intelligence changes weekly
- Market trends shift with each funding cycle
- User behavior norms evolve as adjacent tools ship features
- Pricing benchmarks drift every quarter

Before Gemini CLI, you'd tab out of your AI conversation, Google things yourself, copy relevant snippets, paste them back in, and repeat 8 times. Now Gemini does all of that inside the conversation.

---

## What to Use It For

### Competitive Research
```
Search for the latest updates to Productboard's onboarding flow in 2026. 
What new features have they added? How are PMs reacting on Twitter/LinkedIn?
```

```
Compare Stride's current pricing (we're at $23/seat/month) against Productboard, Linear, and Notion's team plans. Are we priced correctly for Series A SaaS companies?
```

### Market Context
```
Search for recent articles about B2B SaaS onboarding benchmarks in 2025–2026. 
What's considered a good trial-to-paid conversion rate for a product management tool?
```

### Funding & Company News
```
Has any of our key competitors (Productboard, Craft.io, Roadmunk) raised funding in the last 6 months? What does that signal for their product direction?
```

### Feature Inspiration
```
Search for "product onboarding best practices 2025 2026". 
What are the top 3 techniques that enterprise SaaS companies are using for team activation (not just individual user activation)?
```

### Reference Validation
```
I'm writing a PRD that references the Fogg Behavior Model. 
Search for a quick summary and check if there are any newer critiques or updates to this model I should be aware of.
```

---

## How to Ask for Searches

You can be explicit:
```
Search the web for: [your query]
```

Or just ask naturally — Gemini will search when it needs to:
```
What are Jira's current enterprise pricing tiers? I want to compare against ours.
```

Gemini will tell you when it's searching and cite its sources. If it doesn't search when you expect it to, add:
```
Use Google Search to find current information on this.
```

---

## Combining Search with Your Documents

This is where it gets powerful. You can combine live web research with your own internal documents in one prompt:

```
@company-context/overview.md @company-context/personas.md

Our activation rate is 23%. Search for what the industry benchmark is for B2B SaaS product management tools. Then tell me:
1. How far are we from benchmark?
2. What are the top 3 things leading SaaS companies do in their first 7 days that we should consider?
3. Which of our personas is most underserved by our current approach based on what you find?
```

This combines:
- Your actual company data (internal files)
- Live industry benchmarks (Google Search)
- AI reasoning across both

---

## A Word of Caution

Search grounding is powerful but not infallible. Gemini will tell you its sources — verify anything important before putting it in a board deck or external document. Treat Gemini's web research the same way you'd treat a junior analyst who did a quick Google: useful signal, but sanity-check it.

---

## Practice

Run `/start-1-5` in Gemini CLI to do a live competitive research exercise for Stride.
