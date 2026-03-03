---
type: shared-knowledge
domain: glossary
last_updated: 2026-03-03
maintainer: PM Team
---

# BitGo Glossary

> Key terms, acronyms, and product vocabulary. Add new terms as they come up.

---

## Business & Commercial Terms

| Term | Definition |
|------|-----------|
| **AUC** | Assets Under Custody — the total value of digital assets BitGo holds in custody. Core volume metric. |
| **NRE** | Non-Recurring Engineering — a one-time integration fee charged to partners for onboarding work (e.g., new chain, new token standard). |
| **bps** | Basis points — 1 bps = 0.01%. Used for fee rates (e.g., "charging 10 bps on trade volume"). |
| **OKR** | Objectives and Key Results — BitGo's goal-setting framework. OKRs are set per vertical per half. |
| **ARR / NRR** | Annual/Net Revenue Run-Rate — annualized revenue projection based on current run-rate. |
| **NRE** | Non-Recurring Engineering — one-time integration fee for partner onboarding. |
| **GTM** | Go-to-Market — the strategy and plan for launching a product or feature. |
| **TAM** | Total Addressable Market. |

---

## Product Terms

| Term | Definition |
|------|-----------|
| **Go Accounts** | BitGo's integrated yield and utilization account. Clients' assets earn yield via staking, DeFi, or lending from a single account interface. |
| **Go Network** | BitGo's settlement and liquidity network enabling lend/borrow, OTC, and on-chain settlement. |
| **Auto Staking** | An opt-in staking product where BitGo stakes client assets and guarantees instant withdrawals (despite bonding periods). |
| **Liquid Staking Token (LST)** | A tradable receipt token representing staked assets (e.g., stETH = staked ETH). Allows earning staking yield while remaining liquid. |
| **Token Management (TKM)** | BitGo's token lifecycle product — issuance, vesting schedules, grant management, on-chain OTC. |
| **OES** | Off-Exchange Settlement — clients trade at a crypto exchange (e.g., Binance) but assets remain in BitGo custody. Eliminates counterparty risk. |
| **DeFi Vault** | An institutional DeFi product where BitGo clients deposit assets into curated on-chain protocols (e.g., Concrete) and earn yield. |
| **YLDS** | Figure Markets' yield-bearing digital dollar. Traded on the Provenance ATS. |

---

## Technical Terms

| Term | Definition |
|------|-----------|
| **HSM** | Hardware Security Module — tamper-resistant hardware device used to store private keys and perform cryptographic operations. FIPS-140-2 required. |
| **MPC** | Multi-Party Computation — cryptographic protocol where key signing is split across multiple parties, so no single party has the full key. |
| **TSS** | Threshold Signature Scheme — a type of MPC where a threshold (e.g., 2-of-3) of parties must cooperate to sign. |
| **DKLS-23** | BitGo's primary MPC protocol. A specific TSS scheme. |
| **2-of-3 wallet** | BitGo's standard wallet setup: three keys (BitGo server, client, backup/recovery); any 2 are needed to sign a transaction. |
| **vHSM** | Virtual HSM — software-based HSM simulation; lower assurance than physical HSM but more scalable. |
| **Unbonding period** | The delay between unstaking and receiving liquid assets. Varies by chain (e.g., ~21 days for Cosmos, ~7 days for some others). |
| **Slashing** | A penalty mechanism on Proof-of-Stake networks where a validator loses a portion of staked assets for misbehavior (e.g., double signing). |
| **EVM** | Ethereum Virtual Machine — the smart contract execution environment. "EVM-compatible" chains can run Ethereum smart contracts (e.g., Polygon, Arbitrum). |

---

## Governance & Process Terms

| Term | Definition |
|------|-----------|
| **OC** | Operations Committee — BitGo's internal governance body for approving new product features, especially those with fiduciary or risk implications. |
| **RMCC** | Risk Management and Compliance Committee — reviews high-risk initiatives (e.g., Auto Staking, new asset types). |
| **OC Charter** | The OC's scope of authority — defines what types of client actions BitGo can facilitate (e.g., non-fiduciary DeFi actions via qualified custody exemption). |
| **OFAC** | Office of Foreign Assets Control — US sanctions list. BitGo performs OFAC checks on counterparties. |
| **KYC** | Know Your Customer — identity verification process required for client onboarding. |
| **AML** | Anti-Money Laundering — compliance framework for detecting and preventing money laundering. |
| **FIPS-140-2** | A US government cryptography standard that HSMs must meet for key storage. BitGo requires this for all HSM vendors. |

---

## Partner & Network Terms

| Term | Definition |
|------|-----------|
| **Canton Network** | A privacy-enabled enterprise blockchain built on DAML smart contracts by Digital Asset. BitGo is a Super Validator (SV). |
| **SV (Super Validator)** | A governance participant in the Canton Network. BitGo holds weight-5 SV status (CIP-0074). Earns Cantoncoin rewards. |
| **Cantoncoin** | The Canton Network's native governance and reward token. ~$1.16/Cantoncoin; BitGo projects ~$28M/yr at Year 3. |
| **Provenance** | A Cosmos-based blockchain by Figure Markets used for tokenized equity trading (ATS) and YLDS. |
| **ATS** | Alternative Trading System — a regulated venue for trading securities (including tokenized securities). Figure Markets operates an ATS on Provenance. |
| **DTCC** | Depository Trust & Clearing Corporation — the US central securities depository. Exploring Canton-based settlement. |
| **DVP** | Delivery vs. Payment — settlement mechanism where asset transfer and cash transfer happen simultaneously. |
| **CMR** | Client-Managed Reserves — a SCaaS model where the stablecoin issuer manages their own reserve assets. |
| **USDCX** | Bridged USDC on Canton Network (allocation-type token). |
| **CBTC** | Wrapped BTC on Canton Network (allocation-type token). |

---

## Acronyms Quick Reference

| Acronym | Meaning |
|---------|---------|
| AUC | Assets Under Custody |
| NRE | Non-Recurring Engineering |
| OC | Operations Committee |
| RMCC | Risk Management and Compliance Committee |
| MPC | Multi-Party Computation |
| HSM | Hardware Security Module |
| TSS | Threshold Signature Scheme |
| OES | Off-Exchange Settlement |
| TKM | Token Management |
| LST | Liquid Staking Token |
| SCaaS | Stablecoin as a Service |
| CaaS | Crypto as a Service |
| SV | Super Validator |
| DeFi | Decentralized Finance |
| ATS | Alternative Trading System |
| DVP | Delivery vs. Payment |
| CMR | Client-Managed Reserves |
| EVM | Ethereum Virtual Machine |

---

*Last updated: 2026-03-03*
*To add a term: edit this file and submit a PR.*
