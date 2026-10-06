# The Pattern That Repeats — Panel Slides and Moderator Script

Track 1 — Day 2 session. Companion to [session-day2-the-pattern-that-repeats.md](session-day2-the-pattern-that-repeats.md).

Status: Working draft for co-lead review. Not agreed.

Synthesis of [slides-claude.md](slides-claude.md) and [slides-codex.md](slides-codex.md), following [slides-advice-from-codex.md](slides-advice-from-codex.md). Language is drawn from [SCOPE-Track1.md](SCOPE-Track1.md), [start-here-issuer-trust-registries.md](start-here-issuer-trust-registries.md), and [taxonomy-and-vocabulary.md](taxonomy-and-vocabulary.md).

## Assumptions

- 60 minutes: framing and close, ~35 min panel, remainder to Q&A.
- Slides belong to the moderator. **No panelist decks.**
- Holding slide, seven content slides up front, and slide 8 held back as the closer after the panel.

### Time budget

Up to 15 minutes is available for the presentation and close. **Target under 10.** Every minute under is a minute the panel gets, and the panel is where the thesis gets proven — so treat 15 as a ceiling you never approach, not a budget to spend.

| | Slide | Target |
| --- | --- | --- |
| **Open** | 1 — passes every check, still wrong | 0:45 |
| | 2 — the governance gap | 1:00 |
| | 3 — two sides of the same exchange | 1:15 |
| | 4 — the bounded question | 1:15 |
| | 5 — every domain | 0:45 |
| | 6 — sovereignty and scoped recognition | 1:30 |
| | 7 — the hard questions | 0:30 |
| | **Opening subtotal** | **7:00** |
| **Close** | 8 — this is the work, and the ask | 2:15 |
| | **Total** | **9:15** |

Slide 7 is 30 seconds because it is not a talking slide — put it up, say "these stay on screen," and hand off. Slide 6 gets the most time because it is the one the room came to hear a position on.

**If you are running long,** cut in this order: slide 5 (the panel makes that point better anyway), then the Track 2 callback, then slide 4's illustrative rows. Never cut slide 6, and never compress slide 8's ask — a rushed ask is a wasted session.

**If the slot is 45 minutes,** the same opening still works. Take the time out of round 2, not out of the framing.

## The communication job

By the time the panel starts, the audience should be able to say one sentence:

> A credential can be cryptographically perfect and still tell you nothing about whether the issuer was authorized to issue it. Nothing in the formats or the protocols answers that. That is the governance gap trust registries fill.

Two rules for the moderator:

1. **Teach the gap, not the technology.** Do not open by explaining trust registries. Establish the missing answer, then let the panelists show it is missing in their domain too.
2. **The lineup carries the thesis.** A moderator's comparison table is a claim. FIDO, OfDIA, GS1, and Registradores describing the same missing answer twenty minutes apart is evidence. Keep the projected material thin and let the panel supply the domain detail.
3. **Use Track 2's session as the room's shared worked example.** Do not re-derive it.

### Track 2, same day, 10:00 – 10:50, Beta

*The Trust Gap No Standard Can Close: AAMVA, Austroads, and the Governance of Cross-Border mDLs* — [session details](../Track2/session-day2-the-trust-gap-no-standard-can-close.md). Short framing presentation on Track 2's efforts, then a panel.

Its one-line framing is the same gap this session opens on, stated for a single credential type:

> ISO/IEC 18013-5 defines the format. It doesn't define who to trust.

The two sessions split the proof. **Track 2 goes deep:** one credential type, two sovereign regions, a mutual trust framework actually under negotiation. **This session goes broad:** the same missing answer across identity documents, education, professional qualifications, travel, business registration, and trade.

For the moderator, that is leverage. If a meaningful part of the room was in Beta at 10:00, they have already accepted the gap for mDLs — so do not spend the opening re-proving it. Say it once and turn it:

> You saw this morning what it takes for two regions to answer that question for one credential type. Now count the credential types.

