# Advice on the Panel Slides

Comparison of [slides-codex.md](slides-codex.md) and [slides-claude.md](slides-claude.md) for the Track 1 Day 2 panel, *The Pattern That Repeats*.

Status: Advisory synthesis. Not agreed. **Acted on** — this advice was applied in [slides.md](slides.md), which supersedes both compared drafts. Kept as the merge rationale.

## Recommendation

The Claude version is stronger as a live panel script. The Codex version is stronger as a reusable conceptual framework.

Use:

- Claude's dramatic structure and panel instincts.
- Codex's architectural precision and deployment neutrality.
- An explicit scope guard from [SCOPE-Track1.md](SCOPE-Track1.md).

The combined deck should teach the gap, establish the bounded trust-registry function, preserve the issuer-first scope, and then let panelists prove that the pattern recurs across domains.

## Comparison

| Dimension | Codex | Claude | Assessment |
| --- | --- | --- | --- |
| Opening | Clear but instructional | Strong cold open with a technically valid but unauthorized issuer | Prefer Claude's opening |
| Core argument | Two trust planes: credential and delivery | Formats versus delivery protocols, followed by issuer/verifier scope | Combine them |
| Event readiness | Structured content recommendation | Moderator script with timing, staging, and assigned questions | Claude is more usable live |
| Panel questions | General, reusable, and less leading | Concrete, domain-specific, and memorable | Use Claude's structure, but remove assumptions |
| Scope discipline | Risks treating delivery-actor governance as part of v0.1 | Explicitly says verifier-side governance is real but deferred | Prefer Claude's scope guard |
| Sovereignty | Present, but not given its own slide | Treated as a load-bearing standalone slide | Prefer Claude |
| Cross-domain proof | Conceptually consistent | Vivid and tied to the proposed panelist lineup | Prefer Claude |
| Visual discipline | Correctly identifies most existing diagrams as too dense | Recommends several dense diagrams for live use | Prefer Codex |
| Pacing | Eight slides in six to eight minutes | Twelve slides in ten minutes | Reduce to seven content slides |
| Primary risk | Can feel like a framework briefing | Can overstate or pre-bake technical and domain claims | Correct both in the synthesis |

## The important substantive difference

The Codex version interprets “delivery mechanisms need trust registries” broadly: issuers, credential services, wallets, verifiers, brokers, and endpoints may all need governed authorization.

The Claude version separates that larger pattern into:

- **Issuer trust:** the focus of the September deliverable.
- **Verifier-side and other delivery-actor trust:** the same general pattern, but deferred.

The Claude treatment is closer to the current Track 1 scope. [SCOPE-Track1.md](SCOPE-Track1.md) says that wallet governance and relying-party/verifier registration policy are real but out of scope for v0.1.

The combined framing should be:

> Credential formats and delivery protocols both depend on governed trust information. The September framework defines issuer authority first; the same registry pattern can later govern other delivery actors without pretending those onboarding rules are already in scope.

This preserves the broader thesis without expanding the current deliverable by implication.

## What to retain from Claude

### Teach the gap

The strongest strategy in the Claude version is:

> Do not begin by teaching trust registries. Teach the gap, then let panelists show that it is the same gap in their domains.

The cold open should show a credential that passes its technical checks but still leaves the relying party unable to determine whether the issuer was authorized.

### Make sovereignty explicit

The sovereignty boundary deserves its own slide:

> A government issuer is listed and made discoverable. It is not vetted or approved by the registry.

This distinction is central to government participation and should not be left as a footnote inside a general architecture slide.

### Use the lineup to prove the pattern

The cross-domain thesis is more convincing when education, trade, professional licensing, identity, and delivery voices describe the same underlying problem in their own language. The panelist lineup carries more evidentiary weight than a moderator's comparison table.

### Use structured discussion rounds

Claude's three-round structure is strong:

1. Establish that the problem exists in each domain.
2. Explore the hard governance questions.
3. Ask what the Task Force should specify—and what mistake would cause stakeholders to walk away.

The final “walk away” question is particularly valuable because it surfaces non-negotiable constraints rather than easy consensus.

## Corrections needed in Claude

### Distinguish formats from delivery protocols

Do not say that every format “moves the credential.”

- Formats structure claims and bind them to cryptographic evidence.
- Issuance, presentation, retrieval, and exchange protocols move or present credentials between actors.
- Neither independently establishes the actor's governed authority for the relevant action and scope.

### Soften claims that a domain has solved the problem

“Every row solved the issuer question” is too strong. PDFs, bilateral arrangements, regulator websites, phone calls, and sector directories are existing mechanisms, but they do not necessarily provide a complete, current, interoperable solution.

Use:

> Every domain has built some way to answer the question, usually inside its own silo.

### Avoid categorical claims about registry pointers

The key problem is not necessarily the complete absence of a field that could carry a registry reference. The stronger and more defensible point is that formats and protocols do not supply common governed meaning, discovery, and recognition for the authority source behind that reference.

### Keep named systems illustrative

ICAO PKD, AAMVA services, and EU Trust Lists illustrate different existing arrangements. They should not be presented as equivalent solutions or as implementations conforming to the proposed framework.

### Remove assumptions from panel questions

Some domain questions state the answer before the panelist speaks—for example, that an authority list lives only in bilateral agreements or in people's heads. Ask where the information lives, how it is maintained, and what breaks. If a panelist says the problem does not exist in their domain, that is useful evidence rather than a failure of the question.

