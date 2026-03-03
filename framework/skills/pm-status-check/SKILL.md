---
name: pm-status-check
description: Check OKR and initiative status for any vertical or the whole company. Answers "is X on track?" with current data, risk flags, and recommended actions.
allowed-tools: Read, Glob, Grep, AskUserQuestion
---

# PM Status Check

Answer "is X on track?" with structured, data-backed status assessments.

## Trigger Patterns

```
"Is Ecosystem on track for Q1?"
"What's the status of Auto Staking?"
"Which verticals are at risk of missing H1 OKRs?"
"Give me a company-wide OKR health check"
"What's blocking [initiative]?"
```

## Workflow

### 1. Parse the Target

| Target | Files to Load |
|--------|---------------|
| Single vertical | `knowledge/shared/okrs.md` + `knowledge/verticals/{v}/roadmap.md` + `knowledge/verticals/{v}/deals.md` |
| Single initiative | Grep all vertical files for initiative name |
| All verticals | All vertical `_index.md` + `roadmap.md` files |
| Company-wide | `knowledge/shared/snapshot.md` + `knowledge/shared/okrs.md` + all verticals |

### 2. Assess Status

For each OKR or initiative, evaluate:

| Dimension | Questions |
|-----------|-----------|
| **Timeline** | Are target dates being met? What has slipped? |
| **Progress** | How far along vs. expected pace? |
| **Blockers** | What's blocking progress? Who owns resolution? |
| **Dependencies** | Any external dependencies (legal, OC, partner, engineering)? |
| **Staleness** | When was this last updated? Is the data fresh? |

### 3. Assign RAG Status

| Status | Criteria |
|--------|----------|
| 🟢 **On Track** | No slippage; blockers have owners; data fresh |
| 🟡 **At Risk** | Minor slippage or unresolved blocker; needs attention |
| 🔴 **Off Track** | Significant slippage; critical blocker; target in doubt |
| ⚪ **Unknown** | Data stale (>14 days) or not enough information |

### 4. Format Response

**For single vertical:**
```
## [Vertical] — OKR Status Check ([date])

**OKR**: [one-liner]
**Status**: 🟡 At Risk

### Initiatives

| Initiative | Status | Key Date | RAG | Notes |
|------------|--------|----------|-----|-------|
| Auto Staking | Beta live | Mar 3 (vs Feb 15) | 🟡 | 2-week slip; 7 clients onboarded |
| Concrete DeFi | Delayed | TBD (was Feb) | 🔴 | No confirmed delivery date |

### Top Risks
1. [risk 1]
2. [risk 2]

### Recommended Actions
- [ ] [action 1]
- [ ] [action 2]

Sources: [files read]
```

**For company-wide:**
```
## Company OKR Health Check — [date]

| Vertical | OKR Target | Status | Key Risk |
|----------|-----------|--------|----------|
| Ecosystem | +$2.5B AUC, $15M NRR | 🟡 At Risk | Concrete/Canton slippage |
| Custody Platform | [target] | [status] | [risk] |
| ...

### Cross-Vertical Watch Items
- [shared risk / dependency]
```

### 5. Offer Follow-Up

```
"Want me to:
A) Drill into [specific initiative]?
B) Create todos for the recommended actions?
C) Draft a status update for leadership?"
```