Adjust if the timing or the audience overlap does not hold — see **Still open** in the production notes.

---

## The deck

### Holding slide — The Pattern That Repeats

Session title, moderator, panelists, and the domain each represents. On screen while the room fills. Do not spend presentation time on it.

### Slide 1 — A credential can pass every technical check and still be wrong

One concrete case. A credential whose signature verifies correctly, whose format is valid, and whose issuer had no authority to issue it. Every technical check passes; the relying party still cannot tell whether the issuer was authorized.

McLovin?

**Assertion:** Technical validity is not authority.

Visual: one credential, one green check, one unanswered question. Nothing else on the slide.

### Slide 2 — The stack has a governance gap

Three questions, shown as distinct:

1. **Is it technically valid?** — signature, format, integrity.
2. **Was the actor authorized for this action and scope?** — the gap.
3. **Will I accept it here?** — the relying party's own policy call.

Formats structure claims and bind them to cryptographic evidence. Issuance, presentation, retrieval, and exchange protocols move or present credentials between actors. Neither independently establishes that the identified actor is recognized and authorized for the relevant action and scope.

Highlight question 2. That is the whole session.

Keep this off the standards-inventory path. The audience needs the architectural boundary, not a list: **the format and the protocol carry technical evidence; the registry exposes governed authority.**

### Slide 3 — Two sides of the same exchange

- **Issuer side** — how does an **authority** expose its trust information digitally, so the issuers it stands behind are listed and stay current?
- **Verifier side** — how do wallets, relying parties, and other systems *use* those answers to anchor governance into their technical systems?

**Assertion:** Both sides are the work. A registry nobody can consume is a filing cabinet.

**Authority and issuer are not always the same entity.** The registry lists the **issuer** — the party that signs the credential. The **authority** is what stands behind it and what the entry points back to. Sometimes they are one body; often a ministry authorizes an agency, a delegated body, or a contracted issuer. Keep both words doing their own job: the authority exposes, the issuer is listed.

This matters on slide 6. The sovereignty point is about the authority, not about whoever holds the signing key on its behalf.

**Say the issuer side precisely.** It is getting authoritative issuers listed and discoverable — not deciding whether they are authorized. A sovereign authority does not apply, and it does not prove its authority to anyone. It holds that authority under its own law. It can point back to the law or mandate it rests on, and it is required to demonstrate nothing beyond that.

So the question the deliverable answers is *how does an existing authority make itself and its issuers discoverable and checkable in digital form* — not *who qualifies*. The relying party's question ("is this issuer listed as authoritative for this, and is that current?") is answered **out of** that listing; the listing is not a verdict on the issuer.

**Say the verifier side precisely too.** The consuming side is squarely in scope: a wallet, a relying party, or a border system has to turn a governance answer into something its own code acts on — before a transaction, during one, or from something it synchronized last week. That is what "anchoring governance into technical systems" means, and it is why the answers have to be legible, scoped, and current enough to act on.

**One thing this is not.** Consuming registry answers is in scope. **Registering** verifiers and wallets — defining who governs them and how they get onboarded — is not, in v0.1. Both are real; only the second is deferred. Keep them apart in the room, because "verifier side" gets heard as "verifier registration" every time.

Per [SCOPE-Track1.md](SCOPE-Track1.md): the authority already exists, in legislation, regulation, or delegation. We are not designing new authorities, governance bodies, or vetting processes. And the issuer-first focus does not preclude registries from registering other actors — it defers defining their governance and onboarding.

This is slide 6's sovereignty point arriving early, in a form the audience can hold before they see the model. If the room hears "authorized to issue" as "approved by the registry" on slide 3, slide 6 is spent digging out.

### Slide 4 — A trust registry answers a bounded question

The reusable form, large and alone on the slide:

> At time T, does Authority A say that Entity B may perform Action X on Resource Y?

Illustrative rows, kept short:

| Entity | Action | Resource |
| --- | --- | --- |
| Passport authority | issue | passport |
| University or awarding body | issue | degree |
| Licensing authority | issue | professional licence |

