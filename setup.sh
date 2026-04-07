#!/usr/bin/env bash
# =============================================================
#  Gemini CLI for PMs — Setup Script (Mac & Linux)
# =============================================================
#
#  Usage:
#    Mac:   Open Terminal, drag this file in, press Enter
#    Linux: bash setup.sh
#
# =============================================================

set -euo pipefail

# ── Colours ──────────────────────────────────────────────────
BOLD='\033[1m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
CYAN='\033[0;36m'
RESET='\033[0m'

ok()   { echo -e "${GREEN}  ✓${RESET} $1"; }
info() { echo -e "${CYAN}  →${RESET} $1"; }
warn() { echo -e "${YELLOW}  !${RESET} $1"; }
fail() { echo -e "${RED}  ✗${RESET} $1"; }
hr()   { echo -e "${CYAN}──────────────────────────────────────────────${RESET}"; }

# ── Header ───────────────────────────────────────────────────
clear
echo ""
echo -e "${BOLD}  Gemini CLI for Product Managers${RESET}"
echo -e "  Setup — $(uname -s)"
hr
echo ""

# ── Step 1: Confirm we're in the right folder ─────────────────
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

if [ ! -f "GEMINI.md" ] || [ ! -d ".gemini" ]; then
  fail "This script must be run from inside the gemini-for-pms course folder."
  echo "  Make sure you've unzipped the course and are running setup.sh from inside it."
  exit 1
fi
ok "Course folder found: $SCRIPT_DIR"

# ── Step 2: Check Node.js ────────────────────────────────────
echo ""
info "Checking Node.js..."

if command -v node &>/dev/null; then
  NODE_VERSION=$(node --version)
  ok "Node.js is installed ($NODE_VERSION)"
else
  fail "Node.js is not installed."
  echo ""
  echo -e "  ${BOLD}Please install Node.js first:${RESET}"
  echo "  1. Go to https://nodejs.org"
  echo "  2. Download the LTS version"
  echo "  3. Install it, then re-run this script"
  echo ""

  # Try to open the URL on Mac
  if [[ "$(uname)" == "Darwin" ]]; then
    read -r -p "  Open nodejs.org in your browser now? [y/n] " OPEN_NODE
    if [[ "$OPEN_NODE" =~ ^[Yy]$ ]]; then
      open "https://nodejs.org"
    fi
  fi
  exit 1
fi

# ── Step 3: Check npm ────────────────────────────────────────
if ! command -v npm &>/dev/null; then
  fail "npm is not available. Try reinstalling Node.js from https://nodejs.org"
  exit 1
fi
ok "npm is available ($(npm --version))"

# ── Step 4: Install or update Gemini CLI ─────────────────────
echo ""
info "Installing Gemini CLI..."

if command -v gemini &>/dev/null; then
  CURRENT_VERSION=$(gemini --version 2>/dev/null || echo "unknown")
  warn "Gemini CLI already installed (v$CURRENT_VERSION). Checking for updates..."
fi

if npm install -g @google/gemini-cli --quiet 2>/dev/null; then
  INSTALLED_VERSION=$(gemini --version 2>/dev/null || echo "installed")
  ok "Gemini CLI installed (v$INSTALLED_VERSION)"
else
  fail "Failed to install Gemini CLI."
  echo "  Try running with sudo:"
  echo "    sudo npm install -g @google/gemini-cli"
  echo "  Then re-run this script."
  exit 1
fi

# ── Step 5: Create ~/.gemini directory ───────────────────────
echo ""
info "Setting up Gemini config directory..."

if mkdir -p "$HOME/.gemini"; then
  ok "~/.gemini directory ready"
else
  fail "Could not create ~/.gemini directory"
  exit 1
fi

# ── Step 6: Run course integrity check ───────────────────────
echo ""
info "Verifying course files..."

if bash tests/check-course-integrity.sh &>/dev/null; then
  ok "All course files verified (78/78)"
else
  warn "Some course files may be missing. Run: bash tests/check-course-integrity.sh"
fi

# ── Step 7: Google authentication ────────────────────────────
echo ""
hr
echo ""
echo -e "${BOLD}  Almost done — sign in with Google${RESET}"
echo ""
echo "  Gemini CLI is free with any Google account."
echo "  This includes your Google Workspace / enterprise account."
echo ""
echo "  When you press Enter:"
echo "   • A browser window will open"
echo "   • Sign in with your Google account"
echo "   • Return here — setup will complete automatically"
echo ""
read -r -p "  Press Enter to sign in... "
echo ""

if gemini auth login 2>/dev/null; then
  ok "Signed in successfully"
else
  warn "Auth command not found or failed."
  echo "  When Gemini CLI opens, it will ask you to sign in automatically."
  echo "  Just follow the browser prompt."
fi

# ── Step 8: Done ─────────────────────────────────────────────
echo ""
hr
echo ""
echo -e "${GREEN}${BOLD}  Setup complete.${RESET}"
echo ""
echo "  Your next steps:"
echo ""
echo -e "  ${BOLD}1.${RESET} Open Terminal and navigate to this folder:"
echo "       cd \"$SCRIPT_DIR\""
echo ""
echo -e "  ${BOLD}2.${RESET} Start Gemini CLI:"
echo "       gemini"
echo ""
echo -e "  ${BOLD}3.${RESET} Inside Gemini CLI, type:"
echo "       /start-0-2"
echo ""
echo "  The course begins."
echo ""
hr
echo ""

# Offer to launch now
read -r -p "  Launch Gemini CLI now? [y/n] " LAUNCH
if [[ "$LAUNCH" =~ ^[Yy]$ ]]; then
  echo ""
  echo "  Starting Gemini CLI... Type /start-0-2 to begin."
  echo ""
  gemini
fi
