# Module 0.2 — First Run: Your First Session Inside Gemini CLI

## You're In

If you're reading this after running `gemini` from the course folder — you're already doing it. This lesson just orients you to what you're looking at.

## The Interface

Gemini CLI is a conversation in your terminal. Type something, press Enter, get a response. That's it.

There are no menus. No sidebars. No settings to configure before you start.

## Slash Commands

Type `/` followed by a command name to run a course lesson:

```
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

Type `/quit` or press `Ctrl+C` to exit. Your files are saved. Your conversation history is not — but `my-progress.md` is, so you never truly lose your place.

## What's Next

Type `/start-0-2` in Gemini CLI to do the interactive version of this lesson and confirm your setup is working correctly.

Or if you're confident everything is installed and working, skip ahead to `/start-1-1` to begin the course proper.
