# =============================================================
#  Gemini CLI for PMs — Setup Script (Windows)
# =============================================================
#
#  Usage: Right-click this file → "Run with PowerShell"
#  Or open PowerShell and run: .\setup.ps1
#
# =============================================================

$ErrorActionPreference = "Stop"

# ── Colours ──────────────────────────────────────────────────
function Ok($msg)   { Write-Host "  v $msg" -ForegroundColor Green }
function Info($msg) { Write-Host "  > $msg" -ForegroundColor Cyan }
function Warn($msg) { Write-Host "  ! $msg" -ForegroundColor Yellow }
function Fail($msg) { Write-Host "  x $msg" -ForegroundColor Red }
function Hr()       { Write-Host "----------------------------------------------" -ForegroundColor Cyan }

# ── Header ───────────────────────────────────────────────────
Clear-Host
Write-Host ""
Write-Host "  Gemini CLI for Product Managers" -ForegroundColor White
Write-Host "  Setup - Windows"
Hr
Write-Host ""

# ── Step 1: Confirm course folder ────────────────────────────
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $ScriptDir

if (-not (Test-Path "GEMINI.md") -or -not (Test-Path ".gemini")) {
    Fail "This script must be run from inside the gemini-for-pms course folder."
    Write-Host "  Make sure you've unzipped the course and are running setup.ps1 from inside it."
    Read-Host "Press Enter to exit"
    exit 1
}
Ok "Course folder found: $ScriptDir"

# ── Step 2: Check Node.js ────────────────────────────────────
Write-Host ""
Info "Checking Node.js..."

try {
    $nodeVersion = node --version 2>&1
    Ok "Node.js is installed ($nodeVersion)"
} catch {
    Fail "Node.js is not installed."
    Write-Host ""
    Write-Host "  Please install Node.js first:" -ForegroundColor White
    Write-Host "  1. Go to https://nodejs.org"
    Write-Host "  2. Download the LTS version (the big green button)"
    Write-Host "  3. Run the installer, click through the defaults"
    Write-Host "  4. Restart PowerShell and re-run this script"
    Write-Host ""
    $openNode = Read-Host "  Open nodejs.org in your browser now? [y/n]"
    if ($openNode -eq "y" -or $openNode -eq "Y") {
        Start-Process "https://nodejs.org"
    }
    Read-Host "Press Enter to exit"
    exit 1
}

# ── Step 3: Check npm ────────────────────────────────────────
try {
    $npmVersion = npm --version 2>&1
    Ok "npm is available ($npmVersion)"
} catch {
    Fail "npm is not available. Try reinstalling Node.js from https://nodejs.org"
    Read-Host "Press Enter to exit"
    exit 1
}

# ── Step 4: Install Gemini CLI ───────────────────────────────
Write-Host ""
Info "Installing Gemini CLI..."

try {
    npm install -g @google/gemini-cli --quiet 2>&1 | Out-Null
    $geminiVersion = gemini --version 2>&1
    Ok "Gemini CLI installed ($geminiVersion)"
} catch {
    Fail "Failed to install Gemini CLI."
    Write-Host ""
    Write-Host "  Try opening PowerShell as Administrator and running:"
    Write-Host "    npm install -g @google/gemini-cli"
    Write-Host "  Then re-run this script."
    Read-Host "Press Enter to exit"
    exit 1
}

# ── Step 5: Create ~/.gemini directory ───────────────────────
Write-Host ""
Info "Setting up Gemini config directory..."

$geminiDir = Join-Path $env:USERPROFILE ".gemini"
if (-not (Test-Path $geminiDir)) {
    New-Item -ItemType Directory -Path $geminiDir | Out-Null
}
Ok "~/.gemini directory ready"

# ── Step 6: Verify course files ──────────────────────────────
Write-Host ""
Info "Verifying course files..."

# Count key files as a quick check
$keyFiles = @("GEMINI.md", "my-progress.md", "README.md", "company-context\overview.md")
$allFound = $true
foreach ($f in $keyFiles) {
    if (-not (Test-Path $f)) { $allFound = $false }
}

if ($allFound) {
    Ok "Core course files verified"
} else {
    Warn "Some course files may be missing. Check that you unzipped the full course folder."
}

# ── Step 7: Google authentication ────────────────────────────
Write-Host ""
Hr
Write-Host ""
Write-Host "  Almost done - sign in with Google" -ForegroundColor White
Write-Host ""
Write-Host "  Gemini CLI is free with any Google account."
Write-Host "  This includes your Google Workspace / enterprise account."
Write-Host ""
Write-Host "  When you press Enter:"
Write-Host "   * A browser window will open"
Write-Host "   * Sign in with your Google account"
Write-Host "   * Return here - setup will complete automatically"
Write-Host ""
Read-Host "  Press Enter to sign in"
Write-Host ""

try {
    gemini auth login 2>&1
    Ok "Signed in successfully"
} catch {
    Warn "Auth step skipped or failed."
    Write-Host "  When Gemini CLI opens, it will ask you to sign in automatically."
}

# ── Step 8: Done ─────────────────────────────────────────────
Write-Host ""
Hr
Write-Host ""
Write-Host "  Setup complete." -ForegroundColor Green
Write-Host ""
Write-Host "  Your next steps:"
Write-Host ""
Write-Host "  1. Open a new PowerShell window"
Write-Host "  2. Navigate to this folder:"
Write-Host "       cd `"$ScriptDir`""
Write-Host ""
Write-Host "  3. Start Gemini CLI:"
Write-Host "       gemini"
Write-Host ""
Write-Host "  4. Inside Gemini CLI, type:"
Write-Host "       /start-0-2"
Write-Host ""
Write-Host "  The course begins."
Write-Host ""
Hr
Write-Host ""

$launch = Read-Host "  Launch Gemini CLI now? [y/n]"
if ($launch -eq "y" -or $launch -eq "Y") {
    Write-Host ""
    Write-Host "  Starting Gemini CLI... Type /start-0-2 to begin."
    Write-Host ""
    gemini
}
