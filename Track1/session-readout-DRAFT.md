# Session Readout — The Pattern That Repeats

> **PRE-WRITTEN DRAFT — NOT A RECORD.** Written before the session. Every panelist position below is *anticipated*, assuming panelists answered in support of the framing. Marked **[CONFIRM]** wherever a real person's view is assumed. Do not circulate until each is replaced with what was actually said. Delete this banner only when that is done.

Track 1 · GDC Day 2 · 09:00
Moderator: Darrell O'Donnell, Ayra Association
Panel: Nishant Kaushik (FIDO Alliance) · Michael Animashaun (UK OfDIA) · Phil Archer (GS1 / UNECE) · Alina Nica Gales (Registradores de España)

## Outcome in one paragraph

The session set out to establish that the authority question — *is this issuer recognized to issue this, and is that still true?* — goes unanswered by every credential format and delivery protocol, and that the same governance function recurs across every credential domain. Four operators of live governed registries, from four different governance models, described the same missing answer in their own terms. **[CONFIRM]** The Task Force's first governance framework was presented as an early, deliberately narrow draft focused on government issuers of identity documents, and the room was asked to push on it.

**Recognition was the session's central open thread.** No participant expects a single global registry or a universal root, which makes recognition between independently governed registries — one registry accepting another as authoritative for a defined scope — the mechanism the whole model rests on. It is a goal, not a solved problem, and the session was clear about that distinction. But it is no longer only a goal: the framework now carries recognition as a first-class question alongside issuer authority, the boundary has been stated (recognition does not create or transfer the underlying authority), and Track 2's cross-border mDL work is an active, concrete instance of two regions negotiating exactly this. **[CONFIRM]** The panel's contribution was to show what recognition has to survive in practice — differing legal weight, differing assessment regimes, and differing answers to what a listing is worth.

## What the framing established

Drawn from the deck; safe to state as presented.

1. **Technical validity is not authority.** A credential can pass every cryptographic check and still come from a party with no authority to issue it.
2. **The gap is in the stack, not in an implementation.** Formats bind claims to cryptographic evidence; protocols move them between parties. Neither establishes that the actor was authorized for the action and scope.
3. **Two sides of one exchange.** How an authority exposes its trust information and signals recognition of other registries; and how wallets, relying parties, and other systems consume those answers to anchor governance into technical systems.
4. **The bounded question.** *At time T, does Authority A assert that Entity B may perform Action X on Resource Y?* The registry informs the decision; the relying party makes it.
5. **A second question makes it scale.** Does this registry recognize another registry, for a defined scope.
6. **Two boundaries.** A government issuer is listed and made discoverable, never vetted or approved. And no single registry answers for the world — recognition is scoped, producing a web of sources rather than one master list.
7. **What was brought.** A first and early governance framework, scoped to government issuers of identity documents, with non-government issuers, business registration, and verifier registration named as future work.

## What the panel added

**[CONFIRM — all four entries below are anticipated, not recorded.]**

**Nishant Kaushik — FIDO Alliance.** Verifier scale. A governed list already consumed by an enormous number of relying parties who will never negotiate bilaterally with any authority. Expected to speak to what that took to operate, where it strains, and how relying parties actually consume it — queried, cached, or pinned — which bears directly on the framework's deployment-neutrality position. *Actual: ________*

**Michael Animashaun — UK OfDIA.** A live national register run by government, listing providers assessed against published criteria. Expected to speak to what the register answers and deliberately does not answer, and to the cross-border problem: what happens when the party wanting to rely on it sits outside the framework entirely. *Actual: ________*

**Phil Archer — GS1 / UNECE.** Two worlds at once: claims that trace back through accreditation and conformity-assessment chains with no sovereign at the centre, and identifiers issued through national organizations at a scale where individually assessing everyone is impossible. Expected to bear on the minimum a registry must assert for a listing to be worth anything. *Actual: ________*

**Alina Nica Gales — Registradores de España.** Registries whose entries carry legal effect and accountability, not merely information. Expected to test whether "the registry informs, the relying party decides" describes the full range of registries or only its weaker end. *Actual: ________*

## Where the panel converged

**[CONFIRM — anticipated convergence.]**

- The authority question is unanswered in every domain represented, and each has built its own answer inside its own silo.
- No participant expects or wants a single global registry or universal root.
- Recognition between independently governed registries, scoped, is the plausible path — not consolidation.
- What a registry asserts, and what that assertion is worth, differs sharply across domains and must not be flattened by the framework.

## What the panel put pressure on

The useful part of the session. **[CONFIRM — record what was actually challenged.]**

- **Is "informs, never decides" the right line for every registry**, or does it describe only registries whose answers carry no legal weight?
- **Recorded versus vetted:** should registry data distinguish an entry that was applied for and assessed from one that exists because the law says so — without letting tooling treat a sovereign as a lesser tier?
- **The minimum useful assertion:** at scale, what must a listing say to be worth relying on?
- **Negative, unknown, and unavailable** are three different answers and likely need three different behaviours.
- **Time of check versus time of issue:** whether one model serves both the current question and the historical one.

## Constraints the room gave us

From round 3 — *what would make your organization walk away.* **These are the most valuable output of the session; capture them verbatim.**

- Nishant: ________
- Michael: ________
- Phil: ________
- Alina: ________

## Actions

- [ ] Replace every **[CONFIRM]** with what was actually said; remove the banner.
- [ ] Fold the round 3 constraints into the scope document as explicit tests.
- [ ] Follow up individually with each panelist on the specifics they corrected live.
- [ ] Bring the "what is the answer worth" question to the co-leads as a live scope decision.
- [ ] Confirm whether recorded-versus-vetted belongs in the data model.
