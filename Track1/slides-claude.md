# Slide Recommendations — "The Pattern That Repeats"

> **SUPERSEDED — input draft, provenance only (2026-08-14).** One of two independent drafts for the Day 2 panel deck. Its cold open, standalone sovereignty slide, issuer-first scope guard, and three-round panel structure were carried into the merged deck; several of its claims were corrected there — formats do not "move" credentials, no domain has fully "solved" the issuer question, named systems are illustrative only, and its round-1 questions baked in answers the panelists should supply. Do **not** run from this file. Current deck: [slides.md](slides.md). Merge rationale: [slides-advice-from-codex.md](slides-advice-from-codex.md).

Track 1 — Day 2 session. Companion to [session-day2-the-pattern-that-repeats.md](session-day2-the-pattern-that-repeats.md).

Status: SUPERSEDED by [slides.md](slides.md) — kept for provenance.

## Assumptions

- 60 minutes: ~10 min moderator framing, ~35 min panel, ~15 min Q&A.
- Slides belong to the moderator. **No panelist decks** — they kill cross-domain panels.
- If the slot is 45 minutes, cut slides 3 and 4. Never cut slide 7.

## The strategy

Don't teach trust registries. Teach the **gap**, then let the panelists show it is the same gap in their domain.

The audience should leave able to say one sentence:

> Every credential format tells you the signature is good. Every delivery protocol moves the credential. Neither tells you the party at either end was authorized to be there.

The lineup carries the "same pattern everywhere" thesis. The deck only sets it up.

---

## The deck — 12 slides

### 1. Cold open — the credential that passes every check and is still wrong

A valid mDL. Correct signature. Issuer: a municipality with no licensing authority. Every cryptographic check passes.

**Assertion:** Technically valid ≠ authoritative.

Visual: one credential, one green checkmark, one red question mark. No other clutter.

### 2. Nothing in the stack answers it

| Formats | Delivery / presentation protocols |
|---|---|
| ISO/IEC 18013-5 mdoc | OpenID4VCI (issuance) |
| SD-JWT VC | OpenID4VP (presentation) |
| W3C VC | ISO/IEC 18013-5 device retrieval, 18013-7 online |

**Verdict line across the bottom:** Every one of these moves the credential. None of them tells you the party at either end was authorized to be there.

Formats bind claims to a signature. Protocols move claims between parties. Both are silent on authority. That silence is the registry's job.

This is the slide people photograph. Keep it the cleanest one in the deck.

### 2b. Both ends need it. We are doing one end first.

