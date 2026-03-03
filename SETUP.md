# Setup Guide — bitgo-pm-intelligence

Get up and running in ~15 minutes. After setup, processing a meeting transcript into structured notes + brain file updates takes under 2 minutes.

---

## Prerequisites

Before you start, make sure you have:

- [ ] **Cowork** installed on your Mac ([download here](https://claude.ai/download))
- [ ] A **GitHub account** with access to this repo
- [ ] A **GitHub Personal Access Token (PAT)** with `repo` scope — [generate one here](https://github.com/settings/tokens/new?scopes=repo&description=bitgo-pm-intelligence)
- [ ] **Google Calendar** and **Google Drive** connected in Cowork (see Step 3)

---

## Step 1 — Clone the Repo

Open Terminal and run:

```bash
git clone https://github.com/akshaybitgo/bitgo-pm-intelligence.git ~/bitgo-pm-intelligence
cd ~/bitgo-pm-intelligence
```

Configure your git identity (use your BitGo email):

```bash
git config user.name "Your Name"
git config user.email "yourname@bitgo.com"
```

Store your PAT so you don't have to re-enter it on every push:

```bash
git remote set-url origin https://YOUR_PAT@github.com/akshaybitgo/bitgo-pm-intelligence.git
```

---

## Step 2 — Create Your PM Brain File

Copy the brain file template and open it:

```bash
cp framework/templates/brain.md pms/your-name.md
open pms/your-name.md
```

Fill in the following sections (everything else can stay as placeholders for now):

| Section | What to fill in |
|---------|----------------|
| `name`, `vertical`, `role` | Your name, vertical (e.g. `prime`), and title |
| `## Role & Scope` | 2–3 sentences on what your vertical owns |
| `## OKRs — Current Cycle` | Your Q2 objectives and key results |
| `## Active Initiatives` | Top 3–5 things you're actively building |
| `## Team` | Your direct team + key cross-functional partners |

Everything else — open items, decisions, context dump — will fill in automatically as you process meeting transcripts.

Add yourself to the PM roster in `pms/_index.md`:

```markdown
| Your Name | Your Vertical | [your-name.md](your-name.md) | ✅ Active | 2026-MM-DD |
```

---

## Step 3 — Connect Google Calendar & Drive in Cowork

This enables the automated transcript workflow.

1. Open **Cowork**
2. Click the **Connectors** icon in the left sidebar
3. Search for **Google Calendar** → click **Connect** → authorize with your BitGo Google account (make sure to grant calendar read access)
4. Search for **Google Drive** → click **Connect** → authorize with the same BitGo Google account

> **Why both?** Calendar finds the meeting and detects the attached Gemini Notes transcript. Drive fetches the full transcript content. Both are needed for the end-to-end workflow.

---

## Step 4 — Run Your First Workflow

After your next meeting (or any past meeting with a Gemini Notes transcript):

1. Open **Cowork**
2. Type: `run pm-debrief for [meeting name]`
   - Example: `run pm-debrief for Prime Weekly`
   - Cowork will find the Calendar invite, pull the transcript, generate a meeting note, and update your brain file
3. Review the output — confirm the generated meeting note and brain file updates look correct
4. Push to GitHub:

```bash
cd ~/bitgo-pm-intelligence
git add .
git commit -m "Add [date] [meeting name]: meeting note + brain file updates"
git push origin main
```

---

## Step 5 — Verify Everything Works

Check that these files exist and look correct:

```
pms/your-name.md              ← your brain file with your OKRs + initiatives
meetings/{vertical}/           ← meeting notes will land here after pm-debrief runs
```

Browse the repo on GitHub to confirm your push went through:
[github.com/akshaybitgo/bitgo-pm-intelligence](https://github.com/akshaybitgo/bitgo-pm-intelligence)

---

## What Happens Next

Once you're set up, the workflow is:

```
Meeting ends
  → Gemini Notes auto-generates transcript (attached to Calendar invite)
  → You type "run pm-debrief for [meeting name]" in Cowork
  → Structured meeting note created in meetings/{vertical}/
  → Your brain file updated with new initiatives, decisions, open items
  → git commit + push
```

That's it. Your vertical's state stays current automatically.

---

## Troubleshooting

**`fatal: could not read Password`** — Your PAT has expired or wasn't stored. Re-run the `git remote set-url` command in Step 1 with a fresh PAT.

**Cowork can't find the transcript** — Check that Gemini Notes is enabled for your Google Meet calls (Settings → Meet → "Transcripts"). It takes 5–10 min post-meeting for the doc to appear in Drive.

**Merge conflict on push** — Run `git pull origin main --rebase` first, resolve any conflicts in your brain file, then push again. Brain files are per-PM so conflicts should be rare.

**Google Calendar connector says "Insufficient Permission"** — Disconnect and reconnect the connector in Cowork, making sure to check the calendar read scope during re-authorization.

---

## Questions?

Ping **@akshay** in #product or drop a comment in the repo.
