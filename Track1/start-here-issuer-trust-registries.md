# Start Here: Issuer Trust Registries

Status: Plain-language introduction to the Onboarding & Governance work of Trust Registries Track 1\. This is something we're building together — a shared starting point, not a finished answer. The scope is defined in the Track 1 Scope document.

Co-leads (Track 1):

- David Brudnicki, Apple  
- Philippe Nieto, France, Ministère de l’Intérieur  
- Darrell O'Donnell, Ayra Association  
- ...

## How to read this

Start here, not with the full framework. In about two pages, this explains what an issuer trust registry is, why it matters, and the handful of decisions we still need to make together. Where you see a position stated, read it as where the thinking has got to so far — a draft to push on, not a verdict. It will change as we work. When you want the detail, the links will take you there.

## The problem, using something we all rely on

Think about a passport at a border or at airline check-in. Trusting it requires more than reading its contents: the relying system must confirm that it came from the appropriate passport authority and that the relevant trust information is still usable. The ICAO Public Key Directory is a well-established example of infrastructure that supports these checks by making participating countries’ passport-signing information available to relying systems.

This example demonstrates part of the broader trust-registry problem. Across credential ecosystems, relying parties need governed information about who an issuer is, what it is recognized to issue, who stands behind that recognition, and whether the information is current. Different ecosystems may publish and consume that information in different ways.

Many of you already know that pattern as a trust list, through ICAO PKD and similar travel-sector infrastructure. "Trust registry" is really just shared language for talking about how the same idea could extend to other credentials.

That is the core governance function. An issuer trust registry makes governed trust information available so that a relying party—or anyone else with a stake—can determine whether an issuer is authorized, what it is recognized to issue, and whether that recognition is current.

But the registry does not make the trust decision. It provides information a verifier or relying party can use when making that decision. Whether to accept a credential remains the verifier's or relying party's own call, under its own policy and context. The registry also never answers whether an issuer is telling the truth, and it can't vouch for itself — whether to rely on a given registry is your call too. It answers one bounded question: is this issuer recognized and authorized, and is that current. Everything else is yours to decide.

## Two kinds of trust

Here's the catch: a credential can be technically perfect and still be wrong. If someone who isn't authorized signs a credential correctly, every cryptographic check passes — and the credential still doesn't mean what it claims. So you really need two things at once. The signature has to check out (it's technically valid), and the issuer has to be listed as authoritative for the specific credential or claim in front of you. A trust registry is one way to carry that second part. It carries the issuer's information to you — who's listed, for what, and whether that's still true. What it doesn't do is translate or rank what that information means; that judgment stays with you, the relying party.

## A sovereignty boundary to preserve

This is the part that matters most, so let's be plain about it.

A government's authority to issue passports, national IDs, or civil-status documents is its own. It comes from that country's law, and nothing — no registry, no registrar, no industry body — grants it, ratifies it, or sits in judgment of it.

The line we're trying to hold is between two very different things: checking authenticity and scope, and passing judgment on whether a sovereign is legitimate. The first is fair game. The second is not. So when a relying party checks a registry about a government issuer, it can reasonably ask:

- Is this really the country's authority — are these genuinely its signing keys and identifiers?  
- What does that authority say it issues — which credentials, and for whom?  
- Where's the governance behind it — the law or mandate it rests on?  
- Is it current — active, not suspended, not revoked?

What the check must never become is a verdict on whether a government is allowed to issue under its own law. The registry's job is narrower, and more useful: authenticate the issuer, show the scope it declares, and point to the governance behind it. A relying party is always free to decide, under its own policy, which authorities it honors — but that's its call, not something the registry decides for it.

Put simply: a government issuer is listed and made discoverable through the registry. It's never vetted or approved by it.

## The whole thing in four steps

Here's the basic loop as it stands today. Where a step doesn't match how issuers and relying parties actually work, that's exactly the gap we want to find and fix together.

