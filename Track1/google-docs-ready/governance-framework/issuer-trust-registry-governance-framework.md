# Issuer Trust Registry Governance Framework v0.1

Status: Working draft for GDC Trust Registry Task Force discussion. The settled provisions are written as a usable baseline; clearly marked Task Force items remain open.

Event target: GDC 2026, Geneva, September 2026

Track: Trust Registries Track 1 — Policy, Taxonomy & Scope. Onboarding & Governance. The track's defining document is [TRTF Track 1 Scope](https://docs.google.com/document/d/1nbVyc8MX42YPPYVvxRL7oE-B1zJ6PnZSqeJIaRR1Nac/edit?usp=drive_link).

Co-leads:

- Philippe Nieto, France, Ministère de l'Intérieur
- Darrell O'Donnell, Ayra Association
- Gabriel Marquie, IATA

New to this work? Start with [Start Here: Issuer Trust Registries](https://docs.google.com/document/d/1Pujsh8OtIz1EhuU3FrtDss2rvhGLvcEe3xqhObGAkzY/edit?usp=drive_link).


## 1. Purpose, Scope, and Status

When someone encounters a verifiable digital credential, they need to answer a bounded question: who issued it, what is that issuer authorized to issue, and does that authorization apply at the relevant point in time? A credential format does not answer that governance question. A trust registry is one way to make the answer available.

This framework describes that governance layer for **government issuers of identity documents**, tested through three examples: **passports, national identity credentials, and driver's licences**. The examples ground the work; the governance pattern is the deliverable.

The framework covers:

- How governed information about an Issuer or Recognized Trust Registry is recorded, maintained, and queried.
- How an Authorization is expressed through an Action and Resource.
- How a registry answers authorization and recognition questions at a point in time.
- The boundary among sovereign authority, registry-service listing criteria, registry operation, and a relying party's own decision.

Out of scope for v0.1 are wire formats, protocols, data models, and internal registry lifecycle operations; a universal catalogue or syntax for resources; management or registration of wallets, relying parties, or verifier applications; and the processes by which one registry decides to recognize another.

Text outside a labelled **Task Force discussion** or **work item** expresses the current baseline. A starting position inside a callout is a proposal for collaboration, not a settled requirement.

## 2. Design Tenets

- **Disclosure over prescription.** Where transparency is needed, the framework favours explaining governance choices over forcing one operating model. The specific information that must be disclosed remains a Task Force decision in Section 8.
- **Satisfy by equivalence.** A governance concern may be addressed natively, by reference to an applicable regime such as national law, or identified as out of scope with a rationale. This approach will inform, but does not yet define, conformance.
- **Access-pattern neutrality.** The framework defines the meaning of registry questions and answers without mandating advance enumeration, synchronization, a central directory, or transaction-time connectivity.
- **The sovereignty boundary is first-class.** A registry does not create or adjudicate a sovereign's underlying authority.
- **Governance is not operations.** The framework defines governance meaning and accountability boundaries. It does not prescribe internal approval, workflow, staffing, or lifecycle procedures.
- **The registry informs; the user decides.** A registry answer is an evidence input. It is not an acceptance rule or trust decision.

## 3. Core Concepts and Vocabulary

The track [Vocabulary](https://docs.google.com/document/d/1BncGe0UbdwTBEEDDYLQ43qZttXv1LPKeksC2hKOnnoE/edit?usp=drive_link) is the shared source for terminology. The following concepts are the subset needed to read this framework.

- **Authority.** The power under which an entity may perform an Action with respect to a Resource. Authority is established through law, regulation, delegation, or another applicable governance basis; a registry does not create it.
- **Origin of authority.** The source from which an entity derives its authority. It may be inherent, as with sovereign authority resting on law, or delegated by another authority.
- **Authorization.** A governed statement that an entity may perform an Action with respect to a Resource.
- **Action.** What the entity is authorized to do, such as `issue`.
- **Resource.** What the Action applies to. A `Type.Jurisdiction` pattern—such as `passport.ca`, `nationalid.fr`, or `driverlicense.au.nsw`—is useful for examples, but this framework does not prescribe a resource syntax or taxonomy.
- **Listed Entity.** An entity about which a trust registry holds governed information. In this framework, a Listed Entity may be an Issuer or a Recognized Trust Registry.
- **Recording.** Creating or maintaining governed information about a Listed Entity. Recording does not create the underlying authority.
- **Listing.** The state of a Listed Entity or Authorization being present in a registry. Listing may be subject to the registry service's applicable criteria; it does not by itself imply that the registry grants the underlying authority.
- **Recognition.** An authority or registry acknowledging another authority or registry as authoritative for an Action and Resource. Recognition may be unilateral or reciprocal and is limited to its defined scope.
- **Trust registry.** An authoritative source of governed information about which entities hold which Authorizations under an applicable governance framework.
- **Point in time and context.** An authorization or recognition determination applies at a point in time. A query may also carry other context. If no time is supplied, the applicable time is now.
- **Trust decision.** A party's decision about whether to rely on governed information in a particular situation. A registry informs the decision but does not make it.

### Conceptual lineage

The Action + Resource model is informed by Cedar's Principal–Action–Resource–Context (PARC) authorization model and is also used by the Trust Registry Query Protocol (TRQP). Cedar and TRQP are informative references: this framework does not require Cedar, TRQP, or any particular policy engine, protocol, resource syntax, or implementation.

## 4. Roles

Roles are the parts entities play, not fixed organizations. One organization may perform several roles, and several organizations may divide them.

- **Authority.** Makes or stands behind an Authorization or recognition statement under law, regulation, delegation, or another governance basis.
- **Issuer.** Issues a credential and is the Listed Entity evaluated for an Authorization such as `issue` on `passport.ca`.
- **Recognized Trust Registry.** A registry or authority source recognized by another registry for a defined Action and Resource.
- **Trust Registry Operator.** Operates the registry service and is accountable for its operation and for faithfully publishing the governed information for which it is responsible.
- **Relying Party / Verifier.** Queries or otherwise obtains registry information and applies its own policy and context when deciding whether to rely on a credential.
- **Wallet.** May query a trust registry for itself or as an agent for another party. This framework does not govern wallet applications or their registration.
- **Identifier Controller.** The role accountable for controlling the identifiers and associated verification material used to represent a Listed Entity. The Identifier Controller authorizes their use and any change in who controls them. Technical custody or operation may be delegated, but that delegation does not transfer governance accountability unless explicitly established under the applicable governance.

The Issuer, Trust Registry Operator, and Identifier Controller may be the same organization or different organizations. A trust registry may record or reference the relationship between a Listed Entity and its identifiers or verification material; doing so does not make the registry their controller.

> **Task Force discussion D-08 — Trust Registry User**
>
> **Starting position:** Define a Trust Registry User as an actor that queries or otherwise consumes information from a trust registry. A Wallet, Relying Party, Verifier, another Trust Registry, or another client could perform this role.
>
> **Question:** Would this umbrella role clarify the model without implying that these actors are registered or managed in the trust registry?

## 5. Core Model

A trust registry supports two governed interactions. These are not one sequential loop.

![Ecosystem overview showing an Issuer and a Recognized Trust Registry recording and maintaining governed information in a Trust Registry, with a Relying Party and Wallet querying it.](../img/03-ecosystem-overview.png)

### Record & Maintain

**Record & Maintain** is the interaction through which governed information about an Issuer or another Listed Entity is made available and changed over time. Information about an entity, its scope, and related governance evolves. This framework does not specify the processes used to perform that work.

### Query

**Query** is the interaction through which a party asks a trust registry an authorization or recognition question. The framework defines the governance meaning of the question and answer, not the protocol used to express them.

An **authorization** question asks:

> At the applicable point in time, does Authority A say that Entity B holds the Authorization to perform Action X on Resource Y?

A **recognition** question asks:

> At the applicable point in time, does Authority A recognize Authority or Registry B as authoritative for Action X on Resource Y?

Both questions produce a clear affirmative or negative determination. A common technical representation is `true` or `false`, but the requirement is the governance meaning, not that encoding.

A query may request a particular point in time and may carry additional context. If no time is requested, the registry evaluates the question for now. The answer identifies the point in time at which the question was evaluated. An inability to evaluate the question is not a negative determination.

The relying party, verifier, or wallet then uses the answer under its own policy and transaction context. That decision occurs outside the trust registry process defined here.

## 6. Registry Models and the Sovereignty Boundary

An authority has two models for publishing its governed information. Neither is preferred by this framework.

### Authority-operated registry

The authority operates or designates its own trust registry and is directly accountable for the substantive Authorizations it publishes. A sovereign may operate an appropriately centralized source under its own law; that is a normal expression of the model, not an exception to it.

### Shared registry service

The authority participates in a service operated on its behalf or for a community of authorities. The authority remains accountable for the substantive assertion about who is authorized to do what. The Trust Registry Operator is accountable for operating the service and faithfully publishing the governed information for which it is responsible.

ICAO PKD, AAMVA services, and EU Trust Lists illustrate different shared-service arrangements. They are examples, not claims of conformance to this framework.

### Optional authority evidence

Under either model, an authority may provide a link to legislation, a mandate, a delegation, or another public document describing its basis of authority. There is no standardized form for this evidence in v0.1. A document link does not turn the registry into an adjudicator of the authority it describes.

### What the sovereignty boundary does—and does not—protect

A sovereign's authority under its own law is never granted, approved, or rejected by a registry. A registry service may nevertheless authenticate the source of submitted information and apply participation, conformance, membership, or listing criteria established by the applicable bodies.

A service may refuse or remove a listing when its criteria are not met. That decision concerns participation in the service; it does not mean that the sovereign lacks the underlying authority. This framework does not define the bodies that establish or apply listing criteria, subordinate them to the registry, or prescribe their processes.

## 7. Bright-Line Requirements

The key words **MUST**, **MUST NOT**, and **MAY** in this section are to be interpreted as described in [RFC 2119](https://www.rfc-editor.org/rfc/rfc2119). These are the framework's small set of non-negotiable requirements.

1. **No adjudication of sovereign authority.** A Trust Registry MUST NOT record or imply a verdict on whether a sovereign is entitled to exercise authority under its own law.
2. **Authorization can be determined.** A party using the registry MUST be able to obtain a clear affirmative or negative answer about whether a Listed Entity holds an Authorization for a specified Action and Resource at the applicable point in time. If no time is specified, the applicable time is now.
3. **Recognition can be determined where used.** Where a registry recognizes another authority or registry, a party using the registry MUST be able to obtain a clear affirmative or negative answer about that recognition for the specified Action, Resource, and applicable point in time.
4. **No answer is distinct from a negative answer.** If a registry cannot evaluate a question, it MUST NOT represent that failure as a negative authorization or recognition determination.
5. **The user makes the decision.** A registry MUST present its answer as governed information for the party's own decision. It MUST NOT present that answer as the party's credential-acceptance or trust decision.

These requirements do not mandate a protocol. An implementation may use TRQP or another mechanism capable of expressing equivalent authorization and recognition determinations.

## 8. Governance Disclosures and Task Force Questions

Registry lifecycle operations are outside scope. This framework does not define or require disclosure of the internal processes used to add, review, update, suspend, revoke, expire, or remove registry information. Those processes remain under the applicable authority's and operator's governance.

The following questions require Task Force work before v0.1 can state a complete disclosure model.

> **Task Force discussion D-03 — Basis of listing**
>
> **Starting position:** A registry should disclose the bases on which entities may be listed—for example, authority-operated recording, participation in a shared service under published criteria, or delegated-issuer assessment.
>
> **Question:** Should the basis on which a particular entry was listed also be available per entry, and how can that be expressed without creating an unintended ranking?

> **Task Force discussion D-04 — Additional status or reason information**
>
> **Starting position:** A query determines whether an Authorization is current at a point in time: true or false. A registry may provide additional status or reason information.
>
> **Question:** Is any additional status or reason information required for v0.1?

> **Task Force discussion D-05 — Required public information**
>
> **Starting position:** Useful candidates include the identity of the Authority responsible for an assertion, the Trust Registry Operator, the applicable governance framework, the registry model, the meaning of its determinations, and an optional authority-evidence document link.
>
> **Question:** Which governance-facing information must be public or discoverable, and at what level: framework, registry, or entry?

> **Task Force discussion D-06 — Privacy and security disclosure**
>
> **Starting position:** A registry should disclose its approach to query access and authentication, logging and retention, query-correlation risk, protection against enumeration or abuse, and security incidents and corrections.
>
> **Question:** Which disclosures belong in the common framework, and which should remain specific to each implementation or applicable law?

> **Task Force discussion D-07 — Assurance**
>
> **Starting position:** A registry may convey an assurance scheme, a level within that scheme, and a pointer to its governing authority. A registry conveys these values; it does not define, rank, or reconcile them across authorities.
>
> **Question:** How much assurance handling belongs in v0.1 without imposing maturity requirements that not every registry needs?

## 9. Worked Examples

The examples below test the same governance model. Resource names follow an illustrative `Type.Jurisdiction` pattern only; the framework does not prescribe their syntax. Named services illustrate real-world arrangements but are not claimed to implement this framework or TRQP.

| Use case | Listed Entity and Authority | Registry model | Illustrative Authorization | How registry information is used |
| --- | --- | --- | --- | --- |
| Passport | A national passport Issuer operating under its government's authority | Authority-operated registry or a shared service such as ICAO PKD | `issue` on `passport.country` | A border or travel system queries or otherwise obtains governed issuer information, then makes its own decision. |
| National identity credential | A national identity Issuer operating under national law or mandate | Authority-operated registry or a regional/shared service | `issue` on `nationalid.country` | A Relying Party determines whether the Issuer holds the applicable Authorization at the relevant point in time. |
| Driver's licence | A national, state, provincial, or territorial licensing authority | Authority-operated registry or a shared service such as an AAMVA or regional arrangement | `issue` on `driverlicense.country.state` | A Verifier determines whether the Issuer holds the applicable Authorization and applies its own acceptance policy. |

Recognition uses the same Action + Resource pair but asks a different question. For example:

> AAMVA recognizes Austroads as authoritative for `issue` on `driverlicense.au`.

That recognition is scoped to the stated Action and Resource. A separate recognition may apply to another Resource, such as `driverlicense.nz`.

## 10. Conformance Work Item

This framework does not yet define conformance. No implementation should claim conformance to v0.1 on the basis of this section.

> **Task Force work item D-02 — Conformance**
>
> **Starting position:** Conformance should eventually test the bright-line requirements and the disclosure obligations agreed by the Task Force, while allowing equivalent governance and technical approaches.
>
> **Questions:** What claims conformance—the governance framework, the registry service, the operator, or a combination? Which evidence is required? How are equivalence, versioning, review, and withdrawal handled?

A provisional checklist for future work could ask whether an implementation:

- Identifies its scope and the organizations performing its governance roles.
- Preserves the sovereignty boundary while distinguishing it from service listing criteria.
- Makes authorization determinations for an Entity, Action, Resource, and point in time.
- Makes recognition determinations where it recognizes other authorities or registries.
- Distinguishes a negative determination from an inability to answer.
- Leaves the resulting trust or credential-acceptance decision to the party using the registry.
- Publishes the governance-facing information eventually agreed under D-05.

This checklist is a recommendation for Task Force development, not a conformance claim or test suite.

## 11. Deferred Work and Discussion Register

Deferred from v0.1 are:

- Registry wire formats, protocols, bindings, data models, and resource syntax.
- Internal registry lifecycle and operational processes.
- Identifier formats, resolution methods, key custody systems, rotation, and revocation mechanisms.
- Management or registration of Wallets, Relying Parties, and Verifier applications.
- The processes and criteria by which one registry grants or withdraws recognition of another.
- Cross-authority assurance rankings and a universal assurance model.
- A universal catalogue of credential or resource types.

| ID | Topic | Status |
| --- | --- | --- |
| D-01 | Two registry models; optional authority evidence available to either | Resolved for this draft |
| D-02 | Conformance model and candidate checklist | Work to do |
| D-03 | Basis of listing and whether it appears per entry | Task Force discussion |
| D-04 | Additional status or reason information | Task Force discussion |
| D-05 | Required public or discoverable governance information | Task Force discussion |
| D-06 | Privacy and security disclosures | Task Force discussion |
| D-07 | Assurance handling | Task Force discussion |
| D-08 | Trust Registry User as an umbrella role | Task Force discussion |
| D-09 | Framework ownership and revision process | Work to do |

## 12. References and Document Control

### Framework inputs

- [Trust Registries Track 1 Scope](https://docs.google.com/document/d/1nbVyc8MX42YPPYVvxRL7oE-B1zJ6PnZSqeJIaRR1Nac/edit?usp=drive_link)
- [Track 1 Vocabulary](https://docs.google.com/document/d/1BncGe0UbdwTBEEDDYLQ43qZttXv1LPKeksC2hKOnnoE/edit?usp=drive_link)
- [Start Here: Issuer Trust Registries](https://docs.google.com/document/d/1Pujsh8OtIz1EhuU3FrtDss2rvhGLvcEe3xqhObGAkzY/edit?usp=drive_link)

### Informative conceptual references

- [Cedar Policy Language — How Cedar authorization works](https://docs.cedarpolicy.com/auth/authorization.html), including the Principal–Action–Resource–Context model.
- [Trust Registry Query Protocol (TRQP) v2.0 — Approved](https://trustoverip.github.io/tswg-trust-registry-protocol/approved/), including authorization and recognition queries using Entity, Authority, Action, Resource, and optional context.

### Informative domain references

- ICAO Public Key Directory
- eIDAS and EU Trust Lists
- AAMVA mobile driver's licence and digital-trust services
- NIST SP 800-63 Digital Identity Guidelines
- Trust Over IP Main Glossary

### Document control

- Status: Working draft (v0.1) for GDC Trust Registry Task Force discussion.
- Event target: GDC 2026, Geneva, September 2026.
- Editors/co-leads: Philippe Nieto, Darrell O'Donnell, and Gabriel Marquie.
- Companion: [Issuer Trust Registry Governance Framework (Ayra-layered) v0.1](https://github.com/ayraforum/gdc-trust-registries-tf/blob/main/Track1/governance-framework/ayra-layered-issuer-trust-registry-GF-v0.1.md), to be revisited after this edition is stable.
- Supersedes: [Issuer Onboarding & Governance Framework v0.1](https://github.com/ayraforum/gdc-trust-registries-tf/blob/main/Track1/issuer-onboarding-and-governance-v0.1.md).
- License: to be confirmed by the co-leads.

> **Task Force work item D-09 — Ownership and revision**
>
> **Question:** Who formally owns and maintains this framework, how are revisions proposed and approved, and when does a working draft become an adopted version?
