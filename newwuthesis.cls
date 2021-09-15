% WUSTL thesis/dissertation template
% Copyright 2021 Liang-Bo Wang
%
% This work may be distributed and/or modified under the conditions of the LaTeX Project Public
% License, either version 1.3 of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `unmaintained'.
%
% This work consists of the files wuthesis.cls.

% ---- Origin of this template ------------------------------------------------
% While it's difficult to fully trace the origins, based on the comments in the original
% wuthesis.cls file, Kevin Ruland created the WashU Sever Institute thesis class wuthesis.dtx (later
% converted to wuthesis.cls) in 1995 based on UT Austin's Thesis Style File v2 by Dinesh Das in
% 1995. Revisions were made by Long Duan in 1996, by Greg Hackmann in 2005, 2007, and 2008, and
% finally by Michael Hall, David Lu in 2014.

% ---- Change Log -------------------------------------------------------------
% Version 2021-09-12
%   * Initial commit
%   * Rewrite of the original wuthesis.cls file

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{newwuthesis}[2021/09/12 WUSTL thesis/dissertation template]


% ---- Parse Options ----------------------------------------------------------


% ---- Define Page Layout -----------------------------------------------------
\LoadClass[letterpaper,12pt,openany,oneside,onecolumn]{memoir}

% Page margin
\setlrmarginsandblock{1in}{1in}{*}
\setulmarginsandblock{1in}{88pt}{*}  % 1in + 16pt = 88pt

% Header and footer location
% Note though the style specifies that nothing can be inside the page margins, the style guide
% doc file actually places the page numbers in the margin. The settings below mimics the doc.
\setheadfoot{18pt}{16pt}
\setheaderspaces{*}{6pt}{*}

% Margin note location
% Note that the style guide prohibits margin notes.
\setmarginnotes{1em}{4em}{\onelineskip}

% Default to double spacing for the document
\DoubleSpacing

% Math environment
\RequirePackage{amsmath}

% Unicode fonts
\RequirePackage{fontspec}
\RequirePackage{unicode-math}

% Underline improvement
\RequirePackage{ulem}


% ---- Main page style --------------------------------------------------------
\makepagestyle{main}
   \makeevenfoot{main}{}{\thepage}{}
   \makeoddfoot{main}{}{\thepage}{}

% Default page style
\pagestyle{plain}


% ---- Section numbering and style -----------------------------------------------------
% Section numbering down to subsection
\setsecnumdepth{subsection}
\maxsecnumdepth{subsection}

% Chapter style
\chapterstyle{tandh}
\renewcommand*{\printchaptername}{%
    \centering\chapnamefont\chaptername\ }
\renewcommand*{\printchapternum}{%
    \thechapter:\ }

\renewcommand*{\chapnamefont}{\normalfont\huge\bfseries\rmfamily}
\renewcommand*{\chapnumfont}{\normalfont\huge\bfseries\rmfamily}
\renewcommand*{\chaptitlefont}{\normalfont\huge\bfseries\rmfamily}


% ---- Typeset Title page -----------------------------------------------------
\newcommand{\settitle}[1]{\def\thesistitle{#1}}
\newcommand{\setauthor}[1]{\def\thesisauthor{#1}}
\newcommand{\setthesistype}[1]{\def\thesistype{#1}}
\newcommand{\setthesisdegree}[1]{\def\thesisdegree{#1}}
\newcommand{\setthesisdegreeabbrv}[1]{\def\thesisdegreeabbrv{#1}}
% Degree officially earn date must be in December, May, or August
\newcommand{\setdegreeearndate}[1]{\def\degreeearndate{#1}}

\newcommand{\setthesisadvisor}[1]{\def\thesisadvisor{#1}}
\newcommand{\setthesiscommittee}[1]{\def\thesiscommittee{#1}}
\newcommand{\setthesisschool}[1]{\def\thesisschool{#1}}
\newcommand{\setthesisdepartment}[1]{\def\thesisdepartment{#1}}

\newcommand{\thetitlepage}{%
    \clearpage
    \begin{titlingpage}
    \thispagestyle{empty}
    \SingleSpacing
    \setSingleSpace{1.15}
    \centering
    WASHINGTON UNIVERSITY IN ST.~LOUIS \\[\onelineskip]
    \thesisschool \\
    \thesisdepartment \\[3\onelineskip]

    \thesistype\ Examination Committee: \\
    \thesiscommittee

    \vfill
    \thesistitle \\
    by\\
    \thesisauthor \\[4\onelineskip]

    A \MakeLowercase{\thesistype} presented to \\
    The Graduate School \\
    of Washington University in \\
    partial fulfillment of the \\
    requirements for the degree \\
    of \thesisdegree

    \vfill
    \vfill
    {\degreeearndate}\\
    St.~Louis, Missouri
    \end{titlingpage}
    \clearpage%
}

% ---- Thesis copyright page -------------------------------------------------
\newcommand{\thesiscopyright}[1]{{%
    \clearpage
    \thispagestyle{empty}
    \mbox{}
    \vfill
    \centering
    #1
    \vfill
    \clearpage%
}}


% ---- Typeset table of contents ---------------------------------------------
\setrmarg{2.5em}
\setpnumwidth{1.5em}

\renewcommand{\contentsname}{Table of Contents}
\renewcommand{\cftdotsep}{0.5}
\renewcommand*{\cftchapterfont}{\normalfont}
\renewcommand*{\cftchapterpagefont}{\normalfont}
\renewcommand*{\cftchapterleader}{\cftchapterfont\cftdotfill{\cftchapterdotsep}}
\renewcommand*{\cftchapterdotsep}{\cftdotsep}
\renewcommand*{\cftchaptername}{\chaptername}
\renewcommand*{\cftchapterpresnum}{\ }
\renewcommand*{\cftchapteraftersnum}{:}


\maxtocdepth{subsection}  % put 3 levels into the ToC


% ---- Typeset dedication page -----------------------------------------------
\newcommand{\thesisdedication}[1]{{%
    \clearpage
    \mbox{}
    \vfill
    \centering
    #1
    \vfill
    \clearpage%
}}
