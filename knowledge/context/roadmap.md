---
type: context-summary
domain: roadmap
refreshed: 2026-03-04
---

# Roadmap & OKRs

## H1 2026 Strategic Theme

**Pivot**: Custody-led onboarding revenue → utilization-led monetization via Go Accounts as default integrated hub.
**Newer framing (Mar 3)**: Standard chain onboarding revenue can sustain at most 1 pod — must go "native" with key chains by driving TVL + fund flows, not just wallet support.

## Akshay's H1 OKR

- **+>$2.5B AUC** from Q1/Q2 cohort → currently at ~$2.6B (ahead, but includes 21 Shares $800M + Block Demon)
- **>$15M net revenue run-rate** by 6/30/2026 → ~$16-17M currently (ahead, but definition needs tightening — includes non-ecosystem clients)
- **[Q2] AI architecture: generic agentic framework** — own BitGo's meta-level MCP architecture; define reusable classes/inheritance so any new use case can be built in <30 min; institutional focus, not consumer agentic wallets; two-stream: Gobi (fast iteration/feedback) + Akshay (framework)
- **[Q3] AI architecture: self-reflection loops live** — agents iteratively create V2 versions of themselves using user feedback; hub-and-spoke orchestration model

## Team OKRs

| PM | Q2 Key Results | Status |
|----|---------------|--------|
| Akshay Thakur | (1) +>$2.5B AUC from Q1/Q2 cohort; (2) >$15M net revenue run-rate by 6/30/2026 | — |
| Landon Chow | (1) TVL in TKM $4B → $6B (FMV) by 3/31/2026; (2) Trade volume $0 → $1M | 🟡 In progress |
| Abishek Singh | Top 950 out of Top 1000 coins by market cap | 🟡 On track (90/100 + 549/1000) |
| Gaurav Pal | Stake 30% of total assets eligible for staking | 🔴 $10-11B vs $17B target |
| Michael Wei (OKR Lead) | Grow yield-generating assets 32%: $14B → $18.5B; via Richard (staking) + Emerick (DeFi) | 🟡 TBD |
| Richard Xie | +$4B in staking AUC (sub-KR under Michael Wei) | 🔴 Behind |
| Emerick Mary | ≥$500M in DeFi AUC (sub-KR under Michael Wei) | 🟡 In progress |
| Ahmed Elmasry | [AI — Stream 3] Internal MCP wallet abstraction layer shipped; wallet primitives exposed as MCP tools | 🟡 In progress |
| Gobi Nadesh | [AI — Stream 1] GOI insights layer live in Go Accounts; client trust built before execution | 🟡 In progress |
| Cenobio | [AI — Stream 4] app.bitgo.com UI realigned to asset utilization; Synovio default onboarding; GOI surface ready | 🟡 In progress |

## Akshay Q2 Charter — Line Items (2026-03-06)

Line items for Akshay's own rows in the 2026 roadmap sheet (PM = Akshay Thakur):

| Focus Area | Description | Q1 | Q2 | Priority | Status | Target |
|-----------|-------------|----|----|----------|--------|--------|
| AI Infrastructure | Generic agentic framework — meta-level MCP architecture; class definitions + inheritance model; any use case buildable in <30 min | Out | In | P0 | In Progress | Q2 2026 |
| AI Infrastructure | Self-reflection loops — agents iteratively generate V2 via user feedback; hub-and-spoke orchestration | Out | Out | P1 | Planned | Q3 2026 |
| RWA / Partnerships | Figure Markets Phase 1 rev model — bps-on-trade-volume commercial arrangement go-live | In | In | P0 | In Negotiation | Q2 2026 |
| Canton Network | Canton AUC → $1B — unlock via Haven deposit support + DTCC DVP settlement | In | In | P0 | At Risk | Q2 2026 |
| Staking Utilization | Auto Staking GA — beta → general availability; RMCC/OC approval; first client cohort live | In | In | P0 | Beta | Q2 2026 |
| Security | Offensive security program — Blockaid (TX risk scoring), post-quantum MPC roadmap, red team scoping | Out | In | P1 | Not Started | Q2 2026 |
| Platform Intelligence | Utilization rate framework — define fund flow rate + snapshot utilization; extend Looker dashboard | In | In | P1 | In Progress | Q2 2026 |
| Chain Strategy | HTTPX — engagement model + success metrics defined; Monad + Zama initiated | Out | In | P1 | Early | Q2 2026 |
| AI / Product | Agent wallets — distill team concepts into baseline product spec; integrate into ecosystem stack | In | In | P2 | Brainstorm | Q2 2026 |

## Q2 Roadmap v1 — Due March 4 (was TODAY, now overdue)

All PMs marked Q2 items in/out by Mar 4. Focus: 1-2 strong signals, not number of projects.

## Multi-track Programs

