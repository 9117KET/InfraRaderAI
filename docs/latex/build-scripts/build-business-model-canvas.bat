@echo off
echo ==========================================
echo InfraRader AI - Business Model Canvas Builder
echo ==========================================
echo Building Business Model Canvas...

cd ..\foundation
pdflatex -output-directory=../output business-model-canvas-simple.tex

if %errorlevel% equ 0 (
    echo ✓ Business Model Canvas built successfully!
    echo Output: ../output/business-model-canvas-simple.pdf
) else (
    echo ✗ Failed to build Business Model Canvas
)

pause
