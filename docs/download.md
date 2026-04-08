# Download the Course

The entire course runs inside Gemini CLI on your computer. Download the course folder, run the setup script, and you're ready.

No GitHub account needed. No git. Just download and unzip.

---

## Download

[Download from GitHub](https://github.com/dvdthecoder/gemini-for-pms/releases/latest/download/gemini-for-pms.zip){ .md-button .md-button--primary }

!!! tip "Always up to date"
    Both links always download the latest version. If the course gets updated, re-download and re-run setup — your progress in `my-progress.md` is preserved.

---

## Setup Instructions

=== "Mac"

    1. Download and unzip the course folder
    2. Open **Terminal** — press `Cmd+Space`, type "Terminal", press Enter
    3. Type `bash ` (with a space after it), then drag `setup.sh` from the unzipped folder into the Terminal window
    4. Press Enter and follow the prompts

    The script installs Gemini CLI, signs you in with Google, and launches the course.

    !!! note "First time in Terminal?"
        You only do this once. After setup, just open Terminal, type `cd ` and drag the course folder in, then type `gemini`.

=== "Windows"

    1. Download and unzip the course folder
    2. Open the `gemini-for-pms` folder
    3. Double-click **setup.bat**
    4. Follow the prompts — a browser will open for Google sign-in

    !!! warning "Windows security prompt"
        Windows may show "Windows protected your PC". Click **More info** → **Run anyway**. This is normal for scripts not from the Microsoft Store.

=== "Linux"

    ```bash
    unzip gemini-for-pms.zip
    cd gemini-for-pms
    bash setup.sh
    ```

---

## What Setup Does

| Step | What happens |
|------|-------------|
| 1 | Checks Node.js is installed (guides you if not) |
| 2 | Installs Gemini CLI via npm |
| 3 | Creates `~/.gemini` config directory |
| 4 | Verifies all course files are intact |
| 5 | Opens browser for Google sign-in |
| 6 | Offers to launch Gemini CLI immediately |

---

## Starting the Course

Once setup is complete, open Terminal and:

```bash
cd gemini-for-pms   # navigate to the course folder
gemini              # start Gemini CLI
```

Inside Gemini CLI, type:

```
/start-0-2
```

The first interactive lesson begins. Type `/course-map` at any time to see your progress.

---

## Troubleshooting

**"Node.js not found"**
: Download from [nodejs.org](https://nodejs.org) (LTS version), install it, then re-run `setup.sh`.

**"Permission denied" on Mac/Linux**
: Run `sudo bash setup.sh` instead.

**Windows script is blocked**
: Right-click `setup.bat` → Properties → tick **Unblock** → OK → double-click again.

**Slash commands not working inside Gemini CLI**
: You must open Gemini CLI from inside the `gemini-for-pms` folder. Run `cd path/to/gemini-for-pms` then `gemini`.

**Auth not completing**
: Gemini CLI will prompt for authentication automatically when it starts. Follow the browser window that opens.
