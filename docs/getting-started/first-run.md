# Module 0.2 — First Run: Your First Session Inside Gemini CLI

## You're In

If the setup script completed successfully, Gemini CLI is installed and you're authenticated. This page orients you to the interface before you start the interactive lesson.

## The Interface

Gemini CLI is a conversation in your terminal. Type something, press Enter, get a response. That's it.

There are no menus. No sidebars. No settings to configure before you start.

## Slash Commands

Type `/` followed by a command name to run a course lesson:

```
/start-0-2     ← begins the first interactive lesson (start here)
/start-1-1     ← begins Module 1, Lesson 1
/course-map    ← shows your progress and what's next
```

These are the only "special" inputs. Everything else is just conversation.

## The @ Symbol

Type `@` followed by a filename to load that file into context:

```
@company-context/overview.md
```

Gemini reads the file directly — you don't paste anything. This is how you work with your course documents throughout the lessons.

## Your Progress File

`my-progress.md` tracks which lessons you've completed and where you left off. At the end of each lesson, Gemini updates it automatically.

To check where you are at the start of any session:

```
@my-progress.md @GEMINI.md Where did I leave off?
```

## Quitting and Returning

Type `/quit` or press `Ctrl+C` to exit. Your files are always saved. Your conversation history is not — but `my-progress.md` is, so you never lose your place.

## Start the Interactive Lesson

Open Gemini CLI from inside the course folder and type:

```
/start-0-2
```
