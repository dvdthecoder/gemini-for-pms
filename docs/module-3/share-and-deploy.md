# Module 3.3 — Share & Deploy: Getting Your Tool in Front of People

## The Last Mile Problem

Most vibe-coded PM tools die on the builder's laptop. They work great locally, then never get used because sharing a file is awkward and "deploying" sounds technical.

It doesn't have to be. Your tool is a single HTML file. That's both its constraint and its superpower — it runs anywhere, shares easily, and requires no server.

---

## Three Ways to Share

### Option 1: Direct File Share (Simplest)
Send the HTML file directly. Anyone can open it in their browser.

Works for: Internal tools shared over Slack, email, or a company drive.
Limitation: No URL. Updates require re-sharing.

### Option 2: GitHub Pages (Free URL, Always Updated)
If your course repo is on GitHub, any HTML file gets a permanent URL.

```
https://[your-username].github.io/[repo-name]/outputs/[tool-name].html
```

To enable: Repo Settings → Pages → Source: Deploy from branch → main.

Works for: Tools you want to share via link, iterate on publicly, or hand to your team as a permanent resource.

### Option 3: Internal Hosting (Enterprise)
If your company has an internal web server, S3 bucket, or Google Cloud Storage — drop the HTML file there. It becomes a permanent internal URL.

Works for: Sensitive internal tools that shouldn't be public.

---

## Packaging Your Course Outputs

By the end of the course, your `outputs/` folder contains real PM artifacts:

| File | What it is |
|------|-----------|
| `problem-statement.md` | Activation problem framing |
| `prd-ob1-guided-setup.md` | Full PRD for Stride's OB-1 feature |
| `activation-analysis-[date].md` | Funnel analysis with recommendation |
| `competitive-intelligence-[date].md` | Live competitive research |
| `battlecard-stride-vs-productboard.md` | Sales battlecard |
| `activation-dashboard.html` | Working activation dashboard |
| `[your-tool].html` | Your custom PM tool |
| `course-summary.md` | What you built and learned |

These aren't fake exercises. The formats, the frameworks, the thinking — it's all transferable to your real product.

---

## What to Do With These on Your Real Product

- **PRD format:** Use it as a template for your next real PRD
- **Funnel analysis approach:** Apply the same prompt pattern to your Mixpanel/Amplitude CSV exports
- **Competitive research:** Run the same workflow monthly for your real competitors
- **Battlecard:** Adapt the format for your real product vs. your real competitors
- **The dashboard:** Rebuild it with your real metrics data in an afternoon
- **Your custom tool:** If you actually use it once, build v2

---

## Practice

Run `/start-3-3` in Gemini CLI to build your planned tool, make it shareable, and wrap up the course.
