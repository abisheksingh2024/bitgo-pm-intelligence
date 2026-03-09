---
type: context-summary
domain: deals
refreshed: 2026-03-04
---

# Deals & Partners

## Active / Strategic

| Partner | Product | Status | Priority | Notes |
|---------|---------|--------|----------|-------|
| Figure Markets | YLDS + tokenized equity on Provenance ATS | ✅ Live; Phase 1 rev model in negotiation | P0 | CEO greenlit 5-phase strategy Mar 2; see below |
| Haven (Heaven) | Canton USDCX/CBTC collateral + lending | 🟡 In progress | P0 | ~$3.5B AUC potential; deposit support needed |
| Concrete | DeFi vault (first) | 🔴 Slipped from end-Feb | P0 | ~50% tech access fee; 9–10 clients; risk rating TBD |
| Aave | Direct protocol + native BTC borrowing | 🟡 MOU announced | P1 | DeFi marketplace listing; no exclusivity |
| DTCC / Equitable / DUCA | Canton onboarding | 🟡 In progress | P1 | DVP settlement; DTCC target mid-March |
| Binance | Staking; OES | 🟡 Testing | P1 | ~$175M pipeline; 7-day unbonding HYPE; flat 10% ownership concern |
| Franklin Templeton | Staking fund (9 coins; ~$15M AUM) | 🟡 In progress | P1 | BitGo custodian; Blockdaemon as validator; push FT to use Go validators; 7/9 supported |
| Kingsway | ~1M locked TON staking | 🟡 In progress | P0 | ~1-week window (Feb context) |
| X Money Group (XMG) | Integration | 🟡 In progress | P1 | ~$200K integration fee; push Go validator |
| 21.co | ~$10M ETP | 🟡 In progress | P1 | White-label validator per client |
| P2P SSV | ETH staking via Go validator | 🟡 Near testing | P1 | ~$600K integration fee from P2P; Alverton initial ~$4M |
| Ton Whales | TON staking | 🟡 Testing | P2 | Alongside P2P SSV |
| Midnight Foundation | Privacy chain ($3.3M/3yr) | 🟡 Commercial | P1 | $450K NRE; ~$685K/yr; Monument Bank (UK) potential; MPC req |
| Blockaid | Transaction risk scoring | ⚪ Not started | P1 | CEO-endorsed Mar 2; PM/ENG owner TBD |
| Monad | HTTPX/native chain strategy | 🟡 Early | P1 | First engagement playbook target |
| Zama | HTTPX/native chain strategy + privacy | 🟡 Early | P1 | Privacy + FHE; HTTPX engagement |

## Figure Markets — 5-Phase Strategy (CEO Greenlit Mar 2)

| Phase | Description | Status |
|-------|-------------|--------|
| Phase 1 | Rev model — charge bps on trade volume through Figure ATS | 🟡 In negotiation |
| Phase 2 | BitGo as distribution layer for Figure to reach BitGo clients | 📋 Planning (H2 2026) |
| Phase 3 | BitGo as secondary trading venue | 📋 Future |
| Phase 4 | Go Network as liquidity layer for Figure ATS | 📋 Future |
| Phase 5 | BitGo as market maker | 📋 Future |

**Rationale**: BitGo drove the clients and holds the assets — should earn on flow.

**Technical reminders**:
- All economic actions initiate in Figure UI; settle to BitGo custodial wallet
- Commit/uncommit messages on Provenance require BitGo signatures
- REST API for reconciliation (not FIX); blockchain tx hash NOT linked to trade responses
- FIX for order management; daily ~15-min maintenance window
- Key contacts: Clare Hove, Shawn Gao

## Open Deal Items

- [ ] Finalize Figure Phase 1 bps rate + volume projection model
- [ ] Confirm Canton USDCX/CBTC actual delivery date with Abhishek
- [ ] Canton Haven deposit support to unlock ~$3.5B AUC
- [ ] DTCC DVP transfer and settlement flows
- [ ] Scope Blockaid integration — assign PM/ENG owner
- [ ] Define HTTPX metrics for success + chain engagement playbook (Monad, Zama first)
- [ ] Push Franklin Templeton to use BitGo/Go validators (not just Blockdaemon)

## Notable Watch Items

- **Miston Labs**: Moved ~$750M Sooie to Coinbase; still pursuing other vault opportunities
- **Vechain**: Still owes ~25M tokens (~$250K) to seed validator
- **Privacy coins**: Compliance flagged shielded coins as likely hard-no without auditor/regulator transparency access
- **Insurance/slashing**: Working with Jody + external insurance partners; client FAQ needed

---

*Last updated: 2026-03-04*
