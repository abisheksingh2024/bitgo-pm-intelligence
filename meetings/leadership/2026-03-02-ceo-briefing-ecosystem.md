---
type: meeting-note
date: 2026-03-02
title: CEO Briefing — Figure Markets Strategy & Offensive Security
attendees: [akshay-thakur, mike-belshe]
vertical: ecosystem
tags: [figure-markets, offensive-security, tokenized-equity, ceo, strategic]
---

# CEO Briefing — Figure Markets & Offensive Security
**Date**: 2026-03-02
**Attendees**: Akshay Thakur, Mike Belshe (CEO)

---

## Topics Covered

### 1. Figure Markets — Phased Strategy

**Context**: Figure Markets ATS went live in February 2026 with BitGo as sole custodian/signatory. First tokenized equity trades executed.

**Strategy discussed**: 5-phase roadmap from integration partner to full embedded infrastructure stack.

| Phase | What | Horizon |
|-------|------|---------|
| ✅ Done | Go-live: sole custodian/signatory on Figure ATS | Feb 2026 |
| 1 | Formalize rev model: charge Figure bps on all trade volume where BitGo is custodian | Now |
| 2 | BitGo as distribution layer: BitGo clients access Figure ATS through BitGo | Near-term |
| 3 | BitGo as secondary trading venue for Figure-issued tokenized equities | H2 2026 |
| 4 | Go Network as liquidity layer: tokenized equities in lend/borrow | H2 2026 / H1 2027 |
| 5 | BitGo as market maker: two-sided liquidity as market matures | Long-term |

**Decisions**:
- CEO greenlit Phase 1-2 negotiation with Figure
- Phase 1: determine bps rate + volume projection model; BitGo drove clients + holds assets → earns on flow
- Phase 2: assess execution fee parity; depends on Figure giving preferential routing as volume aggregator

**Open items**:
- [ ] Negotiate bps rate + volume projection for Phase 1
- [ ] Assess execution fee parity for Phase 2 (Figure conversation needed)

---

### 2. Offensive Security — Strategic Posture Shift

**Context**: BitGo's current security posture is largely defensive. CEO raised the need to shift to offensive security.

**Motivating anecdote shared**: A technically sophisticated contact was phished into running a malicious hex command in their terminal, granting attacker full sudo access. Attack triangulated to Lazarus Group; FBI notified. Illustrates that sophisticated nation-state actors are targeting individuals at crypto infrastructure companies.

**Three initiatives scoped**:
1. **Blockaid integration** → embed real-time transaction simulation and malicious contract detection into BitGo's transaction risk score
2. **Post-quantum MPC roadmap** → Ahmed Elmasry (HSM/MPC) + CISO; planning problem today, not a live threat yet
3. **Red team program** → recurring adversarial testing; one-off audits test what you know, red teams find what you don't

**Organizational ask**:
- CISO and R&D need to **co-develop** security primitives — not the current sequential model (R&D builds → security reviews)
- CEO asked to endorse CISO + R&D joint ownership as a standing requirement

**Decisions**:
- Offensive security positioned as strategic priority at CEO level
- Joint CISO + R&D ownership model to be reinforced by CEO

**Open items**:
- [ ] CEO to formally reinforce CISO + R&D joint ownership
- [ ] Scope Blockaid integration — assign PM/ENG owner
- [ ] Initiate post-quantum MPC roadmap conversation with Ahmed + CISO
- [ ] Evaluate red team program structure and cadence (CISO)

---

## Summary of Actions

| Action | Owner | By When |
|--------|-------|---------|
| Negotiate Figure Phase 1 bps + volume model | Akshay | Q2 2026 |
| Assess Figure Phase 2 execution fee parity | Akshay | Q2 2026 |
| CEO endorsement: CISO + R&D joint ownership | Mike B. | ASAP |
| Scope Blockaid integration | TBD (CISO + PM) | Q2 2026 |
| Post-quantum MPC roadmap conversation | Akshay + Ahmed + CISO | Q2 2026 |
| Red team program structure | CISO | Q2 2026 |

---

*Note created: 2026-03-03 (reconstructed from knowledge base records)*
