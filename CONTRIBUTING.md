# Contributing to Gemini CLI for PMs

Thanks for improving the course. This guide covers how to propose changes, what to test, and how to structure content.

---

## Types of Contributions

| Type | Examples |
|------|---------|
| Content fixes | Typos, outdated steps, broken instructions |
| Lesson improvements | Clearer exercises, better prompts, missing context |
| New lessons | Additional modules, supplementary exercises |
| Company context | More realistic data, additional personas |
| Repo tooling | CI improvements, test coverage |

---

## Before You Change Anything

1. **Run the tests** — `bash tests/check-course-integrity.sh` must pass
2. **Check the lesson yourself** — run the slash command interactively in Gemini CLI before changing it
3. **Read the lesson pair** — every slash command has a matching reference doc in `/modules/`. Change both.

---

## Content Guidelines

### Slash commands (`.gemini/commands/*.md`)
- Written as instructions TO Gemini — what it should do when the command runs
- Must include a `## Progress Update` section at the end that updates `my-progress.md`
- Tone: direct, collegial, no corporate enthusiasm
- Every exercise must use actual course files (company-context/, etc.) — no hypotheticals

### Module reference docs (`modules/**/*.md`)
- Written for the student to read — explains concepts
- Must end with a "Practice" section pointing to the corresponding slash command
- No jargon without definition
- Concrete examples over abstract descriptions

### Company context (`company-context/`)
- All data must be internally consistent (metrics, dates, ARR figures, team size)
- Changes to `overview.md` may require updates to `GEMINI.md`, personas, and roadmap
- The fictional company is **Stride** — do not rename or replace it

---

## Adding a New Lesson

1. Create the slash command: `.gemini/commands/start-X-X.md`
2. Create the reference doc: `modules/module-X/X.X-topic.md`
3. Add the lesson to `GEMINI.md` course map table
4. Add the lesson to `my-progress.md` checklist
5. Add the lesson to `README.md` course structure table
6. Update the previous lesson's slash command to point `Next up:` to the new lesson
7. Run `bash tests/check-course-integrity.sh`

---

## Branching

- `main` — stable course content, tested
- `develop` — integration branch for in-progress work
- Feature branches: `lesson/1-8-topic`, `fix/progress-tracking`, `chore/update-ci`

---

## Pull / Merge Request

Use the PR template (`.github/pull_request_template.md` or `.gitlab/merge_request_templates/default.md`).

Every PR needs:
- [ ] Tests passing
- [ ] Lesson tested interactively in Gemini CLI
- [ ] Both slash command and reference doc updated if changing lesson content
- [ ] `my-progress.md`, `GEMINI.md`, and `README.md` updated if adding a lesson

---

## Running Tests

```bash
bash tests/check-course-integrity.sh
```

This checks:
- All slash commands referenced in README.md exist as files
- All module docs referenced in README.md exist
- All files referenced inside slash commands exist
- `my-progress.md` lists all lessons
- `GEMINI.md` course map is complete

See `tests/` for full test details.
