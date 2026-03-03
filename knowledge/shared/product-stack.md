---
type: shared-knowledge
domain: product-stack
last_updated: 2026-03-03
maintainer: PM Team
---

# BitGo Product Stack

> The full map of what BitGo builds and owns. Start here for onboarding.

---

## What BitGo Does

BitGo is the leading institutional digital asset infrastructure provider. At its core, BitGo provides **custody** — the secure storage and movement of digital assets for institutions. The company is expanding into **utilization** — helping clients earn yield, access liquidity, and participate in on-chain activity on top of their custodied assets.

**The core flywheel**: Clients bring assets into custody → BitGo enables those assets to work (staking, DeFi, lending) → Yield drives retention and more AUC → More AUC drives more revenue.

---

## How BitGo Makes Money

| Revenue Type | Source | Examples |
|-------------|--------|---------|
| Custody fees | % of AUC under management | All client segments |
| NRE (Non-Recurring Engineering) | One-time integration fees | Chain/token onboarding, partner integrations |
| Staking commission | % of staking rewards earned | Auto Staking, validator infrastructure |
| DeFi access fees | % of DeFi rewards | Institutional DeFi vaults (e.g., ~50% tech access fee) |
| Trading/brokerage fees | bps on trade volume | Prime, Token Management, Figure ATS |
| Platform fees | Usage-based | API calls, Go Accounts utilization |

---

## Product Verticals

### 1. Ecosystem
**What it is**: The layer that connects BitGo to external networks, assets, and protocols.

Sub-areas:
- **Network & Asset Enablement** — onboarding new blockchains and tokens; target 40 chains/quarter at <$10k/chain
- **Token Lifecycle Services (Token Management)** — token issuance, vesting, grant management, on-chain OTC; target $1M trade volume/month
- **Staking** — validator infrastructure, auto staking (opt-in instant-withdrawal), white-label validators; ~30% staking utilization of eligible assets
- **Institutional DeFi** — DeFi vaults, lending marketplaces, protocol integrations (Concrete, Aave, Maple)
- **Go Accounts** — integrated hub for asset utilization; hub-and-spoke model connecting staking, DeFi, trading, token management

---

### 2. Custody Platform
**What it is**: The core custody infrastructure — wallets, key management, and developer tools.

Sub-areas:
- **Wallet Platform** — multi-sig and MPC wallets; Lightspeed API (P99 <1s); 2-of-3 setup
- **Custody Controls** — policy engine, spend limits, whitelisting, workflow approvals
- **HSM & MPC Core Cryptography** — Hardware Security Modules (Thales, Entrust, Utimaco, IBM, YubiHSM, Google Cloud HSM); FIPS-140-2 compliance; DKLS-23 MPC protocol; Silence Labs EDDSA/ECDSA
- **Developer Experience** — SDKs, documentation, API interface

Wallet types:
- Segregated Custody Hot / Cold
- Self-Custody MPC
- Multi-Sig
- Lightspeed (high-throughput API wallets)

Key management:
- Selective HSM Signing
- vHSM vs physical HSM
- Root-key derivations; multi-jurisdictional deployments (US, Dubai, Japan, Taiwan)

---

### 3. Prime
**What it is**: BitGo's prime brokerage offering for institutional trading clients.

Sub-areas:
- Off-Exchange Settlement (OES) — allows trading at exchanges without assets leaving BitGo custody
- Lending and margin
- Trading infrastructure
- Prime connectivity

---

### 4. CaaS (Crypto as a Service)
**What it is**: White-label custody and infrastructure for fintechs, banks, and platforms that want to offer crypto to their end clients without building their own infrastructure.

Sub-areas:
- White-label custody APIs
- Branded wallet and custody experiences
- Regulatory/compliance tooling for CaaS clients
- Client onboarding infrastructure

---

### 5. SCaaS (Stablecoin as a Service)
**What it is**: Infrastructure for stablecoin issuers — minting, burning, reserve management, and distribution.

Sub-areas:
- Stablecoin minting/burning infrastructure
- Reserve management and reporting
- Compliance and audit support
- Client-Managed Reserves (CMR) model
- Distribution via Go Network and partner channels

Notable: FYUSD (Franklin Templeton's USD stablecoin) is an active SCaaS client.

---

## Cross-Cutting Infrastructure

### Go Network
BitGo's settlement and liquidity network. Enables:
- Lend/borrow against custodied assets
- Go Accounts as an integrated yield hub
- OTC and on-chain settlement
- Token trading and management

### Canton Network (Super Validator)
BitGo is an approved Super Validator (weight 5) on Canton. Earns Cantoncoin rewards. Supports USDCX (bridged USDC) and CBTC (wrapped BTC) as allocation-type tokens. Key clients: Haven, DTCC, Equitable, DUCA.

### Provenance (Figure Markets)
BitGo is the sole custodian/signatory on the Figure Alternative Trading System (ATS) on Provenance blockchain. Enables tokenized equity trading and YLDS (yield-bearing digital dollar).

---

## Key Technology Concepts

| Concept | What It Means at BitGo |
|---------|----------------------|
| MPC (Multi-Party Computation) | Key signing split across parties so no single point of compromise |
| HSM (Hardware Security Module) | Tamper-resistant hardware for key storage; FIPS-140-2 required |
| 2-of-3 wallet | Three keys (BitGo, client, backup); 2 required to sign |
| Staking | Locking assets to validate a blockchain network; earns yield |
| Unbonding period | Time delay before staked assets become liquid (varies by chain) |
| Liquid Staking Token (LST) | Tradable receipt token representing staked assets (e.g., stETH) |
| OES | Off-Exchange Settlement — trade at an exchange, assets stay at BitGo |
| AUC | Assets Under Custody — core volume metric |
| NRE | Non-Recurring Engineering — one-time integration fee |

---

## Competitive Landscape

| Competitor | Where They Compete |
|------------|-------------------|
| Coinbase (Institutional / Prime) | Custody, Prime, Agentic Wallets |
| Fireblocks | Custody, MPC wallets, DeFi access |
| Anchorage Digital | Custody, lending, staking |
| Blockdaemon | Validator infrastructure, staking |
| Figment | Validator infrastructure, staking |
| Circle (CPN) | Stablecoin infrastructure, payments |

---

*Last updated: 2026-03-03 — Maintainer: PM Team*
*To update: edit this file and submit a PR with your changes*
