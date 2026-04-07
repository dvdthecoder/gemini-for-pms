# Gemini CLI for Product Managers

A free, hands-on course for PMs who want to work faster using AI — taught entirely inside Gemini CLI.

No coding experience required. No paid subscription needed.

---

## Why Gemini CLI?

| | Gemini CLI | Other AI tools |
|---|---|---|
| Cost | **Free** with Google account | $20–$200/month |
| Context window | **1M tokens** (your entire doc library) | 8K–200K tokens |
| Web search | **Built-in, real-time** | Add-on or absent |
| Enterprise | **Works with Google Workspace** | Separate approval needed |
| Terminal | Yes | No |

---

## What You'll Learn

By the end of this course you'll be able to:

- Synthesize large sets of user research and feedback in seconds
- Write, iterate, and stress-test PRDs with AI as a thinking partner
- Analyze product data and surface actionable insights
- Run competitive research using live web data
- Build simple internal PM tools without writing a line of code

---

## Prerequisites

- A Google account (free) or Google Workspace account
- A Mac, Windows, or Linux computer
- No terminal or coding experience required
- ~8–10 hours total (self-paced)

---

## Course Website

- **GitHub Pages:** https://dvdthecoder.github.io/gemini-for-pms
- **GitLab Pages (Cimpress):** https://cimpress-technology.gitlab.io/sa/gemini-for-pms

## Setup

### No git? Download the zip (recommended for most PMs)

1. Download **gemini-for-pms.zip** from wherever your team shared it
2. Unzip it — you'll get a folder called `gemini-for-pms`
3. Run the setup script for your OS:

| OS | What to do |
|----|-----------|
| **Mac** | Open Terminal → type `bash ` → drag `setup.sh` into Terminal → press Enter |
| **Windows** | Double-click `setup.bat` |
| **Linux** | Open Terminal → `bash setup.sh` |

The script installs Gemini CLI, signs you in with Google, and launches the course.

### Using git

```bash
git clone https://github.com/dvdthecoder/gemini-for-pms
cd gemini-for-pms
bash setup.sh
```

### Manual setup

```bash
npm install -g @google/gemini-cli
mkdir -p ~/.gemini
gemini auth login
cd gemini-for-pms
gemini
```

Once inside Gemini CLI, type `/start-0-2` to begin.

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

## Navigating the Course

The entire course runs inside Gemini CLI. Once you've run `gemini` from this folder:

| You want to... | Type this |
|----------------|-----------|
| See your progress and what's next | `/course-map` |
| Start from the beginning | `/start-0-2` |
| Jump to a specific lesson | `/start-1-3` (or any lesson number) |
| Check where you left off | `@my-progress.md Where did I leave off?` |
| Get help | `/help` |

Your progress is saved automatically at the end of each lesson in `my-progress.md`.

---

## The Company: Stride

Throughout this course, you're a Senior PM at **Stride** — a product management platform for distributed teams. You've just joined and inherited a serious problem: activation is broken, users are churning, and nobody agrees on what to build next.

Gemini CLI is your weapon.

---

Made for internal use. Share freely within your team.
