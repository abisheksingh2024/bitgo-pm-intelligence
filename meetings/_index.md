---
type: meetings-index
last_updated: 2026-03-03
---

# Meetings Index

> Meeting notes are organized by type and date. Each file captures decisions, action items, context updates, and participants. Use `jarvis:add-meeting` or `pm-debrief` skill to add new meeting notes.

## Directory Structure

```
meetings/
├── _index.md                    ← This file
├── cross-vertical/              ← All-PM syncs, company-wide strategy
│   └── _index.md
├── leadership/                  ← CEO, CPO, exec briefings
│   └── _index.md
├── ecosystem/                   ← Ecosystem vertical meetings
│   └── _index.md
├── custody-platform/            ← Custody & Platform meetings
│   └── _index.md
├── prime/                       ← Prime meetings
│   └── _index.md
├── caas/                        ← CaaS meetings
│   └── _index.md
└── scaas/                       ← SCaaS meetings
    └── _index.md
```

## Meeting Types

| Type | Directory | What Goes Here |
|------|-----------|---------------|
| CEO / Exec briefing | `leadership/` | CEO 1:1s, CPO syncs, exec strategy sessions |
| All-PM sync | `cross-vertical/` | Monthly PM syncs, cross-vertical planning |
| Vertical standup | `{vertical}/` | Weekly standups, sprint reviews, retros |
| Partner meeting | `{vertical}/` | External partner calls (Canton, Figure, etc.) |
| Debrief | `{vertical}/` | Post-event synthesis |

## File Naming Convention

`YYYY-MM-DD-{type}-{short-description}.md`

Examples:
- `2026-03-02-ceo-briefing-offensive-security.md`
- `2026-03-02-ceo-briefing-figure-markets-strategy.md`
- `2026-03-10-ecosystem-standup.md`
- `2026-03-05-canton-partner-sync.md`

## Recent Meetings

| Date | Title | Vertical | Key Decisions |
|------|-------|----------|---------------|
| 2026-03-02 | CEO Briefing — Figure Markets & Offensive Security | Leadership/Ecosystem | Phase 1-2 greenlit; offensive security as strategic priority |

## How to Add a Meeting

**Manually**: Create a file using the naming convention above. Use `framework/templates/vertical.md` for structure guidance.

**Via connector**: Link Google Calendar → Gemini Notes. After a Google Meet, Gemini Notes appears in Google Drive. Use `pm-debrief` skill or `jarvis:add-meeting` to process the transcript.

## Querying Meetings

```
jarvis:search-meetings from:2026-03-01 topic:canton
jarvis:search-meetings attendee:CEO type:briefing
```

---

*Last updated: 2026-03-03*
