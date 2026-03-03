---
type: vertical-index
slug: caas
name: CaaS (Crypto as a Service)
pm_owner: TBD
status: stub
last_updated: 2026-03-03
tags: [caas, crypto-as-a-service, wallets, api, exchanges, fintech, b2b]
---

# CaaS — Crypto as a Service

> **Stub** — Awaiting PM brain file contribution. See `framework/templates/vertical.md` for the template.

## What This Vertical Owns

CaaS is BitGo's B2B product line that enables exchanges, fintechs, banks, and other financial institutions to offer crypto services to their end customers — without building the crypto infrastructure themselves. Clients embed BitGo's wallet, custody, and compliance stack via API.

**Core products:**
- White-label wallet infrastructure (API-driven)
- Embedded custody for exchanges and fintechs
- Transaction policy engine (spend limits, allowlists, MFA)
- AML/KYT compliance integrations
- Sub-account and multi-tenant architecture
- Go Accounts (account-model wallet infrastructure)

## OKRs

| Objective | Key Result | Target | Status |
|-----------|-----------|--------|--------|
| _(to be filled by PM)_ | | | ⚪ Not Set |

## Active Initiatives

| Initiative | PM | Status | Target | Notes |
|-----------|-----|--------|--------|-------|
| Go Accounts | TBD | Active | TBD | Account-model wallet hub; Figure Markets uses iFrame approach |
| KYT/AML integration | TBD | TBD | TBD | Compliance stack for CaaS clients |
| Sub-account architecture | TBD | TBD | TBD | Multi-tenant wallet model |

## Key Partners

| Partner | Relationship | Status |
|---------|-------------|--------|
| Figure Markets | Go Accounts iFrame onboarding; Futu/Moomoo as sub-clients | Active |
| Futu / Moomoo | CaaS sub-clients via Figure ATS | Active |
| Bitstamp | CaaS client (EVM chain integrations, WBTC) | Active |
| _(others to be filled)_ | | |

## Key Contacts

| Role | Person |
|------|--------|
| PM Owner | TBD |
| Engineering Lead | TBD |
| Head of CaaS | TBD |

## Cross-Vertical Dependencies

- **Custody & Platform**: Core wallet APIs that CaaS exposes to clients
- **Ecosystem**: Chain/token additions flow downstream to CaaS clients
- **Prime**: CaaS clients may graduate to Prime brokerage
- **SCaaS**: Stablecoin issuance/management layered on CaaS infra

## Open Blockers

| Blocker | Owner | Since |
|---------|-------|-------|
| _(to be filled)_ | | |

## Key Dates

| Date | Event |
|------|-------|
| _(to be filled)_ | |

---

*Last updated: 2026-03-03 — stub created. PM to populate with OKRs, initiatives, and partner records.*