### Source standards-specific claims

Claims about EUDI relying-party registration, OpenID verifier attestations, or the exact capabilities of named formats and protocols should be sourced and checked before becoming audience-facing copy.

## What to retain from Codex

### The reusable authorization pattern

The Entity–Action–Resource–Time question is the clearest expression of the reusable governance function:

> At time T, does Authority A say that Entity B may perform Action X on Resource Y?

It applies cleanly to issuer authorization now and leaves room for other actor authorizations later.

### Answer semantics

A negative determination, no information, and an inability to evaluate must remain distinct. This is both a governance issue and a practical panel topic.

### The decision boundary

The registry supplies governed information. It does not make the credential-acceptance or trust decision for the relying party.

### Deployment neutrality

Needing a trust-registry function does not mean every transaction requires a live query to a central service. Trust information may be preloaded, synchronized, cached, referred, or obtained at transaction time.

### A web of scoped sources

Trust should scale through scoped recognition among independently governed sources, not through one global list or universal root.

### Visual restraint

The existing `img/03-ecosystem-overview.png` is the cleanest stage-ready visual. The other current diagrams contain useful material but are too dense to project as introductory slides without simplification.

## Corrections needed in Codex

### Add a scope guard

Do not give issuer, verifier, wallet, and delivery-provider authorization equal standing without distinguishing the September issuer framework from later governance work.

### Give sovereignty its own slide

The distinction between recording a sovereign issuer and approving it is too important to remain embedded in general text.

### Reduce table density

The proposed five-column cross-domain comparison is appropriate for a document but too dense for a panel room. Let panelists supply the domain detail and keep the projected comparison to a few repeated roles or questions.

### Make the opening more provocative

Begin with a concrete failure, not the conceptual framework. The audience should feel why the missing governance layer matters before being shown its model.

## Recommended combined deck

Use a holding/title slide before the session begins, followed by seven content slides.

### Holding slide — The Pattern That Repeats

Display the session title, moderator, panelists, and domains while the room fills. Do not spend presentation time introducing this slide.

### Slide 1 — A credential can pass every technical check and still be wrong

Use one concrete example to establish that technical validity does not establish issuer authority.

### Slide 2 — The stack has a governance gap

Formats structure and secure credentials. Protocols issue, deliver, present, or exchange them. Neither independently establishes that the identified actor is authorized for the relevant action and scope.

### Slide 3 — Both sides need governed trust, but issuer authority comes first

State plainly:

- Issuer authorization is the current Track 1 deliverable.
- Verifier, wallet, and other delivery-actor governance use the same pattern but are not being defined in v0.1.

### Slide 4 — A trust registry answers a bounded question

Use the authorization template:

> At time T, does Authority A say that Entity B may perform Action X on Resource Y?

Reinforce that the registry informs and the relying party decides.

### Slide 5 — The same question appears in every domain

Use four brief examples at most. Prefer having panelists express the domain differences rather than projecting a dense comparison table.

### Slide 6 — Sovereignty and scoped recognition

Make both boundaries visible:

- A sovereign issuer is recorded and made discoverable, not approved by the registry.
- Registries recognize other authoritative sources for defined scopes; there is no required global master list.

If this slide becomes crowded, separate it into two slides and shorten another part of the deck.

### Slide 7 — The hard questions are governance questions

Leave the following onscreen during the panel:

- Who stands behind the authorization?
- What exactly is in scope?
- How current must the information be?
- What do negative, unknown, and unavailable mean?
- Which other authorities or registries are recognized?
- Which decision remains with the relying party?

## Recommended panel structure

### Round 1 — Prove the problem across domains

Use Claude's domain-specific structure, but rewrite each question so that the panelist supplies the facts rather than confirming a premise.

Examples:

- **Education:** When an employer receives a digital degree from another country, how does it determine whether the institution was authorized to award that degree at the relevant time? Where does that process fail today?
- **Trade:** When a digital trade document arrives from an unfamiliar authority or intermediary, what must the receiving party establish before acting on it? Where is that information currently found?
- **Identity and travel:** What does the passport ecosystem teach us about the cost of building issuer trust separately for every new credential type?
- **Professional licensing:** What must a relying party know beyond the fact that a licence credential has a valid signature?
- **Wallet or platform:** Which trust decisions is the platform forced to make internally because governed information about issuers or other participants is unavailable?

### Round 2 — Test the governance pattern

Select two or three:

- How precise must authorization scope be?
- How current must registry information be under real operating conditions?
- What happens when the answer is negative, unknown, or unavailable?
- Should a registry expose how an entry was recorded without creating an unintended ranking?
- How should one registry recognize another for a defined scope?
- How does a relying party discover the authoritative source without prescribing one technical mechanism?

### Round 3 — Force a useful closing

Ask each panelist:

> Name one thing this group could specify in September that would make your domain's problem smaller—and one thing we could get wrong that would make your organization walk away.

Record both parts. The constraints may be more valuable than the requested features.

## Bottom line

Claude supplies the better event spine. Codex supplies the better conceptual guardrails. The strongest deck combines them: provocative opening, precise trust boundary, explicit issuer-first scope, standalone sovereignty treatment, scoped recognition, and panel questions that elicit evidence rather than agreement.
