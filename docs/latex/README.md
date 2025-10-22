# InfraRader AI - LaTeX Documentation Build System

This directory contains the complete LaTeX documentation system for InfraRader AI, including all business documents, build scripts, and templates.

## Directory Structure

```
docs/latex/
├── templates/                    # LaTeX templates and custom classes
│   ├── infraradar-main.cls      # Main document class
│   ├── colors.sty               # Color scheme
│   └── common-packages.sty      # Common packages
├── references/                  # Bibliography and references
│   └── infraradar-bibliography.bib
├── business-plan/               # Business plan document
│   └── main.tex
├── executive-summary/          # Executive summary document
│   └── main.tex
├── pitch-deck/                 # Pitch deck (Beamer)
│   └── main.tex
├── operational/                 # Operational documents
│   ├── data-governance.tex
│   ├── value-proposition-canvas.tex
│   ├── customer-personas.tex
│   ├── go-to-market.tex
│   └── ai-metrics-hitl.tex
├── execution/                   # Execution documents
│   ├── financial-model.tex
│   ├── legal-compliance.tex
│   ├── partnership-strategy.tex
│   └── product-roadmap.tex
├── appendix/                    # Supporting materials
│   ├── market-research.tex
│   └── competitive-analysis.tex
├── complete-documentation/      # Master compilation
│   └── infraradar-complete.tex
├── build-scripts/              # Build scripts
│   ├── build-all.sh
│   ├── build-exec-summary.sh
│   ├── build-business-plan.sh
│   └── build-pitch-deck.sh
└── output/                     # Generated PDFs
```

## Prerequisites

To build the LaTeX documents, you need:

1. **LaTeX Distribution**: TeX Live (Linux/macOS) or MiKTeX (Windows)
2. **Required Packages**:
   - `biber` (for bibliography processing)
   - `makeindex` (for index generation)
   - Standard LaTeX packages (included in common-packages.sty)

## Building Documents

### Build All Documents

```bash
cd docs/latex/build-scripts
chmod +x build-all.sh
./build-all.sh
```

### Build Individual Documents

```bash
# Executive Summary
./build-exec-summary.sh

# Business Plan
./build-business-plan.sh

# Pitch Deck
./build-pitch-deck.sh
```

### Build Master Compilation

```bash
./build-all.sh master
```

### Clean Up Temporary Files

```bash
./build-all.sh clean
```

## Document Overview

### Foundation Documents

- **Executive Summary** (2 pages): Concise overview for immediate outreach
- **Business Plan** (40-60 pages): Comprehensive business plan with all 12 sections
- **Pitch Deck** (15-20 slides): Investor presentation content

### Operational Documents

- **Data Governance & Sourcing Plan** (15-20 pages): Data management policies and processes
- **Value Proposition Canvas** (8-10 pages): Customer jobs, pain relievers, and gain creators
- **Customer Personas** (12-15 pages): Detailed buyer personas and customer profiles
- **Go-to-Market Plan** (20-25 pages): Customer acquisition and market entry strategy
- **AI MVP Success Metrics** (10-12 pages): Technical success criteria and HITL processes

### Execution Documents

- **Financial Model** (25-30 pages): Revenue projections, cost structure, and unit economics
- **Legal & Compliance Framework** (15-20 pages): Multi-jurisdiction compliance and IP strategy
- **Partnership Strategy** (12-15 pages): Strategic partnership development and outreach
- **Product Roadmap** (18-22 pages): Technical development timeline and milestones

### Supporting Materials

- **Market Research Appendix** (30-40 pages): Analysis of 12 major infrastructure projects
- **Competitive Analysis** (15-18 pages): Detailed competitive landscape analysis

## Key Features

### Professional Formatting

- Custom InfraRader AI branding and color scheme
- Consistent typography and layout across all documents
- Professional tables, figures, and references

### Comprehensive Content

- All research findings synthesized and integrated
- Investor-ready business plan and financial model
- Complete operational playbooks for team execution
- Legal and compliance frameworks established

### Modular Design

- Individual documents can be built separately
- Easy to update specific sections
- Version control friendly structure
- Cross-references between related sections

## Output Files

All generated PDFs are placed in the `output/` directory:

- `InfraRaderAI-ExecutiveSummary.pdf`
- `InfraRaderAI-BusinessPlan.pdf`
- `InfraRaderAI-PitchDeck.pdf`
- `InfraRaderAI-DataGovernance.pdf`
- `InfraRaderAI-ValueProposition.pdf`
- `InfraRaderAI-CustomerPersonas.pdf`
- `InfraRaderAI-GoToMarket.pdf`
- `InfraRaderAI-AIMetrics.pdf`
- `InfraRaderAI-FinancialModel.pdf`
- `InfraRaderAI-LegalCompliance.pdf`
- `InfraRaderAI-PartnershipStrategy.pdf`
- `InfraRaderAI-ProductRoadmap.pdf`
- `InfraRaderAI-MarketResearch.pdf`
- `InfraRaderAI-CompetitiveAnalysis.pdf`
- `InfraRaderAI-CompleteDocumentation.pdf` (Master compilation)

## Troubleshooting

### Common Issues

1. **Missing Packages**: Ensure all required LaTeX packages are installed
2. **Bibliography Issues**: Run `biber` after `pdflatex` for bibliography processing
3. **Cross-references**: Run `pdflatex` multiple times for proper cross-references
4. **File Permissions**: Ensure build scripts have execute permissions

### Build Process

The build process typically involves:

1. `pdflatex` - First pass for basic compilation
2. `biber` - Bibliography processing (if needed)
3. `pdflatex` - Second pass for cross-references
4. `pdflatex` - Third pass for final output

## Customization

### Adding New Documents

1. Create new `.tex` file in appropriate directory
2. Use `infraradar-main` document class
3. Include required packages from `common-packages.sty`
4. Add build script if needed

### Modifying Templates

- **Colors**: Edit `templates/colors.sty`
- **Packages**: Edit `templates/common-packages.sty`
- **Document Class**: Edit `templates/infraradar-main.cls`

## Support

For issues with the build system or document compilation, check:

1. LaTeX installation and package availability
2. File permissions and directory structure
3. Build script syntax and execution
4. Document syntax and references

## License

This documentation system is proprietary to InfraRader AI and contains confidential business information.
