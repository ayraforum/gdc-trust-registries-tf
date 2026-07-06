# Issuer Onboarding & Governance Framework v0.1

Status: Working draft for GDC Trust Registry Task Force discussion

Event target: GDC 2026, Geneva, September 2026

Track: Trust Registries Track 1 — Policy, Taxonomy & Scope. Onboarding & Governance. The track's defining document, including scope and work items, is [SCOPE-Track1.md](SCOPE-Track1.md).

Co-leads:

- Philippe Nieto, France, Ministère de l’Intérieur
- Darrell O'Donnell, Ayra Association
- Gabriel Marquie, IATA

New to this? Start with [Start Here: Issuer Trust Registries](start-here-issuer-trust-registries.md). This document is the v0.1 detail behind it.

## Purpose

This paper is an early draft that explores the structure of a governance framework that will be derived from. It is still a shared starting point, not a specification and not a finished answer. Its job is to give the working group enough common language to test the model together.

The question is simple: when someone sees a verifiable digital credential (hereafter, credential), how can they check who issued it, what that issuer is recognized to issue, and whether the answer is still current?

The starting slice and its boundaries are set in the [Scope](#scope) section below. Topics deliberately parked — other issuer types, relying-party governance, wallet governance, registry-of-registries governance, and detailed data-model work — live in [Later Phases](https://github.com/ayraforum/gdc-trtf-onboarding-and-governance/blob/main/later-phases/README.md). They matter, but they are not where this first collaboration starts.

## Scope

This framework is worked within the boundaries of the track's [draft scope statement](SCOPE-Track1.md): what an authority can do to expose its trust information digitally, and how relying parties use that information to make their own trust decisions. The scope statement also carries the track's work items.

## Shared Vocabulary

Working definitions for the terms the scope depends on. These are starting points for the group to test, not settled meanings.

- **Verifiable digital credential (hereafter, credential).** A digitally signed set of claims made by an issuer about a subject, whose signature, issuer, and status can be checked.
- **Issuer.** The entity that signs and issues a credential.
- **Authority.** The entity whose mandate — established in law, regulation, or delegation, never by a registry — makes an issuer's credentials meaningful.
- **Trust registry.** A governed, discoverable source where anyone with a stake in a credential can check whether an issuer is recognized, for what, and whether that answer is current — and which other registries this registry recognizes.
- **Relying party.** Anyone who must decide whether to accept a credential. The trust decision is always theirs; a registry informs it, never makes it.
- **Recognized vs. vetted.** A sovereign issuer is recorded, not approved: recognized. A delegated issuer may be assessed by a registrar under published rules: vetted. The same registry data may support both, but the governance meaning is not the same.

## Authority Options

An authority has at least three options for exposing its trust information, and each implies its own onboarding path:

- **Operate its own registry.** The authority publishes its own trust registry under its own law and is directly accountable for its answers. Onboarding is the authority's own act: it lights the registry up and declares what it issues. Recorded, not approved.
- **Designate or participate in a shared registry service.** The authority supplies its information to a service operated on its behalf — as member states do with ICAO PKD, North American MDL issuers do with AAMVA, or EU member states do with the EU Trust Lists. The operator provides the plumbing; the authority remains the authority. Onboarding should be simple and welcoming — a service arrangement, never an application to be judged.
- **Point to its basis of authority.** The authority signals how it holds its authority — for example, by referencing the legislation it operates under — rather than proving eligibility to anyone.

Delegated issuers follow a different path: a registrar may assess evidence and approve or reject participation under published rules. That vetted path can share registry data with the recognized paths above, but the two must never be confused.

## Core Model

A trust registry does not create an issuer's authority. It also does not create the signing keys, identifiers, endpoints, or status services behind a credential. Those remain under the issuer's control. The registry makes the relevant parts discoverable and keeps them usable for people who need to rely on a credential.

It also does not make the trust decision. Registry answers are evidence inputs, not acceptance rules. They inform a verifier or relying party's decision about whether to accept a credential, but they do not make that decision for them.

The basic loop has four parts:

1. **Get in.** An issuer is recognized in the registry. For a government, that means declaring what it issues, while its signing keys or other trust signals are listed or made discoverable. Recorded, not approved.
2. **Stay current.** The registry keeps the issuer's information current, including whether the issuer, key, credential type, or status service is active, suspended, revoked, expired, or otherwise no longer usable.
3. **Check.** Before making the trust decision, a relying party can confirm that the issuer is recognized, the credential or claim is in scope, the technical signal belongs to that issuer, and the answer is current.
4. **Find the right registry.** The relying party needs a dependable signal for which registry or authority source to check in the first place.

This is the same pattern people already know from trust lists such as ICAO PKD. The v0.1 work is about making the pattern clear enough to test across government-issued identity credentials, not about solving every registry model at once.

## Sovereignty Boundary

This boundary is critical.

A government's authority to issue passports, national IDs, civil-status documents, or similar credentials comes from that country's own law. Nothing — no registry, registrar, industry body, trust framework, or cross-ecosystem layer — grants it, ratifies it, or sits in judgment of it.

The registry's job is narrower. It can help answer whether this is really the government authority, what that authority says it issues, where the governance basis can be found, and whether the relevant information is current. It must not become a verdict on whether a sovereign is allowed to issue under its own law.

Put simply: a government is recognized and made discoverable through the registry. It is never vetted or approved by it.

For delegated or registrar-governed issuers, the process can be different. A registrar may assess evidence and approve or reject participation under published rules. The same registry data may support both models, but the governance meaning is not the same.

## What A Registry Answer Should Make Clear

A registry answer should be useful to anyone who has a stake in the credential: a verifier, a wallet, the holder receiving it, or another party that needs to understand whether the issuer can be relied on.

At this stage, the answer should make six things clear:

- **Who is the issuer?** Identify it clearly enough that a relying party is not guessing.
- **What can this issuer issue?** Show the credential types, claims, or jurisdictions that are in scope.
- **Which technical signals belong to it?** List or point to the signing keys, identifiers, endpoints, or status services under the issuer's control.
- **Is the answer current?** Make clear whether the relevant issuer, key, credential type, claim, or status service is active and usable.
- **Who is accountable for the registry answer?** Say whether the registry is authoritative itself, points to another authority source, or uses a registrar model.
- **Which other registries does it recognize?** Point to the registries this registry acknowledges as trustworthy sources for questions outside its own scope. This is what lets a relying party traverse from any credential, registry to registry, until it reaches an authority it trusts — the web of registries.

These checks are about authenticity, scope, currency, and discoverability. They are not a place to adjudicate sovereign legitimacy. The trust decision remains with the relying party. A registry can inform that decision, but it does not make it, and it does not require any relying party to accept a credential.

## Registry Governance

Governance is not only about listing an issuer. It is about who operates the registry, what claim the listing makes, and who keeps the answer current.

For v0.1, the governance model asks registries to make a few things visible. Visibility is the whole ask: we do not define how a registry runs these functions — that is the operator's own business — only that a relying party can see the answers.

The things to make visible:

- Who operates the registry or is responsible for it.
- Whether the registry is authoritative in its own right or points to another authority source.
- Whether a registrar or assessor is involved.
- How entries are added, updated, suspended, revoked, or removed.
- How issuer-controlled technical signals are recorded, referenced, or verified.
- How relying parties discover the registry and read its answer.

For sovereign-operated or sovereign-designated registries, the governance answer may simply be the sovereign and its law. For industry, professional, commercial, or delegated registries, the governance evidence may need to be more explicit.

## Decisions To Make Together

This is the small set of questions the v0.1 paper exists to work through together. None of them is settled. The starting points below are just a place to begin, so the group has something concrete to test and improve.

1. **Recognized vs. vetted.** *Starting point:* keep sovereign recognition and delegated registrar vetting clearly distinct in process. *Still open:* should the registry data also distinguish the two, and if so, how do we do that without ranking or second-guessing sovereign issuers?
2. **Who runs the registry, and who's accountable.** *Starting point:* a sovereign can operate or designate its own registry; industry or delegated models can also exist; the cross-ecosystem layer should discover and point to those sources rather than govern them. *Still open:* when is a registry authoritative, when is it expressing authority from somewhere else, and who is responsible for its operation?
3. **What happens when a check fails.** *Starting point:* agree baseline handling for a few clear failures, such as unknown issuer, suspended issuer, or credential out of scope. *Still open:* which failures should mean refusal, a warning, cached reliance, or an ecosystem-specific policy call?
4. **Freshness and outages.** *Starting point:* the ecosystem sets the freshness requirement, with cached data allowed within limits when a registry is briefly unavailable. *Still open:* how current must issuer, credential, claim, key, endpoint, and status-service information be for real border, travel, and relying-party workflows?
5. **How precisely authority is scoped.** *Starting point:* express authority by credential type, by claim, and by jurisdiction. *Still open:* is that enough for v0.1, or does the first version also need schemas, assurance levels, subject populations, technical signals, and registry discovery signals?

## What Is Deferred

This v0.1 paper stays small on purpose. Detailed evidence lists, candidate status values, failure behavior, discovery inputs, claim-scope examples, data-model notes, and the longer open-question list live in [Issuer Trust Registry Operational Detail](https://github.com/ayraforum/gdc-trtf-onboarding-and-governance/blob/main/later-phases/issuer-trust-registry-operational-detail.md).

