@echo off
REM InfraRader AI LaTeX Build Scripts - Windows Version
REM Master build script for all documents

echo ==========================================
echo InfraRader AI - LaTeX Document Builder
echo ==========================================

REM Set up directories
set SCRIPT_DIR=%~dp0
set PROJECT_ROOT=%SCRIPT_DIR%..\..
set OUTPUT_DIR=%PROJECT_ROOT%\docs\latex\output
set TEMPLATES_DIR=%PROJECT_ROOT%\docs\latex\templates

REM Create output directory if it doesn't exist
if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

REM Function to build a document
:build_document
set doc_name=%1
set doc_path=%2
set output_file=%3

echo Building %doc_name%...

cd /d "%doc_path%"

REM Run pdflatex multiple times for proper cross-references
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex

REM Move output to output directory
if exist "main.pdf" (
    move "main.pdf" "%OUTPUT_DIR%\%output_file%"
    echo ✓ %doc_name% built successfully
) else (
    echo ✗ Failed to build %doc_name%
    exit /b 1
)

cd /d "%PROJECT_ROOT%"
goto :eof

REM Main execution
if "%1"=="individual" goto :build_individual
if "%1"=="master" goto :build_master
if "%1"=="all" goto :build_all
if "%1"=="clean" goto :cleanup
goto :usage

:build_individual
echo Building individual documents...

REM Foundation Documents
call :build_document "Executive Summary" "%PROJECT_ROOT%\docs\latex\executive-summary" "InfraRaderAI-ExecutiveSummary.pdf"
call :build_document "Business Plan" "%PROJECT_ROOT%\docs\latex\business-plan" "InfraRaderAI-BusinessPlan.pdf"
call :build_document "Pitch Deck" "%PROJECT_ROOT%\docs\latex\pitch-deck" "InfraRaderAI-PitchDeck.pdf"

REM Operational Documents
call :build_document "Data Governance" "%PROJECT_ROOT%\docs\latex\operational" "InfraRaderAI-DataGovernance.pdf"
call :build_document "Value Proposition Canvas" "%PROJECT_ROOT%\docs\latex\operational" "InfraRaderAI-ValueProposition.pdf"
call :build_document "Customer Personas" "%PROJECT_ROOT%\docs\latex\operational" "InfraRaderAI-CustomerPersonas.pdf"
call :build_document "Go-to-Market Plan" "%PROJECT_ROOT%\docs\latex\operational" "InfraRaderAI-GoToMarket.pdf"
call :build_document "AI Metrics & HITL" "%PROJECT_ROOT%\docs\latex\operational" "InfraRaderAI-AIMetrics.pdf"

REM Execution Documents
call :build_document "Financial Model" "%PROJECT_ROOT%\docs\latex\execution" "InfraRaderAI-FinancialModel.pdf"
call :build_document "Legal & Compliance" "%PROJECT_ROOT%\docs\latex\execution" "InfraRaderAI-LegalCompliance.pdf"
call :build_document "Partnership Strategy" "%PROJECT_ROOT%\docs\latex\execution" "InfraRaderAI-PartnershipStrategy.pdf"
call :build_document "Product Roadmap" "%PROJECT_ROOT%\docs\latex\execution" "InfraRaderAI-ProductRoadmap.pdf"

REM Supporting Materials
call :build_document "Market Research Appendix" "%PROJECT_ROOT%\docs\latex\appendix" "InfraRaderAI-MarketResearch.pdf"
call :build_document "Competitive Analysis" "%PROJECT_ROOT%\docs\latex\appendix" "InfraRaderAI-CompetitiveAnalysis.pdf"

goto :success

:build_master
echo Building master compilation document...

cd /d "%PROJECT_ROOT%\docs\latex\complete-documentation"

REM Run pdflatex multiple times for proper cross-references and bibliography
pdflatex -interaction=nonstopmode infraradar-complete.tex
biber infraradar-complete
pdflatex -interaction=nonstopmode infraradar-complete.tex
pdflatex -interaction=nonstopmode infraradar-complete.tex

REM Move output to output directory
if exist "infraradar-complete.pdf" (
    move "infraradar-complete.pdf" "%OUTPUT_DIR%\InfraRaderAI-CompleteDocumentation.pdf"
    echo ✓ Master compilation built successfully
) else (
    echo ✗ Failed to build master compilation
    exit /b 1
)

cd /d "%PROJECT_ROOT%"
goto :success

:build_all
call :build_individual
call :build_master
goto :success

:cleanup
echo Cleaning up temporary files...

REM Clean up temporary files
for /r "%PROJECT_ROOT%\docs\latex" %%f in (*.aux *.log *.out *.toc *.bbl *.blg *.idx *.ind *.ilg *.lof *.lot *.fls *.fdb_latexmk *.synctex.gz) do del "%%f"

echo ✓ Cleanup completed
goto :success

:usage
echo Usage: %0 [individual^|master^|all^|clean]
echo   individual: Build individual documents only
echo   master: Build master compilation only
echo   all: Build all documents (default)
echo   clean: Clean up temporary files
exit /b 1

:success
echo.
echo ==========================================
echo Build completed successfully!
echo Output files are in: %OUTPUT_DIR%
echo ==========================================
exit /b 0