### Staking
- **Anantha**: Staking onboardings (XDC, 21.co ETP ~$10M, Franklin Templeton staking fund)
- **Richard**: Go validator strategy; compete with Blockdaemon/Figment; P2P SSV nearing testing; Franklin Templeton (7/9 coins supported)
- **Gaurav**: Auto Staking beta live (~7 clients); GA target Q2; RMCC + OC approval pending; Binance ~$175M pipeline (7-day unbonding HYPE testing)

### Institutional DeFi
- **Emerick + Michael**: Concrete vault (slipped from end-Feb, no revised date); DeFi marketplace in build; Aave direct integration (native BTC borrowing, MOU announced); ~50% tech access fee on DeFi rewards

### Go Accounts Hub-and-Spoke (Gobi)
- Integrated hub for asset flow + utilization
- WalletConnect analytics (Snowflake pipelines + local dashboard)
- Token Management integration (TKM → Go → trade/stake)

### Token Management (Landon Chow)
- $1M trade volume by end of March via grantee comms/whitelisting
- Telemetry: grant wallet → Go Accounts → trade/stake (by end of month)
- Exploring on-chain OTC for synchronized unlock days

## New Strategic Initiatives (Mar 2026)

### HTTPX — Strategic Chain Settlement Layer (NEW Mar 3)
- Vision: on-chain equivalent of Go Accounts; central settlement layer across all bespoke chain integrations
- Strategy: become "native" with key chains (Monad, Zama, Canton) by securing grants/bps on TVL
- Engagement model: monetary incentives + define success metrics (liquidity, yields, competitive position) + exit criteria
- Status: vision/early stage; engagement playbook for Monad + Zama being defined first

### Agent Wallets (NEW Mar 3)
- New product concept; Abhishek Singh has demo; Nuri has native Hyperliquid wallet integrations
- Team-wide brainstorm underway — all PMs documenting ideas this week + next
- Akshay to distill into baseline understanding + stack integration plan by next week
- Early-stage but flagged as strategically important alongside HTTPX

### Utilization Rate Framework (NEW Mar 3)
- Two definitions being developed:
  1. **Fund flow rate**: How quickly assets traverse from custody → downstream products (TKM, Trade); "M2 macro equivalent"
  2. **Snapshot utilization**: % of assets deployed in staking, DeFi, or settled through trade at a given time
- Sukriti Garg owns Looker dashboard extension; team providing input on definitions
- Follow-up sessions to be scheduled

### AI Agent Architecture — Akshay Owned (UPDATED Mar 9)
- Akshay is QB for the full AI platform architecture initiative
- **Full architecture defined Mar 9** — 5-layer hub-and-spoke model:
  - Layer 0: MCP Abstraction (Ahmed, sole interface to BitGo APIs)
  - Layer 1: Role-based context pipelines (Product / Eng / Sales / CSM feed a shared Context Store)
  - Layer 2: Context guardrails (freshness, consistency, credibility, relevance)
  - Layer 3: Service Agents / Spokes (StakingAgent, OnboardingAgent, TradingAgent, GoAccountsAgent, CustodyAgent — all extend BaseAgent)
  - Layer 4: Orchestrator Hub (intent classification, context assembly, multi-agent coordination, trust gate, logging)
  - Layer 5: Self-Reflection Engine (feedback → performance scoring → V2 agent proposals → PM review)
- Key design decisions: stateless agents, MCP as sole API interface, role-based context isolation, no autonomous execution in Q2, BaseAgent class as platform IP
- **Singapore handoff target**: clean architecture deck for VP Eng + 1-2 PMs before Mar 30 hackathon
- See full spec: knowledge/topics/ai-platform-architecture.md

### Q2 Go Accounts AI Strategy — Four Growth Streams (NEW Mar 6)
**Paradigm shift**: BitGo Go Accounts = asset allocation and portfolio management (not custody). Kinsugi needs 6–8 month realignment to this vision.

**Four confirmed streams** (Akshay, Landon, Gobi — Mar 6):
1. **GOI — Insights** (Gobi): Risk/scenario analysis, market context, crypto-native information. Build customer trust through recommendations before any execution
2. **Execution — Token Lifecycle** (Landon): Automated treasury management, stake/unstake, DeFi/DEX trading, reserve management, validator delegation. Fastest-to-market: DeFi/DEX
3. **Wallet Abstraction Layer** (Ahmed/MCP): Expose wallet primitives via internal MCP layer; abstract platform complexity; key infrastructure across all streams
4. **Product Friction / Customer Lifecycle** (Cenobio): Redesigned app.bitgo.com UI aligned to custody → asset utilization paradigm; Synovio as default onboarding; Kinsugi realignment to "asset deployment"; UI scaffolding for GOI recommendations; address policy service/risk scoring/travel rule friction

**Critical decision**: Execution will NOT be automated in Q2. Trust must be built via insights/recommendations first.

