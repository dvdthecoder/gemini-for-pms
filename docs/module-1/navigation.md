# Module 1.7 — Gemini CLI Navigation: Working Efficiently in the Terminal

## The Commands Worth Knowing

### `/clear`
Resets the conversation history — like opening a new chat window. Does NOT delete any files. Use when a session gets long or unfocused. GEMINI.md still loads automatically after a clear.

### `/quit`
Exits Gemini CLI. Equivalent to Ctrl+C.

### `/help`
Shows built-in Gemini CLI help and available slash commands including your course commands.

### `/course-map`
Shows your course progress and tells you what lesson is next. Run this any time you're not sure where you are.

---

## Keyboard Shortcuts

| Shortcut | What it does |
|----------|-------------|
| `Enter` | Submit your message |
| `Shift+Enter` | New line without submitting (for multi-line prompts) |
| `Ctrl+C` | Quit Gemini CLI |
| `↑ Arrow` | Recall previous message |
| `Ctrl+L` | Clear the screen (doesn't reset context) |

---

## Session Patterns

### Starting a Session Right
Every time you open Gemini CLI for course work, start with:
```
@my-progress.md @GEMINI.md Where did I leave off?
```
This re-orients both you and Gemini in under 5 seconds.

### Focused Work Session
When working on a specific task, load only what's relevant:
```
@company-context/personas.md @outputs/prd-draft.md
Review the personas section of this PRD.
```
Avoid loading the entire company context for targeted tasks.

### Deep Research Session
When exploring or synthesizing, load broadly:
```
@company-context/overview.md @company-context/personas.md @company-context/data/user-feedback.md @company-context/data/user-metrics.csv
```
The 1M context window handles large loads well.

### Continuation Session
Pick up where you left off:
```
@my-progress.md What did I last work on?
@outputs/[last-file].md Let's continue from here.
```

---

## Context Window Tips

**Signs your context is overloaded:**
- Responses get shorter and less specific
- Gemini forgets something you mentioned earlier in the same session
- Answers feel generic despite specific context

**Fix:** Type `/clear` and reload only the files you need for the current task.

**Signs your prompt is too vague:**
- Response is long but doesn't answer your question
- Multiple interpretations offered instead of one direct answer

**Fix:** Add constraints. Specify format. Use Role/Context/Task/Constraints.

---

## File Path Tips

All @ references are relative to where you started Gemini CLI. If you opened Gemini from inside `gemini-for-pms/`, then:

```
@company-context/overview.md      ✓ works
@gemini-for-pms/company-context/overview.md   ✗ wrong
```

If a file isn't loading, ask: `What is my current working directory?`

---

## Practice

Run `/start-1-7` in Gemini CLI for the interactive version of this lesson.
