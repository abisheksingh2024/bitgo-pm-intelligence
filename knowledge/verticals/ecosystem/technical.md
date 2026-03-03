---
type: context-summary
domain: technical
refreshed: 2026-03-02
---

# Technical Context

## Wallet Architecture

### Wallet Types (BitGo)
- 2-of-3 wallet setup (MPC and multisig)
- Segregated Custody Hot; Custody Hot vs Custody Cold
- Self-Custody MPC vs Multi-Sig
- Lightspeed API (P99 latency target <1s)

### Key Management
- Selective HSM Signing; vHSM vs physical HSM
- Root-key derivations; key-card design
- Multi-jurisdictional HSM deployments: US, Dubai, Japan, Taiwan

### HSM Vendors
- Thales Luna, Entrust nShield, Utimaco, IBM, YubiHSM, Google Cloud HSM
- FIPS-140-2 compliance requirement

## MPC / TSS Stack
- DKLS-23 (primary MPC protocol)
- Silence Labs EDDSA/ECDSA implementation
- Frost vs Lindell22 (evaluation context)
- Deterministic nonce generation
- Ahmed Elmasry owns HSM & MPC core cryptography

## Asset Onboarding Infrastructure
- Target: 40 chains/quarter; cost <$10k/chain (down from $25k)
- EVM chain sandboxing: batch-based approach; 8 chains shortlisted from Top-1000 EVM list
- Blockchain upgrade compatibility (e.g., EOS → Vaulta)
- QA automation + onboarding dashboard (Anantha; near-final)
- stETH supported (row 146 in asset list); VET (VeChain) confirmed supported

## Staking Infrastructure
- Auto Staking liquidity stack (per-asset): on-hand buffer → netting/internal flows → internal rebalancing → treasury/credit → liquid staking/venues → OTC/emergency
- Per-asset: bonding/unbonding mechanics; APIs; slashing; revenue; fixed vs marginal infra costs
- Validator strategy: compete with Blockdaemon/Figment; buy-vs-build/M&A evaluation
- P2P SSV integration: nearing testing for ETH staking via Go validator (~$600K integration fee)
- Ton Whales: TON staking testing
- Exchange constraints: reward/principal co-mingling; ledger reconciliation issues (may need reward segregation)

## Figure / Provenance Technical Details
- Provenance = Cosmos-based settlement network with commit/uncommit message flows
- Group policy account: BitGo manages custodial key; sole voting member key
- Boundary layer signatures: deposit/withdraw/commit/conversion require BitGo signatures; trades themselves don't require end-user signatures once committed
- Settlement: exchange broadcasts settlement txs; Figure pays gas (fee grant during onboarding)
- Reconciliation: use Figure partner REST APIs (paginated tx list); blockchain tx hash NOT linked to trade responses
- FIX gateway: daily ~15-min maintenance; sequence recovery configurable; cloud interconnect (AWS/GCP)
- iFrame approach to avoid client API build

## Canton Network Technical
- USDCX (bridged USDC) + CBTC (wrapped BTC): allocation-type tokens
- Governance-approved SV weight 5; Cantoncoin rewards
- DVP transfers + DTCC on-chain settlement target: mid-March
- Key question: who custodies underlying BTC for CBTC? (Abhishek to confirm with Haven)

## Privacy Chain Technologies
- Canton (privacy by design); Zama (FHE); Aztec (ZK privacy)
- Midnight (Cardano-based privacy L1): $3.3M/3yr commercial deal; MPC requirement discovered late
- Zcash shielding: privacy-chain upgrade in progress
- Compliance constraint: shielded coins likely hard-no without auditor/regulator transparency access

## WalletConnect / Go Accounts
- WalletConnect connectivity released on Kinsugi
- Focus: analytics/data engineering (Snowflake pipelines + local utilization dashboard)
- Hub-and-spoke integrations led by Gobi Nadesh

## Agentic / Future Wallet Architecture
- Agentic wallets (AI-powered commerce rails); next-gen direction
- Advanced key management; offline recovery tooling
- Developer experience: SDKs, developer docs, UI/API interface

---

*Last updated: 2026-03-02*
