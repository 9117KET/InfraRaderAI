% InfraRader AI - Custom Document Class
% Professional LaTeX template for business documentation
% Version 1.0

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{infraradar-main}[2024/10/21 InfraRader AI Document Class]

% Base class options
\DeclareOption{executive}{\def\infraradar@documenttype{executive}}
\DeclareOption{business}{\def\infraradar@documenttype{business}}
\DeclareOption{operational}{\def\infraradar@documenttype{operational}}
\DeclareOption{technical}{\def\infraradar@documenttype{technical}}
\DeclareOption{appendix}{\def\infraradar@documenttype{appendix}}

% Default options
\ExecuteOptions{business}
\ProcessOptions\relax

% Load base class
\LoadClass[11pt,a4paper]{article}

% Required packages
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{enumitem}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{cite}
\RequirePackage{url}
\RequirePackage{float}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{tikz}
\RequirePackage{pgfplots}
\RequirePackage{listings}
\RequirePackage{fontawesome5}

% Load color scheme
% Colors are defined directly below instead of loading external file

% Page geometry
\geometry{
    left=2.5cm,
    right=2.5cm,
    top=3cm,
    bottom=3cm,
    headheight=15pt
}

% Colors (defined in colors.sty)
\definecolor{infraradar@primary}{RGB}{0, 102, 204}      % Blue
\definecolor{infraradar@secondary}{RGB}{51, 153, 255}   % Light Blue
\definecolor{infraradar@accent}{RGB}{255, 102, 0}       % Orange
\definecolor{infraradar@dark}{RGB}{25, 25, 25}          % Dark Gray
\definecolor{infraradar@light}{RGB}{245, 245, 245}     % Light Gray
\definecolor{infraradar@text}{RGB}{60, 60, 60}         % Text Gray

% Hyperref setup
\hypersetup{
    colorlinks=true,
    linkcolor=infraradar@primary,
    urlcolor=infraradar@primary,
    citecolor=infraradar@primary,
    filecolor=infraradar@primary,
    pdfauthor={InfraRader AI},
    pdftitle={InfraRader AI Business Documentation},
    pdfsubject={Business Intelligence Platform for Infrastructure Projects},
    pdfkeywords={AI, Infrastructure, Business Intelligence, MENA, Datacenters}
}

% Header and footer
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\textbf{InfraRader AI}}
\fancyhead[R]{\thepage}
\fancyfoot[C]{\small Confidential \& Proprietary}

% Title formatting
\titleformat{\section}
    {\Large\bfseries\color{infraradar@primary}}
    {\thesection}{1em}{}
    [\color{infraradar@primary}\titlerule]

\titleformat{\subsection}
    {\large\bfseries\color{infraradar@dark}}
    {\thesubsection}{1em}{}

\titleformat{\subsubsection}
    {\normalsize\bfseries\color{infraradar@dark}}
    {\thesubsubsection}{1em}{}

% Custom commands
\newcommand{\infraradar@logo}{\textbf{InfraRader AI}}
\newcommand{\infraradar@tagline}{Intelligent Infrastructure Project Intelligence}

% Title page command
\newcommand{\infraradar@titlepage}[3]{%
    \begin{titlepage}
        \centering
        \vspace*{2cm}
        
        {\Huge\bfseries\color{infraradar@primary} InfraRader AI\par}
        \vspace{0.5cm}
        {\Large\color{infraradar@text} \infraradar@tagline\par}
        \vspace{2cm}
        
        {\huge\bfseries #1\par}
        \vspace{1cm}
        
        {\large #2\par}
        \vspace{2cm}
        
        {\large #3\par}
        \vspace{3cm}
        
        {\large\bfseries\color{infraradar@primary} Confidential \& Proprietary\par}
        {\large Date: \today\par}
        
    \end{titlepage}
}

% Executive summary formatting
\newcommand{\execsummary}[1]{%
    \begin{center}
        \begin{minipage}{0.8\textwidth}
            \centering
            {\large\bfseries\color{infraradar@primary} Executive Summary\par}
            \vspace{0.5cm}
            #1
        \end{minipage}
    \end{center}
    \vspace{1cm}
}

% Key metrics box
\newcommand{\keymetrics}[4]{%
    \begin{center}
        \begin{tabular}{cccc}
            \textbf{#1} & \textbf{#2} & \textbf{#3} & \textbf{#4} \\
            \color{infraradar@primary}\rule{2cm}{0.1cm} & 
            \color{infraradar@primary}\rule{2cm}{0.1cm} & 
            \color{infraradar@primary}\rule{2cm}{0.1cm} & 
            \color{infraradar@primary}\rule{2cm}{0.1cm}
        \end{tabular}
    \end{center}
}

% Highlight box
\newenvironment{highlightbox}[1][infraradar@light]
{%
    \begin{center}
        \begin{minipage}{0.9\textwidth}
            \colorbox{#1}{\parbox{\textwidth}{%
                \vspace{0.5cm}
                \begin{center}
                    \textbf{\color{infraradar@primary} Key Insight}
                \end{center}
                \vspace{0.3cm}
            }}
        \end{minipage}
    \end{center}
}

% Table formatting
\renewcommand{\arraystretch}{1.2}
\setlength{\tabcolsep}{12pt}

% List formatting
\setlist[itemize]{leftmargin=*,topsep=0.5em}
\setlist[enumerate]{leftmargin=*,topsep=0.5em}

% Code formatting
\lstset{
    basicstyle=\ttfamily\small,
    breaklines=true,
    frame=single,
    backgroundcolor=\color{infraradar@light},
    keywordstyle=\color{infraradar@primary},
    commentstyle=\color{infraradar@text},
    stringstyle=\color{infraradar@accent}
}

% Bibliography setup
\bibliographystyle{ieeetr}

% Document type specific formatting
\ifx\infraradar@documenttype\undefined
    \def\infraradar@documenttype{business}
\fi

\ifx\infraradar@documenttype\executive
    \geometry{left=3cm,right=3cm,top=2.5cm,bottom=2.5cm}
    \renewcommand{\baselinestretch}{1.1}
\fi

\ifx\infraradar@documenttype\business
    \geometry{left=2.5cm,right=2.5cm,top=3cm,bottom=3cm}
    \renewcommand{\baselinestretch}{1.2}
\fi

\ifx\infraradar@documenttype\operational
    \geometry{left=2cm,right=2cm,top=2.5cm,bottom=2.5cm}
    \renewcommand{\baselinestretch}{1.15}
\fi

\ifx\infraradar@documenttype\technical
    \geometry{left=2cm,right=2cm,top=2.5cm,bottom=2.5cm}
    \renewcommand{\baselinestretch}{1.1}
\fi

\ifx\infraradar@documenttype\appendix
    \geometry{left=2cm,right=2cm,top=2.5cm,bottom=2.5cm}
    \renewcommand{\baselinestretch}{1.1}
\fi

\endinput
