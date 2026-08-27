# The Pattern That Repeats: Recommended Panel Slides

> **SUPERSEDED — input draft, provenance only (2026-08-14).** One of two independent drafts for the Day 2 panel deck. Its Entity–Action–Resource–Time authorization template, the negative/unknown/unavailable distinction, the decision boundary, deployment neutrality, scoped recognition, and its visual restraint were carried into the merged deck; its opening was replaced with a concrete failure, a standalone sovereignty slide was added, an issuer-first scope guard was added so delivery-actor governance is not implied to be in v0.1, and its dense tables were thinned for a live room. Do **not** run from this file. Current deck: [slides.md](slides.md). Merge rationale: [slides-advice-from-codex.md](slides-advice-from-codex.md).

Status: SUPERSEDED by [slides.md](slides.md) — kept for provenance.

## Communication job

By the start of the panel, the audience should understand that every digital credential ecosystem has two related trust problems—trust in the authority behind the credential and trust in the actors and channels through which it moves—and that both depend on a governed trust-registry function.

## Core framing

> Every credential creates at least two trust problems: trust in the authority behind its contents, and trust in the actors and channels through which it moves.

There are two trust planes:

1. **Credential trust:** Is this issuer authorized to issue this credential or claim?
2. **Delivery trust:** Is this actor or endpoint authorized to issue, request, deliver, receive, present, or verify it through this mechanism?

A valid signature proves control of a key. It does not, by itself, establish permission to perform either action.

## Recommended opening sequence

Use these eight slides as a six-to-eight-minute opening before the panel discussion.

### Slide 1 — The Pattern That Repeats

**Different credentials. Different delivery mechanisms. The same missing governance layer.**

Suggested examples:

- Passport
- University degree
- Professional licence
- Customs declaration

Keep this slide minimal. Its purpose is to establish that the session concerns a reusable pattern rather than a single credential type or technology.

### Slide 2 — Technical validity is not authority

Show three distinct questions:

1. **Technically valid?**
2. **Actor authorized for this action?**
3. **Will I accept it here?**

Highlight the middle question as the trust-registry problem.

The key point is that a credential or protocol interaction can be cryptographically valid while involving an actor that is not authorized for the claimed role, action, scope, or context.

### Slide 3 — Credentials and channels each introduce a trust question

Use a two-column comparison:

| Credential plane | Delivery plane |
| --- | --- |
| Who issued it? | Who operates this service or endpoint? |
| Is the issuer authorized to issue this credential or claim? | Is the actor authorized to perform this interaction? |
| Does the authorization cover this jurisdiction and scope? | Does the authorization cover this role, credential type, and ecosystem? |
| Was that authorization current at the relevant time? | Is the actor, role, and endpoint still recognized? |

### Slide 4 — Formats and protocols identify actors; registries establish governed authority

Credential formats and delivery protocols can carry or bind:

- Identifiers
- Signatures and proofs
- Keys and certificates
- Endpoint and service metadata
- Credential and claim information

They do not independently establish whether the identified actor is recognized and authorized for the relevant action and scope. Trust registries make that governed information available.

Avoid turning this into a standards inventory. The audience only needs the architectural boundary: the format or protocol carries technical evidence; the registry exposes governed authority.

### Slide 5 — Both questions use the same pattern

Display one large query template:

> At time T, does Authority A say that Entity B may perform Action X on Resource Y?

Illustrative applications:

| Entity | Action | Resource |
| --- | --- | --- |
| University | `issue` | degree |
| Professional licensing body | `issue` | professional licence |
| Credential service | `deliver` | designated credential type |
| Verifier | `request` | specified credential or claims |
| Wallet or provider | `receive` or `present` | defined ecosystem interaction |

The exact actions and resources are illustrative. The framework should define their governance meaning without prescribing a universal resource syntax.

Where a registry can answer, the determination may be affirmative or negative. An inability to evaluate the question must remain distinct from a negative answer.

### Slide 6 — The pattern repeats across every domain—and every exchange

Use a cross-domain comparison:

| Domain | Origin of authority | Credential issuer | Delivery actors | Typical relying party |
| --- | --- | --- | --- | --- |
| Passport | National law | Passport authority | Issuance, wallet, airline, or border systems | Border authority or airline |
| Degree | Charter, legislation, or accreditation regime | University or awarding body | Institutional credential and wallet services | Employer or educational institution |
| Professional licence | Statute and regulator | Licensing authority | Licensing portals, wallets, or exchange services | Employer, client, or regulator |
| Trade document | Trade or customs law, regulation, or delegation | Authorized public or private organization | Trade platforms, brokers, and exchange services | Customs authority or trading counterparty |

Close the slide with:

> The nouns change; the governance function does not.

### Slide 7 — Trust registries may be separate, but the pattern is reusable

An issuer registry, verifier registry, wallet or provider registry, and endpoint registry do not need to be one database or service.

They can:

- Operate under different authorities and governance frameworks
- Answer different authorization questions
- Cover different actions, resources, jurisdictions, and times
- Recognize other authoritative registries for a defined scope

The result should be a web of scoped recognition—not one global list or universal trust root. Recognition does not create or transfer the underlying authority.

### Slide 8 — The hard questions are governance questions

Leave these questions onscreen as the panel begins:

