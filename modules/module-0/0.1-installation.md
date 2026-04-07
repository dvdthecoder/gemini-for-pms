# Module 0.1 — Installation Guide

Get Gemini CLI installed and running in under 10 minutes.

---

## Prerequisites

- A Google account (personal or Workspace/enterprise)
- Mac, Windows, or Linux
- Internet connection

That's it. No coding experience needed.

---

## Option A: Install with npm (Recommended if you have Node.js)

If you've ever installed anything from npm before:

```bash
npm install -g @google/gemini-cli
```

To check if Node.js is installed, open Terminal (Mac/Linux) or Command Prompt (Windows) and type:
```bash
node --version
```
If you see a version number, you have Node.js. If not, use Option B.

---

## Option B: Download the Installer

Go to the [Gemini CLI releases page](https://github.com/google-labs/gemini-cli/releases) and download the installer for your operating system.

**Mac:** Download the `.dmg` file, open it, drag to Applications.
**Windows:** Download the `.exe` installer and run it.
**Linux:** Download the `.deb` or `.rpm` package for your distribution.

---

## Opening Terminal (If You've Never Done This)

**Mac:**
1. Press `Cmd + Space` to open Spotlight Search
2. Type "Terminal"
3. Press Enter

**Windows:**
1. Press `Windows + R`
2. Type "cmd" and press Enter

**Linux:** You already know how to do this.

---

## Authenticating with Your Google Account

First, create the Gemini CLI config directory if it doesn't exist:

```bash
mkdir -p ~/.gemini
```

Then authenticate:

```bash
gemini auth login
```

This opens a browser window. Sign in with your Google account (the same one you use for Gmail or Google Workspace).

**Enterprise/Workspace users:** Sign in with your work Google account. Your organization's enterprise agreement with Google covers your use of Gemini CLI.

After signing in, return to the terminal — you'll see a confirmation message.

---

## Downloading the Course Materials

```bash
git clone https://github.com/your-org/gemini-for-pms
cd gemini-for-pms
```

If you don't have git, you can download the course as a zip file from the repository and unzip it anywhere on your computer.

---

## Starting Gemini CLI

Navigate to the course folder and run:

```bash
gemini
```

You'll see the Gemini CLI interface — a prompt where you can type.

---

## Your First Command

Type this and press Enter:

```
/start-1-1
```

The course begins. You're ready.

---

## Troubleshooting

**"Command not found: gemini"**
The CLI didn't install to your PATH. Try closing and reopening terminal, or restart your computer.

**"Permission denied"**
On Mac/Linux, try: `sudo npm install -g @google/gemini-cli`

**Login isn't working**
Make sure you're using a personal Google account or a Google Workspace account. The browser should open automatically — if it doesn't, copy the URL from the terminal and paste it into your browser.

**Still stuck?**
Ask Gemini: once it's running, type your problem in plain English. It can help debug its own setup issues.

---

## What's Next

Once you're inside Gemini CLI with the course folder open, type `/start-1-1` to begin Module 1.