Then the boundary, in the same breath:

**What the registry does not answer.** Whether the issuer is telling the truth — that is proofing, verification, liability, and consequence, elsewhere. Whether you should rely on the registry — that is your own call, expressed by which registries you choose. What your policy should be.

**Footer:** The registry informs the decision. The relying party still decides.

Actions and resources here are illustrative. The framework defines their governance meaning; it does not prescribe a universal resource syntax.

**Who is Authority A?** For a delegated issuer, A is whoever delegated. For a sovereign, **A is the sovereign itself, standing on its own law** — the registry is never A. The template describes what a relying party learns; it does not imply that some body sits above the authority granting permission. Have this answer ready, because the template invites the question.

### Slide 5 — The same question appears in every domain

Four examples at most. One line each, no five-column table.

| Domain | Origin of authority |
| --- | --- |
| Passport | National law |
| Degree | Charter, legislation, or accreditation regime |
| Professional licence | Statute and regulator |
| Trade document | Trade or customs law, regulation, or delegation |

**Close with:** The nouns change. The governance function does not.

**Land it on Track 2.** AAMVA and Austroads are negotiating this for *one* credential type across *two* regions — a real framework, with real institutional work behind it. That is the strongest available evidence that the question is hard, that it is being answered, and that answering it separately for every domain is not a plan. Point at it and move on; the 10:00 session is where the detail lives.

Say it as: *every domain has built some way to answer this question, usually inside its own silo.* Not that every domain solved it — accreditation lists, regulator sites, bilateral arrangements, and phone calls are existing mechanisms, not complete, current, interoperable answers.

Where named systems come up, keep them illustrative of different existing arrangements — not equivalent solutions, and not implementations of the proposed framework.

### Slide 6 — Two boundaries: sovereignty, and scoped recognition

The slide that decides whether this work survives contact with governments. Split into two slides if it crowds.

**Sovereignty.** A government issuer is **listed and made discoverable**. It is never **vetted or approved** by the registry.

Fair to check: are these genuinely the country's authority, keys, and identifiers; what does that authority say it issues; what law or mandate stands behind it; is it current. Never: whether a sovereign may issue under its own law.

Say "recorded, not approved" out loud. Twice.

**Scoped recognition.** No single registry answers for the world, and no single root will be accepted by everyone. Registries recognize other authoritative sources for defined scopes. Recognition does not create or transfer the underlying authority. The result is a web of scoped sources, not one global master list.

Visual: the **Recognized Trust Registry** portion of `img/03-ecosystem-overview.png` — one box, one arrow, "for a defined scope."

Build the diagram in two passes. Here, only the piece that carries recognition. The whole diagram returns on slide 8 as the closer, where the audience reads it a second time and sees the rest of the work around it. Same image twice is a feature; the second reading is the one that lands.

### Slide 7 — The hard questions are governance questions

Leave this on screen for the whole panel, so domain differences read as variations of one pattern rather than unrelated case studies.

- Who stands behind the authorization?
- What exactly is in scope — action, resource, jurisdiction, time?
- How current must the information be?
- What do **negative**, **unknown**, and **unavailable** each mean, and how do they differ?
- Which other authorities or registries are recognized, and for what scope?
- Which decision stays with the relying party?

### Slide 8 — This is the work. Come do it with us.

The closer. Full-bleed `img/03-ecosystem-overview.png`, then annotate it live — every arrow on it is a governance question, not plumbing.

**Issuer → Record & Maintain.** How an existing authority gets listed and stays current. Origin of authority, recorded versus vetted, scope of authorization, status. **This is the deliverable this event was the target for — it is what we brought here.**

**Recognized Trust Registry → *(for a defined scope)*.** The box that cannot be built by any one party. One registry accepting another as authoritative for questions outside its own scope — and the governance to make that legible and bounded. No single registry answers for the world; no single root gets universal acceptance. **This is why it is a task force and not a product.**

