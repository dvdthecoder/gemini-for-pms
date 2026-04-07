#!/usr/bin/env bash
# =============================================================
#  Build the distributable course zip
#  Run from the repo root: bash scripts/build-zip.sh
# =============================================================
# Produces: gemini-for-pms.zip
# Excludes: student outputs, personal files, git history, CI
# =============================================================

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

ZIP_NAME="gemini-for-pms.zip"
TEMP_DIR=$(mktemp -d)
COURSE_DIR="$TEMP_DIR/gemini-for-pms"

echo ""
echo "Building $ZIP_NAME..."
echo ""

# ── Copy course files ─────────────────────────────────────────
mkdir -p "$COURSE_DIR"

rsync -a \
  --exclude='.git' \
  --exclude='.github' \
  --exclude='.gitlab' \
  --exclude='.gitlab-ci.yml' \
  --exclude='scripts/' \
  --exclude='outputs/*' \
  --exclude='my-gemini.md' \
  --exclude='*.zip' \
  --exclude='.DS_Store' \
  --exclude='node_modules' \
  "$ROOT/" "$COURSE_DIR/"

# ── Ensure outputs/.gitkeep is included ──────────────────────
mkdir -p "$COURSE_DIR/outputs"
touch "$COURSE_DIR/outputs/.gitkeep"

# ── Reset my-progress.md to blank state ──────────────────────
cat > "$COURSE_DIR/my-progress.md" << 'EOF'
# My Gemini CLI for PMs — Progress

> This file is updated automatically at the end of each lesson.
> Type `/course-map` anytime to see your progress and pick up where you left off.

---

## Current Position

**Last completed:** Not started yet
**Next up:** `/start-0-2` — First Run (or `/start-1-1` if already installed)

---

## Lessons

### Module 0: Getting Started
- [ ] 0.0 Introduction — read `modules/module-0/0.0-introduction.md`
- [ ] 0.1 Installation — read `modules/module-0/0.1-installation.md`
- [ ] 0.2 First Run — `/start-0-2`

### Module 1: Fundamentals
- [ ] 1.1 Welcome to Stride — `/start-1-1`
- [ ] 1.2 The 1M Context Window — `/start-1-2`
- [ ] 1.3 Your First PM Tasks — `/start-1-3`
- [ ] 1.4 Working with Files — `/start-1-4`
- [ ] 1.5 Google Search Grounding — `/start-1-5`
- [ ] 1.6 Project Memory — `/start-1-6`
- [ ] 1.7 Gemini CLI Navigation — `/start-1-7`

### Module 2: Advanced PM Work
- [ ] 2.1 Write a PRD — `/start-2-1`
- [ ] 2.2 Analyze Activation Data — `/start-2-2`
- [ ] 2.3 Competitive Strategy — `/start-2-3`

### Module 3: Vibe Coding
- [ ] 3.1 Build a PM Tool — `/start-3-1`
- [ ] 3.2 Plan Your Tool — `/start-3-2`
- [ ] 3.3 Share & Deploy — `/start-3-3`

---

## My Outputs

*Files you create during lessons will be listed here.*

---

## My Notes

*Add anything worth remembering between sessions.*
EOF

# ── Make scripts executable ───────────────────────────────────
chmod +x "$COURSE_DIR/setup.sh"
chmod +x "$COURSE_DIR/tests/check-course-integrity.sh"

# ── Create the zip ────────────────────────────────────────────
cd "$TEMP_DIR"
zip -r "$ROOT/$ZIP_NAME" "gemini-for-pms" -x "*.DS_Store" > /dev/null

# ── Clean up ─────────────────────────────────────────────────
rm -rf "$TEMP_DIR"

# ── Report ───────────────────────────────────────────────────
SIZE=$(du -sh "$ROOT/$ZIP_NAME" | cut -f1)
echo "  Done: $ZIP_NAME ($SIZE)"
echo ""
echo "  Distribute this file — students unzip and run:"
echo "    Mac/Linux: bash setup.sh"
echo "    Windows:   double-click setup.bat"
echo ""
