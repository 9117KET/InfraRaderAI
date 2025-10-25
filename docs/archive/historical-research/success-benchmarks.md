# InfraRadar AI - Success Benchmarks & 90-Day Kill Criteria

## Document Purpose

This document defines the success benchmarks, kill criteria, and measurement framework for InfraRadar AI. It establishes clear metrics for the 90-day validation period and provides decision trees for pivot scenarios.

## Executive Summary

We have 90 days to prove that people will pay for fresh, verified, actionable infrastructure data. Our kill criteria are non-negotiable: ≥2 paying pilots, ≥70% weekly active usage, and <14 day data freshness. If we miss these, we pivot immediately.

**Core Principle**: Better to fail fast and pivot than to delude ourselves with vanity metrics.

## 90-Day Kill Criteria

### Primary Kill Criteria (Must Achieve by Day 90)

#### 1. Paying Pilots: ≥2 Customers Paying €2-5K Each

**Why this matters:** Proves willingness to pay for our solution
**Measurement:** Signed contracts with payment received
**Target:** 2 pilots minimum, 3 pilots stretch goal
**Failure threshold:** <2 paying pilots by Day 90

#### 2. Weekly Active Usage: ≥70% Among Pilot Users

**Why this matters:** Proves the solution is actually useful, not just purchased
**Measurement:** % of pilot users who log in and use the platform at least once per week
**Target:** 70% minimum, 80% stretch goal
**Failure threshold:** <70% weekly active usage

#### 3. Data Freshness: <14 Days Median for Watchlist Projects

**Why this matters:** Proves we can deliver on our core value proposition (fresh data)
**Measurement:** Median days since last update for projects on customer watchlists
**Target:** <14 days minimum, <7 days stretch goal
**Failure threshold:** >14 days median freshness

#### 4. Revenue Validation: €10K+ Total Pilot Revenue

**Why this matters:** Proves customers value the solution enough to pay meaningful amounts
**Measurement:** Total revenue from all pilot customers
**Target:** €10K minimum, €15K stretch goal
**Failure threshold:** <€10K total revenue

### Secondary Success Indicators

#### 5. Customer Satisfaction: ≥4.0/5.0 Rating

**Why this matters:** Indicates product-market fit and likelihood of expansion
**Measurement:** Net Promoter Score and customer satisfaction surveys
**Target:** 4.0/5.0 minimum, 4.5/5.0 stretch goal

#### 6. Data Accuracy: ≥90% on Critical Fields

**Why this matters:** Proves our verification process works
**Measurement:** Accuracy rate on project stage, value, timeline fields
**Target:** 90% minimum, 95% stretch goal

#### 7. Feature Adoption: ≥50% Using Core Features

**Why this matters:** Proves customers find value in our key differentiators
**Measurement:** % of users actively using CRM integration, alerts, analyst notes
**Target:** 50% minimum, 70% stretch goal

## Phase-Based Success Milestones

### Phase 1: Foundation (Days 1-30)

#### Week 1-2: Hypothesis Setting

**Success Criteria:**

- [ ] Narrow wedge scope defined (MENA data centers + renewables)
- [ ] Canonical schema designed for target vertical
- [ ] 5-8 high-signal data sources identified
- [ ] 2 domain expert analysts hired
- [ ] Confidence scoring algorithm designed

**Failure Triggers:**

- Cannot find qualified analysts with MENA infrastructure experience
- Cannot identify reliable data sources for target projects
- Scope too broad or too narrow for market validation

#### Week 3-4: MVP Build

**Success Criteria:**

- [ ] Thin-slice MVP built with HITL verification
- [ ] Salesforce integration working
- [ ] Confidence scoring UI implemented
- [ ] 20-30 pilot projects loaded and verified
- [ ] Analyst workflow tools built

**Failure Triggers:**

- Technical architecture too complex for team size
- Cannot achieve <14 day data freshness with current approach
- Analyst workflow too cumbersome for scale

### Phase 2: Validation (Days 31-60)

#### Week 5-6: Pilot Recruitment

**Success Criteria:**

- [ ] 3 lighthouse users identified and contacted
- [ ] Pilot agreements signed (even if free initially)
- [ ] Customer onboarding process tested
- [ ] Initial usage patterns established
- [ ] Feedback collection system in place

**Failure Triggers:**

- Cannot find 3 qualified pilot customers
- Pilot customers not engaged with platform
- Onboarding process too complex or time-consuming