**Query ← Relying Party / Wallet.** What a relying party must be able to learn, what negative, unknown, and unavailable each mean, how current the answer has to be — without prescribing one deployment model.

**Assertion:** The registry in the middle is the easy part. The alignment around it is the work.

**The ask** — three lines, concrete:

- What we need from this room, starting in this room. Geneva is not the finish line the deliverable was aimed at — it is where the draft meets the people who have to live with it.
- Where the scope document lives, and that pushing on it is the point.
- Track 1 co-leads, and when the group next meets after Geneva.

**Watch the tense.** This session runs *at* GDC 2026, and the v0.1 work was targeted at this event. Nothing on this slide should ask the room for something "before September" — they are in September. The ask is what happens next: review what is drafted, say where it breaks in your domain, and stay in the working group.

Then stop talking. The last thing on screen should be the diagram and the ask, not a thank-you slide.

---

## Deployment neutrality — have this ready

The room will hear "needs a trust registry" as "live query to a central service on every transaction." It is not, and letting that assumption stand invites the central-chokepoint objection.

Governed trust information may be preloaded, synchronized, cached within policy-defined freshness limits, carried by reference, discovered through federation or referral, or queried at transaction time. What is required is the **governed trust-registry function** — not one prescribed deployment model, protocol, database, or topology.

This is the access-pattern neutrality test in [SCOPE-Track1.md](SCOPE-Track1.md). Keep it as a spoken answer or a backup slide, not a main-line slide.

---

## Panel questions

Each question names a problem and asks toward the part of it a trust registry can address. Three standing rules:

**Ask for facts, not confirmation.** Do not state where the information lives or how bad it is before the panelist speaks. Ask where it lives, how it is maintained, and what breaks.

**A "no" is the most valuable answer available.** If a panelist says the problem does not exist in their domain, that is evidence about the thesis. Follow it rather than recovering from it.

**Four seats, not three.** Round 1 is now 16 minutes, not 15. Round 2 drops from three exchanges to two. Do not try to keep everything.

### The panel

| Panelist | Organization | What this seat brings |
| --- | --- | --- |
| Nishant Kaushik | CTO, FIDO Alliance | Verifier scale — a governed list already consumed by an enormous number of relying parties |
| Michael Animashaun | UK Office for Digital Identities and Attributes (OfDIA) | A live national register, run by government, listing providers vetted against published criteria |
| Phil Archer | GS1 | Global federated identifier authority, delegated through national bodies, operating without statute |
| Alina Nica Gales | Registradores de España | Registries whose entries carry legal effect — business registration, land title — run as a public function |

**The spine of this panel is *who governs the registry*, and *what its answer is worth*.** Four different answers, all of them operating:

- **FIDO** — a global industry consortium, governing by membership and certification.
- **OfDIA** — a national government body, governing by published criteria and assessment.
- **GS1** — a global federation delegating identifier authority through national member organizations, with no statute behind it and roughly fifty years of operation.
- **Registradores** — a public function, where a register entry is not information a relying party may use but a fact with legal consequence attached.

If the same gap shows up in all four, the thesis is carried by the lineup rather than by the moderator.

**What this lineup is unusually good at.** Two live Track 1 decisions can actually be worked here rather than asserted: **recorded versus vetted** (OfDIA's applicants against Spain's law-derived entries) and **what a registry's answer is worth** (a metadata list, a certification, and a legally effective entry, on one stage).

**The gap that remains — say it, don't hide it.** No sovereign issuer of foundational identity documents is on this panel. OfDIA governs a register; Registradores exercises a delegated public function. Neither is a passport authority being listed. The slide 6 sovereignty position stays the moderator's to carry. If a state issuer is in the room, pull them in during Q&A.

### Round 1 — Does the problem exist in your domain? (~4 min each)

Follows slides 1–3. Goal: four independent accounts, in their own language, of the same missing answer. Hold the time — four seats at five minutes eats round 2.

**Nishant Kaushik — FIDO Alliance**

