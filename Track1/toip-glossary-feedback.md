# Feedback on the Trust Over IP Glossary

Status: Working notes from the GDC Trust Registry Task Force, Track 1

Source reviewed: [Trust Over IP Main Glossary v1.0](https://glossary.trustoverip.org/), Public Review Draft 01

## Purpose

These notes identify places where the Trust Over IP glossary could be simpler, clearer, or more broadly applicable to trust registries. They are not a proposed replacement glossary. The aim is to retain useful ToIP concepts while reducing dependencies on specialized terminology and distinguishing concepts that are currently overloaded.

## Definitions That Could Be Simplified or Adjusted

### Trust registry

The [ToIP definition](https://glossary.trustoverip.org/#term:trust-registry) makes "trust graphs" central:

> A registry that serves as an authoritative source for trust graphs or other governed information describing one or more trust communities. A trust registry is typically authorized by a governance framework.

"Trust graph" introduces another specialized concept before the reader can understand the basic function of a trust registry. It also risks suggesting that a graph data structure or graph-based trust model is required.

Suggested simplification:

> **Trust registry** — an authoritative source of governed information about which entities are authorized to perform which actions with respect to which resources under a governance framework.

Trust graphs can remain an example or related concept rather than part of the core definition.

### Trust list

The [ToIP definition](https://glossary.trustoverip.org/#term:trust-list) describes a trust list as a "one-dimensional trust graph." That phrasing makes a simple concept depend on a more complex one.

Suggested simplification:

> **Trust list** — a list published by an authoritative source identifying entities or authorizations that are trusted within a defined context.

A note can explain that a trust list may be represented as a simple trust graph where that model is useful.

### Registry

The [ToIP definition](https://glossary.trustoverip.org/#term:registry) defines a registry as a specialized database. This may be unnecessarily implementation-specific. A registry can be presented through a database, signed publication, distributed service, synchronized list, or other mechanism.

Suggested adjustment:

> **Registry** — a governed collection of identifiable records and the means by which those records are maintained and made available.

### Authority

The [ToIP definition](https://glossary.trustoverip.org/#term:authority) treats an authority as a party whose decisions or rules are followed. In trust-registry discussions, "authority" is also commonly used for the underlying power or mandate under which an entity acts. These meanings should be distinguished.

Suggested approach:

- Retain **authority** for the party or body where that is the intended ToIP usage.
- Add **origin of authority** for the source from which an entity derives its authority, such as law, regulation, or delegation.
- Use **authorization** for the governed permission to perform an action with respect to a resource.

### Authorization

The [ToIP definition](https://glossary.trustoverip.org/#term:authorization) defines authorization as the process of verifying that a requested action or service is approved. This combines the permission with the act of checking it.

Suggested distinction:

> **Authorization** — governed permission for an entity to perform an action with respect to a resource.

> **Authorization check** — the process of determining whether a requested action is authorized for a particular entity and resource.

### Governance framework

The [ToIP definition](https://glossary.trustoverip.org/#term:governance-framework) describes a governance framework as a collection of governance documents. That is useful structurally, but it does not say what those documents govern.

Suggested adjustment:

> **Governance framework** — a collection of governance documents that defines the policies, roles, responsibilities, and processes under which a community or ecosystem is governed.

### Certification

The [ToIP definition](https://glossary.trustoverip.org/#term:certification) is specifically a comprehensive assessment of information-system security controls. In wider trust-registry work, certification also includes external standards-based attestations of organizational, operational, or technical conformance.

Suggested approach:

- Rename the current definition **security certification**, or
- Broaden **certification** to cover an external attestation that specified requirements have been met, with security certification as a subtype.

This also helps distinguish certification from a registry's act of recording an entry.

### Assurance level

The first sentence of the [ToIP definition](https://glossary.trustoverip.org/#term:assurance-level)—a level of confidence in a claim—is broadly useful. The credential-specific explanation then combines identity assurance, credential validity, issuer management, and tamper evidence. Those are related but distinct concerns.

Suggested approach:

- Keep the core definition short: a level of confidence in a claim under a defined assurance scheme.
- Treat identity assurance, authentication assurance, credential integrity, issuer assurance, and federation assurance as distinct applications or subtypes.
- Avoid implying that cryptographic integrity alone establishes the meaning or reliability of a claim.

### Relying party

The [ToIP definition](https://glossary.trustoverip.org/#term:relying-party) is comprehensive but includes "trust graphs" in the primary definition. That dependency is not needed to explain the role.

Suggested simplification:

> **Relying party** — a party that uses claims, credentials, or other governed or verifiable information to make a trust decision.

### Verifiable credential

The [ToIP definition](https://glossary.trustoverip.org/#term:verifiable-credential) defines the term specifically as the W3C data model and representation format. This is appropriate when the capitalized W3C term is intended, but it may be too narrow when a document is discussing verifiable digital credentials more generally.

Suggested approach:

- Retain **Verifiable Credential** for the W3C-defined term.
- Add or reference a broader **verifiable digital credential** definition for digitally signed credentials whose authorship and integrity can be cryptographically verified.

## Definitions That Appear to Be Missing

The following concepts are useful for trust-registry governance and do not appear to have directly corresponding, task-appropriate definitions in the current ToIP glossary.

### Origin of authority

> The source from which an entity derives its authority. An origin may be inherent, such as authority resting on law, or delegated by another authority.

This distinguishes where authority comes from and how it is represented in a registry.

### Mechanism of authority

> The governance arrangement through which independently sourced authority is recorded or represented within a registry, or recognized across an ecosystem boundary.

The mechanism may be unilateral, mutual, or federated. It does not create or transfer the underlying authority.

### Recording

> The registry's act of creating or maintaining an entry under its governance framework.

Recording should not imply that the registry created the underlying authority or that every recorded entity underwent the same vetting process.

### Listing

> The state of an entity or authorization being present in a registry with a current status.

The meaning of a listing depends on the applicable recording path and governance framework; listing does not necessarily imply vetting or approval.

### Recognition

> One registry or ecosystem accepting another registry or authority source for a defined scope.

This should be distinguished from recording or listing within a registry. Recognition is cross-boundary and may be reciprocal.

### Vetting

> Assessment of an entity or its evidence against published criteria where the applicable governance requires it.

Vetting is not required for every recording path. In particular, recording a sovereign issuer and vetting a delegated issuer may have different governance meanings.

### Authorization check

> The process of determining whether an entity is authorized to perform a requested action with respect to a resource.

This allows **authorization** to describe the permission and **authorization check** to describe the evaluation process.

## A Useful Conceptual Sequence

The distinctions above can be tested through a simple sequence:

> An entity derives **authorization** from an **origin of authority**. Where required, it is **vetted**; it is then **recorded** and thereby **listed** in a registry. That registry may in turn be **recognized** by another registry or ecosystem. A relying party uses the resulting governed information when making its own **trust decision**.

Each term describes a different governance function. Keeping them separate avoids implying that a registry grants authority, that all listings carry the same assurance, or that intra-registry recording is the same as cross-ecosystem recognition.