#### Week 7-8: Willingness to Pay Validation

**Success Criteria:**

- [ ] ≥2 pilots converted to paying customers
- [ ] Pricing tiers validated through customer feedback
- [ ] Payment processing working
- [ ] Customer success metrics established
- [ ] Expansion opportunities identified

**Failure Triggers:**

- <2 pilots willing to pay for solution
- Pricing too high or too low for market
- Payment processing issues blocking revenue

### Phase 3: Scale Preparation (Days 61-90)

#### Week 9-10: Optimization

**Success Criteria:**

- [ ] All kill criteria metrics trending positive
- [ ] Customer feedback incorporated into product
- [ ] Data quality and freshness improved
- [ ] Analyst workflow optimized
- [ ] Partnership pipeline established

**Failure Triggers:**

- Kill criteria metrics not improving
- Customer feedback overwhelmingly negative
- Data quality issues not resolvable

#### Week 11-13: Decision Point

**Success Criteria:**

- [ ] All primary kill criteria met
- [ ] Clear path to scale identified
- [ ] Team confident in product-market fit
- [ ] Funding strategy for next phase defined
- [ ] Expansion plan created

**Failure Triggers:**

- Any primary kill criteria missed
- No clear path to profitability
- Team lacks confidence in solution

## Measurement Framework

### Data Collection Methods

#### 1. Usage Analytics

**Tools:** Mixpanel, Amplitude, or custom analytics
**Metrics:**

- Daily/Weekly/Monthly Active Users
- Feature usage rates
- Session duration and frequency
- User flow analysis
- Drop-off points identification

#### 2. Customer Feedback

**Tools:** SurveyMonkey, Typeform, or custom surveys
**Metrics:**

- Net Promoter Score (NPS)
- Customer Satisfaction (CSAT)
- Feature request frequency
- Support ticket volume and resolution time
- Churn reasons analysis

#### 3. Business Metrics

**Tools:** Custom dashboard, Stripe analytics
**Metrics:**

- Monthly Recurring Revenue (MRR)
- Customer Acquisition Cost (CAC)
- Customer Lifetime Value (CLV)
- Churn rate
- Expansion revenue

#### 4. Data Quality Metrics

**Tools:** Custom monitoring system
**Metrics:**

- Data freshness by project and source
- Accuracy rates by field type
- Confidence score distribution
- Correction submission rates
- Analyst verification time

### Reporting Schedule

#### Daily Metrics

- Active users
- Data freshness status
- System uptime
- Critical errors

#### Weekly Metrics

- All kill criteria progress
- Customer satisfaction scores
- Feature adoption rates
- Data quality trends

#### Monthly Metrics

- Revenue and growth metrics
- Customer cohort analysis
- Competitive analysis
- Team performance review

## Pivot Decision Tree

### Decision Point: Day 90

#### Scenario 1: All Kill Criteria Met

**Action:** Proceed to next phase
**Next Steps:**

- Raise seed funding
- Hire additional analysts
- Expand project coverage
- Build enterprise features
- Scale sales and marketing

#### Scenario 2: 1-2 Kill Criteria Missed

**Action:** 30-day extension with focused improvements
**Conditions:**

- Clear path to meeting missed criteria
- Customer feedback indicates fixable issues
- Team has capacity for focused improvement
- Funding runway allows extension

#### Scenario 3: 3+ Kill Criteria Missed

**Action:** Pivot immediately
**Options:**

- Pivot to consulting/services model
- Pivot to different vertical (transport instead of data centers)
- Pivot to different geography
- Pivot to data provider/API model
- Shut down and return capital

### Pivot Triggers (Can Happen Anytime)

#### Technical Pivot Triggers

- Cannot achieve <14 day data freshness with current architecture
- Data quality issues cannot be resolved with HITL approach
- Technical complexity exceeds team capabilities
- Integration requirements too complex for target customers

#### Market Pivot Triggers

- Target customers not willing to pay for solution
- Competitive landscape changes significantly
- Regulatory changes affect data access
- Market size smaller than expected

#### Team Pivot Triggers

- Key team members leave
- Cannot hire required domain experts
- Team lacks skills for technical challenges
- Burnout or motivation issues

## Success Metrics Dashboard

### Real-Time Dashboard (Updated Daily)

