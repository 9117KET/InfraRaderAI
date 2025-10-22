#!/bin/bash

# InfraRader AI LaTeX Build Scripts
# Master build script for all documents

set -e  # Exit on any error

echo "=========================================="
echo "InfraRader AI - LaTeX Document Builder"
echo "=========================================="

# Set up directories
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"
OUTPUT_DIR="$PROJECT_ROOT/docs/latex/output"
TEMPLATES_DIR="$PROJECT_ROOT/docs/latex/templates"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Function to build a document
build_document() {
    local doc_name="$1"
    local doc_path="$2"
    local output_file="$3"
    
    echo "Building $doc_name..."
    
    cd "$doc_path"
    
    # Run pdflatex multiple times for proper cross-references
    pdflatex -interaction=nonstopmode "$(basename "$doc_path")/main.tex" || true
    pdflatex -interaction=nonstopmode "$(basename "$doc_path")/main.tex" || true
    
    # Move output to output directory
    if [ -f "main.pdf" ]; then
        mv "main.pdf" "$OUTPUT_DIR/$output_file"
        echo "✓ $doc_name built successfully"
    else
        echo "✗ Failed to build $doc_name"
        return 1
    fi
    
    cd "$PROJECT_ROOT"
}

# Function to build individual documents
build_individual_docs() {
    echo "Building individual documents..."
    
    # Foundation Documents
    build_document "Executive Summary" "docs/latex/executive-summary" "InfraRaderAI-ExecutiveSummary.pdf"
    build_document "Business Plan" "docs/latex/business-plan" "InfraRaderAI-BusinessPlan.pdf"
    build_document "Pitch Deck" "docs/latex/pitch-deck" "InfraRaderAI-PitchDeck.pdf"
    
    # Operational Documents
    build_document "Data Governance" "docs/latex/operational" "InfraRaderAI-DataGovernance.pdf" "data-governance.tex"
    build_document "Value Proposition Canvas" "docs/latex/operational" "InfraRaderAI-ValueProposition.pdf" "value-proposition-canvas.tex"
    build_document "Customer Personas" "docs/latex/operational" "InfraRaderAI-CustomerPersonas.pdf" "customer-personas.tex"
    build_document "Go-to-Market Plan" "docs/latex/operational" "InfraRaderAI-GoToMarket.pdf" "go-to-market.tex"
    build_document "AI Metrics & HITL" "docs/latex/operational" "InfraRaderAI-AIMetrics.pdf" "ai-metrics-hitl.tex"
    
    # Execution Documents
    build_document "Financial Model" "docs/latex/execution" "InfraRaderAI-FinancialModel.pdf" "financial-model.tex"
    build_document "Legal & Compliance" "docs/latex/execution" "InfraRaderAI-LegalCompliance.pdf" "legal-compliance.tex"
    build_document "Partnership Strategy" "docs/latex/execution" "InfraRaderAI-PartnershipStrategy.pdf" "partnership-strategy.tex"
    build_document "Product Roadmap" "docs/latex/execution" "InfraRaderAI-ProductRoadmap.pdf" "product-roadmap.tex"
    
    # Supporting Materials
    build_document "Market Research Appendix" "docs/latex/appendix" "InfraRaderAI-MarketResearch.pdf" "market-research.tex"
    build_document "Competitive Analysis" "docs/latex/appendix" "InfraRaderAI-CompetitiveAnalysis.pdf" "competitive-analysis.tex"
}

# Function to build master compilation
build_master_doc() {
    echo "Building master compilation document..."
    
    cd "docs/latex/complete-documentation"
    
    # Run pdflatex multiple times for proper cross-references and bibliography
    pdflatex -interaction=nonstopmode "infraradar-complete.tex" || true
    biber "infraradar-complete" || true
    pdflatex -interaction=nonstopmode "infraradar-complete.tex" || true
    pdflatex -interaction=nonstopmode "infraradar-complete.tex" || true
    
    # Move output to output directory
    if [ -f "infraradar-complete.pdf" ]; then
        mv "infraradar-complete.pdf" "$OUTPUT_DIR/InfraRaderAI-CompleteDocumentation.pdf"
        echo "✓ Master compilation built successfully"
    else
        echo "✗ Failed to build master compilation"
        return 1
    fi
    
    cd "$PROJECT_ROOT"
}

# Function to clean up temporary files
cleanup() {
    echo "Cleaning up temporary files..."
    
    find docs/latex -name "*.aux" -delete
    find docs/latex -name "*.log" -delete
    find docs/latex -name "*.out" -delete
    find docs/latex -name "*.toc" -delete
    find docs/latex -name "*.bbl" -delete
    find docs/latex -name "*.blg" -delete
    find docs/latex -name "*.idx" -delete
    find docs/latex -name "*.ind" -delete
    find docs/latex -name "*.ilg" -delete
    find docs/latex -name "*.lof" -delete
    find docs/latex -name "*.lot" -delete
    find docs/latex -name "*.fls" -delete
    find docs/latex -name "*.fdb_latexmk" -delete
    find docs/latex -name "*.synctex.gz" -delete
    
    echo "✓ Cleanup completed"
}

# Main execution
main() {
    case "${1:-all}" in
        "individual")
            build_individual_docs
            ;;
        "master")
            build_master_doc
            ;;
        "all")
            build_individual_docs
            build_master_doc
            ;;
        "clean")
            cleanup
            ;;
        *)
            echo "Usage: $0 [individual|master|all|clean]"
            echo "  individual: Build individual documents only"
            echo "  master: Build master compilation only"
            echo "  all: Build all documents (default)"
            echo "  clean: Clean up temporary files"
            exit 1
            ;;
    esac
    
    echo ""
    echo "=========================================="
    echo "Build completed successfully!"
    echo "Output files are in: $OUTPUT_DIR"
    echo "=========================================="
}

# Run main function with all arguments
main "$@"