> FIDO already operates something most of this room is still designing: governed information about what a relying party should accept, consumed by a very large number of relying parties who will never negotiate with anyone bilaterally. What did it take to make that work at that scale, and where does it strain? And what do relying parties actually *do* with it — query it, cache it, pin it, ignore it?

Follow-up if there is time:

> A relying party that cannot get a governed answer still has to ship. What do they do instead, and what does that cost the ecosystem?

**Michael Animashaun — UK OfDIA**

> The UK stood up something this room is still arguing about: a government-run register that tells a relying party which providers have been assessed against published criteria, and whether that is still true. What does that register actually answer for a relying party — and what does it deliberately not answer? What did it take to stand up, and where does it strain now that it is live?

Follow-up, and this is the one to protect time for:

> What happens when the party who wants to rely on it is outside the UK, and has no relationship with the UK framework at all?

**Phil Archer — GS1**

> You work on both sides of something this group keeps running into. In the UN work, a claim attached to a shipment traces back through a chain — a certificate from a conformity assessment body, which was accredited by someone else — and there is no sovereign anywhere at the centre of it. The party relying on that claim may be several steps and several months removed. What does that party need to be able to follow, how far back does it need to go, and where does it break today?

Follow-up, and this is the half that ties to Nishant's answer:

> GS1 meanwhile issues identifiers through national organizations at a scale where assessing everyone individually is impossible. Between those two worlds — a chain you can follow, and a scale you cannot assess — what is the minimum a registry has to say about a party for the listing to be worth anything?

**Why this seat is now doing double duty.** Phil covers the accreditation-chain ground the panel lost when UN/CEFACT dropped, *and* the federated-identifier-at-scale ground. Let him choose which to lead with — both prove the thesis.

**Alina Nica Gales — Registradores de España**

> Registradores brings many registries under one roof — company registration, land title, and more. Two things this group needs. First: has consolidating them actually made the digital work easier, or moved the problem somewhere else? Second, and this is the one to dwell on: tell us what an entry in your registers actually *means* legally, and what you are accountable for. Everyone else's registry here informs a decision. Does yours do something more than that — and what does that change about how you have to run it?

The second half is the most valuable thing available on this panel. Everyone else's registry *informs* a decision. Hers *constitutes* a fact. Give it room.

### Round 2 — Where they disagree (~12 min, pick two)

Follows slide 7. Directed exchanges, not open floor. Name who answers first and who answers second — the second answer produces the insight. **Pick two. Two done properly beat four rushed.**

**Recommended pair: "What is the answer worth?" and "Recorded, or vetted?"** They are the two the deliverable actually turns on, and this is the first lineup that can settle either.

**What is the answer worth?** *(Alina, then Nishant, then Michael)*

> Our framework says the registry informs the decision and never makes it. Alina, that may not describe your registers — you have just told us what an entry means and who is accountable. At the other end, a metadata list is useful and nobody is liable. Is "informs, never decides" the right line across that whole range, or does it quietly describe only the weak end of it?

This directly pressure-tests slide 4's boundary. If it survives Alina, it is solid.

**Recorded, or vetted?** *(Michael, then Alina)*

> Some entries exist because a party applied and was assessed against published criteria. Others exist because the law says so — the body applies to nobody and points back to legislation. Michael, Alina, tell us which of those your registers do, and whether you do both. One framework has to carry both. Should the data show which path an entry came from? The worry is that any such signal lets tooling quietly treat a sovereign as a lesser tier.

A live Track 1 decision, and the exact pair of seats that can work it.

**Shape: one list, or a federation?** *(Nishant, then Phil)*

> FIDO's answer is substantially one authoritative service that relying parties consume. GS1's is a federation — a global body, national organizations, delegated authority. Both work, at enormous scale. What actually determines which shape a domain needs, and can one framework serve both without collapsing into the weaker of the two?

**Legitimacy without statute.** *(Phil, then Michael)*

