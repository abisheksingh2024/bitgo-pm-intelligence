---
name: pm-update-brain
description: Update your PM brain file. Parses natural language updates, meeting summaries, or direct edits and applies them to your brain file + relevant vertical knowledge.
allowed-tools: Read, Write, Edit, Glob, Grep, AskUserQuestion
---

# PM Update Brain

Keep your PM brain file and vertical knowledge current.

## Trigger Modes

| Mode | When to Use |
|------|-------------|
| Weekly refresh | End of week; update initiative statuses, new decisions |
| Post-meeting | Just finished a significant meeting; extract and apply |
| Freeform | "Update my brain: [what changed]" |
| Connector-driven | Triggered automatically after Gemini Notes / Slack scan |

## Workflow

### 1. Identify the PM

Read `config.yaml` to identify the current user's brain file path. If not configured, ask:
- "What's your name?"
- "Which vertical are you on?"

Load `pms/{name}.md`.

### 2. Parse the Update

Accept updates in any form:
- Free text: "Auto Staking beta launched, 7 clients onboarded"
- Meeting transcript paste
- Structured: "Update initiative: Auto Staking → Status: Beta Live, Date: March 3"
- Connector output (Gemini Notes JSON, Slack thread)

Extract:
- **Status changes**: initiative moved from [old] → [new]
- **New decisions**: what was decided and by whom
- **New action items**: who owes what by when
- **New entities**: new partners, people, projects mentioned
- **Date shifts**: target dates moved or confirmed

### 3. Classify Updates by Risk

| Risk Level | Type | Action |
|------------|------|--------|
| Low | Date updates, attendee additions, minor status notes | Apply automatically |
| Medium | Status changes (in-progress → blocked), new open items | Show diff, apply after confirmation |
| High | OKR target changes, new partners, deadline shifts, priority changes | Show diff, require explicit confirmation |

### 4. Show Proposed Changes

For medium/high risk changes, display:

```
Proposed updates to pms/{name}.md:

CHANGE 1 [Medium]: Initiative status update
  Before: Auto Staking | Status: Beta prep | Key Date: Feb 15
  After:  Auto Staking | Status: Beta Live | Key Date: March 3 (actual)

CHANGE 2 [Low]: New decision logged
  Adding to Recent Decisions:
  | 2026-03-03 | Auto Staking beta live with 7 clients | 7 clients onboarded |

Apply these changes? [Yes / Edit / Skip]
```

### 5. Apply Updates

- Update `pms/{name}.md` with confirmed changes
- If the update is significant enough (OKR impact, new partner), also update:
  - `knowledge/verticals/{vertical}/roadmap.md`
  - `knowledge/verticals/{vertical}/deals.md` (if partner-related)
  - `knowledge/shared/snapshot.md` (if company-wide significance)
- Always update `last_updated` date in frontmatter

### 6. Prompt to Save

```
"Updates applied. Want me to save these changes to git? (jarvis:save)"
```

## Update Trigger Examples

```
"Update my brain: Concrete vault went live March 1 with 9 clients"
→ Updates: Institutional DeFi initiative status + deals.md Concrete entry

"Update my brain: Canton USDCX token support shipped"
→ Updates: Canton initiative + partners/canton.md status + shared snapshot

"My brain file is stale — here's what's changed this week: [paste update]"
→ Full weekly refresh

"Process this Gemini Notes transcript and update my brain"
→ Extract all decisions/actions, propose updates
```
