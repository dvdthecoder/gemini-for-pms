# Module 3.2 — Plan Your Tool: Brief Before You Build

## Why Planning Matters in Vibe Coding

The vibe coding loop (describe → build → iterate) works well for simple one-pagers. It breaks down when you try to build something more complex without a plan.

Without a brief:
- Gemini makes assumptions you didn't intend
- You iterate on the wrong thing
- The final tool doesn't quite fit your workflow
- You can't explain to anyone else what it does or why

With a brief: you build the right thing faster, with fewer iterations, and you have a document that explains the tool's purpose.

---

## The PM Tool Brief Format

```markdown
## Tool Name
[Short, descriptive name]

## Problem
[1-2 sentences: what pain does this solve?]

## User
[Who uses it, how often, in what context]

## Input → Output
[Exactly what goes in, exactly what comes out]

## Must Have (v1)
[3-5 bullet points — the minimum viable tool]

## Won't Have (v1)
[3-5 explicit cuts — features that are tempting but deferred]

## Success Test
[How will the user know if the tool is working?]
```

---

## The Must Have / Won't Have Discipline

The hardest part of any PM brief is the "Won't Have" section. It's tempting to add features. Resist.

A good v1 PM tool does one thing completely rather than three things partially.

**Examples of Won't Have being done right:**

| Tool | Tempting to add | Right call: cut it |
|------|----------------|-------------------|
| PRD generator | Edit the PRD in the tool | Copy-paste to Google Docs instead |
| Interview tracker | Auto-transcribe audio | Paste transcript manually for now |
| OKR checker | Suggest OKR improvements | Just flag misalignments, don't fix |
| Update generator | Send the email automatically | Copy-paste to Outlook instead |

The integration, the AI layer, the persistence — all of that is v2. Ship the core loop first.

---

## The Build Brief

Once you have the PM brief, you need to translate it into a prompt for Gemini. This is the build brief — what you actually paste in when you're ready to build.

A good build brief:
- Describes the tool in 2 sentences (what it does, who it's for)
- Specifies the interface (form? table? text input?)
- Specifies input format (typed text? pasted content? file?)
- Specifies output format (table? bullet list? downloadable?)
- Names the output file
- Ends with: "Build the complete, working version in one file."

No more than one page. If it's longer, your scope is too big.

---

## Practice

Run `/start-3-2` in Gemini CLI to choose your tool, write the brief, and prepare the build brief for lesson 3.3.