> Phil, what gives GS1 the standing to be the identifier authority it is — where does that authority actually come from, and what would happen if a government decided it wanted to run it instead? Michael, yours runs the other way round. Between you: where does authority to operate a registry really come from?

The sharpest contrast on the panel. Use it if the room is engaged and the pair is warm.

**Time of check versus time of issue.** *(Alina, then Phil)*

> Alina, does your register have to answer "who owned this *on that date*," not just today — and how? Phil, a claim can be relied on years after it was issued, where the real question is whether the issuer was authorized *at the time it issued*. Does one registry model serve both the historical and the current question, or are those different products?

This is slide 4's *at time T* meeting two domains that have genuinely solved it.

**Certification versus listing.** *(Michael, then Nishant, then Phil)*

> Our framework deliberately keeps two things apart: recording an entry in a registry, and an external standards-based attestation presented as evidence. What does certification buy that listing alone does not, and what does it cost to run? Phil — at your scale, is assessing everyone even possible? If not, does that make the listing worth less, or worth something different?

**Negative, unknown, unavailable.** *(Michael, then Phil, then Alina)*

> Three different answers: the source says no, the source has no information, and the source cannot be reached. A provider that was never on the register is not the same as a register that is down. At GS1's scale, "unknown" may be the normal state. Should these produce three different behaviours, and who decides which?

**The verifier-scale problem.** *(Nishant, then all)*

> Millions of relying parties cannot each negotiate with each authority. What is the minimum a verifier must be handed to make its own decision without that negotiation? What is the smallest useful answer?

**Scope precision.** *(Alina, then Phil)*

> We are working toward expressing authority as an action on a resource, in a jurisdiction, at a time. Alina — is it enough to say a registrar is authoritative for land title, or does it have to be this register, this territory, these transaction types, as of this date? Phil — is it enough to know a company is a GS1 member, or does a relying party need to know which identifiers it holds, and for what? In your domain, is that granular enough to be useful, or already more machinery than you would actually publish?

This completes the thought started in the working doc: make the granularity question concrete per seat rather than abstract.

**Recognition across boundaries.** *(Alina, then Michael)*

> Your registers are relied on by people and companies well outside Spain, and there is European work on connecting registers across borders. How does a relying party decide which foreign register to recognize, and could scoped recognition between registries replace some of the arrangements negotiated one at a time today?

### Reserve — sovereignty and the citizen *(hold for Michael, or for a state voice in the room)*

Not scheduled. Use if the room turns to sovereignty, or if slide 6 draws a challenge the moderator should not answer alone.

**What the state kept.** Standing up a register means a government deciding what it governs itself and what it lets others do. What did the UK decide it would never delegate — and is there anything you would want back?

**Serving citizens the state cannot reach.** A UK citizen renting a flat abroad needs a relying party that owes the UK nothing to make sense of a UK credential. The duty to that citizen does not stop at the border, but the register's reach does. What does the state owe that citizen, and what would have to exist for a foreign relying party to use a UK answer?

**The inbound mirror.** A UK relying party facing a credential from a country the UK has no arrangement with. What does the UK need before it will accept another state's answer, and who inside government decides that?

**Redress.** When an entry is wrong, or a party is removed and believes it should not have been, what does a citizen or business actually do? Who answers for it? *(Alina can answer this one too, and her answer will be more concrete — legal effect implies a route of challenge.)*

**Privacy.** If relying parties query a government register per transaction, the government can see where its citizens are proving themselves. What was done about that? This is the strongest available argument for deployment neutrality, and it lands far harder from a state than from the moderator.

**Ranking.** Our scope refuses to rank sovereigns, but a government relying party inevitably decides which countries it honors. Where does the UK put that decision — and would you object if a registry appeared to make it for you?

The trap question of the set. Ask it only if Michael is warm; his answer is the sharpest defence of the sovereignty boundary you will get all session.

### Round 3 — Force a useful closing (~4 min)

One answer each, 45 seconds, no elaboration. Nishant, Michael, Phil, Alina.

