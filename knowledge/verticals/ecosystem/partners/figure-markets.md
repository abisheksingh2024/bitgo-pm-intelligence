---
type: partner
slug: figure-markets
name: Figure Markets
priority: P0
status: active
last_updated: 2026-03-02
tags: [tokenized-equity, ats, provenance, ylds, defi, go-accounts]
related_projects: [go-accounts-hub]
related_people: [clare-hove, shawn-gao]
---

# Figure Markets

## Overview

Figure Markets operates an Alternative Trading System (ATS) on the Provenance blockchain, enabling trading of tokenized equities and YLDS (yield-bearing digital dollar). BitGo is the sole custodian and signatory for trades on the ATS.

## Current Status

**Go-live complete** (Feb 2026). First tokenized equity trades on the Figure ATS executed with BitGo as sole custodian/signatory. Integration uses iFrame approach; Futu/Moomoo onboarded as sub-clients.

## Key Facts

- BitGo is the **sole custodian and signatory** on the Figure ATS
- Integration architecture: REST API (trade reconciliation) + FIX (order management); commit/uncommit message flows require BitGo signatures
- iFrame approach for client onboarding
- Sub-clients: Futu, Moomoo
- Daily ~15-min maintenance window; cloud interconnect (AWS/GCP)

## Strategic Roadmap (as of 2026-03-02)

Discussed with CEO on 2026-03-02. The goal is to deepen BitGo's position from integration partner → embedded infrastructure stack for tokenized equities.

| Phase | What | Horizon |
|-------|------|---------|
| ✅ Done | Go-live: sole custodian/signatory on Figure ATS | Feb 2026 |
| **1** | **Formalize rev model**: charge Figure bps on all trade volume where BitGo is custodian | Now |
| **2** | **BitGo as distribution layer** (Futu model): BitGo clients access Figure ATS through BitGo — zero incremental onboarding friction, competitive execution fees | Near-term |
| **3** | **BitGo as secondary trading venue**: Figure-issued tokenized equities tradable within BitGo ecosystem; additional venue alongside FIGRD, not a replacement | H2 2026 |
| **4** | **Go Network as liquidity layer**: tokenized equities plugged into Go Network lend/borrow; same AUC flywheel extended to equities | H2 2026 / H1 2027 |
| **5** | **BitGo as market maker**: two-sided liquidity for tokenized equities as market matures; BitGo has custody base, venue, lend/borrow infra — no one else building all four layers | Long-term |

**Through-line:** Custody → Distributor → Venue → Liquidity Provider → Market Maker

### Phase 1 Detail (Rev Model)
- Charge Figure X bps on trade volume where BitGo is the custodian
- BitGo drove the clients + holds the assets → earns on the flow
- Need: bps number + volume projection (AUC × estimated turnover rate)

### Phase 2 Detail (Distribution Layer)
- BitGo clients access Figure ATS through BitGo — no direct ATS onboarding required
- Value prop over going direct: already KYC'd, existing wallets, existing BitGo trust → one API call vs. new legal/ops relationship
- Open question: can BitGo offer execution fees at parity or better? Depends on whether Figure gives preferential routing as volume aggregator

### Phase 3 Detail (Secondary Venue)
- Figure issues the tokenized equity (e.g., FIGR); BitGo is NOT the issuer
- BitGo becomes an additional secondary trading venue for Figure-issued assets
- Broader liquidity for Figure-issued assets; trading fee revenue for BitGo

### Phase 4 Detail (Go Network Liquidity)
- Tokenized equities as assets in Go Network lend/borrow program
- Replicates DeFi vault logic in equities: assets in custody → yield → retention → more AUC

### Phase 5 Detail (Market Maker)
- Long-term; requires market maturation
- BitGo uniquely positioned: custody base + execution infra + lend/borrow + relationships

## Open Items

- [ ] Negotiate Phase 1 rev share: determine bps rate + volume projection model
- [ ] Assess execution fee parity for Phase 2 — needs Figure conversation on routing/fee structure
- [ ] Prioritize client list for Figure ATS onboarding (Feb 16 deadline — check if still relevant)
- [ ] CEO alignment obtained (2026-03-02): greenlight Phase 1-2 negotiation with Figure

## Key Contacts

- **Clare Hove** — Figure Markets
- **Shawn Gao** — Figure Markets

## Timeline

- **~Feb 5, 2026**: Target go-live (SEC-dependent)
- **Feb 16, 2026**: Prioritized client list deadline
- **Feb 2026**: First tokenized equity trades completed ✅
- **2026-03-02**: CEO briefed on phased strategy; strategic roadmap aligned

## Changelog

- 2026-03-02: Created partner record; added phased strategy (Phases 1-5) following CEO briefing
- 2026-03-02: Go-live confirmed; first trades executed with BitGo as sole custodian/signatory
