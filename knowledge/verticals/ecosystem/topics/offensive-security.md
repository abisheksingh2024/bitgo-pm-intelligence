---
type: topic
slug: offensive-security
name: Offensive Security
category: strategy
status: active
last_updated: 2026-03-02
tags: [security, blockaid, post-quantum, mpc, ciso, r&d, transaction-risk]
related_projects: []
related_people: []
---

# Offensive Security

## Overview

BitGo's current security posture is largely **defensive** — detect, respond, contain. The strategic push (raised at CEO level on 2026-03-02) is to shift toward **offensive security**: anticipate, probe, and harden before the attack happens. This is driven by an evolving threat landscape — nation-state actors (e.g., Lazarus Group), terminal-level social engineering, supply chain attacks, and the quantum computing horizon.

## Context / Motivating Anecdote

A technically sophisticated contact was phished into running a malicious hex command in their terminal, granting the attacker full sudo access. Attack triangulated to Lazarus Group; FBI notified and took over. Personal data (including identity documents) exposed. Illustrates that sophisticated actors are targeting individuals in crypto infrastructure, not just systems.

## Strategic Initiatives

### 1. Blockaid Integration → Transaction Risk Scoring
- **What**: Real-time transaction simulation and malicious contract detection embedded into BitGo's transaction risk score
- **Why**: Flags threats *before* signing — offensive posture applied to every outbound transaction, not post-audit
- **Status**: Planned / to be prioritized
- **Owner**: TBD (CISO + product alignment needed)

### 2. Post-Quantum MPC
- **What**: Roadmap for quantum-resistant MPC/HSM stack
- **Why**: Quantum computing is a planning problem today — custodians cannot wait until the threat is live
- **Status**: To be scoped (R&D-level)
- **Owner**: Ahmed Elmasry (HSM & MPC) + CISO
- **Note**: Connects to MPC/TSS upgrades (DKLS-23, Silence Labs) already in roadmap

### 3. Red Team / Adversarial Testing Program
- **What**: Recurring adversarial testing — pay people to break BitGo's infrastructure before bad actors do
- **Why**: One-off audits test what you know; red teams find what you don't
- **Status**: To be established as recurring program
- **Owner**: CISO

## Organizational Ask

**CISO and R&D need to co-develop security primitives** — not the current sequential model (R&D builds → security reviews). Joint ownership on offensive initiatives, starting with transaction risk and MPC, should be a structural expectation.

- Raised with CEO on 2026-03-02
- CEO asked to endorse CISO + R&D joint ownership as a standing requirement

## Open Items

- [ ] CEO to reinforce CISO + R&D joint ownership of offensive security initiatives
- [ ] Scope Blockaid integration into transaction risk scoring — assign owner
- [ ] Initiate post-quantum MPC roadmap conversation with Ahmed + CISO
- [ ] Evaluate red team program structure and cadence

## Timeline

- **2026-03-02**: Topic raised with CEO; strategic framing aligned; organizational ask made

## Changelog

- 2026-03-02: Created topic record following CEO briefing on offensive security posture
