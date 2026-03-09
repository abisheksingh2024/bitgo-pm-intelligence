---
type: partner
slug: figure-markets
name: Figure Markets
priority: P0
status: active
last_updated: 2026-03-06
tags: [tokenized-equity, ats, provenance, ylds, defi, go-accounts, btgo, blockchain-native-equity, goldman-sachs]
related_projects: [go-accounts-hub, btgo-tokenized-equity]
related_people: [clare-hove, shawn-gao, juliana-beal-gs, ryan-limaye-gs, danielle-freeman-gs, james-donovan-gs]
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

## BTGO Tokenized Equity Initiative (NEW — 2026-03-06)

BitGo is exploring a partnership with Figure Markets to **list BTGO (BitGo's existing public stock) as tokenized equity on the Figure ATS**. This is not a new capital raise — BitGo is already public. GS took BitGo public and is BitGo's lead investor; they are being consulted as a trusted advisor on the idea.

### What This Is
- BTGO = BitGo's existing public stock
- The idea: BitGo partners with Figure (FIGR) to list BTGO as tokenized equity on the Figure ATS — similar to how FIGR itself is listed there
- Figure Markets is a **public company** (ticker: FIGR/FGRD); FGRD is the precedent tokenized equity listing on their own ATS — GS sent the case study as reference
- If BTGO lists on Figure ATS, **two public companies** (BTGO + FIGR) would both be listed on the Figure ATS, with BitGo as the custodial infrastructure underneath both — uniquely dual-role
- This is an exploratory call to get GS's candid feedback on the idea, not a mandate conversation

### Goldman Sachs Context
- GS is BitGo's **lead investor** and managed BitGo's public listing
- Trusted advisor relationship — this is a feedback/strategy call, not a pitch
- GS Teams on the call: GBM Private (Ryan Limaye, Danielle Freeman, Yasmine Coupal), AWM (James Donovan), ECM (gs-btgo-ecm)
- Coverage: Juliana Beal (primary), Lynnette Okada

### BitGo Attendees
- Mike Belshe (CEO), Akshay Thakur, Baylor Myers

### CEO Signal (from email, Mar 6)
Mike Belshe: *"In the call would love to hear how GS views the FGRD stock post transaction too."*
→ Wants GS's candid view on how FGRD performed post-tokenization as a real benchmark

### Call Details
- **Date**: Friday, March 6, 2026, 1:00–1:33 PM PT ✅ COMPLETED
- **Originally**: Mar 11 — moved up
- **Format**: Google Meet

### GS Call Outcomes (2026-03-06) — KEY INTEL

**GS confirmed: blockchain share class is permissible.** Both Danielle Freeman and Ryan Limaye said they don't see an issue with creating a new blockchain-native listed class of BTGO equity. Analogy: listing on a second exchange (redundant but allowed). Not obviously material to stock price since it's a reclassification, not a sale.

**Pre-lockup secondary: off the table.** BTGO is ~40% below IPO price. Waiving the lockup below IPO price would create litigation risk from IPO investors. GS confirmed this is not an option.

**BTGO lockup expiration: ~May 15, 2026** (2nd quarterly earnings release post-IPO) — Danielle to confirm exact date.

**FGRD liquidity reality check:**
- Figure ATS volume: **$22,000/day** vs. **$110M/day** on NASDAQ — extremely illiquid
- Price tracks within ~1% delta of NASDAQ despite trading only every 3–10 minutes
- First day had a real dislocation; since then price gaps close on multi-minute basis
- A second offering would be easier — institutions already set up (BitGo custody, Figure wallets, APIs all in place)
- **Jump Capital** is market maker on the Figure ATS chain

**Three models for digitized stock discussed:**
1. Figure/tradable — functional but scaling challenge (go issuer-by-issuer)
2. Superstate/Securitize — illiquid, no trading venues today
3. Wrapped equities — not doable today, SEC-pending; first use case = collateral/lending; expected later 2026

**Communication path forward:** Slip mention of blockchain share class contemplation into an earnings call transcript (via friendly analyst question). Then call ~10 closest investors informally to gauge interest. This approach is within legal bounds since it's not sourcing supply for a sale.

**Post-lockup play:** If large investors want meaningful liquidity post-lockup, package blockchain listing with a post-lockup secondary as one corporate transaction. This simplifies to a single corporate action vs. two separate transactions.

**Meeting ref:** [2026-03-06-002-gs-blockchain-shares](../meetings/daily/2026-03-06-002-gs-blockchain-shares.md)

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

- 2026-03-06 (post-call): GS call completed. Key outcomes: blockchain share class confirmed permissible by GS; pre-lockup secondary off the table (stock 40% below IPO); FGRD ATS volume only $22K/day vs $110M NASDAQ; lockup expiry ~May 15; Jump Capital is FGRD market maker; communication path = earnings call slip + friendly investor calls; post-lockup play = package secondary + blockchain listing as one transaction
- 2026-03-06 (pre-call): Added BTGO tokenized equity initiative; Goldman Sachs call at 1 PM PT; GBM Private + AWM + ECM teams engaged; FGRD case study sent as precedent; CEO wants GS view on FGRD post-transaction performance

- 2026-03-02: Created partner record; added phased strategy (Phases 1-5) following CEO briefing
- 2026-03-02: Go-live confirmed; first trades executed with BitGo as sole custodian/signatory
