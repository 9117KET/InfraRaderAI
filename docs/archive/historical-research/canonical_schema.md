Project:
  project_id: string (UUID)
  name: string
  aliases: [string]              # alternate project names from news/tenders
  sector: enum [Renewable, Transport, Water, Social, ...]
  sub_sector: enum [Solar, Wind, Hydro, Geothermal, Transmission, ...]
  capacity: float (MW or units)  # standardized capacity
  value_usd: float
  country: string
  region: string (East Africa, MENA, etc.)
  geo_coordinates: [lat, lon]
  stage: enum [Planned, Tender, Awarded, Financing, Construction, Completed, Cancelled]
  status_last_updated: date

Stakeholders:
  sponsors: [OrganizationID]
  developers: [OrganizationID]
  EPC_contractors: [OrganizationID]
  financiers: [OrganizationID]
  advisors: [OrganizationID]
  government_entities: [OrganizationID]

Milestones:
  - milestone_type: enum [Announcement, Tender Issued, Contract Signed, Financing Secured, NTP, COD]
    date: date
    details: text
    evidence_id: EvidenceID
    confidence: float (0–1)

Evidence:
  evidence_id: string
  source_url: string
  source_type: enum [News, GovernmentPortal, TenderDoc, SatelliteImage, SocialMedia]
  ingestion_date: date
  ai_extracted_fields: [field_name]
  analyst_verified: bool
  analyst_notes: text

Verification:
  confidence_score: float (0–1)   # aggregated from evidence quality
  last_verified_by: AnalystID
  next_verification_due: date

Organization (separate table):
  org_id: string
  name: string
  type: enum [Sponsor, Developer, EPC, Financier, Govt, Supplier]
  country: string
  contact_info: {email, phone, website, linkedin}




Why it matters:

Forces consistency across sources.

Every field can be traced back to Evidence with provenance.

Easy to expose via API, map, dashboards, NLP.

2. Reviewer UI Checklist

Your QA team (even if just you initially) needs a structured checklist when validating or updating a project entry.

Reviewer Workflow:

✅ Entity Deduplication

Does this project already exist in DB under another alias?

Merge if duplicate; maintain alias list.

✅ Stage & Milestone Verification

Does source clearly state a change (tender → awarded)?

Update milestone with date + attach evidence.

✅ Data Accuracy

Check capacity, value, country against official numbers.

Normalize units (MW, $, etc.).

✅ Stakeholder Identification

Add or update organizations (developer, EPC, financier).

Link to project record; add contact info if credible.

✅ Evidence Tagging

Attach source URL and upload snapshot (PDF, screenshot).

Rate evidence quality: Official (1.0), Major Media (0.8), Niche Blog (0.4).

✅ Confidence Score Adjustment

Increase score if ≥2 independent credible sources.

Decrease if source is weak/contradictory.

✅ Geospatial Check (if available)

Use satellite feed to confirm activity (e.g., cleared land, installed panels).

Log analyst notes (e.g., “Found foundations visible on Sentinel-2, 2025-09-15”).

✅ Status Recency

Log “last verified” timestamp.

Set reminder for next check (e.g., 90 days).

3. Founder-Sales Email (Recruit Lighthouse Pilots)

Subject: Be the first to access verified renewable project intelligence in East Africa

Hi [First Name],

I’m [Your Name], founder of [Platform Name], an AI-powered project intelligence platform focused on renewable energy in East Africa.

We’ve noticed that EPCs, suppliers, and investors often face:

Fragmented project info scattered across tenders, local news, and government sites.

Outdated or unreliable data (projects announced but never progressing).

Missed opportunities because by the time a project is visible, tenders are already awarded.

We’re building a platform that solves this:

Real-time discovery of new solar & wind projects from local and official sources.

Verification through multiple evidence points (including satellite checks).

Actionable insights with contacts, financing status, and confidence scores.

Visual dashboards (map + timeline) instead of static lists.

I’m reaching out because your team at [Company Name] is exactly the type of early adopter who could benefit most. We’re inviting a few select organizations to join our pilot program:

3 months of access to our East Africa renewable pipeline (free of charge during trial).

Dedicated support and customization to fit your workflow.

Influence over the product roadmap as a design partner.

Would you be open to a quick 20-minute call next week to see if this could support your project pipeline or investment decisions?