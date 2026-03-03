---
name: pm-debrief
description: Process meeting transcripts or Slack threads and extract decisions, action items, and context updates. Updates relevant brain files and vertical knowledge automatically.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash, AskUserQuestion
---

# PM Debrief

Extract signal from meetings and Slack, and push updates into the knowledge base.

## Supported Sources

| Source | Format | How to Trigger |
|--------|--------|----------------|
| Gemini Notes | Google Doc link | "Debrief this meeting: [Google Doc URL]" |
| Google Meet transcript | Plain text paste | Paste transcript + "debrief this" |
| Otter.ai | .txt export | Upload file + "debrief this" |
| Zoom | .vtt or plain text | Paste or upload |
| Slack thread | Thread URL or paste | "Debrief this Slack thread: [paste]" |
| Manual notes | Free text | "Here's what happened in my meeting: [notes]" |

## Workflow

### 1. Ingest Content

- If Google Doc URL: fetch via Google Drive MCP
- If file upload: read from uploads directory
- If paste: use content from conversation

### 2. Identify Meeting Context

Extract:
- **Date / time** of meeting
- **Attendees** (internal + external)
- **Meeting type** (standup, 1:1, partner call, planning, review, external)
- **Vertical / project** this relates to

If unclear, ask:
- "Which vertical does this meeting relate to?"
- "Who were the key attendees?"

### 3. Extract Signal

Parse the transcript for:

| Signal Type | What to Look For |
|-------------|------------------|
| Decisions | "we decided", "agreed to", "confirmed", "will go with" |
| Action items | "will do", "to follow up", "by [date]", "owner: [name]" |
| Status updates | "is now", "shipped", "blocked on", "delayed", "ahead of schedule" |
| New entities | New partner names, project names, people mentioned for first time |
| Date changes | Target dates moved, confirmed, or added |
| Risks / blockers | "risk", "blocker", "dependency", "waiting on", "issue" |
| Strategic context | Key framing, positioning, or priorities discussed |

### 4. Produce Meeting Summary

Format:

```markdown
## [Meeting Name] — [Date]

**Attendees**: [list]
**Type**: [meeting type]
**Vertical**: [vertical]

### Decisions
- [decision 1]
- [decision 2]

### Action Items
| Owner | Action | Due |
|-------|--------|-----|
| [name] | [what] | [when] |

### Key Context
[2–3 sentence narrative of what happened and why it matters]

### Open Items Raised
- [item]
```

### 5. Propose Knowledge Updates

Map extracted signal to the right files:

| Signal | Update Target |
|--------|---------------|
| Partner status change | `knowledge/verticals/{v}/partners/{slug}.md` |
| Initiative status change | PM brain file + `knowledge/verticals/{v}/roadmap.md` |
| New partner/deal | Create new partner record in `knowledge/verticals/{v}/partners/` |
| OKR change | `knowledge/shared/okrs.md` + vertical `roadmap.md` |
| New person mentioned | Check `pms/` + `knowledge/verticals/{v}/team.md` |
| Company-wide significance | `knowledge/shared/snapshot.md` |

Show proposed changes and confirm before writing (same risk classification as `pm-update-brain`).

### 6. Save Meeting Note

Write meeting summary to `meetings/[type]/YYYY-MM-DD-[slug].md`.

Update `meetings/_index.md`.

### 7. Prompt to Save

"Debrief complete. Want me to commit everything to git?"

## Incremental Update Integration

When triggered by a connector (Google Calendar → Gemini Notes → auto-debrief):

1. Fetch Gemini Notes transcript via Google Drive MCP
2. Run full debrief workflow above
3. Apply low-risk updates automatically
4. Queue medium/high-risk updates for PM review
5. Send summary to PM: "I processed your [meeting name] meeting. Here's what I captured and what I updated."
