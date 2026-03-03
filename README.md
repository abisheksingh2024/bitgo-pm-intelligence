# BitGo PM Intelligence

A shared knowledge base for BitGo Product Managers — built on top of Claude + Jarvis, designed to give every PM the same context as every other PM, and to help new joinees get up to speed fast.

---

## What This Is

- **A collective PM brain**: every PM contributes a structured brain file covering their vertical, OKRs, initiatives, team, and key context
- **A shared product knowledge layer**: product stack, org chart, glossary, and company OKRs live centrally and stay current
- **A Claude-powered query engine**: ask natural language questions across all verticals ("is Ecosystem on track for Q1?", "explain HSM to me", "who owns Canton?")
- **An incremental update system**: connectors (Slack, Google Meet, Calendar) feed updates into the knowledge base automatically

---

## Verticals

| Vertical | Owner | Description |
|----------|-------|-------------|
| Ecosystem | TBD | Network & Asset Enablement, Token Lifecycle, Staking, Institutional DeFi, Go Accounts |
| Custody Platform | TBD | Wallet Platform, Custody Controls, HSM/MPC, Developer Experience |
| Prime | TBD | Prime brokerage, trading, OES |
| CaaS | TBD | Crypto as a Service |
| SCaaS | TBD | Stablecoin as a Service |

---

## Quick Start — New PM Setup

### 1. Clone the repo

```bash
git clone https://github.com/BitGo/bitgo-pm-intelligence.git
cd bitgo-pm-intelligence
```

### 2. Install Claude Code (if not already)

```bash
npm install -g @anthropic-ai/claude-code
```

### 3. Set up your PM brain file

Copy the template:

```bash
cp framework/templates/brain.md pms/your-name.md
```

Fill in your vertical, OKRs, team, and active initiatives.

### 4. Open in Cowork (Claude Desktop)

Select the `bitgo-pm-intelligence` folder as your workspace. Claude will auto-load all context from `CLAUDE.md` and greet you with a status summary.

### 5. Register yourself in the PM index

Add a row to `pms/_index.md` with your name, vertical, and brain file link.

---

## Quick Start — New Joinee Onboarding

Once you have the repo open in Claude:

```
pm-onboard
```

Claude will walk you through:
1. The full BitGo product stack
2. Your specific vertical
3. Key terminology (glossary)
4. Your team and cross-functional partners
5. Current OKRs and priorities

---

## How to Keep Your Brain File Current

### Option A — Manual (5 min/week)
Run `pm-update-brain` and answer Claude's prompts about what changed this week.

### Option B — Meeting-driven
After any significant meeting, paste the transcript and run `pm-debrief`. Claude extracts decisions and action items, then proposes updates to your brain file.

### Option C — Connector-driven (recommended)
Configure the connectors in `config.yaml`:
- **Google Calendar + Gemini Notes**: auto-pull meeting transcripts after each meeting
- **Slack**: daily EOD scan of your channels for decisions and updates
- **Google Drive**: register PRDs and specs → auto-summarized into knowledge base

---

## Connector Setup

Edit `config.yaml` with your details. Required connectors for full automation:

| Connector | What It Does | Setup |
|-----------|-------------|-------|
| Google Calendar MCP | Pulls meeting list; triggers transcript fetch | Add GCal MCP to Claude settings |
| Google Drive MCP | Fetches Gemini Notes transcripts + PRDs | Add GDrive MCP to Claude settings |
| Slack MCP | Scans channels for decisions + updates | Add Slack MCP to Claude settings |
| GitHub MCP | Tracks PR merges → product context | Add GitHub MCP to Claude settings |

See [docs.claude.com](https://docs.claude.com) for MCP setup instructions.

---

## Contributing

### Adding a partner record
```
jarvis:add-knowledge [partner name] update: [what happened]
```
Or create a file directly in `knowledge/verticals/{your-vertical}/partners/{slug}.md` using the partner template.

### Adding a topic
Create `knowledge/verticals/{your-vertical}/topics/{slug}.md`.

### Updating shared knowledge
Edit files in `knowledge/shared/` — these are visible to all verticals. Be precise and attribute changes.

### Saving changes
```
jarvis:save
```
Then `git push` to share with the team.

---

## Query Examples

```
pm-query: is Ecosystem on track to meet Q1 revenue targets?
pm-query: who owns the Canton Network relationship?
pm-query: what is the status of Auto Staking?
pm-query: explain HSM to me
pm-query: which verticals have OC dependencies this quarter?
pm-query: what deals are pending legal review?
```

---

## File Locations

| What | Where |
|------|-------|
| Your brain file | `pms/your-name.md` |
| Vertical knowledge | `knowledge/verticals/{vertical}/` |
| Shared product stack | `knowledge/shared/product-stack.md` |
| Company OKRs | `knowledge/shared/okrs.md` |
| Glossary | `knowledge/shared/glossary.md` |
| Meeting notes | `meetings/` |
| Skill definitions | `framework/skills/` |
| Templates | `framework/templates/` |

---

## Principles

1. **No personal information** — this repo is shared across all BitGo product. Keep it professional and role-based.
2. **Always date your updates** — include `last_updated` in every file you touch.
3. **PM owns their brain file** — you are responsible for keeping your file current.
4. **Shared knowledge is everyone's responsibility** — if you see stale data in `knowledge/shared/`, update it.
5. **Claude is the query layer, not the source of truth** — the `.md` files are the truth; Claude reads and synthesizes them.

---

*Built by BitGo Product. Questions? Ping the PM team in Slack.*
