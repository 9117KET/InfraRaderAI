# InfraRadar AI - Technical Specifications

## Document Purpose

This document provides comprehensive technical specifications for InfraRadar AI's data schema, system architecture, and technical implementation details.

## Executive Summary

InfraRadar AI's technical foundation is built on a canonical data schema that ensures consistency across sources, traceability of every field back to evidence with provenance, and easy exposure via API, maps, dashboards, and NLP. The system combines AI-powered data processing with human verification workflows to deliver verified, actionable infrastructure intelligence.

## Canonical Data Schema

### Project Entity

```yaml
Project:
  project_id: string (UUID)
  name: string
  aliases: [string] # alternate project names from news/tenders
  sector: enum [Renewable, Transport, Water, Social, ...]
  sub_sector: enum [Solar, Wind, Hydro, Geothermal, Transmission, ...]
  capacity: float (MW or units) # standardized capacity
  value_usd: float
  country: string
  region: string (East Africa, MENA, etc.)
  geo_coordinates: [lat, lon]
  stage: enum [Planned, Tender, Awarded, Financing, Construction, Completed, Cancelled]
  status_last_updated: date
```

### Stakeholders Entity

```yaml
Stakeholders:
  sponsors: [OrganizationID]
  developers: [OrganizationID]
  EPC_contractors: [OrganizationID]
  financiers: [OrganizationID]
  advisors: [OrganizationID]
  government_entities: [OrganizationID]
```

### Milestones Entity

```yaml
Milestones:
  - milestone_type: enum [Announcement, Tender Issued, Contract Signed, Financing Secured, NTP, COD]
    date: date
    details: text
    evidence_id: EvidenceID
    confidence: float (0–1)
```

### Evidence Entity

```yaml
Evidence:
  evidence_id: string
  source_url: string
  source_type: enum [News, GovernmentPortal, TenderDoc, SatelliteImage, SocialMedia]
  ingestion_date: date
  ai_extracted_fields: [field_name]
  analyst_verified: bool
  analyst_notes: text
```

### Verification Entity

```yaml
Verification:
  confidence_score: float (0–1) # aggregated from evidence quality
  last_verified_by: AnalystID
  next_verification_due: date
```

### Organization Entity

```yaml
Organization:
  org_id: string
  name: string
  type: enum [Sponsor, Developer, EPC, Financier, Govt, Supplier]
  country: string
  contact_info: { email, phone, website, linkedin }
```

## Schema Benefits

### Consistency Across Sources

- **Standardized Fields**: All data sources map to the same canonical schema
- **Data Normalization**: Consistent units, formats, and classifications
- **Quality Assurance**: Schema validation ensures data integrity
- **Scalability**: Easy to add new sources and fields

### Provenance and Traceability

- **Evidence Linking**: Every field can be traced back to Evidence with provenance
- **Source Attribution**: Clear source URL and type for every data point
- **Confidence Scoring**: Transparent confidence levels for all data
- **Audit Trail**: Complete history of data changes and verifications

### Easy Integration

- **API Exposure**: RESTful API for all data access
- **Map Integration**: Geospatial coordinates for mapping and visualization
- **Dashboard Support**: Structured data for interactive dashboards
- **NLP Compatibility**: Text fields optimized for natural language processing

## Reviewer UI Checklist

### QA Workflow

Our QA team needs a structured checklist when validating or updating a project entry:

#### Entity Deduplication

- [ ] **Check**: Does this project already exist in DB under another alias?
- [ ] **Action**: Merge if duplicate; maintain alias list
- [ ] **Validation**: Search by name, location, and key attributes

#### Stage & Milestone Verification

- [ ] **Check**: Does source clearly state a change (tender → awarded)?
- [ ] **Action**: Update milestone with date + attach evidence
- [ ] **Validation**: Verify milestone dates and evidence quality

#### Data Accuracy

- [ ] **Check**: Check capacity, value, country against official numbers
- [ ] **Action**: Normalize units (MW, $, etc.)
- [ ] **Validation**: Cross-reference with multiple sources

