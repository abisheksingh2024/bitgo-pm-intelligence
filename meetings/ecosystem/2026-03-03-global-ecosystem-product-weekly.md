---
type: meeting-note
date: 2026-03-03
title: Global Ecosystem Product Weekly
source: Gemini Notes (Google Meet)
gemini_doc_id: 14rCRvB6BvPJUVutE7CtHGIr2SOmckLRANUhiAXUQYpk
vertical: ecosystem
tags: [ecosystem, metrics, dashboard, agent-wallets, httpx, utilization-rate, q2-roadmap, staking, aop]
---

# Global Ecosystem Product Weekly
**Date**: 2026-03-03 · 8:45–9:30 AM PST
**Attendees**: Akshay Thakur, Abishek Singh, Anantha Padmanabhan, Emerick Mary, Gaurav Pal, Kushagra Sharma, Michael Wei, Richard Xie, Gobi Nadesh, Landon Chow, Akash Nathrani, Sukriti Garg
**Note source**: Gemini Notes (auto-generated)

---

## Key Decisions

| Decision | Context |
|----------|---------|
| Strategy shift: go "native" with chains | Sales pipeline revenue insufficient to sustain more than one pod long-term; must drive TVL, developer activity, fund flows on chains like Monad, Zama, Canton |
| Q2 roadmap: focus on signals not noise | PMs to mark Q2 items "in/out" by tomorrow; pick 1–2 meaningful metrics to drive rather than tracking number of projects |
| bitgo-pm-intelligence repo to go team-wide | Akshay demoed the Jarvis agent repo; goal is all PMs represented in GitHub with context-rich markdown files accessible via AI |
| HTTPX = central settlement layer vision | On-chain equivalent of Go Accounts; serves as hub and liquidity pool across all bespoke chain integrations |
| Utilization rate framework to be built | Extend Looker dashboard beyond staking to capture full asset utilization (fund flows + snapshot) |

---

## Topics Covered

### 1. Q2 Roadmap Prioritization

Team instructed to review the 2026 spreadsheet by tomorrow and mark Q2 items "in" or "out." Direction: identify 1–2 meaningful metrics to drive. Number of projects is noise; focus on signals that extend from existing work to form Q2 roadmap v1.

**Action**: All PMs → review 2026 spreadsheet, mark Q2 items in/out by tomorrow

---

### 2. Strategic Chain Engagement — "Going Native"

Revenue pipeline from standard onboardings is not going to be impressive. The counter-strategy: become deeply embedded ("native") with key blockchains rather than just providing wallet support.

- **Target chains**: Monad, Zama, Canton, others
- **Goal**: Drive TVL; be rewarded for directing fund flows and asset volume onto these chains
- **Approach**: Secure monetary incentives (grants, bps on TVL settled through BitGo flows); define success metrics (liquidity, yields, competitive position); establish clear exit criteria

**HTTPX vision**: Serves as the central settlement layer and liquidity pool across all these bespoke chain integrations — the on-chain equivalent of what Go Accounts is across the BitGo product stack.

---

### 3. Agent Wallets — New Initiative

Concept introduced: "agent wallets" enabling automated on-chain actions through AI agents. Abishek Singh has done a demo; Nuri has native integrations with Hyperliquid.

**Action**: All PMs → brainstorm and document agentic possibilities + demos this week and next. Akshay will distill into a baseline understanding and integrate into the stack.

---

### 4. bitgo-pm-intelligence Repo Demo

Akshay demoed the internal Jarvis agent repo to the team:
- Local Claude-powered repository where PMs maintain context-rich markdown files
- Can automate tasks, read meeting transcripts, manage documents/PRDs, summarize team initiatives
- Goal: push to GitHub so whole team can interact with a central source of truth
- Steady-state vision: team members no longer need to ask each other what they're working on

---

### 5. Ecosystem Metrics Dashboard (Looker — In Progress)

