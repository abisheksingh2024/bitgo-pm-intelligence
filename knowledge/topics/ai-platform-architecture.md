---
type: topic
title: BitGo AI Platform Architecture
category: Strategy / AI Infrastructure
status: Active — Architecture Phase
created: 2026-03-09
last_updated: 2026-03-09
tags: [ai, architecture, orchestrator, mcp, platform]
---

# BitGo AI Platform Architecture

## Overview

This document describes a reusable, extensible multi-agent orchestration platform for BitGo's suite of financial services. The system follows a **hub-and-spoke model**: a central Orchestrator Hub receives user intent and routes work to domain-specific Service Agents, each backed by a standardized API abstraction layer, role-based context pipelines, validity guardrails, and a self-reflection loop for continuous improvement.

The architecture is designed to be modular by construction — each layer is independently deployable, each agent is independently extensible, and the entire platform is composable across BitGo's existing service domains.

---

## Architecture — 5 Layers

### Layer 0 — API Abstraction (Foundation)

All platform agents interact with BitGo's backend through a single, standardized abstraction layer built on the Model Context Protocol (MCP). This layer exposes wallet primitives — balance queries, transaction initiation, staking operations, key management — as typed, stateless tools.

**Design invariants:**
- No agent bypasses this layer to reach BitGo APIs directly
- All tools are stateless with typed inputs/outputs
- No side effects occur without explicit tool invocation
- This layer is a prerequisite; it must be stable before agents above it can ship

### Layer 1 — Role-Based Context Pipelines

Each organizational function contributes context to a shared **Context Store** through a dedicated ingestion pipeline. Context is entity-indexed (by partner, service, or client), timestamped, and source-attributed.

| Role | Context Contributed |
|------|---------------------|
| Product | OKRs, roadmap status, partner notes, meeting decisions |
| Engineering | Incidents, PRs, API health, performance metrics, deployment history |
| Sales / BD | Deal pipeline, pricing discussions, client objections |
| CSM | Client health scores, tickets, usage metrics, renewal flags |

Access controls are enforced at the store level — role boundaries are architectural, not cosmetic. Humans are the primary incrementers; pipelines are designed for continuous, low-friction context addition.

### Layer 2 — Context Guardrails

No agent consumes raw context. All context passes through a validation layer before use:

- **Freshness check** — flags stale entries against a configurable TTL per context type
- **Consistency check** — surfaces conflicts with existing records and queues them for human review
- **Source credibility** — weights context by source type (signed contract > meeting note > chat message)
- **Relevance scoring** — assesses whether context is applicable to the current request and service domain

Low-confidence or stale context is flagged explicitly; nothing is silently consumed.

### Layer 3 — Service Agents (Spokes)

Every service agent is a **subclass of BaseAgent**. The BaseAgent class is the platform's core IP — it handles context assembly, guardrail invocation, trust gate enforcement, and feedback logging. Service agents implement only domain-specific logic on top.

Each agent operates in one of two modes:
- **Insight mode** — produces recommendations, analysis, and risk flags; no execution
- **Execution mode** — gated behind explicit human approval; not enabled in the initial release

| Agent | Domain | Key Primitives |
|-------|--------|----------------|
| StakingAgent | Automated staking, validator selection, unbonding | stake/unstake, balance queries |
| OnboardingAgent | Chain and asset onboarding orchestration | wallet creation, chain config |
| TradingAgent | Token lifecycle management, DeFi/DEX routing | tx initiation, token ops |
| GoAccountsAgent | Account hub, utilization recommendations | account state, flow analytics |
| CustodyAgent | Wallet operations, key management coordination | key ops, tx signing workflows |

The BaseAgent inheritance model means new agents can be defined and validated in under 30 minutes.

### Layer 4 — Orchestrator Hub

The Orchestrator Hub is the central intelligence layer. It has five responsibilities:

1. **Intent classification** — determine what is being asked and route to one or more agents
2. **Context assembly** — retrieve the relevant context slice from the store for this request and role
3. **Multi-agent coordination** — sequence workflows that span agents (e.g., onboarding → staking + custody)
4. **Trust gate enforcement** — Insight responses pass through automatically; Execution requires a human approval token
5. **Interaction logging** — every request/response pair is logged with structured metadata for downstream analysis

The Orchestrator owns the BaseAgent class definition. This ownership model is what makes the system a composable platform rather than a collection of independent one-off agents.

### Layer 5 — Self-Reflection Engine

The Self-Reflection Engine operates as a feedback loop over agent performance:

- Collects structured ratings after every agent interaction (accuracy, helpfulness, execution correctness)
- Tracks per-agent performance metrics over time
- When a performance delta exceeds a defined threshold, generates a V2 agent spec — updated prompts, revised tool selection, adjusted context routing
- V2 proposals require human review and approval before deployment; the system is not fully autonomous
- Maintains version history per agent with rollback support

This layer ensures the platform improves without drifting — humans remain in the loop at the point of agent evolution.

---

## Full Data Flow

```
Role-based feeds (Product / Eng / Sales / CSM)
         ↓
    Context Store (entity-indexed, timestamped, role-access-controlled)
         ↓
  Context Guardrails (freshness / consistency / credibility / relevance)
         ↓
User / trigger → Orchestrator Hub
                       ↓
        [Intent classification + context assembly]
                       ↓
            Service Agent (Spoke)
                       ↓
         MCP Abstraction Layer  ←→  BitGo APIs
                       ↓
     [Trust gate: Insight → through | Execution → human approval]
                       ↓
              Output / Recommended Action
                       ↓
     Feedback → Self-Reflection Engine → V2 Proposal → Human Review
```

---

## Key Design Decisions

| Decision | Rationale |
|----------|-----------|
| Stateless agents | All state lives in the Context Store; agents are pure functions of context and tools |
| MCP as the sole API interface | Enforces consistency and auditability; prevents agents from creating undocumented API surface |
| Role-based context isolation | An architectural boundary, not a UX preference — enforced at the store level |
| Execution mode disabled at launch | Trust gate is hard-coded off; insight delivery must establish client confidence before autonomous execution is introduced |
| BaseAgent as the platform IP | The inheritance model is what distinguishes a platform from a pile of scripts |
| Self-reflection gated by humans | Prevents runaway agent drift; V2 proposals require explicit approval before deployment |

---

## Open Questions

- What is the right scope boundary for the MCP abstraction layer across service domains?
- How should context TTLs be calibrated per context type in the initial release?
- What is the minimum viable BaseAgent spec needed to unblock agent development?
- Which service agent should be built first to validate the end-to-end architecture?

---

*Created: 2026-03-09*
*Updated: 2026-03-09*
