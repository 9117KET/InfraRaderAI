#!/bin/bash

# InfraRader AI - Executive Summary Build Script

set -e

echo "Building InfraRader AI Executive Summary..."

# Set up directories
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"
OUTPUT_DIR="$PROJECT_ROOT/docs/latex/output"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Build executive summary
cd "$PROJECT_ROOT/docs/latex/executive-summary"

echo "Running pdflatex..."
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex

# Move output
if [ -f "main.pdf" ]; then
    mv "main.pdf" "$OUTPUT_DIR/InfraRaderAI-ExecutiveSummary.pdf"
    echo "✓ Executive Summary built successfully"
    echo "Output: $OUTPUT_DIR/InfraRaderAI-ExecutiveSummary.pdf"
else
    echo "✗ Failed to build Executive Summary"
    exit 1
fi

# Cleanup
rm -f *.aux *.log *.out *.toc *.bbl *.blg *.synctex.gz

echo "Build completed!"
