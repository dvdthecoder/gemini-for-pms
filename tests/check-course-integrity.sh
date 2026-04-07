#!/usr/bin/env bash
# Course integrity tests for Gemini CLI for PMs
# Run from the repo root: bash tests/check-course-integrity.sh

set -euo pipefail

PASS=0
FAIL=0
ROOT="$(cd "$(dirname "$0")/.." && pwd)"

pass() { echo "  ✓ $1"; PASS=$((PASS + 1)); }
fail() { echo "  ✗ $1"; FAIL=$((FAIL + 1)); }

check_file() {
  local file="$ROOT/$1"
  if [ -f "$file" ]; then
    pass "File exists: $1"
  else
    fail "Missing file: $1"
  fi
}

echo ""
echo "=== Gemini CLI for PMs — Course Integrity Tests ==="
echo ""

# ─── Core files ───────────────────────────────────────────────
echo "── Core files"
check_file "GEMINI.md"
check_file "README.md"
check_file "my-progress.md"
check_file "CONTRIBUTING.md"
check_file ".gitignore"
check_file "outputs/.gitkeep"

# ─── Company context ──────────────────────────────────────────
echo ""
echo "── Company context"
check_file "company-context/overview.md"
check_file "company-context/personas.md"
check_file "company-context/roadmap.md"
check_file "company-context/data/user-metrics.csv"
check_file "company-context/data/user-feedback.md"

# ─── Module reference docs ────────────────────────────────────
echo ""
echo "── Module reference docs"
check_file "modules/module-0/0.0-introduction.md"
check_file "modules/module-0/0.1-installation.md"
check_file "modules/module-0/0.2-first-run.md"
check_file "modules/module-1/1.1-welcome.md"
check_file "modules/module-1/1.2-context-window.md"
check_file "modules/module-1/1.3-first-tasks.md"
check_file "modules/module-1/1.4-file-references.md"
check_file "modules/module-1/1.5-search-grounding.md"
check_file "modules/module-1/1.6-project-memory.md"
check_file "modules/module-1/1.7-navigation.md"
check_file "modules/module-2/2.1-write-prd.md"
check_file "modules/module-2/2.2-analyze-data.md"
check_file "modules/module-2/2.3-competitive-strategy.md"
check_file "modules/module-3/3.1-vibe-coding.md"
check_file "modules/module-3/3.2-plan-your-tool.md"
check_file "modules/module-3/3.3-share-and-deploy.md"

# ─── Slash commands ───────────────────────────────────────────
echo ""
echo "── Slash commands"
check_file ".gemini/commands/course-map.toml"
check_file ".gemini/commands/start-0-2.toml"
check_file ".gemini/commands/start-1-1.toml"
check_file ".gemini/commands/start-1-2.toml"
check_file ".gemini/commands/start-1-3.toml"
check_file ".gemini/commands/start-1-4.toml"
check_file ".gemini/commands/start-1-5.toml"
check_file ".gemini/commands/start-1-6.toml"
check_file ".gemini/commands/start-1-7.toml"
check_file ".gemini/commands/start-2-1.toml"
check_file ".gemini/commands/start-2-2.toml"
check_file ".gemini/commands/start-2-3.toml"
check_file ".gemini/commands/start-3-1.toml"
check_file ".gemini/commands/start-3-2.toml"
check_file ".gemini/commands/start-3-3.toml"

# ─── GEMINI.md has required sections ─────────────────────────
echo ""
echo "── GEMINI.md content checks"
GEMINI="$ROOT/GEMINI.md"

if grep -q "First Thing Every Session" "$GEMINI"; then
  pass "GEMINI.md: has session start instructions"
else
  fail "GEMINI.md: missing 'First Thing Every Session' section"
fi

if grep -q "my-progress.md" "$GEMINI"; then
  pass "GEMINI.md: references my-progress.md"
else
  fail "GEMINI.md: missing reference to my-progress.md"
fi

if grep -q "Course Map" "$GEMINI"; then
  pass "GEMINI.md: has course map"
else
  fail "GEMINI.md: missing course map section"
fi

# ─── my-progress.md has all lessons ──────────────────────────
echo ""
echo "── my-progress.md content checks"
PROGRESS="$ROOT/my-progress.md"

LESSONS=("0.2" "1.1" "1.2" "1.3" "1.4" "1.5" "1.6" "1.7" "2.1" "2.2" "2.3" "3.1" "3.2" "3.3")
for lesson in "${LESSONS[@]}"; do
  if grep -q "$lesson" "$PROGRESS"; then
    pass "my-progress.md: lists lesson $lesson"
  else
    fail "my-progress.md: missing lesson $lesson"
  fi
done

# ─── Slash commands have progress tracking ────────────────────
echo ""
echo "── Slash commands have progress tracking"
COMMANDS=(
  "start-0-2" "start-1-1" "start-1-2" "start-1-3" "start-1-4"
  "start-1-5" "start-1-6" "start-1-7" "start-2-1" "start-2-2"
  "start-2-3" "start-3-1" "start-3-2" "start-3-3"
)
for cmd in "${COMMANDS[@]}"; do
  file="$ROOT/.gemini/commands/${cmd}.toml"
  if [ -f "$file" ] && grep -q "my-progress.md" "$file"; then
    pass "$cmd: has progress tracking"
  else
    fail "$cmd: missing progress tracking"
  fi
done

# ─── Company context files referenced in slash commands exist ─
echo ""
echo "── Company context cross-references"
CONTEXT_FILES=(
  "company-context/overview.md"
  "company-context/personas.md"
  "company-context/roadmap.md"
  "company-context/data/user-metrics.csv"
  "company-context/data/user-feedback.md"
)
for f in "${CONTEXT_FILES[@]}"; do
  if [ -f "$ROOT/$f" ]; then
    pass "Context file exists and is accessible: $f"
  else
    fail "Context file missing: $f"
  fi
done

# ─── Summary ──────────────────────────────────────────────────
echo ""
echo "=== Results ==="
echo "  Passed: $PASS"
echo "  Failed: $FAIL"
echo ""

if [ "$FAIL" -eq 0 ]; then
  echo "All tests passed."
  exit 0
else
  echo "$FAIL test(s) failed. See above."
  exit 1
fi