#### Stakeholder Identification

- [ ] **Check**: Add or update organizations (developer, EPC, financier)
- [ ] **Action**: Link to project record; add contact info if credible
- [ ] **Validation**: Verify organization details and relationships

#### Evidence Tagging

- [ ] **Check**: Attach source URL and upload snapshot (PDF, screenshot)
- [ ] **Action**: Rate evidence quality: Official (1.0), Major Media (0.8), Niche Blog (0.4)
- [ ] **Validation**: Ensure evidence supports all claimed data points

#### Confidence Score Adjustment

- [ ] **Check**: Increase score if ≥2 independent credible sources
- [ ] **Action**: Decrease if source is weak/contradictory
- [ ] **Validation**: Recalculate confidence based on evidence quality

#### Geospatial Check

- [ ] **Check**: Use satellite feed to confirm activity (e.g., cleared land, installed panels)
- [ ] **Action**: Log analyst notes (e.g., "Found foundations visible on Sentinel-2, 2025-09-15")
- [ ] **Validation**: Compare satellite imagery with project claims

#### Status Recency

- [ ] **Check**: Log "last verified" timestamp
- [ ] **Action**: Set reminder for next check (e.g., 90 days)
- [ ] **Validation**: Ensure data freshness meets customer expectations

## Technical Architecture

### System Components

#### Frontend Layer

- **Framework**: React with TypeScript
- **UI Library**: Material-UI or Ant Design
- **State Management**: Redux Toolkit
- **Build Tool**: Vite or Webpack
- **Features**: Interactive maps, network graphs, 3D visualization, conversational search

#### Backend Layer

- **Language**: Python 3.9+
- **Framework**: FastAPI or Django REST Framework
- **Database**: PostgreSQL for transactional data
- **Cache**: Redis for session management
- **API**: RESTful API with GraphQL support

#### AI/ML Pipeline

- **LLM Integration**: OpenAI GPT-4 or Anthropic Claude
- **Computer Vision**: OpenCV and custom models
- **ML Pipeline**: scikit-learn and PyTorch
- **Vector Database**: Pinecone or Weaviate
- **Processing**: Multi-agent automation for data processing

#### Data Layer

- **Data Warehouse**: Snowflake for analytics
- **Cache**: Redis for caching and session management
- **Search**: Elasticsearch for search and analytics
- **Storage**: S3-compatible object storage
- **Processing**: Apache Airflow for data pipelines

#### Infrastructure Layer

- **Containerization**: Docker and Kubernetes
- **Cloud Provider**: AWS or Google Cloud
- **CI/CD**: GitHub Actions
- **Monitoring**: Prometheus and Grafana
- **Security**: OAuth 2.0, JWT tokens, encryption at rest

### Data Flow Architecture

#### 1. Data Ingestion

- **Sources**: News, government portals, tender docs, satellite imagery, social media
- **Processing**: Automated collection from multiple sources
- **Validation**: Data quality checks and schema validation
- **Storage**: Raw data storage with metadata

#### 2. AI Processing

- **Extraction**: AI-powered analysis and field extraction
- **Validation**: Multi-source data validation and cross-checking
- **Enrichment**: Data enrichment and normalization
- **Confidence Scoring**: Automated confidence score calculation

#### 3. Human Verification

- **Analyst Review**: Human analysts verify high-value projects
- **Quality Assurance**: Analyst review of AI outputs and corrections
- **Expert Insights**: Analysts add context, interpretation, and predictions
- **Customer Support**: Analysts answer customer questions

#### 4. Data Storage

- **Structured Storage**: Canonical schema storage in data warehouse
- **Evidence Storage**: Source documents and evidence storage
- **Version Control**: Data versioning and change tracking
- **Backup**: Regular backups and disaster recovery

#### 5. Data Access

- **API Layer**: RESTful API and GraphQL for data access
- **User Interface**: Interactive dashboards and visualization
- **Real-time Updates**: Live project status updates and notifications
- **Export**: Data export and integration capabilities

