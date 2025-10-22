# InfraRadar AI - MVP Definition

## Document Purpose

This document defines the Minimum Viable Product (MVP) for InfraRadar AI, focusing on the narrow wedge of MENA data centers + renewables with core features that validate our key assumptions and provide immediate value to pilot customers.

## Executive Summary

Our MVP targets 50-100 MENA data center and renewable energy projects with core features: discovery, profiling, confidence scores, weekly updates, HITL verification, and Salesforce integration. The MVP validates our 90-day kill criteria while building the foundation for scaling.

**Core Principle**: Build the smallest product that validates our key assumptions and provides real value to pilot customers.

## MVP Scope

### Geographic Focus

- **Primary**: MENA (Middle East & North Africa)
- **Countries**: Saudi Arabia, UAE, Egypt, Qatar, Morocco, Jordan, Lebanon
- **Rationale**: Underserved market with high growth potential and manageable scope

### Sector Focus

- **Data Centers**: Hyperscaler facilities, colocation centers, government data centers
- **Renewable Energy**: Solar farms, wind projects, geothermal, energy storage
- **Rationale**: Natural synergy (data centers need renewable PPAs), high-value projects, clear customer base

### Project Criteria

- **Minimum Value**: $50M+ project value
- **Project Count**: 50-100 projects initially
- **Update Frequency**: Weekly updates (not real-time)
- **Coverage Depth**: Full project lifecycle from announcement to completion

## Core Features

### 1. Project Discovery & Profiling

#### Automated Discovery

- **AI Agents**: Scan government portals, news sources, company announcements
- **Source Coverage**: 8-10 high-signal sources per country
- **Languages**: Arabic and English source processing
- **Update Frequency**: Daily scanning, weekly profiling updates

#### Project Profiling

- **Core Fields**: Name, location, value, stage, timeline, stakeholders
- **Stakeholder Mapping**: Developers, contractors, financiers, government agencies
- **Milestone Tracking**: Announcement → FID → Construction → Completion
- **Status Updates**: Project stage changes with confidence scores

#### Data Quality

- **Confidence Scoring**: Every field shows confidence level (0-100%)
- **Source Attribution**: "Verified from 3 sources: [tender doc], [press release], [company filing]"
- **Last Updated**: Timestamp for every data point
- **Correction System**: Users can submit corrections with evidence

### 2. Human-in-the-Loop Verification

#### Analyst Workflow

- **Verification Threshold**: All projects >$50M verified by human analysts
- **Analyst Team**: 2 domain expert analysts with MENA infrastructure experience
- **Verification Process**: Multi-source confirmation, stakeholder validation, market context
- **Quality Assurance**: Analyst review of AI outputs, error correction, confidence adjustment

#### Expert Insights

- **Analyst Notes**: Market context, risk assessment, timeline predictions
- **Stakeholder Analysis**: Key decision-makers, influence mapping, relationship insights
- **Market Intelligence**: Competitive landscape, regulatory changes, market trends
- **Risk Assessment**: Project viability, execution risks, market risks

#### Customer Support

- **"Ask an Analyst"**: Direct analyst support for Tier 3 customers
- **Analyst Response Time**: <24 hours for customer queries
- **Expert Consultation**: Project-specific analysis and recommendations
- **Market Briefings**: Regular analyst insights and market updates

### 3. Confidence Scoring Engine

#### Scoring Algorithm

```
Confidence Score = (Source Count × 0.3) + (Recency × 0.2) + (Verification Status × 0.3) + (Human Review × 0.2)

Where:
- Source Count: Number of independent sources (0-5)
- Recency: Days since last update (0-30 days = 1.0)
- Verification Status: AI (0.5), Human (1.0)
- Human Review: Reviewed (1.0), Not reviewed (0.0)
```

#### Transparency Features

- **Confidence Display**: Every field shows confidence percentage
- **Source Provenance**: Links to original sources and verification evidence
- **Confidence Trends**: Track confidence changes over time
- **Accuracy Scorecard**: Public accuracy metrics by field type

#### Quality Improvement

- **Customer Feedback**: Users can submit corrections with evidence
- **Analyst Review**: Regular confidence score audits and adjustments
- **Source Quality**: Track and improve source reliability over time
- **Continuous Learning**: Improve scoring algorithm based on outcomes

### 4. CRM Integration (Day 1 Requirement)

#### Salesforce Integration

- **Lead Creation**: Auto-create Leads when new projects match customer criteria
- **Contact Enrichment**: Find project stakeholders' emails and phone numbers
- **Custom Fields**: Project-specific fields in Salesforce (value, stage, confidence)
- **Workflow Triggers**: Automated alerts and actions based on project updates

#### HubSpot Integration

- **Contact Sync**: Sync project stakeholders with HubSpot contacts
- **Deal Tracking**: Create deals based on project opportunities
- **Email Sequences**: Automated follow-up based on project status changes
- **Reporting**: Project pipeline analysis and conversion tracking

#### Workflow Automation

- **Alert System**: Email and Slack notifications for project updates
- **Watchlist Management**: Customer-specific project monitoring lists
- **Export Tools**: CSV/Excel export with custom field selection
- **API Access**: Basic API for customer system integration

### 5. User Interface & Experience

#### Dashboard Design

- **Project Overview**: Map view with project locations and status
- **Project List**: Sortable, filterable table with confidence scores
- **Project Details**: Comprehensive project pages with full information
- **Analyst Notes**: Expert insights and market context prominently displayed

#### Search & Filtering

- **Basic Search**: By project name, location, stakeholder
- **Advanced Filters**: By value range, stage, sector, confidence level
- **Saved Searches**: Customer-specific search criteria and alerts
- **Export Options**: CSV/Excel export with custom field selection

#### Mobile Responsiveness

