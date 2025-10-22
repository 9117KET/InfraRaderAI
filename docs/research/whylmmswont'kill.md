Why foundation models won’t automatically win here

What they’re great at

Answering ad-hoc questions across the open web.

Drafting summaries, translating, searching broadly.

Cheap inference at scale, rapid iteration.

What they’re bad at for this use-case

Ground truth & liability: investors/EPCs need auditable facts, provenance, and someone to call when it’s wrong.

Continuity: keeping a project’s life-cycle current (tender → award → financing → NTP → construction → COD) with timestamps, deltas, and status reasons.

Vertical data plumbing: scraping opaque tender portals, parsing PDFs, harmonizing inconsistent fields, mapping stakeholders, and tying this to maps, satellite signals, and CRMs.

Workflows: alerts, watchlists, team notes, account-based targeting, pipeline forecasts, and export to Salesforce/HubSpot/PowerBI.

Alt-data fusion: satellite/SAR, ship/port activity, grid data, night-lights—joined to structured entities with confidence scores.

ChatGPT/Perplexity will help your users research—but they won’t replace a living, verified database + workflow tool that becomes part of a team’s weekly operating rhythm.

What makes this worth pursuing (the moat)

Proprietary, compounding dataset (PDL)

Normalized project entities, stakeholder graphs, status histories, and verification artifacts (source URLs, imagery snippets, analyst checks).

This compounds: every correction, merge, dedupe, and geotag increases quality—and creates switching costs.

Trust & accountability layer

Confidence scores, provenance, and “why we believe this” notes + human-in-the-loop sign-off on material changes.

SLAs for data freshness on watchlists. General AI won’t give SLAs or take responsibility.

Geospatial + alt-data verification

“We believe 60% of panels are installed as of Sept 18; Sentinel-2 shows X m² of new reflectance; previous month was Y.”

This measurable verification is a unique wedge.

Workflow & integrations

Saved searches, buyer-intent signals, CRM sync, tender calendars, role-based alerts, exports.

Teams don’t want a chatbot; they want pipeline they can act on.

Narrow wedge + depth

Start East Africa/MENA renewables; be unfairly good there (multilingual sources, local portals, analyst network).

Beat breadth with depth + freshness.

AI as plumbing, not product

Use LLMs/agents under the hood (RAG, extractors, dedupers, summarizers). Your product is the clean, verified, action-ready graph.

How this fails (and how to avoid it)

Failure paths

“Another project list” with stale entries.

Purely automated ingestion (hallucinations, dupes, fantasy projects).

Boiling the ocean (global, all sectors) and spreading too thin.

Pretty maps with no jobs to be done (no alerts, no CRM, no accountability).

Free “news + AI summaries” competing with free Perplexity.

Avoid by

HITL from day 1: analysts validate high-impact fields (stage, MW, capex, counterparties).

Laser focus: 1 region + 1 sector; promise freshness SLAs there only.

Own three workflows at MVP:

Lead gen for suppliers/EPCs (early signals + contacts),

Deal origination for investors (financing gaps + risk flags),

Progress tracking for stakeholders (status changes + alt-data checks).

Source transparency on every field.

Tight integrations (Salesforce/HubSpot; CSV/Excel; simple API).

Go/No-Go: a 90-day pursue-or-pivot plan

North Star: prove people will pay for fresh, verified, actionable infra data—not for summaries.

Week 0–2 — Set hypotheses & design the moat

Define canonical schema (Project, Site, Stakeholder, Financing, Milestones, Evidence, Confidence).

Choose 5–8 high-signal sources (tender portals, regulator bulletins, dev-bank pipelines, 2–3 local news langs).

Pick 1–2 satellite workflows (monthly Sentinel-2 change detection; optional high-res spot checks).

Draft SLA (e.g., “Top-100 watchlist updated ≤7 days after signal.”)

Week 3–6 — Build the thin-slice MVP

Agents: discovery → extraction → dedupe → profile → queue for review.

Reviewer UI: accept/merge/annotate, attach evidence, assign confidence.

Customer UI: map + table, filters, watchlists & alerts, project pages with provenance.

Exports: CSV/Excel; one CRM (pick Salesforce or HubSpot).

Week 7–10 — Prove willingness to pay

Recruit 3 lighthouse users (1 EPC/supplier, 1 investor/DFI, 1 developer).

Run live trials, bind to outcomes:

Supplier: ≥10 qualified leads found; ≥2 RFP invites.

Investor: ≥10 pipeline matches; ≥3 diligence accelerators.

Developer: ≥5 verified competitor/status insights.

Close paid pilots (even €2–5k each). Price signals matter more than features.

Week 11–13 — Decide with kill criteria

Mandatory: ≥2 paying pilots, ≥70% weekly active usage among pilot users, median data freshness <14 days on watchlists.

If missed → pivot (narrower region, different persona, or reposition as data provider/API).

If hit → raise a small seed/angel, hire 1–2 analysts + 1 data engineer, expand within the wedge.

Pricing & viability (realistic)

SMB supplier/EPC: €6–12k/yr (2–5 seats) for one region/sector.

Mid/large enterprise or fund: €25–60k/yr for multi-seat, custom alerts, CRM + API.

Services (analyst “Ask Us” or custom datasets): €150–300/hr or fixed-fee packs.

With 20–30 logos in the wedge you can reach €500k–€1.2M ARR, enough to fund the next region/sector and deepen the moat.

My brutal verdict

Should you pursue it? Yes—if you commit to a verification-first, workflow-centric, vertical product and hold yourself to the 90-day kill criteria.

Will ChatGPT/Perplexity kill it? No—unless you act like a news reader with charts. They are inputs to your pipeline, not substitutes for a living, accountable database + ops tool.

Edge in this era: convergence of LLM agents + geospatial AI + human QA + integrations. Most incumbents are old stacks; most AI upstarts lack ground truth, SLAs, and workflows. Sit in the middle and you win.

If you want, I can draft the canonical schema, the reviewer UI checklist, and a founder-sales email to recruit the three lighthouse pilots.