## Confidence Scoring Algorithm

### Algorithm Components

```python
def calculate_confidence_score(project_data):
    """
    Calculate confidence score for project data
    """
    # Source Count (0-5 independent sources)
    source_count_score = min(project_data.source_count / 5, 1.0) * 0.3

    # Recency (0-30 days = 1.0, 31-60 days = 0.8, etc.)
    days_since_update = project_data.days_since_last_update
    recency_score = max(0, 1.0 - (days_since_update - 30) / 30) * 0.2

    # Verification Status (AI = 0.5, Human = 1.0)
    verification_score = 1.0 if project_data.human_verified else 0.5
    verification_score *= 0.3

    # Human Review (Analyst-reviewed = 1.0, Not reviewed = 0.0)
    human_review_score = 1.0 if project_data.analyst_reviewed else 0.0
    human_review_score *= 0.2

    # Calculate final confidence score
    confidence_score = (source_count_score + recency_score +
                       verification_score + human_review_score)

    return min(max(confidence_score, 0.0), 1.0)
```

### Confidence Score Interpretation

- **0.9-1.0**: Very High Confidence - Multiple sources, recent updates, human verified
- **0.7-0.9**: High Confidence - Good sources, recent updates, some human verification
- **0.5-0.7**: Medium Confidence - Limited sources, older updates, AI verification only
- **0.3-0.5**: Low Confidence - Few sources, old updates, limited verification
- **0.0-0.3**: Very Low Confidence - Single source, very old updates, no verification

## Data Quality Assurance

### Quality Metrics

#### Accuracy Metrics

- **Precision**: % of correct data points out of total data points
- **Recall**: % of actual data points captured out of total available
- **F1 Score**: Harmonic mean of precision and recall
- **Target**: >95% accuracy on critical fields

#### Completeness Metrics

- **Field Completeness**: % of required fields populated
- **Source Coverage**: % of available sources captured
- **Geographic Coverage**: % of target regions covered
- **Temporal Coverage**: % of time periods covered

#### Consistency Metrics

- **Schema Compliance**: % of records following canonical schema
- **Data Format Consistency**: % of records with consistent formats
- **Unit Consistency**: % of records with consistent units
- **Classification Consistency**: % of records with consistent classifications

### Quality Assurance Processes

#### Automated Quality Checks

- **Schema Validation**: Ensure all records follow canonical schema
- **Data Type Validation**: Verify data types match schema definitions
- **Range Validation**: Check values are within expected ranges
- **Format Validation**: Verify formats match expected patterns

#### Human Quality Assurance

- **Analyst Review**: Human analysts review high-value projects
- **Quality Audits**: Regular audits of data quality and accuracy
- **Customer Feedback**: Customer corrections and feedback integration
- **Continuous Improvement**: Regular updates to quality processes

## API Specifications

### RESTful API Endpoints

#### Project Endpoints

```http
GET /api/v1/projects
GET /api/v1/projects/{project_id}
POST /api/v1/projects
PUT /api/v1/projects/{project_id}
DELETE /api/v1/projects/{project_id}
```

#### Evidence Endpoints

```http
GET /api/v1/evidence
GET /api/v1/evidence/{evidence_id}
POST /api/v1/evidence
PUT /api/v1/evidence/{evidence_id}
```

#### Organization Endpoints

```http
GET /api/v1/organizations
GET /api/v1/organizations/{org_id}
POST /api/v1/organizations
PUT /api/v1/organizations/{org_id}
```

### API Response Format

```json
{
  "data": {
    "project_id": "uuid",
    "name": "string",
    "sector": "enum",
    "capacity": "float",
    "value_usd": "float",
    "country": "string",
    "geo_coordinates": [lat, lon],
    "stage": "enum",
    "confidence_score": "float",
    "evidence": [
      {
        "evidence_id": "string",
        "source_url": "string",
        "source_type": "enum",
        "confidence": "float"
      }
    ],
    "stakeholders": {
      "sponsors": ["org_id"],
      "developers": ["org_id"],
      "EPC_contractors": ["org_id"]
    }
  },
  "metadata": {
    "total_count": "integer",
    "page": "integer",
    "per_page": "integer",
    "last_updated": "datetime"
  }
}
```

