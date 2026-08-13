# Issuer Trust Registry Governance Framework (Ayra-layered) v0.1

Status: Working draft for GDC Trust Registry Task Force discussion. A shared starting point, not a specification.

Event target: GDC 2026, Geneva, September 2026

Track: Trust Registries Track 1. Defining document: [SCOPE-Track1.md](../SCOPE-Track1.md).

This is the **Ayra-layered** edition. It expresses the same domain as the [standalone edition](issuer-trust-registry-governance-framework.md), but as a **child governance framework anchored on the Ayra Trust Network Governance Framework (ATNGF)**. It inherits the ATNGF base rather than restating it, and adds only what is specific to government issuers of identity documents. Where the domain narrative is shared, this document points to the standalone edition rather than duplicating it, so the two never drift. For why two editions exist, see the [governance-framework README](README.md).

## 1. Conformance Statement

> This governance framework inherits from and extends the Ayra Trust Network Governance Framework (ATNGF). All provisions of the ATNGF apply unless explicitly extended in this document. This governance framework self-asserts conformance to the ATNGF and its Network Invariants. It has not been registered, verified, or recognized by any authority (Ayra Recognition Level ARL-0).

Anchoring on the ATNGF means adopting the base and Ayra's stewardship of it. It does **not** put Ayra in charge of any registry or issuer. Ayra is the steward and home where the base framework is maintained, and the neutral convener of cross-ecosystem recognition. The governing and administering authority for any implementation under this framework is named in Section 4, and is the sovereign, regional, or industry body that actually holds the authority.

## 2. Inheritance

This framework inherits, by reference and without restating them:

- The **Downstream Ayra Principles** (ATNGF Section 7), and does not contradict the Ayra-specific Principles.
- The **Network Invariants** (ATNGF Section 10): individual sovereignty and non-correlation; the minimal interoperability surface (resolvable identifiers, TRQP); transparency and publication; and non-contradiction of the Ayra Principles. This framework may strengthen an invariant but never relaxes one or declares it out of scope.
- The **abstract role and stakeholder categories** (ATNGF Sections 13–14) and the **design tenets** (ATNGF Section 8), including disclosure over prescription and satisfy-by-equivalence.
- The **revision process** (ATNGF Section 17).

The government-identity-issuer specifics added on top are the whole of this document below.

## 3. Purpose

To make government issuers of identity documents — and the authority behind them — discoverable and checkable through trust registries, so a relying party can determine whether an issuer is authoritative for a credential and whether that answer is current. This purpose is complementary to, and consistent with, the Ayra purpose as defined in the ATNGF, narrowed to the government-identity-issuer domain.

## 4. Governing and Administering Authority

The governing and administering authority under this framework is **the authority that holds the underlying power** — a national passport authority, a driver-licensing agency, a civil-registration body, or a regional or industry body designated by them. That authority governs its own registry under its own law or mandate.

Ayra is not that authority. Ayra stewards the ATNGF base and convenes cross-ecosystem recognition. A sovereign is an appropriately-centralized point of real control that the decentralized network accommodates natively; anchoring on the ATNGF does not move that control to Ayra.

## 5. Domain Additions

These are the provisions the base does not carry. The full narrative is in the standalone edition; the load-bearing additions are:

- **Sovereignty boundary as a profile constraint.** A government issuer is *recorded* and made discoverable; it is never *vetted* or approved by a registry. A registry MUST NOT record a verdict on whether a sovereign is entitled to issue under its own law. See standalone [Section 6](issuer-trust-registry-governance-framework.md#6-registry-models-and-the-sovereignty-boundary).
- **Recorded vs. vetted by origin of authority.** Inherent (sovereign) authority is recorded; delegated authority may be vetted against published criteria. Same registry data, same decentralized model; the governance meaning differs by origin of authority.
- **Three authority options.** Operate own registry; participate in a shared service (ICAO PKD, AAMVA, EU Trust Lists); or point to the basis of authority. See standalone [Section 6](issuer-trust-registry-governance-framework.md#6-registry-models-and-the-sovereignty-boundary).
- **Three worked examples.** Passport, national ID card, driver's license. See standalone [Section 9](issuer-trust-registry-governance-framework.md#9-worked-examples).

## 6. Extension Points

Addressed using satisfy-by-equivalence (native / by reference / out of scope with rationale).

**MUST-DEFINE**

- **Purpose** — Section 3 above.
- **Stakeholders** — government identity authorities and their designees map to the ATNGF *Organizations* and *Ecosystem Operators* categories; natural persons (credential holders) map to *Natural Persons*.
- **Roles** — Authority, Issuer, Trust Registry Operator, Relying Party / Verifier, Identifier Controller (standalone [Section 4](issuer-trust-registry-governance-framework.md#4-roles)) map to the ATNGF abstract roles *Authority*, *Trust Registry Operator*, *Relying Party*, and *Identifier Controller*.
- **Glossary** — inherits ATNGF and ToIP terms; adds the domain terms in the track [Vocabulary](../taxonomy-and-vocabulary.md).

**MUST-DISCLOSE** (see the standalone [Governance Disclosures and Task Force Questions](issuer-trust-registry-governance-framework.md#8-governance-disclosures-and-task-force-questions))

- **Recognition** — which other registries a registry recognizes; visible to relying parties.
- **Trust-registry governance** — operator, accountability, registrar involvement, entry lifecycle, verification-material handling. For sovereign-operated registries the answer may be *by reference* to the sovereign and its law.
- **Trust assurance** — the registry conveys scheme and level and a pointer to the governing authority; it does not define or rank. National regimes (eIDAS, NIST 800-63) are referenced *by equivalence*, not restated.

**Out of scope for v0.1 (rationale)** — credential wire formats, schemas, and lifecycle mechanisms belong to the technical track, so this framework does not adopt the Credential Exchange Profile in v0.1. Registry-entry lifecycle internals and registry-to-registry recognition *decisions* are noted for later phases; only that status and recognition be *visible* is required here.

## 7. Recognition Level Mapping

Under the ATNGF recognition levels, government issuers sit as follows, inherited from the base rather than redefined:

- **Sovereign recording** corresponds to a listing whose accountability is the sovereign and its law. The sovereign is recorded, not graded.
- **Delegated vetting** corresponds to a registrar assessing a delegated issuer against published criteria before listing.

Movement up the ATNGF levels (registered, recognized, independently assured) is opt-in and governed by the base; this framework does not redefine it.

## 8. Impact Note

What this child GF **adds**: the sovereignty boundary as a constraint, recorded-vs-vetted by origin of authority, the three authority options, and the three worked examples. What it **inherits**: the principles, the Network Invariants, the abstract roles and stakeholders, the design tenets, satisfy-by-equivalence, TRQP as the queryable surface, and the revision process. The domain footprint is small on purpose; the base carries the weight.

## Document Control

- Status: Working draft (v0.1) for GDC Trust Registry Task Force discussion.
- Base: [Ayra Trust Network Governance Framework](https://github.com/ayraforum/ayra-trust-network-GF).
- Companion: [Issuer Trust Registry Governance Framework v0.1](issuer-trust-registry-governance-framework.md).
- License: to be confirmed by the co-leads.
