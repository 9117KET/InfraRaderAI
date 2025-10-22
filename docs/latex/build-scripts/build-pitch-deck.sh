#!/bin/bash

# InfraRader AI - Pitch Deck Build Script

set -e

echo "Building InfraRader AI Pitch Deck..."

# Set up directories
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"
OUTPUT_DIR="$PROJECT_ROOT/docs/latex/output"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Build pitch deck
cd "$PROJECT_ROOT/docs/latex/pitch-deck"

echo "Running pdflatex..."
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex

# Move output
if [ -f "main.pdf" ]; then
    mv "main.pdf" "$OUTPUT_DIR/InfraRaderAI-PitchDeck.pdf"
    echo "✓ Pitch Deck built successfully"
    echo "Output: $OUTPUT_DIR/InfraRaderAI-PitchDeck.pdf"
else
    echo "✗ Failed to build Pitch Deck"
    exit 1
fi

# Cleanup
rm -f *.aux *.log *.out *.toc *.bbl *.blg *.synctex.gz

echo "Build completed!"
