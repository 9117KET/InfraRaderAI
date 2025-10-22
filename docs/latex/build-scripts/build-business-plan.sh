#!/bin/bash

# InfraRader AI - Business Plan Build Script

set -e

echo "Building InfraRader AI Business Plan..."

# Set up directories
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"
OUTPUT_DIR="$PROJECT_ROOT/docs/latex/output"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Build business plan
cd "$PROJECT_ROOT/docs/latex/business-plan"

echo "Running pdflatex..."
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex

# Move output
if [ -f "main.pdf" ]; then
    mv "main.pdf" "$OUTPUT_DIR/InfraRaderAI-BusinessPlan.pdf"
    echo "✓ Business Plan built successfully"
    echo "Output: $OUTPUT_DIR/InfraRaderAI-BusinessPlan.pdf"
else
    echo "✗ Failed to build Business Plan"
    exit 1
fi

# Cleanup
rm -f *.aux *.log *.out *.toc *.bbl *.blg *.synctex.gz

echo "Build completed!"