Sukriti Garg presenting the in-progress Looker dashboard. Key numbers (Jan 26 → Mar 3):

| Metric | Current | Target (H1) | Notes |
|--------|---------|-------------|-------|
| Net new revenue | ~$16–17M | $15M | Already crossing OKR — but includes all clients, not just ecosystem deals. Needs refinement. |
| NRE | $41K | $60–80K est. | Lower than expected — possible pipeline softening or timing. Landon to reconcile with Sukriti. |
| Assets onboarded | 53 | — | Since Jan 26 |
| AOP-enabled assets | 1 (>$1M) | — | Only 1 of 53 crossed $1M AOP threshold (1.89%) |
| Incremental AOP | $2.6B | $2.5B | Ahead — includes 21 Shares ($800M) + Block Demon |
| Coin coverage | 90/100 + 549/1,000 | 850+ of top 1,000 | Abishek: on track, primarily from tokens |
| Staking balance | $10–11B | $17B | Significantly behind; staking penetration <30% = on radar |
| Staking revenue | ~$7M | — | Unusual bump in February; Sukriti to provide cliff notes |

**Open issues on dashboard**:
- Bespoke AOP work (Kingsway, AlphaTon, BMR, Block Demon) not in standard cohort tracking — manual updates until automated
- NRE vs onboarding fees distinction confirmed as separate line items
- Dashboard uses onboarding date → excludes older high-AOP assets like Zero G, Story

---

### 6. Utilization Rate Framework

New strategic framework to extend dashboard beyond staking penetration. Two definitions being developed:

**Definition 1 — Rate of fund flow** ("M2 macro equivalent"): tracks how an asset moves from custody downstream to Token Management or Trade. Measures velocity of assets through the BitGo stack.

**Definition 2 — Snapshot utilization**: at a given moment, how much of an asset is deployed in staking, DeFi, or settled through trade.

Ideas from the team:
- Landon Chow: frame as "earnings per share / earnings per token" — acknowledges complexity of capturing movement across staking/unstaking/partial sales
- Gobi Nadesh: start with Token Management, track utilization until the token is traded out (lifecycle end)

**Action**: Follow-up sessions to finalize definitions and dashboard implementation.

---

## Action Items

| Action | Owner | By When |
|--------|-------|---------|
| Review 2026 spreadsheet; mark Q2 items in/out | All PMs | Tomorrow (Mar 4) |
| Share bespoke staking deal details (BMR, AlphaTon, Kingsway) with Sukriti | Richard Xie | Today (in ecosystem channel) |
| Prepare cliff notes explaining February staking revenue spike | Sukriti Garg | Before next presentation |
| Brainstorm + document agentic wallet possibilities and demos | All PMs | This week + next |
| Akshay to distill agent wallet ideas → baseline understanding | Akshay | Next week |
| Reconcile $41K NRE vs $60–80K estimate | Landon Chow + Sukriti | This week |
| Track bespoke AOP (Kingsway, AlphaTon, BMR, Block Demon) manually | Sukriti | Ongoing |
| Schedule follow-up sessions on utilization rate framework | Akshay / Sukriti | TBD |

---

## New Entities / Signals to Track

- **HTTPX**: New strategic concept — on-chain settlement layer and liquidity pool across bespoke chain integrations. Needs a topic record.
- **Agent wallets**: New product initiative. Abishek Singh (demo), Nuri (Hyperliquid native integration).
- **Utilization rate framework**: New measurement framework in development. Two definitions in play.
- **Sukriti Garg**: Data/analytics; owns Looker dashboard for ecosystem metrics.
- **Monad**: Key strategic chain; BitGo has first-line leadership contacts.
- **Zama**: Another strategic chain engagement target.

---

*Source: [Gemini Notes — Global Ecosystem Product Weekly 2026-03-03](https://docs.google.com/document/d/14rCRvB6BvPJUVutE7CtHGIr2SOmckLRANUhiAXUQYpk/edit)*
*Note created: 2026-03-03*