> Name one thing this group could specify in the next version that would make your domain's problem smaller — and one thing we could get wrong that would make FIDO, OfDIA, GS1, or Registradores walk away.

Record both. The constraints are likely to be more valuable than the requested features.

### Have ready, do not schedule

The room produces these. Route them to the panel rather than answering from the chair.

- *"Isn't this a new centralized authority?"* → Slide 4's boundary. Best answered by Phil: GS1 is a global identifier authority that no government appointed, and he can speak to what keeps it from being a chokepoint.
- *"Why not one global registry?"* → Slide 6, and Round 2's shape exchange. Ask Michael what a single root would have to look like before a government would rely on a register it does not govern.
- *"Doesn't PKI already do this?"* → PKI establishes control of a key. It does not establish what that key holder is authorized to issue, in which jurisdiction, or whether that is still true. Nishant can say this with more authority than the moderator can.
- *"What about revocation of the credential itself?"* → Distinct from issuer status, genuinely open in the current scope. Say so plainly rather than improvising.
- *"Who pays for this?"* → All four run funded governance today, by four different models. Do not characterize them from the chair — put it to the panel and let each say how theirs is paid for.


## Production notes

**Visuals.** `img/03-ecosystem-overview.png` is the only existing diagram ready to project as-is, and it carries the deck twice — a fragment on slide 6, whole on slide 8. Worth having a build-animated or two-file version so the closer reveals rather than repeats. `00-trust-pattern-plain-language.png`, `01-two-sided-trust-story.png`, `02-question-pattern-flow.png`, and `04-core-model-loop.png` carry useful source material but are too text-dense for a live opening — simplify them or keep them as appendix or handout material.

**Defer.** Do not lead with taxonomy, wire formats, protocols, data models, conformance mechanics, or registry architecture. Establish the gap first; the detail then answers a question the audience already has.

**Check before this goes audience-facing.** Any specific claim about named standards or programmes — relying-party registration regimes, verifier attestation mechanisms, or what a given format or protocol does and does not carry — should be sourced and verified before it appears on a slide or in a moderator line. The argument does not depend on any of them, and an error in one hands the room a reason to discount the rest.

**Still open.** Moderator, and confirmation of the format — see [session-day2-the-pattern-that-repeats.md](session-day2-the-pattern-that-repeats.md), which still lists both as to-fill. Panelists as of the latest change: Nishant Kaushik (FIDO Alliance), Michael Animashaun (UK OfDIA), Phil Archer (GS1), Alina Nica Gales (Registradores de España). Gabriel Marquie (IATA) and Steve Capell (UN/CEFACT) both became unavailable. **Travel and border crossing is no longer represented — do not build a question on it**, and the panel is now four seats, which is what re-timed round 1 and cut round 2 to two exchanges.

**Check the FIDO, OfDIA, GS1, and Registradores specifics with the panelists, not from the podium.** Round 2's certification-versus-listing exchange assumes things about how FIDO's certification and metadata work in practice. Let Nishant state them. The same holds for how the UK register is assessed and maintained (Michael's to describe), how GS1 delegates identifier authority through its member organizations (Phil's), and what legal effect a Spanish register entry actually carries (Alina's). **No pre-call was possible.** Every question about GS1 and Registradores has therefore been rewritten to ask the panelist to state the facts rather than confirm the moderator's version of them. If a premise is wrong, the question still works and the correction becomes the content. Do not add specifics back in on the day. Neither the questions nor the slides depend on getting those details right in advance, and asserting one wrong hands the room a reason to discount the rest.

**Confirm before relying on the Track 2 callback.** This session's own slot time is not yet fixed here. The "you saw this morning" line only works if this session runs after 10:50 and the audiences meaningfully overlap. If it runs earlier, or draws a different room, invert it — point people *to* [the Track 2 session](../Track2/session-day2-the-trust-gap-no-standard-can-close.md) as where the worked example lives, and keep slide 5's Track 2 note as a plain reference rather than a callback.
