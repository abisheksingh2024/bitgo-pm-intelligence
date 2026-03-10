---
type: meeting-note
date: 2026-03-10
title: Global Ecosystem Product Weekly
source: Gemini Notes (Google Meet)
gemini_doc_id: 1yBI-G5z99Om5SaTGxu3D_T1PNseAAsJvdWio58Yf8sE
vertical: ecosystem
tags: [ecosystem, wallet-connect, vaults, morpho, signum, staking, rmcc, hyperliquid, arc-protocol, canton, sui, go-accounts]
---

# Global Ecosystem Product Weekly
**Date**: 2026-03-10 · 8:45–9:30 AM PDT
**Attendees**: Akshay Thakur, Abishek Singh, Anantha Padmanabhan, Emerick Mary, Gaurav Pal, Kushagra Sharma, Michael Wei, Gobi Nadesh, Landon Chow, Akash Nathrani, Sukriti Garg
**Absent**: Richard Xie (OOO)
**Note source**: Gemini Notes (auto-generated)

---

## Key Decisions

| Decision | Context |
|----------|---------|
| Wallet Connect to be embedded natively in mobile app | Team agreed mobile-native WalletConnect adds significant value; Gobi to be looped in for follow-up discussion |
| Wallet Connect next iteration: add dollar volume metrics | Currently tracking wallets (28) and sessions (15); engineering team to add dollar amount volume to analytics |
| Signum must pay for 6-month exclusivity period | Launch delayed due to exclusivity language pushback; Emerick Mary and Michael Wei believe Signum should bear the cost of the exclusivity window |
| Vaults deposits target: go live next week | UI and backend architecture in progress, no blockers; trust team coordination on custom wallet creation is the remaining dependency |
| Morpho rollout on track for end of March | $300K grant on milestone basis ($50K first tranche deployed); commercials managed by AB's team |
| Fee address funding to become mandatory for ADA/SUI within 30–45 days | Abishek Singh to send GTM call-out to all clients; eliminates hybrid mix of sponsored and non-sponsored transactions |
| Compile all pending RMCC items for next-day discussion | Legal/RMCC bottleneck identified; team to list all blocked items to unblock pipeline |

---

## Topics Covered

### 1. Wallet Connect Usage and Strategy

Wallet Connect showed 28 wallets and 15 sessions in August, with external clients driving the activity. Emerick Mary confirmed Wallet Connect is now general access with no feature flag. The next iteration will focus on adding dollar amount volume to the metrics, requiring engineering team collaboration.

Akshay Thakur raised the self-custody strategy question — Emerick Mary suggested leveraging Wallet Connect as a marketing hook through content and demos. Discussions are underway about moving toward a tiered pricing model based on volume (currently free), which would avoid impacting retail plans.

The team agreed to embed Wallet Connect natively into the mobile application. This needs a follow-up conversation with Gobi (not present at the meeting).

---

### 2. Vaults Initiative and Morpho Rollout

Emerick Mary reported the Vaults initiative is in progress with no blockers — the team is actively working on both UI and backend architecture. The goal is to go live with deposits by the following week. The remaining dependency is trust team coordination on custom wallet creation.

"Deposit" in the Vaults context means a wallet-to-wallet transfer of client assets to another BitGo environment, detected by partner Concrete, which triggers automation to mint tokens and deploy a credit line for earning yield. Client assets leave their original wallet and move to a BitGo-managed environment.

Morpho is near the finish line with a $300,000 grant based on a milestone approach (first $50,000 deployed). Emerick Mary is in talks with Thomas about marketing. Morpho commercials are managed by AB and their team. Once the backend and architecture for Morpho are built, it will be easier to onboard new creators and partners.

---

### 3. Signum Exclusivity and Product Timeline

Signum's launch was delayed due to pushback on a 6-month exclusivity requirement — the language could cause issues with other initiatives. Emerick Mary and Michael Wei believe Signum should pay for the exclusivity period given its significance.

Emerick Mary estimated the Signum product would roll out sometime in Q2, as the team is focused on revenue-generating initiatives first.

---

### 4. New Partners and Asset Deployment Pipeline

Several new partners introduced: Steakhouse, Tessak (a Brett Reeves deal — Finnish asset manager looking to deploy up to $100 million), and Galaxy (looking to market its internal treasury curation services externally). Akshay Thakur noted Tessak could help hit H2 goals.

---

### 5. RMCC Process and Legal Bottlenecks

Gaurav Pal is building more detailed risk scenarios before the next RMCC meeting. The RMCC process requires everything closed two weeks prior. Susie Shukman (compliance) is putting together a new process to ensure RMCC committee members have context before meetings, addressing feedback that participants often lack preparation.

Legal and RMCC approvals described as a bottleneck and "anti-risk-taking." Example: Solana Go accounts staking is ready but blocked by legal sign-off. The Concrete RMCC session in Denver did not yield a fair assessment because participants were not up to speed.

