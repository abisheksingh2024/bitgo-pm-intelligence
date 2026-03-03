---
type: pm-brain
name: Akshay Thakur
slug: akshay-thakur
vertical: ecosystem
title: Director of Product — Ecosystems & Platform
last_updated: 2026-03-03
tags: [ecosystem, platform, staking, chains, defi, tokenized-assets, canton, figure]
---

# Akshay Thakur — PM Brain

## Role & Scope

**Title**: Director of Product — Ecosystems & Platform
**Vertical**: Ecosystem (chain/token onboarding, staking, DeFi, tokenized assets, Go Accounts)
**Team size**: ~5 direct PMs + dedicated engineering pods
**Reports to**: CPO (Nuri Somer)

Akshay owns the full surface area of BitGo's ecosystem layer: how new blockchains and tokens get onboarded, how staking products work, how institutional DeFi fits into BitGo's offering, and how tokenized assets (equity, treasuries) flow through BitGo custody. He also drives strategic partner relationships (Canton, Figure Markets) and the Go Accounts platform.

---

## Current OKRs (H1 2026)

| Objective | Key Result | Target | Status |
|-----------|-----------|--------|--------|
| Grow ecosystem revenue | OKR1: Onboard 40 chains/quarter at <$10k/chain | 40 chains/Q | 🟡 At Risk |
| Grow ecosystem revenue | OKR2: >$4M pipeline from Q1 chain/staking deals | $4M+ | 🟡 At Risk |
| Deepen strategic partnerships | OKR3: Figure Markets Phase 1 rev model live | Q2 2026 | 🟡 In negotiation |
| Deepen strategic partnerships | OKR4: Canton AUC at $1B | 6 months | 🟡 At Risk (~$459M today) |
| Auto Staking to GA | OKR5: Auto Staking general availability | Q2 2026 | 🟡 Beta ongoing |
| Auto Staking to GA | OKR6: 7 beta clients → GA cohort | Q1/Q2 | 🟢 Beta underway |
| Platform expansion | OKR7: Go Accounts hub live for key clients | H1 2026 | 🟢 Figure live |
| Security posture | OKR8: Offensive security initiatives scoped | Q2 2026 | 🟡 CEO briefed, not scoped |

---

## Active Initiatives

| Initiative | Status | ETA | Key Dependency |
|-----------|--------|-----|----------------|
| Q1 Chain Pipeline (40 chains) | 🟡 In Progress | Q1 2026 | Eng capacity, commercial alignment |
| Auto Staking — Beta → GA | 🟡 Beta | Q2 2026 | RMCC/OC approval, liquidity model |
| Figure Markets Phase 1 (rev model) | 🟡 In Negotiation | Q2 2026 | Figure commercials conversation |
| Figure Markets Phase 2 (distribution) | 🟡 Planning | H2 2026 | Phase 1 complete first |
| Canton USDCX/CBTC token support | 🟡 Delayed | End Q1 2026 | Confirm with Abhishek |
| Canton AUC → $1B | 🟡 At Risk | 6 months | Haven deposit support |
| Go Accounts (Figure iFrame) | ✅ Live | Feb 2026 | — |
| Offensive Security scoping | ⚪ Not started | Q2 2026 | CISO + R&D alignment |
| Blockaid integration (TX risk) | ⚪ Not started | TBD | CISO + product alignment |
| Post-quantum MPC roadmap | ⚪ Exploratory | TBD | Ahmed Elmasry + CISO |

---

## Key Partners Owned

| Partner | Priority | What Akshay Owns | Status |
|---------|----------|-----------------|--------|
| Figure Markets | P0 | Strategic roadmap (Phases 1-5); revenue model negotiation | Active |
| Canton Network (Digital Asset) | P0 | SV strategy; USDCX/CBTC; Haven/DTCC onboarding | Active |
| Blockaid | P1 | Transaction risk scoring integration | Planned |
| Chain/token pipeline partners | P1 | Commercial alignment for new integrations | Ongoing |

---

## Team

| Name | Role | What They Own |
|------|------|--------------|
| Abhishek | PM | Canton Network, tokenized assets |
| Jerome | PM | Go Network, liquidity products |
| Emerick | PM | Auto Staking, LSTs, DeFi vaults |
| Clare Hove | Ext — Figure Markets | Figure ATS; onboarding sub-clients |
| Shawn Gao | Ext — Figure Markets | Figure ATS; technical integration |

