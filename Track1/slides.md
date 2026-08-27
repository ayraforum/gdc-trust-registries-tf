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
2. **The lineup carries the thesis.** A moderator's comparison table is a claim. FIDO, OfDIA, and UN/CEFACT describing the same missing answer twenty minutes apart is evidence. Keep the projected material thin and let the panel supply the domain detail.
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

Each question names a problem and asks toward the part of it a trust registry can address. Two standing rules:

**Ask for facts, not confirmation.** Do not state where the information lives or how bad it is before the panelist speaks. Ask where it lives, how it is maintained, and what breaks.

**A "no" is the most valuable answer available.** If a panelist says the problem does not exist in their domain, that is evidence about the thesis. Follow it rather than recovering from it.

### The panel

| Panelist | Organization | What this seat brings |
| --- | --- | --- |
| Nishant Kaushik | CTO, FIDO Alliance | Verifier scale — a governed list already consumed by an enormous number of relying parties |
| Michael Animashaun | UK Office for Digital Identities and Attributes (OfDIA) | A live national register, run by government, listing providers vetted against published criteria |
| Steve Capell | Vice Chair, UN/CEFACT | Business and supply chain — delegated authority in chains, with no sovereign at the centre |

**The spine of this panel is *who governs the registry*.** A global industry consortium. A national government body. A multilateral process with no centre at all. Three different answers to the same question, all of them operating. If the same gap shows up in all three, the thesis is carried by the lineup rather than by the moderator.

**What the OfDIA seat changes.** It puts the **vetted** path on stage in a way the previous lineup could not: providers apply, are assessed against published criteria, and are listed by a government body. That is the exact counterpart to a sovereign that never applies and proves nothing — and it makes the recorded-versus-vetted question, one of the track's live decisions, something the panel can actually work rather than something the moderator asserts.

**The gap that remains — say it, don't hide it.** There is still no sovereign issuer of foundational identity documents on this panel. OfDIA governs a register; it is not a passport authority being listed. The slide 6 sovereignty position stays the moderator's to carry. If a state issuer is in the room, pull them in during Q&A.

### Round 1 — Does the problem exist in your domain? (~5 min each)

Follows slides 1–3. Goal: three independent accounts, in their own language, of the same missing answer.

**Nishant Kaushik — FIDO Alliance**

> FIDO already operates something most of this room is still designing: governed information about what a relying party should accept, consumed by a very large number of relying parties who will never negotiate with anyone bilaterally. What did it take to make that work at that scale, and where does it strain? And what do relying parties actually *do* with it — query it, cache it, pin it, ignore it?

Follow-up if there is time:

> A relying party that cannot get a governed answer still has to ship. What do they do instead, and what does that cost the ecosystem?

**Michael Animashaun — UK OfDIA**

> The UK stood up something this room is still arguing about: a government-run register that tells a relying party which providers have been assessed against published criteria, and whether that is still true. What does that register actually answer for a relying party — and what does it deliberately not answer? What did it take to stand up, and where does it strain now that it is live?

Follow-up, and this is the one to protect time for:

> What happens when the party who wants to rely on it is outside the UK, and has no relationship with the UK framework at all?

**Steve Capell — UN/CEFACT**

> In trade there is often no sovereign at the centre. Authority runs through a chain — an accreditation body stands behind a conformity assessment body, which stands behind the claim attached to a shipment — and the party relying on it may be several steps and several months removed. What does that relying party need to be able to follow, how far back does it need to go, and what is missing today?

### Round 2 — Where they disagree (~15 min, pick three)

Follows slide 7. Directed exchanges, not open floor. Name who answers first and who answers second — the second answer is the one that produces the insight.

**Shape: one list, or a graph?** *(Nishant, then Steve)*

> FIDO's answer is substantially one authoritative service that relying parties consume. Steve's world cannot have one — there is no body that could operate it. Both work. So what actually determines which shape a domain needs, and can one framework serve both without collapsing into the weaker of the two?

**Time of check versus time of issue.** *(Steve, then Michael)*

> A trade claim may be relied on two years after it was issued, and the real question is whether the issuer was authorized *at the time it issued* — not today. At a boarding gate, "right now" is the only question that matters. Does one registry model serve both, or are these different products?

This is slide 4's *at time T* meeting reality. It is the highest-value exchange available on this panel.

**Certification versus listing.** *(Michael, then Nishant, then Steve)*

> All three of you sit on top of some assessment regime, and our framework deliberately keeps two things apart: recording an entry in a registry, and an external standards-based attestation presented as evidence. What does certification buy that listing alone does not — and what does it cost to run? Would your domain accept a list with no certification behind it?

This is the strongest exchange available on this panel: a government register built on assessment, an industry certification programme, and a supply chain riding accreditation chains. Three different weights on the same distinction.

**Recorded, or vetted?** *(Michael, then Steve)*