---

### 6. Hyperliquid and High-Volume Clients

Binance continues to adopt Hyperliquid. Multiple high-volume clients in the pipeline, including Bitwise (internal BitGo bridging demo on testnet was successful). 10,000 Hyper tokens (~$300K) moved in the last week, in addition to the $175 million already being tracked.

---

### 7. Top 100 Coverage and Go-Live Targets

Kushagra Sharma confirmed the mentioned blockchains are in the top 100; audit of how many are supported on the platform is being prepared for the following day. Targeted final go-live date for code changes (wallet creation, deposits, withdrawals): **March 26th**.

---

### 8. ARC Protocol — Testnet and Mainnet Status

Abishek Singh reported testnet support for ARC is ready, but there is no visibility on mainnet launch date. Dev team starting testing this week. A tricky integration piece involves handling two versions of USDC (one native, one token version) — the protocol suggests summing for a total balance.

---

### 9. Haven Operational Constraints → Moving to BBT

Haven's Singapore trust account setup faces travel rule constraints and limited 24/7 operation. Haven is being moved to the BitGo Bank and Trust (BBT) setup to resolve these issues. Launch for larger clients expected in 1–2 weeks.

---

### 10. Canton Deliverables and Rewards

Canton tokens were ungated; testing has gone fine. BitGo set to receive 1 million Canton coins from Figment, worth $150,000, as earnings from being a validator on the network.

---

### 11. Sponsored Transactions — Sui and ADA

Sui and ADA sponsored transactions are live for internal Go accounts. Bitstamp and Bullish are currently testing. Abishek Singh plans a GTM call-out to make fee address funding mandatory within 30–45 days.

---

### 12. Sui Trade Volume and Go Account Strategy

Landon Chow reported strong Sui trade volume due to lower fees — H1 OKR already 25% complete on Sui alone. Working with DSA to refine the story. Plan to sunset Hide Zero by end of March. New Go account strategy focuses on the Go validator for Sui (requires sourcing 30 million Sui).

---

### 13. Staking and Go Account Development

Landon Chow: on track for lock token staking. New engineer Ryan starting on Go account development, though the Go accounts roadmap has been moved to Q2. Transition of custodial wallets to Go accounts planned once current work is complete.

---

### 14. Staking Commitments and Projected ARR

Anantha Padmanabhan provided staking pipeline updates:
- **A16Z**: Transferring funds in tranches; committed to staking 30M Luga nodes (60M expected by end of week, 35M for the Go validator)
- **Zero G**: Expecting second tranche of 80M tokens
- **XDC Foundation**: Looking to stake 50M XDC (~$500K annually if completed)
- **Binance/Vechain**: Planning to stake 2 billion Vechain (~$20M); Vechain foundation transferred 100M for staking the following week

---

## Action Items

| Action | Owner | By When |
|--------|-------|---------|
| Pull numbers on how many top 100 blockchains are supported; present to Akshay | Kushagra Sharma | Tomorrow (Mar 11) |
| Prepare a view showing projected annual ARR increase in staking from current initiatives | Anantha Padmanabhan | Tomorrow (Mar 11) |
| Ship GTM call-out to all clients holding ADA or SUI assets re: mandatory fee address funding | Abishek Singh | This week |
| Work with engineering team to add dollar amount volume to Wallet Connect analytics | Emerick Mary | Next iteration |
| Coordinate with trust team on custodian wallet creation for Vaults | Emerick Mary | This week |
| Send email with detailed risk scenario example (Claude-generated) to RMCC, CC Nuri and Jody | Gaurav Pal | This week |
| Follow up with Thomas to set up GTM initiative for CIP56 token launch | Abishek Singh | TBD |
| Share report with David on Midnight claims eligibility and outcomes | Abishek Singh | TBD |
| Discuss Wallet Connect mobile embedding with Gobi | Akshay Thakur / Emerick Mary | TBD |

---

## New Entities / Signals to Track

- **Tessak**: Finnish asset manager (Brett Reeves deal); looking to deploy up to $100M. Potential H2 pipeline contributor.
- **Galaxy**: Looking to market internal treasury curation services externally. New partner.
- **Steakhouse**: New partner introduced this week.
- **Concrete**: DeFi partner for Vaults — triggers automation on deposits to mint tokens and deploy credit lines.
- **Susie Shukman**: Compliance team; building new RMCC preparation process.
- **Ryan**: New engineer starting on Go account development (Landon Chow's team).

---

*Source: [Gemini Notes — Global Ecosystem Product Weekly 2026-03-10](https://docs.google.com/document/d/1yBI-G5z99Om5SaTGxu3D_T1PNseAAsJvdWio58Yf8sE/edit)*
*Note created: 2026-03-10*