```
┌─────────────────────────────────────────────────────────┐
│                 InfraRadar AI Success Dashboard        │
├─────────────────────────────────────────────────────────┤
│ Days Remaining: 67                                      │
│                                                         │
│ PRIMARY KILL CRITERIA                                   │
│ ┌─────────────────────────────────────────────────────┐ │
│ │ Paying Pilots: 1/2 (50%) ✅                        │ │
│ │ Weekly Active Usage: 75% ✅                         │ │
│ │ Data Freshness: 8 days ✅                          │ │
│ │ Revenue: €7,500/€10,000 (75%) ⚠️                  │ │
│ └─────────────────────────────────────────────────────┘ │
│                                                         │
│ SECONDARY INDICATORS                                    │
│ ┌─────────────────────────────────────────────────────┐ │
│ │ Customer Satisfaction: 4.2/5.0 ✅                  │ │
│ │ Data Accuracy: 92% ✅                              │ │
│ │ Feature Adoption: 65% ✅                           │ │
│ └─────────────────────────────────────────────────────┘ │
│                                                         │
│ RISK INDICATORS                                         │
│ ┌─────────────────────────────────────────────────────┐ │
│ │ Churn Risk: Low ✅                                 │ │
│ │ Technical Debt: Medium ⚠️                          │ │
│ │ Team Velocity: High ✅                             │ │
│ │ Market Feedback: Positive ✅                       │ │
│ └─────────────────────────────────────────────────────┘ │
└─────────────────────────────────────────────────────────┘
```

### Weekly Review Template

#### Week X Review (Date: **\_**)

**Kill Criteria Progress:**

- [ ] Paying Pilots: \_\_\_/2 (Target: 2)
- [ ] Weekly Active Usage: \_\_\_% (Target: ≥70%)
- [ ] Data Freshness: \_\_\_ days (Target: <14)
- [ ] Revenue: €\_\_\_/€10,000 (Target: €10,000)

**Key Wins:**

1.
2.
3.

**Key Challenges:**

1.
2.
3.

**Actions for Next Week:**

1.
2.
3.

**Risk Assessment:**

- [ ] On track to meet all kill criteria
- [ ] At risk of missing 1-2 criteria
- [ ] At risk of missing 3+ criteria (consider pivot)

**Team Confidence:**

- [ ] High - confident in success
- [ ] Medium - some concerns but manageable
- [ ] Low - significant concerns about viability

## Contingency Plans

### If Kill Criteria Not Met

#### Plan A: 30-Day Extension

**Conditions:** 1-2 criteria missed, clear path to improvement
**Actions:**

- Focus all resources on missed criteria
- Weekly check-ins with stakeholders
- Clear success metrics for extension period
- Pivot decision at end of extension

#### Plan B: Pivot to Consulting

**Conditions:** Market validation fails, but domain expertise valuable
**Actions:**

- Offer "Infrastructure Market Intelligence Reports" as service
- Price at €20K-50K per report
- Build case studies for future product
- Maintain team and domain knowledge

#### Plan C: Pivot to Data Provider

**Conditions:** Product too complex, but data valuable
**Actions:**

- Simplify to data feed/API model
- Focus on data quality and freshness
- Lower pricing, higher volume
- Partner with existing platforms

#### Plan D: Shut Down

**Conditions:** No viable pivot path, market not there
**Actions:**

- Return remaining capital to investors
- Document learnings for future reference
- Help team find new opportunities
- Maintain relationships for future ventures

## Conclusion

These success benchmarks provide clear, measurable criteria for our 90-day validation period. The kill criteria are non-negotiable—if we miss them, we pivot immediately. This discipline prevents us from deluding ourselves with vanity metrics and ensures we either find product-market fit quickly or pivot to something that works.

**Key insight**: Better to fail fast and pivot than to waste years on a solution that doesn't work. These benchmarks give us the courage to make hard decisions quickly.

---

## Learning Resources

### Startup Validation

- **The Lean Startup**: [Eric Ries on Validated Learning](https://www.leanstartup.com/)
- **The Startup Owner's Manual**: [Steve Blank on Customer Development](https://www.steveblank.com/)

### Metrics and Measurement

- **Lean Analytics**: [Alistair Croll on Startup Metrics](https://leananalyticsbook.com/)
- **The Lean Startup**: [Eric Ries on Innovation Accounting](https://www.leanstartup.com/)

---

_This Success Benchmarks document serves as our reality check. Regular measurement and honest assessment are essential for making the right decisions at the right time._