**Shared infrastructure constraint**: Ahmed's MCP wallet abstraction layer (Stream 3) is the prerequisite that unblocks all other streams. All stream owners depend on it.

### Q2 AI Objectives by Owner (defined Mar 7)

| Owner | Stream | Q2 AI Objective | Key Deliverables |
|-------|--------|-----------------|-----------------|
| Akshay Thakur | Framework / Strategy | Define and ship reusable agentic framework — base class + inheritance model so any use case builds in <30 min; orchestrate all 4 streams | Meta-level MCP architecture; class/inheritance spec; orchestration pattern; Singapore hackathon validation (Mar 30–Apr 3) |
| Gobi Nadesh | 1 — GOI Insights | Ship GOI (Go Accounts Intelligence) — AI insights layer for risk/scenario analysis and market context; build client trust before any execution is unlocked | Insights UI in Go Accounts; constrained release cadence with feedback loops; define "trust built" gate for execution |
| Landon Chow | 2 — Execution / Token Lifecycle | Define product vision + prototype AI-enabled token lifecycle execution layer; DeFi/DEX as fastest-to-market starting point | Vision statement for Execution stream; DeFi/DEX scope; map execution primitives to Ahmed's MCP layer; leverage TKM TVL KR as proof point |
| Ahmed Elmasry | 3 — Wallet Abstraction (MCP) | Build and ship internal MCP wallet abstraction layer — expose BitGo wallet primitives as standardized MCP tools; foundational infra for all AI streams | Internal MCP server spec; first primitive set (balance, tx initiation, staking); developer experience layer; integrate with Akshay's agentic framework |
| Cenobio | 4 — Product Friction / UI | Realign redesigned app.bitgo.com UI to custody → asset deployment paradigm; create the UI foundation for AI-generated recommendations (Stream 1) | Audit new UI for custody-era language; Synovio as default onboarding; reserve UI real estate for Kinsugi execution actions; GOI recommendation surface design; reduce policy/travel rule friction |

**Customer lifecycle note**: Go Accounts activation takes 3–6 months post-signup. Synovio to become default onboarding goal for all users.

**Next steps** (Mar 6):
- Landon + Gobi to draft vision statements for their elements (stress test with Emer, Richard, other PMs)
- Wednesday follow-up session scheduled
- Singapore AI hackathon March 30 – April 3 (Gobi confirmed; Landon backup)

### Offensive Security (CEO-endorsed Mar 2)
- Triggered by Lazarus Group-style phishing incident (terminal sudo access via malicious hex command)
- Three initiatives: (1) Blockaid (transaction risk scoring), (2) Post-quantum MPC roadmap, (3) Red team program
- Key structural ask: CISO + R&D joint ownership (not sequential review model)
- Status: CEO briefed + endorsed; scoping not started; OKR8 added

## Key Roadmap Initiatives (Existing)

### Asset Onboarding
- 40 chains/quarter; cost <$10k/chain (down from $25k)
- 53 onboarded since Jan 26; notable pipeline: Midnight ($3.1-3.6M NRE), Stacks/sBTC ($1M signed), dYdX ($1M+ Netcoins), Starknet ($1M+)
- EVM sandboxing (8 chains shortlisted from Top-1000 EVM list)

### Canton Network
- Weight-5 SV approved; USDCX + CBTC token support slipped from end-Feb
- Haven deposit support needed to unlock ~$3.5B AUC
- DTCC DVP settlement target mid-March
- Long-term: ~$28M/yr Cantoncoin rewards at Year 3

### Privacy / Payments
- **Payments**: ARC testnet; mainnet expected Q2; Tempo (TIP-20)
- **Privacy**: Midnight + Zcash shielding in progress; shielded coins likely hard-no without regulator transparency access

## Key Dates

| Initiative | Target Date | Status |
|------------|-------------|--------|
| Q2 Roadmap v1 | Mar 4, 2026 (TODAY) | ⚠️ Due now |
| Canton USDCX + CBTC | End Feb → slipped | 🔴 Confirm with Abhishek |
| Concrete DeFi vault | End Feb → slipped | 🔴 No revised date |
| Auto Staking GA | Q2 2026 | 🟡 Beta live |
| Figure Phase 1 rev model | Q2 2026 | 🟡 In negotiation |
| ARC (Payments) mainnet | Q2 2026 | 🟡 On track |
| Token Mgmt $1M trade volume | End of March | 🟡 In progress |
| Agent Wallets stack integration plan | Next week | 🟡 Brainstorm |
| H1 OKR deadline | June 30, 2026 | — |

---

*Last updated: 2026-03-07 — named Cenobio as Stream 4 owner; added Q2 AI Objectives by Owner table (all 5: Akshay, Gobi, Landon, Ahmed, Cenobio); added Ahmed + Gobi + Cenobio to Team OKRs table*
