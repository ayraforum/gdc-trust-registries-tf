# Run Sheet — The Pattern That Repeats

Day 2, 09:00. Built against the live deck: [Google Slides](https://docs.google.com/presentation/d/1yO7PvStCaf5i6Wx9NI9hrD38OnqKycdHjfUmOGPx-D0/edit). This is the only page to have open on stage.

Panelists: **Nishant Kaushik** (CTO, FIDO Alliance) · **Michael Animashaun** (Head of International Standards, UK OfDIA) · **Phil Archer** (Director of Web Solutions, GS1) · **Alina Nica Gales** (Registrar, Registradores de España).

**Structure:** the deck tells the whole story *before* the panel. By the time you hand off, the audience should already hold the gap, the bounded question, both boundaries, and what the Task Force brought. The panel then proves it repeats.

## The one sentence

> A credential can be cryptographically perfect and still tell you nothing about whether the issuer was authorized to issue it. Nothing in the formats or the protocols answers that. That is the gap.

## Deck — target 9:30, ceiling 15

| Slide | Say | Time |
| --- | --- | --- |
| Title + speakers | Name the four seats and the domain each brings. Don't read titles. | 0:20 |
| Passes every check, still wrong | **Technical validity is not authority.** | 0:45 |
| The stack has a governance gap | Three questions; build to **THE GAP** on the middle one. Formats bind claims, protocols move them, neither establishes authority. | 1:00 |
| Two sides of the same exchange | **Issuer side:** how an authority exposes its trust information, and signals recognition of other registries. **Verifier side:** how wallets and RPs use those answers. *A registry nobody can consume is a filing cabinet.* | 1:00 |
| Primary question | *At time T, does Authority assert that Entity may perform Action X on Resource Y?* Then the boundary: **registry informs, relying party decides.** For a sovereign, **the Authority is the sovereign itself** — the registry is never it. | 1:15 |
| Second question | Do you recognize another registry? Same boundary line. This is what lets it scale without one root. | 0:30 |
| Same question, every domain | Nouns change, the need for a governance function doesn't. | 0:30 |
| **Boundary 1: Sovereignty** | Listed and made discoverable. **Never vetted or approved.** Say *"recorded, not approved"* twice. Slowest slide in the deck. | 1:15 |
| **Boundary 2: Scoped recognition** | No single registry answers for the world. A web of scoped sources, not a master list. Recognition doesn't create or transfer authority. | 0:45 |
| Hard questions | Put it up. "These stay on screen for the panel." Move. | 0:30 |
| GDC TR Governance Framework | **This is what we brought.** Government issuers of identity documents. First and early. Open to your commentary — that's the point, not a formality. Future work named honestly: non-government issuers, business registration, verifier registration. | 1:00 |
| Panel intro | Four seats, four different answers to *who governs the registry*. Hand off. | 0:30 |

**If you're long:** drop "same question, every domain" (the panel makes it better), then compress the second-question slide. **Never** compress Boundary 1 or the framework slide.

## Panel — ~32 minutes

**Round 1 — 4 minutes each. Hold the clock or round 2 dies.**

- **Nishant (FIDO)** — You already run what this room is designing: governed information consumed by relying parties who'll never negotiate bilaterally. What did that take, where does it strain, and what do RPs actually do with it — query, cache, pin, ignore?
- **Michael (OfDIA)** — What does the register actually answer for a relying party, and what does it deliberately *not* answer? Where does it strain now it's live? *Follow-up, protect time for it:* what happens when the party relying on it is outside the UK?
- **Phil (GS1 / UNECE)** — In the UN work, a claim on a shipment traces back through a chain: a certificate from a conformity assessment body, which was accredited by someone else, and no sovereign anywhere at the centre. The party relying on it may be several steps and several months removed. What does that party need to be able to follow, and how far back? Where does it break today? *Then:* GS1 issues identifiers through national organizations at a scale where assessing everyone is impossible. Between a chain you can follow and a scale you can't assess — what's the minimum a registry has to say for it to be worth anything?
- **Alina (Registradores)** — Has consolidation made the digital work easier, or moved the problem? Then: what does an entry in your registers actually *mean* legally, and what are you accountable for? Everyone else's registry informs a decision — does yours do more?

**Round 2 — pick TWO, 6 minutes each.**

1. **What is the answer worth?** *(Alina → Nishant → Michael)* — "Informs, never decides": right across the whole range, or only its weak end?
2. **Recorded, or vetted?** *(Michael → Alina)* — Applied and assessed, versus exists because the law says so. Should the data show which? Without making a sovereign look like a lesser tier.

*Reserve if one dies:* **Legitimacy without statute** *(Phil → Michael)* — GS1 is the identifier authority almost everywhere with no statute behind it; OfDIA's authority runs the other way. Where does authority to run a registry actually come from?

**Round 3 — 45 seconds each, no elaboration.**

> One thing we could specify next that makes your problem smaller — and one thing we could get wrong that would make you walk away.

Write down the second half. That's the real output of the session.

## Close — "This is the work"

The registry in the middle is the easy part. **The alignment around it is the work.** Then the ask: what we need before the next GDC, where the scope doc lives and that pushing on it is the point, co-leads and next meeting. **Stop talking.**

## Guard rails

- **No sovereign issuer on this panel.** Sovereignty is yours alone to carry. Don't hand it off.
- **No travel or border voice** since IATA dropped. Don't build on a gate scenario.
- **Never assert GS1 or Registradores specifics from the chair.** There was no pre-call. Ask; let them state it. A wrong premise stated by you is the only unrecoverable error available tomorrow.
- **Tense:** we're *at* GDC. The ask is "before next GDC," never "before September."