### Authentication and Authorization

#### Authentication Methods

- **API Keys**: For programmatic access
- **OAuth 2.0**: For user authentication
- **JWT Tokens**: For session management
- **Rate Limiting**: To prevent abuse

#### Authorization Levels

- **Public**: Basic project information
- **Authenticated**: Full project details and evidence
- **Premium**: Advanced analytics and predictions
- **Enterprise**: Custom integrations and support

## Security Specifications

### Data Security

#### Encryption

- **At Rest**: AES-256 encryption for all stored data
- **In Transit**: TLS 1.3 for all API communications
- **Key Management**: AWS KMS or Google Cloud KMS
- **Key Rotation**: Regular key rotation and management

#### Access Control

- **Authentication**: Multi-factor authentication required
- **Authorization**: Role-based access control (RBAC)
- **Audit Logging**: Complete audit trail of all access
- **Session Management**: Secure session handling and timeout

#### Data Privacy

- **GDPR Compliance**: Full GDPR compliance for EU data
- **CCPA Compliance**: California Consumer Privacy Act compliance
- **Data Minimization**: Collect only necessary data
- **Right to Deletion**: Support for data deletion requests

### Infrastructure Security

#### Network Security

- **VPC**: Virtual Private Cloud for network isolation
- **Firewalls**: Web Application Firewalls (WAF)
- **DDoS Protection**: Distributed Denial of Service protection
- **Network Monitoring**: Continuous network monitoring

#### Application Security

- **Input Validation**: Comprehensive input validation
- **SQL Injection Prevention**: Parameterized queries
- **XSS Protection**: Cross-site scripting prevention
- **CSRF Protection**: Cross-site request forgery prevention

## Performance Specifications

### Response Time Requirements

- **API Response**: <2 seconds for 95% of requests
- **Dashboard Load**: <3 seconds for initial page load
- **Search Results**: <1 second for search queries
- **Data Export**: <30 seconds for standard exports

### Scalability Requirements

- **Concurrent Users**: Support 1,000+ concurrent users
- **Data Volume**: Handle 1M+ projects with full history
- **API Throughput**: 10,000+ requests per minute
- **Storage**: Petabyte-scale data storage

### Availability Requirements

- **Uptime**: 99.9% availability (8.76 hours downtime per year)
- **Recovery Time**: <4 hours for disaster recovery
- **Backup**: Daily backups with 30-day retention
- **Monitoring**: 24/7 monitoring and alerting

## Conclusion

InfraRadar AI's technical specifications provide a robust foundation for delivering verified, actionable infrastructure intelligence. The canonical data schema ensures consistency and traceability, while the technical architecture supports scalability, security, and performance requirements.

**Key technical advantages**:

1. **Consistent Data Schema**: Ensures data quality and consistency across sources
2. **Provenance Tracking**: Every data point traceable to source evidence
3. **Confidence Scoring**: Transparent data quality assessment
4. **Scalable Architecture**: Supports growth from startup to enterprise
5. **Security First**: Comprehensive security and privacy protection

---

## Learning Resources

### Technical Architecture

- **Building Microservices**: [Sam Newman on Microservices Architecture](https://www.oreilly.com/library/view/building-microservices/9781491950340/)
- **Designing Data-Intensive Applications**: [Martin Kleppmann on Data Systems](https://dataintensive.net/)

### Data Engineering

- **The Data Engineering Handbook**: [Data Engineering Best Practices](https://www.dataengineeringhandbook.com/)
- **Clean Architecture**: [Robert Martin on Software Architecture](https://www.oreilly.com/library/view/clean-architecture-a/9780134494272/)

---

_This Technical Specifications document serves as our technical foundation. Regular updates recommended as technology evolves._