1. **Establish authorization.** An issuer’s identity, authority, and permitted scope are recorded by or made discoverable through an accountable source.  
2. **Maintain currency.** The relevant information is updated as the issuer, its scope, or its technical signals change.  
3. **Make trust information available.** Relying parties can obtain the information through an appropriate discovery, synchronization, or referral mechanism.  
4. **Use it in a trust decision.** A relying party evaluates the information under its own policies and transaction context.  
5. 

One more piece makes this scale: a registry can recognize *other* registries as trustworthy sources for questions outside its own scope. No single registry can answer for the whole world, and no single root will be accepted by everyone. Recognition between registries allows trust information to be assembled and used across independently governed ecosystems. Depending on the implementation, those relationships may support advance synchronization, referrals, or checks made in the context of a transaction. The result is a web of registries rather than one master list.

## Seeing the loop in practice

The same four steps work for any government credential — a passport is the familiar one, but a national ID or a driver's licence works the same way. A government authority is recorded, and its signing keys are listed or made discoverable. The registry keeps what it declared up to date. A relying party checks authenticity, scope, and status as inputs to the trust decision. And at no point does anyone decide whether the government was entitled to issue in the first place — that was never the question. That's the sovereignty boundary doing its job: authenticity and scope get checked, legitimacy doesn't.

And to be clear about how this gets written: France, IATA, and the other issuers and relying parties here are co-authors of it, not an audience for it. A framework like this only becomes real when the people who'll depend on it are the ones shaping it. The decisions below are where that starts.

## Decisions to make together

There's a starting view on each of these, and none of them is settled. Treat the starting view as a first draft — better changed now than defended later. For each one: the decision, where the thinking sits today, and what's still open.

About the *Starting point:* notes below — they're genuinely just a place to begin. They can change easily. Creating a starting point simply helps us move faster.

1. **Confirming the scope boundary.** *Starting point:* the track's [draft scope statement](http://SCOPE-Track1.md) sets the first slice — government-issued identity (passports, national IDs, mobile driver's licenses) and sovereign issuers first. *Still open:* what is explicitly *out* of scope for Geneva, and is something missing?  
2. **Recorded vs. vetted in the data.** *Starting point:* keep the two paths clearly distinct in process. *Still open:* should the registry data also signal which path an entry came from? Handled carelessly, that signal could let tooling treat a recorded sovereign as a lesser tier — the exact opposite of the intent. So the real question is whether the distinction belongs in the data at all, and if so, how to express it without ever ranking or second-guessing a sovereign.  
3. **Who runs the registry, and who's accountable.** *Starting point:* a sovereign operates or designates its own registry and governs it under its own rules; an industry body can run one too; the cross-ecosystem layer discovers and points to these rather than governing them. *Still open:* does that match how each registry operator actually works, and how should the registries connect?  
4. **What happens when a check fails.** *Starting point:* agree baseline rules for a few clear failures (unknown issuer, suspended, out of scope), and leave the exact wording and user experience to implementers. *Still open:* which failures are hard refusals, which are warnings, and which are left to each ecosystem?  
5. **Freshness and outages.** *Starting point:* the ecosystem sets how current status has to be, with cached data allowed within limits when a registry is briefly unreachable. *Still open:* what freshness does real-time border and airline checking actually need?  
6. **How precisely authority is scoped.** *Starting point:* express authority by resource (what is being acted on), and by action (what actions is the entity authorized to perform for the resource) — and let a single issuer carry multiple authorizations, so one issuer with different practices for different credentials is captured in one entry rather than many. *Still open:* is that granular enough for v0.1, or too much?

These six are where the work starts. The full framework carries a longer list of open questions for the Task Force — not all of them belong in this conversation. And if something that matters to you isn't here, that's worth raising too.

## Where to go for detail

- The track's defining document — scope and work items: [SCOPE-Track1.md](http://SCOPE-Track1.md)  
- Full framework: [Issuer Onboarding & Governance Framework v0.1](http://issuer-onboarding-and-governance-v0.1.md)  
- The sovereignty stance in full: [Sovereignty Boundary](http://issuer-onboarding-and-governance-v0.1.md#sovereignty-boundary)  
- What we've set aside for later: [Later Phases](https://github.com/ayraforum/gdc-trtf-onboarding-and-governance/blob/main/later-phases/README.md)

