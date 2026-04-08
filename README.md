# Gemini CLI for Product Managers

A free, hands-on course for PMs who want to work faster using AI — taught entirely inside Gemini CLI.

No coding experience required. No paid subscription needed.

---

## Course Website

https://dvdthecoder.github.io/gemini-for-pms

---

## Taking the Course

You don't need GitHub, git, or any coding experience.

**1. Download the course folder**

[Download from GitHub](https://github.com/dvdthecoder/gemini-for-pms/releases/latest/download/gemini-for-pms.zip)

Unzip the downloaded file. You'll get a folder called `gemini-for-pms`.

**2. Run the setup script**

| OS | What to do |
|----|-----------|
| **Mac** | Open Terminal → type `bash ` → drag `setup.sh` into Terminal → press Enter |
| **Windows** | Double-click `setup.bat` |
| **Linux** | `bash setup.sh` |

The script installs Gemini CLI, signs you in with Google, and verifies the course files are intact.

**3. Start the course**

```bash
cd gemini-for-pms   # or wherever you unzipped it
gemini              # opens Gemini CLI
```

Inside Gemini CLI, type:

```
/start-0-2
```

The first interactive lesson begins. See the [full course website](https://dvdthecoder.github.io/gemini-for-pms) for the lesson list.

---

## What You'll Learn

By the end of this course you'll be able to:

- Synthesize large sets of user research and feedback in seconds
- Write, iterate, and stress-test PRDs with AI as a thinking partner
- Analyze product data and surface actionable insights
- Run competitive research using live web data
- Build simple internal PM tools without writing a line of code

---

## Course Structure

### Module 0: Getting Started
| Lesson | Topic | Slash Command |
|--------|-------|---------------|
| [0.0 Introduction](modules/module-0/0.0-introduction.md) | What is Gemini CLI and why PMs should care | — |
| [0.1 Installation](modules/module-0/0.1-installation.md) | Step-by-step setup guide | — |
| [0.2 First Run](modules/module-0/0.2-first-run.md) | Orient yourself inside Gemini CLI | `/start-0-2` |

### Module 1: Fundamentals
| Lesson | Topic | Slash Command |
|--------|-------|---------------|
| [1.1 Welcome](modules/module-1/1.1-welcome.md) | Meet Stride, understand the course | `/start-1-1` |
| [1.2 Context Window](modules/module-1/1.2-context-window.md) | The 1M token superpower | `/start-1-2` |
| [1.3 First Tasks](modules/module-1/1.3-first-tasks.md) | Prompting basics for PMs | `/start-1-3` |
| [1.4 File References](modules/module-1/1.4-file-references.md) | Working with @-file references | `/start-1-4` |
| [1.5 Search Grounding](modules/module-1/1.5-search-grounding.md) | Real-time web research | `/start-1-5` |
| [1.6 Project Memory](modules/module-1/1.6-project-memory.md) | GEMINI.md and persistent context | `/start-1-6` |
| [1.7 Navigation](modules/module-1/1.7-navigation.md) | Keyboard shortcuts, session hygiene, context tips | `/start-1-7` |

### Module 2: Advanced PM Work
| Lesson | Topic | Slash Command |
|--------|-------|---------------|
| [2.1 Write a PRD](modules/module-2/2.1-write-prd.md) | PRD creation with multi-perspective review | `/start-2-1` |
| [2.2 Analyze Data](modules/module-2/2.2-analyze-data.md) | Activation funnel analysis | `/start-2-2` |
| [2.3 Competitive Strategy](modules/module-2/2.3-competitive-strategy.md) | Live competitive research and positioning | `/start-2-3` |

### Module 3: Vibe Coding
| Lesson | Topic | Slash Command |
|--------|-------|---------------|
| [3.1 Build a PM Tool](modules/module-3/3.1-vibe-coding.md) | Build the Stride Activation Dashboard | `/start-3-1` |
| [3.2 Plan Your Tool](modules/module-3/3.2-plan-your-tool.md) | Brief before you build | `/start-3-2` |
| [3.3 Share & Deploy](modules/module-3/3.3-share-and-deploy.md) | Publish and package your work | `/start-3-3` |

---

## Contributing

Found a bug in a lesson? Want to improve an exercise or add a new one?

### Setup for contributors

You'll need git, Node.js, and a GitHub account.

```bash
git clone https://github.com/dvdthecoder/gemini-for-pms
cd gemini-for-pms
bash setup.sh
```

### Workflow

1. Open an issue describing the problem or improvement
2. Create a branch: `git checkout -b fix/your-description`
3. Make your changes
4. Run the integrity tests: `bash tests/check-course-integrity.sh`
5. Push and open a pull request against `main`

### What's in the repo

| Path | What it is |
|------|-----------|
| `modules/` | Course lesson content (`.md` files) |
| `.gemini/commands/` | Slash command definitions (`.toml` files) |
| `GEMINI.md` | Auto-loaded project memory for Gemini CLI |
| `company-context/` | Fictional company data used in exercises |
| `docs/` | MkDocs website source |
| `setup.sh` / `setup.bat` | Student-facing setup scripts |
| `scripts/build-zip.sh` | Builds the distributable zip for releases |
| `tests/` | Course integrity tests |
| `.github/workflows/` | CI, docs deployment, release automation |
| `.gitlab-ci.yml` | GitLab CI configuration |

### Running tests locally

```bash
bash tests/check-course-integrity.sh
```

The test suite runs automatically on every pull request via GitHub Actions.

---

## Building Your Own Version

This repo is designed to be forkable. The fictional company (Stride), the exercises, and the company context files can all be swapped out for your own.

### What to customize

| File / Folder | What to change |
|---------------|---------------|
| `company-context/` | Replace Stride data with your company or scenario |
| `modules/` | Rewrite lessons for your audience and use cases |
| `.gemini/commands/*.toml` | Update slash command prompts to match new content |
| `GEMINI.md` | Update company context and course map |
| `my-progress.md` | Update lesson list to match your modules |
| `mkdocs.yml` | Change `site_name`, `site_url`, `repo_url` |
| `docs/` | Rewrite the website content |

### What to keep

- The slash command TOML format in `.gemini/commands/` — this is how Gemini CLI loads custom commands
- The `GEMINI.md` auto-load pattern — this is how session context is preserved
- The `my-progress.md` progress tracking pattern
- The `setup.sh` / `setup.bat` / `setup.ps1` scripts (update the course folder name)
- The `scripts/build-zip.sh` and GitHub Actions release workflow

### Forking checklist

- [ ] Fork the repo on GitHub
- [ ] Update `mkdocs.yml`: `site_name`, `site_url`, `repo_url`, `repo_name`
- [ ] Replace `company-context/` files
- [ ] Rewrite `GEMINI.md` with your project context
- [ ] Update lesson `.md` files in `modules/`
- [ ] Update `.gemini/commands/*.toml` prompts
- [ ] Update `my-progress.md` lesson list
- [ ] Run `bash tests/check-course-integrity.sh` to verify
- [ ] Push a tag to trigger the release workflow: `git tag v1.0.0 && git push --tags`