> OfDIA's register lists providers who applied and were assessed. A sovereign passport authority applies to no one and proves nothing — it is listed, and it points back to its own law. One framework has to carry both. Should the data show which path an entry came from? The worry is that any such signal lets tooling quietly treat a sovereign as a lesser tier.

This is a live Track 1 decision, and this is the panel that can actually work it.

**Negative, unknown, unavailable.** *(Michael, then Steve, then Nishant)*

> Three different answers: the source says no, the source has no information, and the source cannot be reached. A provider that was never on the register is not the same as a register that is down. In supply chains, "unknown" may be the normal state. Should these produce three different behaviours, and who gets to decide which?

**The verifier-scale problem.** *(Nishant, then all)*

> Millions of relying parties cannot each negotiate with each authority — that does not scale, and it never has. What is the minimum a verifier must be handed for it to make its own decision without that negotiation? What is the smallest useful answer?

**Scope precision.** *(any two)*

> We are working toward expressing authority as an action on a resource, in a jurisdiction, at a time. In your domain, is that granular enough to be useful — or already more machinery than you would actually publish?

**Recognition across boundaries.** *(Michael, then Steve)*

> When a credential crosses an ecosystem boundary, how does the relying party decide which foreign authority or registry to recognize? Could scoped recognition between registries replace some of the bilateral arrangements being negotiated one at a time today?

### Round 3 — Force a useful closing (~4 min)

One answer each. Both halves. Nishant, Michael, Steve.

> Name one thing this group could specify in the next version that would make your domain's problem smaller — and one thing we could get wrong that would make FIDO, OfDIA, or UN/CEFACT walk away.

Record both. The constraints are likely to be more valuable than the requested features.

### Have ready, do not schedule

The room produces these. Route them to the panel rather than answering from the chair.

- *"Isn't this a new centralized authority?"* → Slide 4's boundary. Best answered by Steve, whose domain has no centre to be captured by.
- *"Why not one global registry?"* → Slide 6, and Round 2's first exchange. Ask Michael what a single root would have to look like before a government would rely on a register it does not govern.
- *"Doesn't PKI already do this?"* → PKI establishes control of a key. It does not establish what that key holder is authorized to issue, in which jurisdiction, or whether that is still true. Nishant can say this with more authority than the moderator can.
- *"What about revocation of the credential itself?"* → Distinct from issuer status, genuinely open in the current scope. Say so plainly rather than improvising.
- *"Who pays for this?"* → Likely from the trade side. FIDO and OfDIA both run funded governance today; ask how each is paid for.

---

## Production notes

**Visuals.** `img/03-ecosystem-overview.png` is the only existing diagram ready to project as-is, and it carries the deck twice — a fragment on slide 6, whole on slide 8. Worth having a build-animated or two-file version so the closer reveals rather than repeats. `00-trust-pattern-plain-language.png`, `01-two-sided-trust-story.png`, `02-question-pattern-flow.png`, and `04-core-model-loop.png` carry useful source material but are too text-dense for a live opening — simplify them or keep them as appendix or handout material.

**Defer.** Do not lead with taxonomy, wire formats, protocols, data models, conformance mechanics, or registry architecture. Establish the gap first; the detail then answers a question the audience already has.

**Check before this goes audience-facing.** Any specific claim about named standards or programmes — relying-party registration regimes, verifier attestation mechanisms, or what a given format or protocol does and does not carry — should be sourced and verified before it appears on a slide or in a moderator line. The argument does not depend on any of them, and an error in one hands the room a reason to discount the rest.

**Still open.** Moderator, and confirmation of the format — see [session-day2-the-pattern-that-repeats.md](session-day2-the-pattern-that-repeats.md), which still lists both as to-fill. Panelists are set: Nishant Kaushik (FIDO Alliance), Michael Animashaun (UK OfDIA), Steve Capell (UN/CEFACT). Michael replaced Gabriel Marquie of IATA, who became unavailable — travel and border crossing is no longer represented on the panel, so do not build a question on it.

**Check the FIDO and OfDIA specifics with the panelists, not from the podium.** Round 2's certification-versus-listing exchange assumes things about how FIDO's certification and metadata work in practice. Let Nishant state them. The same holds for how the UK register is assessed, maintained, and relied on — Michael's to describe, not the moderator's to assert. Neither the questions nor the slides depend on getting those details right in advance, and asserting one wrong hands the room a reason to discount the rest.

**Confirm before relying on the Track 2 callback.** This session's own slot time is not yet fixed here. The "you saw this morning" line only works if this session runs after 10:50 and the audiences meaningfully overlap. If it runs earlier, or draws a different room, invert it — point people *to* [the Track 2 session](../Track2/session-day2-the-trust-gap-no-standard-can-close.md) as where the worked example lives, and keep slide 5's Track 2 note as a plain reference rather than a callback.