- **Mobile-First Design**: Optimized for mobile viewing and interaction
- **Touch-Friendly**: Easy navigation and interaction on mobile devices
- **Offline Capability**: Basic project information available offline
- **Push Notifications**: Mobile alerts for project updates

## Technical Architecture

### Backend Systems

- **Data Processing**: Python-based ETL pipeline for multi-source data
- **Database**: PostgreSQL for structured data, Elasticsearch for search
- **API**: RESTful API with authentication and rate limiting
- **Queue System**: Celery for background processing and updates

### AI/ML Components

- **LLM Integration**: GPT-4/Claude for text extraction and analysis
- **Computer Vision**: Basic satellite imagery analysis for verification
- **Confidence Scoring**: Custom algorithm for data quality assessment
- **Entity Resolution**: Matching and deduplication across sources

### Integration Systems

- **CRM APIs**: Salesforce and HubSpot integration frameworks
- **Webhook System**: Real-time notifications for external systems
- **Export Tools**: CSV/Excel generation and API endpoints
- **Authentication**: OAuth integration with customer systems

### Infrastructure

- **Cloud Platform**: AWS for scalability and reliability
- **Monitoring**: Application and infrastructure monitoring
- **Security**: Data encryption, access controls, compliance
- **Backup**: Automated backups and disaster recovery

## Success Criteria

### 90-Day Kill Criteria

- **Paying Pilots**: ≥2 customers paying €2-5K each
- **Weekly Active Usage**: ≥70% among pilot users
- **Data Freshness**: <14 days median for watchlist projects
- **Revenue Validation**: €10K+ total pilot revenue

### Product Metrics

- **Project Coverage**: 100% of MENA data centers + renewables >$50M
- **Data Accuracy**: 95%+ on critical fields (stage, value, timeline)
- **Confidence Scores**: Average 85%+ across all fields
- **Analyst Verification**: 100% of projects >$50M verified by humans

### Customer Metrics

- **Customer Satisfaction**: >4.0/5.0 rating
- **Feature Adoption**: >50% using CRM integration
- **Time to Value**: <7 days for CRM setup
- **Support Tickets**: <5% of customers with critical issues

## Implementation Timeline

### Phase 1: Foundation (Weeks 1-4)

- [ ] **Week 1-2**: Set up narrow wedge scope, hire 2 analysts, design canonical schema
- [ ] **Week 3-4**: Build basic MVP with 20-30 projects, implement confidence scoring

### Phase 2: Validation (Weeks 5-8)

- [ ] **Week 5-6**: Recruit 3 lighthouse pilots, implement Salesforce integration
- [ ] **Week 7-8**: Launch with pilot customers, measure kill criteria metrics

### Phase 3: Optimization (Weeks 9-12)

- [ ] **Week 9-10**: Optimize based on pilot feedback, improve data quality
- [ ] **Week 11-12**: Prepare for pivot decision, analyze success metrics

## Risk Mitigation

### Technical Risks

- **Data Quality Issues**: HITL verification and confidence scoring
- **Integration Complexity**: Start with Salesforce only, expand later
- **Scalability Concerns**: Cloud-native architecture from day one

### Market Risks

- **Customer Adoption**: Focus on workflow integration and immediate value
- **Competition**: Emphasize human expertise and transparency
- **Pricing Pressure**: Start with low pricing, prove value first

### Operational Risks

- **Analyst Availability**: Hire analysts early, build strong processes
- **Data Sources**: Diversify sources, build redundancy
- **Customer Support**: Automated support where possible, human for complex issues

## Success Metrics Dashboard

### Real-Time Metrics

```
┌─────────────────────────────────────────────────────────┐
│                 InfraRadar AI MVP Dashboard            │
├─────────────────────────────────────────────────────────┤
│ Projects Tracked: 67/100 (67%)                        │
│ Analyst Verification: 45/67 (67%)                      │
│ Average Confidence: 87%                                │
│ Data Freshness: 8 days (median)                        │
│                                                         │
│ Pilot Customers: 2/2 (100%) ✅                        │
│ Weekly Active Usage: 75% ✅                           │
│ Revenue: €7,500/€10,000 (75%) ⚠️                      │
│ Customer Satisfaction: 4.2/5.0 ✅                     │
└─────────────────────────────────────────────────────────┘
```

### Weekly Review Template

- **Project Coverage**: Number of projects tracked vs. target
- **Data Quality**: Accuracy rates and confidence scores
- **Customer Metrics**: Usage, satisfaction, support tickets
- **Technical Metrics**: Uptime, performance, integration success
- **Analyst Metrics**: Verification rates, response times, quality scores

## Conclusion

The MVP provides a focused, achievable scope that validates our key assumptions while delivering real value to pilot customers. By focusing on the narrow wedge of MENA data centers + renewables, we can achieve excellence in a manageable scope before expanding.

**Key Success Factors**:

1. **Narrow Focus**: Excellence in one vertical before expansion
2. **Human Expertise**: Analyst verification as core differentiator
3. **Workflow Integration**: CRM integration from day one
4. **Transparency**: Confidence scoring and source attribution
5. **Customer Value**: Immediate ROI through lead generation and verification

---

## Learning Resources

### MVP Development

- **The Lean Startup**: [Eric Ries on MVP Development](https://www.leanstartup.com/)
- **Running Lean**: [Ash Maurya on Lean Canvas](https://leanstack.com/)

### Product Management

- **Inspired**: [Marty Cagan on Product Management](https://www.svpg.com/)
- **Crossing the Chasm**: [Geoffrey Moore on Market Adoption](https://www.goodreads.com/book/show/61329.Crossing_the_Chasm)

---

_This MVP Definition serves as our product development blueprint. Regular measurement and optimization are essential for achieving our 90-day kill criteria._
