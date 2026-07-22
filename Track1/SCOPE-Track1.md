# Trust Registries Track 1 — Policy, Taxonomy,  Scope, Onboarding & Governance

Status: Working draft for GDC Trust Registry Task Force discussion

Part of the Global Digital Collaboration Trust Registry Task Force. This is the track's defining document: the scope below sets the boundaries, and everything else is worked within them.

This work is being conducted under the [GDC Trust Registry Task Force Project Charter](https://docs.google.com/document/d/1Ck5c-0HVVoSIpgO95Ib_D9rJP6Kbaz8CAiKmPDZ30j8/edit?tab=t.0).

## Scope

This work is scoped to two sides of the same exchange: **what can an authority do to expose its trust information digitally**, and **what are its options for doing so?** And on the other side: **how do relying parties use that information to make their own trust decisions?**

The initial technical use case is deliberately narrow: a relying party may want to obtain a known list of all relevant issuers before requesting a credential. The governance framework must support that case without being defined by it. It should establish how trust registries anchor issuer authority and support trust-information discovery both **before a transaction** (for example, obtaining or caching a list of recognized issuers) and **during a transaction** (for example, checking an issuer, its scope of authority, and the currency of that information when a credential is presented).

Issuer registration is the initial focus. The framework should describe how issuers can be recognized or vetted, entered into a trust registry, and made discoverable without implying that every registry uses the same onboarding model. This focus does not assume that issuers are the only actors a trust registry may register. Relying parties and other ecosystem participants may also be registered under future or ecosystem-specific governance; v0.1 should neither define those processes nor preclude them.

We are not designing new authorities, new governance bodies, or new vetting processes. The authority already exists — in legislation, regulation, or delegation. The work is limited to how that existing authority makes itself, and the issuers it recognizes, discoverable and checkable in digital form.

An authority's options include, at minimum:

- **Operate its own registry.** The authority publishes its own trust registry and is directly accountable for its answers.  
- **Designate or participate in a shared registry service.** The authority supplies its information to a service operated on its behalf (as member states do with ICAO PKD, North American MDL issuers do with AAMVA, or EU member states do with the EU Trust List). The service operator provides the plumbing; the authority remains the authority.  
- **Point to its basis of authority.** The authority signals how it holds its authority — for example, by referencing the legislation it operates under — rather than proving eligibility to anyone.

Regardless of when or how the information is obtained, a party using a registry needs answers to two basic questions::

1. **Is this issuer authoritative for issuing that kind of credential?** Not just "is the issuer listed," but is it recognized for this credential type, in this jurisdiction, right now.  
2. **Does this registry recognize another trust registry?** A registry can acknowledge other registries as trustworthy sources for questions outside its own scope.

The second question helps the model scale. No single registry can answer for the whole world, and no single root will be accepted by everyone. A relying party may obtain trust information directly, through a synchronized source, or by following a connection from one registry to another until it reaches an authority it trusts. This allows independently governed registries to form a web of trust information rather than requiring one universal list or hierarchy.

Whichever option an authority chooses, the same pattern repeats underneath:

1. A **verifiable digital credential**, signed by an issuer.  
2. An **anchoring to a trust registry**, where the issuer's authority can be checked: who recognized this issuer, for what, and is that recognition current?  
3. A trust decision made by the relying party itself. The registry informs the decision; it never makes it. — including the decision to rely on the registry itself, which is the relying party's own (expressed by which registries it chooses to trust). Nor does the registry establish whether an issuer is telling the truth; that is answered, if at all, by proofing, verification, liability, and consequence elsewhere. The registry answers one bounded question: is this issuer recognized and authorized under published criteria, and is that current.

![The trust pattern, without the wiring diagram](img/00-trust-pattern-plain-language.png)

*The same pattern repeats across use cases: authority stands behind the issuer, the issuer signs the credential, the verifier checks trust information, and the verifier makes the trust decision.*

**The pattern is the work.** This track studies that pattern, and proves it using concrete examples drawn from government-issued personal identity credentials — driver's licenses, national ID cards, passports. The examples keep the work grounded; the pattern is what the deliverable describes. If a proposed feature or requirement does not serve one of these three steps, help an authority exercise one of the options above, or help a verifier/relying party answer one of the two questions, it is out of scope for v0.1.

**Other areas can certainly be worked.** Business identity and business credentials, education credentials, and other domains follow the same pattern — an issuer, an anchoring registry, a relying-party decision. They are not the September examples, but parallel work on them can and should continue against this same pattern; nothing in this scope blocks it. What this scope prevents is the September deliverable absorbing that work before the pattern is proven on the personal identity examples.

## Work Items

### Policy, Taxonomy & Scope

Establishing a "Shared Vocabulary"; drafting the Requirements & Scope Document; defining trust registry policy elements.

- Finalize this scope statement with the co-leads, confirming what is explicitly in and out of scope for the September deliverable.  
- Build the shared vocabulary, and disentangle the terms currently overloaded:  
* **Listing (admission)** — the operational fact of an issuer being present in a registry with current status. Being listed is itself a baseline trust signal (the issuer cleared the registry's published bar); graded assurance, where it exists, sits above that floor.  
* **Authority** — the underlying power behind an issuer. The registry records and surfaces it; it never grants it. Three flavors: *inherent* (a sovereign's, resting on law — recorded, not approved), *delegated* (an authority delegating to a sub-issuer — established by vetting), and *mutual / federated* (peers agreeing a common bar, the body asserting the shared authority on their behalf — e.g. AAMVA and its member jurisdictions, a mutually-agreed authority, not a one-way recognition).  
* **Recognition** — reserved for one ecosystem accepting another's authority across a boundary, for a defined scope (e.g. AAMVA recognizing AustRoads for Australian and New Zealand driver's licences). Scoped and often reciprocal. Do not use "recognition" for the intra-registry admission act.  
* **Certification** — reserved for external, standards-based backing attestations (ISO 27001, SOC 2, ISO 18013 conformance) an entity presents as *evidence* to support its listing. Referenced by the registry, never its own act.  
- \-   
- Define the two relying-party questions precisely as policy elements: what "authoritative for a kind of credential" means (type, claims, jurisdiction, currency), and what it means for one registry to recognize another.  
- Describe how the same governed trust information supports discovery before a transaction — including obtaining a known issuer list — or checks during a transaction, without prescribing the technical query mechanism.  
- Develop the taxonomy of authority exposure options: operate a registry, participate in a shared registry service, or point to a basis of authority.  
  - including a clean three-way split of the overloaded word "certification": recognition (the registry's own attestation that a listed entity meets its bar to be listed — in scope), backing certifications (external, standards-based attestations like ISO 27001 or SOC 2 that an entity presents as evidence — referenced, not our act), and standing audit (continuous independent auditing of operations — out of scope, owned by certification bodies). Reserve the word "certification" for the backing attestations; call the registry's admission act "recording."  
- Apply the scope test to incoming proposals so the September deliverable stays focused on the pattern, proven through the personal identity credential examples — while parallel work in other domains continues against the same pattern.  
- **Conveying** an issuer's assurance — the scheme it operates under, the level within that scheme, and a pointer to the governing authority — so a relying party can request by scheme and level and decide for itself. The registry carries this; it does not define, rank, or reconcile what the values mean across authorities. Making room for assurance is in scope; giving it meaning is not.  
- Apply an access-pattern neutrality test: governance requirements should support the initial known-issuer-set use case without making advance enumeration, a single directory, or transaction-time connectivity mandatory for every implementation.

Out of scope (noted, not ours to define):

- **Wire formats, protocols, and data models** for asking and answering the two relying-party questions. We define what the questions mean as policy; how they are asked and answered technically belongs to the technical track.  
- **A universal taxonomy of credential types or issuers.** The shared vocabulary covers only the terms the scope depends on; cataloguing every credential domain is someone else's encyclopedia.  
- **Assurance-level rankings or comparisons across authorities.** Which authorities a relying party honors, and at what assurance, is its own policy call — ranking sovereigns would cross the sovereignty boundary.  
  - **In scope, by contrast:** *conveying* an issuer's assurance — the scheme it operates under, the level within that scheme, and a pointer to the governing authority — so a relying party can request by scheme and level and decide for itself. The registry carries this; it does not define, rank, or reconcile what the values mean. Making room for assurance is in scope; giving it meaning is not.  
- **Wallet governance and relying-party/verifier registration policy.** Both are real (wallets act as policy enforcement points; cross-border verifier registration is a known blocker) — noted and parked in [Later Phases](https://github.com/ayraforum/gdc-trtf-onboarding-and-governance/blob/main/later-phases/README.md). The issuer-first scope does not preclude trust registries from registering relying parties or other ecosystem actors; it only defers defining their governance and onboarding requirements.

### Onboarding & Governance

Defines principles for issuer onboarding and governance through recognized trust registries, including issuer authority, credential scope, status, conformance evidence, and privacy/security models that support jurisdictional accountability and cross-ecosystem reliance.

- Describe the onboarding path for each authority option — a sovereign lighting up its own registry, or participating in a shared service such as AAMVA, ICAO PKD, or the EU Trust Lists — keeping sovereign recognition (recorded, not approved) distinct from registrar-vetted onboarding for delegated issuers.  
- Define the minimum governance expectations that allow issuers to be registered and their information to remain discoverable and current, while leaving non-issuer registration models open for later work.  
- Work the pattern through the three concrete examples — driver's license, national ID card, passport — including how a credential signals which trust registry it is anchored to.

Out of scope (noted, not ours to define):

- **Registry entry lifecycle governance.** That an issuer's status is current and checkable — active, suspended, revoked, expired — is in scope; a relying party must be able to rely on it. How a registry runs that lifecycle — its internal process for adding, updating, suspending, and revoking entries — is out. Authorities and registry operators do this as a matter of course; we require that status be checkable and go no further into how it is governed.  
- **Registry-to-registry recognition decisions.** How a registry decides which other registries to recognize, and how that recognition is granted or withdrawn. A consideration for any registry operator, not ours to govern — we only ask that the recognition be visible to relying parties.