---
name: pm-onboard
description: Structured onboarding walkthrough for new BitGo PMs. Loads shared product knowledge, vertical context, and guides through the onboarding checklist.
allowed-tools: Read, Glob, Grep, AskUserQuestion
---

# PM Onboard

Guide a new PM through BitGo's product stack and their specific vertical.

## Workflow

### 1. Welcome + Gather Context

Use AskUserQuestion:
- Question: "Which vertical are you joining?"
- Options: Ecosystem | Custody Platform | Prime | CaaS | SCaaS | Not sure yet

- Question: "What's your background?"
- Options:
  - "Crypto-native PM" — skip basics, go deep on BitGo specifics
  - "Traditional fintech PM" — cover crypto fundamentals + BitGo
  - "New to crypto" — start from first principles

### 2. Load Shared Foundation

Always load first:
1. `knowledge/shared/product-stack.md` — full BitGo product map
2. `knowledge/shared/glossary.md` — key terms
3. `knowledge/shared/org-chart.md` — who owns what
4. `knowledge/shared/okrs.md` — current company priorities

### 3. Load Vertical Context

Based on their vertical:
1. `knowledge/verticals/{vertical}/_index.md`
2. `knowledge/verticals/{vertical}/team.md`
3. `knowledge/verticals/{vertical}/roadmap.md`
4. `knowledge/verticals/{vertical}/technical.md`

### 4. Deliver Structured Walkthrough

Present in this order:

**Part 1: BitGo's Business** (~10 min read)
- What BitGo does (custody → utilization flywheel)
- How BitGo makes money (custody fees, NRE, staking commission, bps)
- Who BitGo's customers are (exchanges, hedge funds, corporates, protocols)
- Competitive landscape

**Part 2: Your Vertical** (~15 min read)
- What the vertical owns
- Current OKR and why it matters
- Key product areas
- How the vertical makes money
- Key partners and deals
- The team and who to know

**Part 3: How Things Work** (~10 min read)
- Governance (OC, RMCC — what needs approval)
- How new chains/assets get onboarded
- How partners get integrated
- Release and announcement process

**Part 4: Day 1 Priorities**
- Load `framework/templates/onboarding-checklist.md`
- Walk through Week 1 items
- Offer to answer any specific questions

### 5. Close with Action Items

```
"Here's what I'd recommend for your first week:
1. Schedule 1:1s with [team members from team.md]
2. Read [top 3 most relevant partner records]
3. Ask me: 'What are the biggest open items in [vertical] right now?'
4. Set up your brain file: copy framework/templates/brain.md to pms/your-name.md"
```

## Adaptation by Background

**For crypto-native PMs**: Skip glossary basics; go deep on BitGo-specific architecture (MPC, HSM, staking mechanics, custody model)

**For traditional fintech PMs**: Bridge from familiar concepts — custody ≈ prime brokerage, staking ≈ repo/securities lending, DeFi vaults ≈ structured products

**For new-to-crypto PMs**: Start with Bitcoin → wallets → keys → custody → institutional custody → BitGo's stack
