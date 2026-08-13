# Standalone Governance Framework Alignment Plan

Status: Working change plan for Track 1 document alignment

Baseline: [Issuer Trust Registry Governance Framework v0.1](https://github.com/ayraforum/gdc-trust-registries-tf/blob/main/Track1/governance-framework/issuer-trust-registry-governance-framework.md)

## 1. Purpose

The standalone governance framework has been revised around a simpler model and a clearer governance boundary. The other Track 1 documents still reflect earlier assumptions. This plan identifies the changes needed to make the document set coherent without prematurely resolving matters that the Task Force still needs to discuss.

This is a change plan, not a replacement governance framework. Proposed edits should preserve the purpose and audience of each document:

- **SCOPE-Track1.md** defines the work and its boundaries.
- **Start Here** explains the work in plain language.
- **Taxonomy and Vocabulary** supplies shared definitions.
- The **standalone framework** is the complete neutral baseline.
- The **Ayra-layered framework** is a later expression of the stable standalone framework against the ATNGF.
- README files provide navigation and accurately describe document status.
- Superseded or working-note documents remain source material and should not compete with current documents.

## 2. Alignment Baseline

The following points should be treated as the baseline when revising the surrounding documents.

1. A trust registry supports two governed interactions, not one sequential loop:
   - **Record & Maintain** governed information.
   - **Query** governed information.
2. A trust registry returns an authorization or recognition determination. The party using the information makes the trust or credential-acceptance decision.
3. An **Authorization** is expressed as an **Action + Resource**. Resource syntax such as `passport.ca` or `driverlicense.au.nsw` is illustrative, not prescribed.
4. A determination applies at a point in time. A requested time may be supplied; otherwise, the default is now. Other context may also be supplied.
5. A negative determination means that the queried entity does not hold the requested Authorization. Inability to answer is a different outcome and must not be represented as negative.
6. Additional status or reason information may be useful, but required status semantics remain a Task Force discussion.
7. There are two registry models:
   - an authority-operated registry; and
   - a shared registry service.
8. Authority evidence, such as a link to legislation, a mandate, or a delegation, is optional under either model. It is not a third model.
9. A registry does not grant, approve, reject, or adjudicate a sovereign's underlying authority. A registry service may still authenticate sources and apply participation, conformance, membership, or listing criteria.
10. Refusing or removing a service listing does not negate the underlying authority.
11. Internal approval, workflow, staffing, and registry lifecycle processes are outside the framework's scope.
12. The governance role of the **Identifier Controller** is in scope at a non-technical level. Identifier formats, key custody, rotation, and other technical mechanisms are not.
13. Wallets, Relying Parties, and Verifiers may use a trust registry. The framework does not define their registration or management by a trust registry.
14. TRQP and Cedar PARC are informative conceptual references. Neither is required for conformance.
15. Conformance is a work item with provisional recommendations, not a completed specification.
16. Required public information, privacy and security disclosures, assurance handling, and the proposed Trust Registry User role remain Task Force discussions.

## 3. Priority and Sequence

The recommended order avoids revising explanatory documents against terminology that is still changing.

1. **Align SCOPE-Track1.md.** Correct the governing boundaries and work items first.
2. **Align taxonomy-and-vocabulary.md.** Establish the terms used by every other current document.
3. **Rewrite Start Here.** Produce a short plain-language explanation using the aligned scope and vocabulary.
4. **Update navigation and status documents.** Revise both README files and strengthen the superseded-document notice.
5. **Review working notes and glossary feedback.** Mark historical assumptions and carry forward only still-relevant material.
6. **Revisit the Ayra-layered edition.** Do this only after the standalone document set is stable.

## 4. Changes to SCOPE-Track1.md

File: [SCOPE-Track1.md](https://docs.google.com/document/d/1nbVyc8MX42YPPYVvxRL7oE-B1zJ6PnZSqeJIaRR1Nac/edit?usp=drive_link)

### 4.1 Replace three authority options with two registry models

Current issue: The scope presents “point to its basis of authority” as a third authority option and later asks for a three-option taxonomy.

Proposed change:

- Define the two models as authority-operated registry and shared registry service.
- Move links to legislation, mandates, delegations, or other authority evidence into a separate paragraph.
- State that authority evidence is optional and may accompany either model.
- Avoid framing the choice of registry model as an onboarding path.

### 4.2 Replace the repeating three-step pattern with two interactions and an external decision

Current issue: The scope describes a repeating sequence that combines registry activity with the relying party's decision.

Proposed change:

- Describe **Record & Maintain** and **Query** as the two registry interactions.
- State separately that the Trust Registry User applies the result under its own policy.
- Retain the principle that the registry informs but does not decide.
- Use the ecosystem diagram as the primary visual model.

### 4.3 Define the two query questions consistently

Proposed change:

- Express authorization as whether Authority A says Entity B holds an Authorization for Action X and Resource Y at the applicable point in time.
- Express recognition as whether Authority A recognizes Authority or Registry B as authoritative for the same Action + Resource scope at the applicable point in time.
- State that authorization and recognition are different questions using the same scoped pair.
- State that inability to answer is distinct from a negative determination.

### 4.4 Remove mandatory lifecycle-state language

Current issue: The scope requires status to be checkable through states such as active, suspended, revoked, and expired.

Proposed change:

- Replace the state list with the baseline affirmative or negative authorization determination at a point in time.
- Treat additional status and reason information as Task Force discussion D-04.
- Keep internal processes for adding, updating, suspending, revoking, expiring, or removing information out of scope.
- Do not prescribe how operators manage currency internally.

### 4.5 Replace registrar/vetting framing with neutral service-criteria language

Current issue: The scope divides sovereign recording from registrar-vetted recording and risks implying that a trust registry subordinates external bodies or judges sovereign authority.

Proposed change:

- State that sovereign authority is not adjudicated by a registry.
- State separately that an operator or applicable body may authenticate a source and apply participation, membership, conformance, or listing criteria.
- Do not define Registrar as a framework role.
- Make clear that a service-listing decision and the underlying authority are different matters.

### 4.6 Update work items

Replace or revise work items so they cover:

- Action + Resource authorization and recognition semantics.
- Point-in-time evaluation and optional context.
- The two registry models and optional authority evidence.
- Governance accountability for Authority, Listed Entity, Trust Registry Operator, and Identifier Controller.
- Required public or discoverable information as an open Task Force item.
- Additional status or reason information as an open Task Force item.
- Privacy and security disclosures as an open Task Force item.
- Assurance conveyance as an open Task Force item.
- Conformance as work to do, with equivalent approaches allowed.

### 4.7 Preserve these scope boundaries

- Government issuers of passports, national identity credentials, and driver's licences remain the v0.1 proving examples.
- Wire formats, protocols, bindings, and data models remain outside Track 1 scope.
- Management or registration of Wallets, Relying Parties, and Verifiers remains outside scope.
- The process by which a registry grants or withdraws recognition remains outside scope; the meaning of a recognition determination remains in scope.
- Access-pattern neutrality remains: advance enumeration, synchronization, referrals, and transaction-time queries may all be supported.

## 5. Changes to Start Here

File: [start-here-issuer-trust-registries.md](https://docs.google.com/document/d/1Pujsh8OtIz1EhuU3FrtDss2rvhGLvcEe3xqhObGAkzY/edit?usp=drive_link)

### 5.1 Replace the four-step loop

Current issue: “Establish authorization → Maintain currency → Make trust information available → Use it in a trust decision” implies one workflow and assigns the external decision to the registry loop.

Proposed replacement:

- Explain **Record & Maintain** as how governed information is made available and evolves.
- Explain **Query** as how a party asks an authorization or recognition question.
- Explain the party's decision as a separate activity outside the trust registry.
- Use the ecosystem diagram instead of a loop diagram.

### 5.2 Simplify the plain-language query explanation

Suggested structure:

1. Who or what is being asked about?
2. What Action is being evaluated?
3. What Resource does the Action apply to?
4. At what point in time?
5. Is the determination affirmative, negative, or unavailable?

Use examples such as:

- Is this Issuer authorized to `issue` `passport.ca` now?
- Does AAMVA recognize Austroads as authoritative for `issue` on `driverlicense.au` now?

Make clear that these are illustrative names and resource forms.

### 5.3 Refine the sovereignty explanation

Current issue: “never vetted or approved” is too broad when applied to service participation rather than underlying authority.

Proposed change:

- Say that a registry never adjudicates whether a sovereign possesses authority under its own law.
- Add that a service may authenticate the source and apply its own listing or participation criteria.
- Explain that failure to meet service criteria does not remove the sovereign's authority.

### 5.4 Replace the status-state list

- Remove the implication that active, suspended, revoked, and expired are the required common state model.
- Explain that the baseline answer is whether the Authorization applies at the relevant point in time.
- Note that additional status or reason information is still being discussed.

### 5.5 Replace the current decision list

The Start Here decision list should be a short, curated subset of the framework register, not an independent list. Suggested items:

- What public governance information must a registry disclose?
- Should the basis of a listing be visible per entry?
- Is additional status or reason information required?
- What privacy and security disclosures belong in the common framework?
- How much assurance information belongs in v0.1?
- Is Trust Registry User useful as an umbrella role?
- What should eventual conformance cover?

Correct the current count and remove old questions that imply fixed failure states, freshness rules, or a single onboarding process.

### 5.6 Correct navigation

- Replace the malformed `http://SCOPE-Track1.md` link with a relative repository link.
- Link directly to the standalone framework as the detailed current document.
- Make clear that the Ayra-layered edition is deferred pending alignment.

## 6. Changes to Taxonomy and Vocabulary

File: [taxonomy-and-vocabulary.md](https://docs.google.com/document/d/1BncGe0UbdwTBEEDDYLQ43qZttXv1LPKeksC2hKOnnoE/edit?usp=drive_link)

### 6.1 Add or revise core terms

Add aligned definitions for:

- **Listed Entity**
- **Point in time**
- **Context**
- **Identifier Controller**
- **Trust Registry Operator**
- **Recognized Trust Registry**
- **Trust Registry User**, explicitly marked as proposed pending D-08
- **Determination**, if a neutral umbrella term is useful for authorization and recognition answers

Revise these existing definitions:

- **Authorization:** a governed statement that an entity may perform an Action with respect to a Resource.
- **Listing:** presence in a registry, without implying current status, vetting, approval, or a universal listing basis.
- **Recognition:** acknowledgment of another authority or registry for a defined Action + Resource scope; it may be unilateral or reciprocal.
- **Resource:** do not imply a required syntax; add illustrative `Type.Jurisdiction` examples.
- **Recording:** creating or maintaining governed information, not a one-time onboarding event.

### 6.2 Remove the current Onboarding definition

Current issue: The definition says vetting occurs as part of onboarding, contains a typographical error, and conflicts with the Record & Maintain model.

Proposed change:

- Remove Onboarding as a core framework term, or define it only as ecosystem-specific terminology that this framework does not standardize.
- Use Record & Maintain for the governed interaction.

### 6.3 Remove the forced linear sequence

Current issue: The closing paragraph says authority is vetted, recorded, listed, and then recognized as a single sequence.

Proposed change:

- Replace it with a relationship-oriented explanation: an Authority stands behind an Authorization; a registry records governed information about a Listed Entity; a user queries authorization or recognition; the user makes its own decision.
- Keep vetting or assessment conditional on applicable service criteria rather than a universal step.

### 6.4 Normalize style

- Use consistent capitalization for defined terms.
- Use one spelling convention for driver's licence/licence throughout the Track 1 documents.
- Remove the stray trailing list marker.
- Keep ToIP-derived definitions clearly attributed.

## 7. Changes to README Files

### 7.1 Track 1 README

File: [README-Track1.md](https://github.com/ayraforum/gdc-trust-registries-tf/blob/main/Track1/README-Track1.md)

Proposed change:

- Retain the reading order: Start Here → Scope → Vocabulary → standalone framework.
- Describe the standalone framework as the current neutral baseline.
- Mark the Ayra-layered edition as pending revision rather than equivalent current content.
- Replace “authority options” and “core model” wording with the two registry models and the Record & Maintain / Query model.
- Make clear that the earlier onboarding framework is superseded source material.

### 7.2 Governance-framework README

File: [governance-framework/README.md](https://github.com/ayraforum/gdc-trust-registries-tf/blob/main/Track1/governance-framework/README.md)

Current issue: It says the two editions presently say the same thing and cannot drift, but they have drifted.

Proposed change:

- State that the standalone edition is the current source of truth.
- Label the Ayra-layered edition as awaiting alignment after the standalone stabilizes.
- Remove the claim that the editions currently say the same thing.
- Replace “authority options” with “registry models and optional authority evidence.”
- Avoid implying that TRQP is inherited as a mandatory query surface unless that is specifically an ATNGF requirement being described only for the Ayra-layered edition.

## 8. Treatment of the Superseded Framework

File: [issuer-onboarding-and-governance-v0.1.md](https://github.com/ayraforum/gdc-trust-registries-tf/blob/main/Track1/issuer-onboarding-and-governance-v0.1.md)

This file is already marked superseded and should not be substantively rewritten. Doing so would create another document to maintain.

Proposed change:

- Strengthen the notice to state that its three authority options, four-part loop, status-state model, registrar framing, and disclosure checklist are historical source material and are not the current baseline.
- Link directly to the standalone framework and this alignment plan.
- Optionally move it into an archive or source-material folder once repository conventions are agreed.

## 9. Treatment of Other Working Documents

### 9.1 Session description

File: [session-day2-the-pattern-that-repeats.md](https://github.com/ayraforum/gdc-trust-registries-tf/blob/main/Track1/session-day2-the-pattern-that-repeats.md)

The session description is broadly compatible. During its next editorial pass:

- Prefer “authorized for this Action and Resource at the relevant point in time” over “recognized to issue this” where precision matters.
- Preserve its cross-domain framing; it need not carry the full governance model.
- Link to the standalone framework if supporting material is added.

### 9.2 ToIP glossary feedback

File: [toip-glossary-feedback.md](https://github.com/ayraforum/gdc-trust-registries-tf/blob/main/Track1/toip-glossary-feedback.md)

This is feedback/source material, not a current normative document.

Proposed change:

- Add a note identifying the date and the baseline from which the feedback was prepared.
- Review “current status,” sovereign/delegated vetting, and the closing linear sequence before submitting or reusing the feedback.
- Align any retained definitions with the updated Track 1 vocabulary.

### 9.3 Diagram assets

Files: `img/04-core-model-loop.svg` and `img/04-core-model-loop.png`

The old loop assets are no longer referenced by the standalone framework.

Proposed change:

- Retain them temporarily while document alignment is underway.
- Remove or archive them after confirming that no presentation or external document still depends on them.
- Continue using `img/03-ecosystem-overview.svg` as the editable source and regenerate its PNG whenever the SVG changes.

## 10. Deferred Ayra-Layered Revision

File: [governance-framework/ayra-layered-issuer-trust-registry-GF-v0.1.md](https://github.com/ayraforum/gdc-trust-registries-tf/blob/main/Track1/governance-framework/ayra-layered-issuer-trust-registry-GF-v0.1.md)

Do not revise this edition in the first alignment pass. Revisit it after the Scope, Vocabulary, Start Here, and standalone framework are mutually consistent.

The later revision will need to:

- Replace three authority options with two registry models plus optional authority evidence.
- Remove the sovereign-recorded/delegated-vetted split as a universal model.
- Preserve the distinction between sovereign authority and service listing criteria.
- Update all standalone section references and anchors.
- Remove or reconsider mandatory disclosure claims while D-05 and D-06 remain open.
- Align its roles with Listed Entity and the non-technical Identifier Controller accountability.
- Explain whether TRQP is required by the ATNGF layer while remaining informative in the neutral standalone framework.
- Reconcile its conformance and recognition-level claims with the standalone conformance work item.
- Confirm which provisions are genuinely inherited from ATNGF and which are domain-specific additions.

## 11. Task Force Items That Must Remain Visible

Document alignment must not make the following open matters appear settled:

| ID | Topic | Treatment during alignment |
| --- | --- | --- |
| D-02 | Conformance | Keep as work to do; retain provisional recommendations only. |
| D-03 | Basis of listing | Present the starting position and per-entry question. |
| D-04 | Additional status or reason information | Preserve the affirmative/negative baseline and leave additions open. |
| D-05 | Required public information | Do not turn the candidate list into mandatory disclosure. |
| D-06 | Privacy and security disclosure | Present as an idea for Task Force development. |
| D-07 | Assurance | Allow conveyance as a starting position; do not define or rank schemes. |
| D-08 | Trust Registry User | Use only as a proposed umbrella role until decided. |
| D-09 | Ownership and revision | Keep visibly unresolved in document control. |

## 12. Completion Checklist

The alignment pass is complete when:

- No current document describes authority evidence as a third registry model.
- No current document presents Record & Maintain, Query, and the external decision as one required loop.
- Authorization and recognition consistently use Action + Resource and a point in time.
- Negative and unavailable outcomes are consistently distinguished.
- No current document mandates a shared lifecycle status enumeration.
- Sovereign authority is consistently separated from service participation and listing criteria.
- Registrar is not introduced as a core governance role.
- Identifier Controller has a non-technical role and accountability definition.
- Wallets, Relying Parties, and Verifiers are shown as possible registry users without implying they are managed by the registry.
- TRQP and Cedar remain informative in the standalone document set.
- Every unresolved item is visibly marked as Task Force discussion or work to do.
- README descriptions match the actual status of the standalone and Ayra-layered editions.
- Current-document links and section anchors resolve.
- The obsolete loop diagram is either archived or confirmed safe to remove.