**Cross-functional partners**: Yom, Astin, Aldwin, Jake, DC (Sales/BD); Ahmed Elmasry (HSM/MPC); Jody (insurance/slashing); Trust Ops; Legal/OC; CISO

---

## Open Items

- [ ] Finalize Figure Markets Phase 1 bps rate + volume projection model
- [ ] Confirm Canton USDCX/CBTC actual delivery date with Abhishek
- [ ] Get CEO endorsement: CISO + R&D joint ownership of offensive security
- [ ] Scope Blockaid integration — assign PM/ENG owner
- [ ] Initiate post-quantum MPC roadmap conversation with Ahmed + CISO
- [ ] Canton Haven deposit support to unlock ~$3.5B AUC
- [ ] DTCC DVP transfer and settlement flows
- [ ] Evaluate red team program structure with CISO

---

## Recent Decisions

| Date | Decision | Rationale |
|------|----------|-----------|
| 2026-03-02 | CEO greenlit Figure Phase 1-2 negotiation | BitGo drove clients + holds assets; should earn on flow |
| 2026-03-02 | Offensive security raised as strategic priority | Lazarus Group-style attacks targeting crypto infra individuals |
| 2026-03-02 | CISO + R&D joint ownership asked of CEO | Sequential model (R&D builds → security reviews) too slow |
| Feb 2026 | Figure Markets ATS go-live as sole custodian | First tokenized equity trades on ATS; BitGo sole signatory |

---

## Cross-Functional Dependencies

| Dependency | Direction | Who | What |
|-----------|-----------|-----|------|
| Custody & Platform | Ecosystem → | Ahmed Elmasry | MPC/HSM stack; DKLS-23, Silence Labs |
| Prime | Ecosystem → | Jerome | Go Network; Canton/Figure asset lending |
| CISO | Ecosystem → | TBD | Offensive security, Blockaid, red team |
| R&D | Ecosystem → | TBD | Post-quantum MPC |
| Trust Ops | Ecosystem → | TBD | Chain onboarding ops; client onboarding |
| Legal / OC | Ecosystem → | TBD | Auto Staking RMCC approval; privacy coins |
| Sales/BD | → Ecosystem | Yom, Astin, Jake, DC, Aldwin | Commercial alignment for pipeline chains |

---

## Context Dump

### Auto Staking
Full auto-delegation model: clients deposit → BitGo chooses validators → rewards flow back → client withdraws or re-stakes. Liquidity model is the core hard problem (withdrawal SLA + buffer management + automation policy). Target: ~7 beta clients (2 from Strategic, Tier 1, Tier 2 each), GA one cohort while pre-communicating to others. Exchange onboarding is later (regulatory/UX constraints). RMCC + OC approval required. Auto Staking must avoid "illusion of extending credit" framing.

### Figure Markets Strategy
BitGo is the sole custodian and signatory on the Figure ATS (Alternative Trading System on Provenance blockchain). YLDS (yield-bearing dollar) and tokenized equity trade here. Integration: REST API for trade reconciliation + FIX for order management. Sub-clients: Futu, Moomoo. Phase roadmap: (1) charge bps on trade volume → (2) BitGo as distribution layer → (3) BitGo as secondary venue → (4) Go Network liquidity → (5) BitGo as market maker.

### Canton Network
BitGo is a Weight-5 Super Validator. Chain wallet support live since Nov 2025. USDCX + CBTC token support targeted end-Feb 2026 (may have slipped). Long-term potential: ~$28M/yr at Year 3 from SV rewards. Key clients: Haven (~$3.5B AUC potential), DTCC (DVP settlement), Equitable, DUCA.

### Chain Pipeline
Target: 40 chains/quarter at <$10k/chain (down from $25k, up from 6-7/quarter). Q1 2026 pipeline >$4M projected. EVM sandboxing reduces marginal cost. Notable: Midnight Network ($3.1-3.6M), Stacks/sBTC ($1M signed), dYdX ($1M+ Netcoins), Starknet ($1M+).

### Offensive Security
CEO-level strategic push (2026-03-02): shift from defensive to offensive security posture. Triggered by Lazarus Group phishing incident (terminal sudo access via malicious hex command). Three initiatives: (1) Blockaid → transaction risk scoring; (2) Post-quantum MPC roadmap; (3) Red team program. Key ask: CISO + R&D joint ownership, not sequential model.

---

*Last updated: 2026-03-03*
