# Vocabulary

* **Action** — what an entity is authorized to do with respect to a resource, such as issuing a credential.  
* **Assurance** — a level of confidence in a claim under a defined assurance scheme. A registry conveys the scheme and level; it does not define, rank, or reconcile assurance across authorities.  
* **Authority** — the power under which an entity may perform an action with respect to a resource.  
* **Authorization** — the governed permission for an entity to perform an action with respect to a resource.  
* **Certification** — an external, standards-based attestation, such as ISO 27001, SOC 2, or ISO 18013 conformance, that an entity presents as evidence. A registry may reference a certification but does not perform it.  
* **Entity** — a person, organization, system, or other actor whose authorization is described.  
* **Governance framework** — a collection of governance documents that defines the policies, roles, responsibilities, and processes under which a community or ecosystem is governed.  
* **Issuer** — a role an entity performs by asserting claims and issuing a digitally signed credential containing those claims.  
* **Issuer identifier** — an identifier used to distinguish an issuer within a defined context.  
* **Listing** — the state of an entity or authorization being present in a registry with a current status. A listing is a governed trust signal, but its meaning depends on the applicable recording path and governance framework; it does not necessarily imply vetting or approval.  
* **Mechanism of authority** — the governance arrangement through which independently sourced authority is recorded or represented within a registry, or recognized across an ecosystem boundary. The mechanism may be *unilateral*, *mutual*, or *federated*. It determines who records or accepts whose authority, and under what criteria; it does not create or transfer the underlying authority. For example, AAMVA may represent or administer an arrangement among member jurisdictions without becoming the origin of their statutory authority to issue driver's licences.  
* **Onboarding** \- the process for an entity to request Listing in a Trust registry. Vetting is happening as part of teh onboarding process  
* **Origin of authority** — the source from which an entity derives its authority. The origin may be *inherent* (for example, a sovereign authority resting on law) or *delegated* (an authority empowering another entity to act). A registry records and surfaces the origin; it never grants it.  
* **Recording** — the registry's act of creating or maintaining an entry under its governance framework. Recording does not itself create the underlying authority.  
* **Recognition** — one registry or ecosystem accepting another registry or authority source for a defined scope. Recognition is often reciprocal; it is not the intra-registry recording act.  
* **Relying party** — a party that uses claims, credentials, or other governed or verifiable information to make a trust decision.  
* **Resource** — the thing to which an authorization applies, such as a credential type or claim.  
* **Trust decision** — a party's decision about whether to rely on governed information in a particular interaction or transaction involving real or perceived risk. A registry informs the decision but does not make it.  
* **Trust registry** — an authoritative source of governed information about which entities are authorized to perform which actions with respect to which resources under a governance framework.  
* **Verifiable digital credential (credential)** — a digitally signed set of claims made by an issuer about a subject, whose signature, issuer, and status can be checked.  
* **Verification material** — cryptographic material or a reference to cryptographic material used to verify issuer-controlled signatures or proofs. It may be represented through public keys, certificates, DID verification methods, or other governed mechanisms.  
* **Verifier** \- a role within the ecosystem of requesting and verifying the credential. May be same as Relying Party for purpose of this task force (i.e. differentiating doesn’t add to the work).  
* **Vetting** — assessment of an entity or its evidence against published criteria where the applicable governance requires it.

***Source note:** The definitions of assurance, governance framework, issuer, relying party, and trust decision are adapted from the [Trust Over IP Main Glossary v1.0](https://glossary.trustoverip.org/), Public Review Draft 01\. The trust registry definition retains ToIP's concepts of an authoritative source, governed information, and authorization by a governance framework, while expressing the registry's scope directly in terms of entities, actions, and resources rather than requiring the term "trust graph." Other definitions are working definitions developed for this task force.*

Put together, these terms describe a simple sequence: an issuer derives **authorization** from an **origin of authority**. Where required, it is **vetted**; it is then **recorded** and thereby **listed** in a registry. That registry may in turn be **recognized** by another registry or ecosystem.

* 