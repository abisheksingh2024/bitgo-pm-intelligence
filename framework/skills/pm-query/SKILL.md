---
name: pm-query
description: Cross-vertical natural language query across all BitGo PM knowledge. Use for any question about vertical status, OKRs, partners, team, products, or strategy.
allowed-tools: Read, Glob, Grep, Bash, AskUserQuestion
---

# PM Query

Answer any natural language question by querying across all PM knowledge files.

## Workflow

### 1. Parse the Query

Identify the query type and target:

| Query Pattern | Target Domain | Files to Load |
|---------------|---------------|---------------|
| Vertical status / OKR | Vertical roadmap | `knowledge/shared/okrs.md` + `knowledge/verticals/{v}/roadmap.md` |
| Partner / deal | Deals + partner record | `knowledge/verticals/{v}/deals.md` + `partners/{slug}.md` |
| Person / team | Org + team | `knowledge/shared/org-chart.md` + `knowledge/verticals/{v}/team.md` |
| Technical / architecture | Product stack + technical | `knowledge/shared/product-stack.md` + `knowledge/verticals/{v}/technical.md` |
| Cross-vertical | All verticals | All `_index.md` files |
| Onboarding / "what is X" | Shared knowledge | `knowledge/shared/product-stack.md` + `glossary.md` |
| Broad ("this week") | Everything | `snapshot.md` + all `_index.md` files |

### 2. Load Snapshot First

Always start with `knowledge/shared/snapshot.md` for current context.

### 3. Load Targeted Files

Based on query type, load the minimum set of files needed. Prefer depth over breadth for specific queries; breadth for broad queries.

### 4. Search for Fuzzy Matches

If the entity isn't immediately obvious:
1. Grep `knowledge/` for the query terms
2. Check `_index.md` files
3. Search `tags` fields in frontmatter

### 5. Synthesize Answer

- Lead with the most current, relevant information
- Include `last_updated` dates for key facts
- Flag stale data (>14 days old)
- Cross-reference related entities where helpful

### 6. Cite Sources

End every answer with:
```
Sources: [list of files read]
```

### 7. Offer to Drill Deeper

After answering, offer relevant follow-up options based on what was found.

## Example Queries

```
"Is Ecosystem on track to meet Q1 revenue targets?"
→ Load: okrs.md + ecosystem/roadmap.md + ecosystem/deals.md

"Who owns the Canton Network relationship?"
→ Load: org-chart.md + ecosystem/partners/canton.md + ecosystem/team.md

"What is the status of Auto Staking?"
→ Load: ecosystem/roadmap.md + deals.md (search for Auto Staking)

"Which verticals have OC dependencies this quarter?"
→ Load: all vertical _index.md + operations.md files; grep for "OC"

"Explain HSM to a new joinee"
→ Load: shared/product-stack.md + shared/glossary.md + custody-platform/technical.md
```