1. Who stands behind each actor?
2. What exactly is each actor authorized to do?
3. For which credential, claim, interaction, jurisdiction, and context?
4. How is the information kept current?
5. Which other authorities or registries are recognized, and for what scope?
6. What does the relying party do when the answer is negative—or unavailable?

Footer:

> The registry informs each interaction. The participant still decides.

## Panel structure

Ask every panelist the same opening question:

> In your domain, where does authority originate, who exercises it, and what exact authorization questions must be answered for both the credential and its delivery?

Suggested discussion rounds:

1. **Failure:** What goes wrong today when issuer or delivery-actor authority is not discoverable?
2. **Accountability:** Which information must remain current, and who is accountable for maintaining it?
3. **Reuse:** Which parts of the governance pattern can be shared across domains, and which parts genuinely cannot be standardized?

## Moderator question bank

Each core question is designed to surface a recognizable problem and then direct the panelist toward the part of the solution a trust registry can provide. Select six or seven depending on the available time; do not try to ask all of them.

### Core questions

1. **The failure in the real world**  
   Can you describe a situation in your domain where a credential could be technically valid, yet the relying party still could not tell whether the issuer was authorized? What registry answer would have resolved that uncertainty?

2. **How trust works today**  
   How does a relying party currently discover which organizations are allowed to issue a particular credential or claim? Where does that approach become slow, ambiguous, stale, or impossible to automate—and what would a governed registry need to expose instead?

3. **Trust in the delivery mechanism**  
   Even when the credential issuer is legitimate, what can go wrong when the issuance service, wallet, verifier, broker, or delivery endpoint is not recognized? Which actors and actions should be discoverable through a trust registry?

4. **The source of authority**  
   Who actually has the authority to say that an actor may issue, request, deliver, receive, present, or verify something in your domain? How should a registry preserve that accountability rather than appearing to grant the authority itself?

5. **Scope that is precise enough to use**  
   Is knowing an organization's name enough, or must a verifier also know the credential type, claims, role, jurisdiction, population, or delivery action it is authorized for? What is the minimum useful scope a registry must express?

6. **Keeping trust information current**  
   What changes in your ecosystem—accreditation, delegation, licensing status, signing keys, service endpoints, or organizational roles—and how quickly must relying parties learn about those changes? What should the registry maintain, and who is accountable for updating it?

7. **Cross-border and cross-domain recognition**  
   When a credential or interaction crosses an ecosystem boundary, how does the relying party decide which foreign authority or registry to recognize? Could scoped registry-to-registry recognition replace some bilateral lists and manual integrations without creating one global trust root?

8. **Negative, unknown, and unavailable**  
   What should happen when a registry says an actor is not authorized, when it has no information about the actor, or when it cannot be reached? Why must a trust-registry solution distinguish those outcomes?

9. **The boundary of the registry's decision**  
   Which decision belongs to the trust registry, and which must remain with the verifier or relying party? How do we prevent a registry answer from becoming an automatic or universal acceptance rule?

10. **A minimum viable shared pattern**  
    If we wanted one reusable trust-registry pattern across identity, education, professional qualifications, travel, and trade, what is the smallest governed answer every domain must be able to provide? What could your domain implement first?

### Domain-targeted prompts

Use these to bring out the distinctive example each panelist contributes while keeping everyone anchored to the common pattern.

- **Education or professional qualifications:** When an institution, accreditor, programme, or professional's standing changes, who is authoritative for that change, and how could a verifier discover it without maintaining its own private list?
- **Trade or customs:** A trade document may pass through several platforms and intermediaries. At which hand-offs must the receiving party know that an actor is authorized, and which registry relationships could make that information portable?
- **Government identity or travel:** How can a registry make a sovereign issuer and its declared scope discoverable without implying that the registry grants or judges the sovereign's underlying authority?
- **Wallet, verifier, or delivery provider:** Which protocol participants must be recognized before an exchange begins, and what governed information is missing from today's endpoint metadata or cryptographic authentication?

### Closing question

> If a relying party in another country encountered one of your credentials tomorrow, what single trust-registry answer would remove the most uncertainty for them—and who should stand behind that answer?

Keep Slide 8 visible during the discussion so that domain differences appear as variations of one pattern rather than unrelated case studies.

## Important deployment nuance

Saying that credential formats and delivery mechanisms need trust registries does **not** mean every transaction requires a live query to one central service.

Governed trust information may be:

- Preloaded
- Synchronized
- Cached within policy-defined freshness limits
- Embedded or carried by reference
- Discovered through federation or referral
- Queried at transaction time

The necessary element is the governed trust-registry function, not one prescribed deployment model, protocol, database, or network topology.

## Existing visual material

The existing `img/03-ecosystem-overview.png` is the cleanest foundation for Slides 5 or 7.

The following contain useful source material but are too text-dense for the opening of a live panel and are better simplified or retained as appendix visuals:

- `img/00-trust-pattern-plain-language.png`
- `img/01-two-sided-trust-story.png`
- `img/02-question-pattern-flow.png`
- `img/04-core-model-loop.png`

## Content to defer

Do not lead with taxonomy, wire protocols, data models, conformance mechanics, or registry architecture. Establish the two trust problems first. The technical and governance detail will then answer a question the audience already understands and cares about.