- **Issuer side** — is this issuer authorized to issue this? → Track 1, September deliverable.
- **Verifier side** — is this verifier authorized to ask for this? → real, known blocker, deferred to [later phases](https://github.com/ayraforum/gdc-trtf-onboarding-and-governance/blob/main/later-phases/README.md).

**Assertion:** Same pattern, same registry function. Issuer first because it is provable first, not because the other half does not matter.

Put the tension on the slide rather than letting someone find it in Q&A. The EUDI relying-party registrar and OpenID4VP verifier attestations exist precisely because the protocol cannot answer the verifier-side question. 30 seconds of airtime.

### 3. Two kinds of trust

Visual: `img/01-two-sided-trust-story.png`

Signature validity (cryptography) vs. issuer authority (governance). You need both. Only one of them is in the box.

### 4. The pattern that repeats

The session's title slide — arriving at minute 4, not minute 0.

Visual: `img/00-trust-pattern-plain-language.png` or `img/04-core-model-loop.png`

1. **Establish authorization** — identity, authority, and permitted scope recorded by or discoverable through an accountable source.
2. **Maintain currency** — updated as the issuer, its scope, or its technical signals change.
3. **Make trust information available** — discovery, synchronization, or referral.
4. **Use it in a trust decision** — the relying party evaluates under its own policy and context.

### 5. Same pattern, six domains, six silos

| Domain | Who answers "is this issuer authorized?" today | Who says the verifier may ask? |
|---|---|---|
| Passports | ICAO PKD | — |
| Driver's licences | AAMVA | — |
| EU trust services | EU Trust List | Relying-party registrar (emerging) |
| Education | Accreditation bodies, PDFs, phone calls | — |
| Professional licences | Per-regulator lookup sites | — |
| Customs / trade | Bilateral agreements | — |

**Assertion:** Every row solved the issuer question. None solved it the same way, none of them talk, and almost nobody has solved the verifier question at all.

The empty cells make the argument better than full ones. Build the pattern once.

### 6. The bounded question

**What the registry answers:** is this issuer authorized, for what, under whose authority, and is that current.

**What it does not answer:**

- Whether the issuer is telling the truth. That is proofing, verification, liability, and consequence — elsewhere.
- Whether you should trust the registry. That is your call, expressed by which registries you choose to rely on.
- What your policy should be.

**Assertion:** The registry informs the decision. It never makes it.

This stops the "registries are central control" objection before it is raised.

### 7. The sovereignty boundary

The slide that decides whether this work survives contact with governments.

**Assertion:** A government issuer is **listed and made discoverable**. It is never **vetted or approved**.

Fair to check:

- Are these genuinely the country's authority, keys, and identifiers?
- What does that authority say it issues, and for whom?
- What law or mandate stands behind it?
- Is it current — active, not suspended, not revoked?

Never: whether a sovereign may issue under its own law.

Say "recorded, not approved" out loud. Twice.

### 8. Why one list cannot work

Visual: `img/03-ecosystem-overview.png`

No single registry answers for the world. No single root gets universal acceptance. Registries recognize other registries for scopes outside their own.

A web of registries, not a hierarchy or a master list.

### 9. Where it gets hard — the practitioner slide

Five live problems. No answers on the slide.

1. How precisely is authority scoped? Action + resource + jurisdiction + currency.
2. What happens when the check fails — hard refusal, warning, or each ecosystem's call?
3. How fresh must status be at a border gate at 06:00 on a flaky link?
4. Should the data signal recorded-vs-vetted, without creating a second-class sovereign?
5. How does a credential signal which registry it is anchored to — and what carries that signal? Neither the formats nor the protocols reserve a place for it today.

### 10. Panel

Names, domains, and the one question each panelist is here to answer — visible on the slide.

Pre-assigning in public ("Marie: does this match how customs actually does it?") forces specificity and stops generic answers.

### 11. What we want from you

- The three things you need out of the room.
- Track 1 co-lead contact.
- Scope document link.
- Next session date.

---

## Panel questions

Each question names a concrete problem in the panelist's own world first, then asks toward the registry function that addresses it. Do not ask a panelist to explain trust registries — ask them to describe the pain, and let the pattern do the rest.

Rule for the moderator: **the problem half is not rhetorical.** If a panelist says the problem does not exist in their domain, that is the most valuable thing that can happen in this session. Follow it.

### Round 1 — the problem is real and it is yours (one each, ~4 min)

Follows slides 1–2b. Goal: six independent confirmations that nothing in the stack answers the authority question.

**Education / professional-credential authority**

> When an employer in another country receives a digital diploma from one of your institutions, they can verify the signature perfectly and still have no idea whether that institution was accredited to grant that degree — or whether it still is. Today, how does that employer find out, and how long does it take? What would change if the accreditation status were something they could check in the same transaction?

**Customs / trade**

> A certificate of origin or a phytosanitary certificate is only as good as the authority that issued it, and that authority list lives in bilateral agreements and in people's heads. When a consignment shows up at a border with a digital certificate from an agency your officers have never dealt with, what actually happens? What would your officers need to be able to check, at that moment, to clear it?

**Travel / identity (ICAO, airline, or border voice)**

> ICAO PKD solved this for passport signing keys, and it took years and a treaty organization to do it. Now the same border needs to read an mDL, a visa credential, and a health or entitlement credential — each anchored somewhere different. What does the PKD experience say about what the next six of these should not repeat?

**Regulator / professional licensing**

> A pharmacist licensed in one province and practising in another, a nurse on a temporary registration, a surgeon whose licence was suspended last week — the licence credential looks identical in all three cases. What does a relying party need to be told beyond "this person is licensed," and who is in a position to tell them?

**Wallet or platform provider**

> A wallet has to decide which issuers it will accept credentials from, and which verifiers it will release them to. If it makes those decisions internally, it has quietly built its own trust registry and become an authority nobody appointed. Where should that decision live instead, and what does the wallet need to receive in order to stop making it alone?

**Track 1 co-lead**

> We have written that a government issuer is listed and made discoverable, never vetted or approved. That sounds like a fine distinction until you are the one operating the registry. What does the distinction cost in practice, and what breaks if we lose it?

### Round 2 — the hard parts (open to the panel, ~12 min)

Follows slide 9. Pick two or three. These are the questions the deliverable actually turns on.

**Scope granularity**

> We are proposing that authority be expressed as an action on a resource — this issuer may issue this credential type, in this jurisdiction, now. In your domain, is that granular enough to be useful, or is it already too much machinery for what you would actually publish?

**Failure behaviour**

> A check comes back "issuer unknown." In your domain, is that a hard refusal, a warning, or a shrug — and who gets to decide? If different ecosystems answer differently, does the credential still travel?

**Freshness under real conditions**

> How current does status have to be before you would act on it, and what do you do when the registry is unreachable for ten minutes at peak? If cached data is allowed, who carries the risk of acting on a stale "active"?

**Recorded vs. vetted, in the data**

> Some entries are recorded because a sovereign said so. Others are vetted against published criteria. Should the registry data show which is which? The worry is that any such signal lets tooling treat a sovereign as a lesser tier — the exact opposite of the intent. Does the distinction belong in the data at all?

**Anchoring**

> A relying party holding a credential has to know which registry to ask. Nothing in the formats or the protocols reserves a place to say so. Where should that pointer live, and who has to agree before it works?

### Round 3 — the closing ask (~3 min)

One sentence each, around the table:

> Name the one thing this group could specify in September that would make your domain's problem smaller — and the one thing we could get wrong that would make you walk away.

The second half matters more than the first. Write down every answer.

### Questions to have ready but not scheduled

The room will produce some of these. Have the panel answer them rather than the moderator.

- *"Isn't this just a new centralized authority?"* → Slide 6. The registry answers a bounded question and makes no trust decision. Best answered by a sovereign panelist, not by Track 1.
- *"Why not one global registry?"* → Slide 8. Ask the customs and travel voices what a single root would have to be for them to accept it.
- *"Doesn't PKI already do this?"* → PKI answers who holds the key. It does not answer what that key holder is authorized to issue, in which jurisdiction, or whether that is still true.
- *"What about revocation of the credential itself?"* → Distinct from issuer status, genuinely open in the scope, and worth saying so plainly rather than improvising.

---

## Two things to push on

**Panel over presentation.** Slide 5 is a claim if the moderator says it. It is a fact if a customs voice and an education-credential voice say it in their own words twenty minutes apart. That is the whole argument for the panel format — which means the panelist lineup, not the deck, is the thing to nail down.

**Slide 7 is load-bearing.** The sovereignty boundary determines whether ministries stay in the room. Cut anything else first.

---

## Source language

Wording throughout is drawn from [SCOPE-Track1.md](SCOPE-Track1.md), [start-here-issuer-trust-registries.md](start-here-issuer-trust-registries.md), and [taxonomy-and-vocabulary.md](taxonomy-and-vocabulary.md) — in particular the recording / vetting / recognition split and "listed, never approved."
