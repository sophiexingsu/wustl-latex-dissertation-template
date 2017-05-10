%%
%% This is file `wuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% wuthesis.dtx  (with options: `class')
%%
%% IMPORTANT NOTICE:
%%
%% For the copyright see the source file.
%%
%% Any modified versions of this file must be renamed
%% with new filenames distinct from wuthesis.cls.
%%
%% For distribution of the original source see the terms
%% for copying and modification in the file wuthesis.dtx.
%%
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
%% Copyright (C) 1996 Long Duan
%% 2005, 2007, and 2008 revisions by Greg Hackmann
%% 2014 revisions by Michael Hall, David Lu!!
%%
%% Please note:  This document class is not compatable with the
%%               old LaTeX 2.09.  It uses LaTeX2e specific commands.
%%
%% Send bug reports to:
%%
%% gwh2@cse.wustl.edu
%%
\def\fileversion{1.10}
\def\filedate{4/13/2017}
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
\typeout{*************************************************************}
\typeout{** Wash U - Sever Institute thesis class                     }
\typeout{** version \fileversion, \filedate                           }
\typeout{** Copyright (c) 1995 Kevin Ruland                           }
\typeout{** with revisions by Long Duan, Greg Hackmann,               }
\typeout{** Michael Hall, David Lu!!, Kyle Harms                      }
\typeout{*************************************************************}
%%
%% Actually not too much of this code remains but the copyright
%% remains.
%%*************************************************************
%%** UT Austin Thesis Style File, version 2.0, January 1995
%%**
%%** Copyright (c) 1995 Dinesh Das.  All rights reserved.
%%** This file is free and can be modified or distributed as
%%** long as you meet the following conditions:
%%**
%%** (1) This copyright notice is kept intact on all modified
%%**     copies.
%%** (2) If this file is modified, the original file name must
%%**     not be used.
%%*************************************************************
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wuthesis}[\filedate\space v\fileversion]
\DeclareOption{thesisdraft}{
  \AtEndOfClass{
    \def\ps@textpageheadings{%
     \let\@oddfoot\@empty\let\@evenfoot\@empty
     \def\@oddhead{\textsl{Draft of \timestamp}\hfil\thepage}%
     \let\@mkboth\@gobbletwo
     \let\chaptermark\@gobble
     \let\sectionmark\@gobble}
   }
}
\DeclareOption{phdthesis}{
    \newcommand{\thesistype}{Dissertation}
    \newcommand{\thesisdegree}{Doctor of Philosophy}
    \newcommand{\thesisdegreeabbreviation}{Ph.D.}
}
\DeclareOption{dscthesis}{
    \newcommand{\thesistype}{Dissertation}
    \newcommand{\thesisdegree}{Doctor of Science}
    \newcommand{\thesisdegreeabbreviation}{D.Sc.}
}
\DeclareOption{mastersthesis}{
    \newcommand{\thesistype}{Thesis}
    \newcommand{\thesisdegree}{Master of Science}
    \newcommand{\thesisdegreeabbreviation}{M.S.}
}
\DeclareOption{singlespace}{\AtBeginDocument{\singlespacing}}
\DeclareOption{oneandhalfspace}{\AtBeginDocument{\onehalfspacing}}
\DeclareOption{doublespace}{\AtBeginDocument{\doublespacing}}
\DeclareOption{indentfirst}{\let\@afterindentfalse\@afterindenttrue
                            \@afterindenttrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ExecuteOptions{doublespace}
\ProcessOptions
\LoadClass[oneside,openany]{book}[1994/12/01]
\ifx\undefined\thesistype
  \ClassError{wuthesis}
   {Please select either the phdthesis or mastersthesis class options}
   {Use, for example, \protect\documentclass[phdthesis]{wuthesis}}
\fi
\RequirePackage[normalem]{ulem}
\RequirePackage{setspace}
\RequirePackage[compact]{titlesec}
\RequirePackage{remreset}
\RequirePackage{tocloft}

% ellipsis conflicts with unicode support in lualatex
% \RequirePackage{ellipsis}
\RequirePackage{graphicx}
% Determine if the image is too wide for the page.
% http://tex.stackexchange.com/questions/12459/resize-large-images-that-exceed-page-margin-whilst-respecting-existing-scale
\newsavebox\IBox
\let\Includegrfx\includegraphics
\renewcommand\includegraphics[2][]{%
  \sbox\IBox{\Includegrfx[#1]{#2}}%
  \ifdim\wd\IBox>\textwidth\resizebox{\textwidth}{!}{\usebox\IBox}\else
                           \usebox\IBox\fi}

\@removefromreset{footnote}{chapter}
\newcommand{\thesisauthor}{Ima Gooden-Reddi}
\newcommand{\thesisauthorlastname}{Gooden-Reddi}
\newcommand{\thesisauthorpreviousdegrees}{}
\newcommand{\thesismonth}{May}
\newcommand{\thesisyear}{2009}
\newcommand{\thesistitle}{Title}
\newcommand{\thesissupervisor}{Professor Katherine Doe}
\newcommand{\thesiscommittee}{Katherine Doe, Chair \\
Michael Allen \\
Robert Edward Thomas}
\newcommand{\thesisschool}{School of Engineering \& Applied Science}
\newcommand{\thesisdepartment}{Department of Computer Science and Engineering}
\newcommand{\thesisfield}{Computer Science}

\hoffset -1in
\voffset -1in
\setlength{\textheight}{9.0in} % Shortened to make page number appear exactly one inch from bottom (Modified by Michael Hall)
\advance\textheight -0pt % header      % Modified by Michael Hall
\advance\textheight -30pt % footer     % Modified by Michael Hall
\setlength{\textwidth}{6.5in}
\advance\textwidth 0in % left and right margins
\setlength{\oddsidemargin}{1.0in}
\setlength{\evensidemargin}{1.0in}
\setlength{\topmargin}{1in}
\setlength{\headheight}{0pt}
%\setlength{\headsep}{18pt}
\setlength{\headsep}{0pt}      % Modified by Michael Hall
%\setlength{\footskip}{18pt}
\setlength{\footskip}{30pt}    % Modified by Michael Hall
\setlength{\parskip}{12pt} % add 1 line skip between paragraphs
\setlength{\parindent}{0in} % use block indenting
\newlength{\chapterpadding}
\setlength{\chapterpadding}{1.75in}
\newlength{\chaptervspace}
\setlength{\chaptervspace}{\chapterpadding}
\addtolength{\chaptervspace}{-\topmargin}
\addtolength{\chaptervspace}{-60pt}
\setlength{\intextsep}{32pt plus 8.0pt minus 8.0pt}

\widowpenalty =10000
\clubpenalty  =10000
\brokenpenalty=10000
\AtBeginDocument{\pagestyle{plain}}
\renewcommand{\frontmatter}{
  \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{roman}}
\renewcommand{\mainmatter}{
  \cleardoublepage
  \@mainmattertrue
  \pagenumbering{arabic}}
\def\ps@textpageheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@oddhead{\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble}
\newenvironment{thesisdedicationpage}{
    \strut \vfill
    \vspace{-20mm}
    \begin{spacing}{1.5}
    \begin{center}
      \thesisdedication
    \end{center}
    \end{spacing}}
    {\vfill \strut
    \newpage}
\newcommand{\thesisdedication}{To myself}
\newenvironment{thesisacknowledgments}
    {\chapter*{\thesisacknowledgmenthead}
     \addcontentsline{toc}{chapter}{\thesisacknowledgmenthead}
     %\begin{spacing}{1.1}
	 }
    {\nopagebreak%
     \thesisacknowledgmentsignature

     \vskip 5mm
     \thesisacknowledgmentpostscript
     %\end{spacing}
     \newpage}
\newcommand{\thesisacknowledgmenthead}{Acknowledgments}
\newcommand{\thesisacknowledgmentsigname}{\thesisauthor}
\newcommand{\thesisacknowledgmentsignametype}{\large}
\newcommand{\thesisacknowledgmentpostscript}{}
\newcommand{\thesisacknowledgmentsignature}%
    {\vskip 5mm
     \raggedleft
     {\thesisacknowledgmentsignametype\thesisacknowledgmentsigname}
     \vskip 3mm
     \raggedright
     {\slshape
      \noindent Washington University in Saint Louis \\
      \thesismonth\ \thesisyear}}
\newenvironment{thesistitlepage}{
  \thispagestyle{empty}
  \addtocounter{page}{-1}
  \begingroup
    \thesistitlepagefont
    \begin{center}
    \begin{singlespace}

      WASHINGTON UNIVERSITY IN ST.\@ LOUIS \\[\baselineskip]
      \thesisschool \\
      \thesisdepartment

      \vspace{\stretch{.15}}

      \thesistype\ Examination Committee: \\
      \thesiscommittee

      \vspace{\stretch{.55}}

      {\thesistitle} \\
      by \\
      \thesisstudent

      \vspace{\stretch{.35}}

      A \MakeLowercase{\thesistype}\ presented to \\
      The Graduate School \\
      of Washington University in \\
      partial fulfillment of the \\
      requirements for the degree \\
      of {\thesisdegree}

      \vspace{\stretch{.75}}

      \thesismonth\ \thesisyear \\
      St. Louis, Missouri

    \end{singlespace}
    \end{center}
    \vspace{-34pt}
    }
    {\newpage
   \endgroup}
\newcommand{\thesistitlepagefont}{\fontsize{14}{14}\selectfont}
\newcommand{\thesisstudent}{\thesisauthor\thesisauthorpreviousdegrees}

\newenvironment{thesiscopyrightpage}{
    \pagestyle{empty}
    \strut \vfill
    \begin{center}
      \copyright~\thesisyear, \thesiscopyrightholder
    \end{center}}
    {\vfill \strut
    \newpage}

\newenvironment{extranotespage}{
    \pagestyle{empty}}
    {\newpage}

\newcommand{\thesiscopyrightholder}{\thesisauthor}

\newcommand{\thesisabstracthead}{Abstract}
\newenvironment{thesisabstract}{
  %\setcounter{page}{2} % in revised edition abstract was moved.
  \addcontentsline{toc}{chapter}{\thesisabstracthead}
  \begin{center}
  \begin{doublespace}
    \vbox to 18pt{}
    ABSTRACT OF THE \@uppercase{\thesistype} \\
    % \vspace{18pt}
    \thesistitle \\
    by \\
    \thesisauthor \\
    \thesisdegree\ in \thesisfield \\
    %Washington University in St. Louis, \thesismonth\ \thesisyear \\
    %Research Advisor: \thesissupervisor
    Washington University in St.~Louis, \thesisyear \\
    \thesissupervisor
  \end{doublespace}
  \end{center}
  \vspace{-48pt}
  \begin{doublespace}}
  { \end{doublespace}
  \newpage}
{\newpage}

%% Format the table of contents, list of figures, list of tables, and list of abbreviations properly.
\cftsetrmarg{2.55em}
\cftsetpnumwidth{2.1em}
\renewcommand{\cftdotsep}{0.5}

\renewcommand{\cftfigpresnum}{Figure }
\renewcommand{\cftfignumwidth}{5.7em}
\renewcommand{\cftfigaftersnum}{:}

\renewcommand{\cfttabpresnum}{Table }
\renewcommand{\cfttabnumwidth}{5.7em}
\renewcommand{\cfttabaftersnum}{:}

\setlength{\cftbeforechapskip}{8pt}
\setlength{\cftbeforesecskip}{6pt}
\setlength{\cftbeforesubsecskip}{6pt}
\setlength{\cftbeforefigskip}{8pt}
\setlength{\cftbeforetabskip}{8pt}

\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
% \renewcommand{\cftchapfont}{\normalfont}
\renewcommand{\cftchappagefont}{\normalfont}

\renewcommand\contentsname{Table of Contents}

\renewcommand{\listoffigures}{%
  \chapter*{\listfigurename}%
  \addcontentsline{toc}{chapter}{\listfigurename}%
  \@starttoc{lof}%
}

\renewcommand{\listoftables}{%
  \chapter*{\listtablename}%
  \addcontentsline{toc}{chapter}{\listtablename}%
  \@starttoc{lot}%
  \listoftablespostscript
}
\newcommand{\listoftablespostscript}{}

\renewcommand{\chapter}{\if@openright\cleardoublepage\else\clearpage\fi%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\newif\if@appendix\@appendixfalse
\renewcommand{\appendix}{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \renewcommand{\@chapapp}{\appendixname}%
  \renewcommand{\thechapter}{\Alph{chapter}}%
  \renewcommand{\thepage}{[\arabic{page}]}
  \@appendixtrue}

\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \if@appendix
                           \addcontentsline{toc}{chapter}%
                           {\appendixname~\protect\numberline{\thechapter:}~#1}%
                         \else
                           \addcontentsline{toc}{chapter}%
                           {Chapter \protect\numberline{\thechapter:}#1}%
                         \fi
                       \else
                         \addcontentsline{toc}{chapter}{#1}%
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{8\p@}}%
                    \addtocontents{lot}{\protect\addvspace{8\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}

\renewenvironment{quote}
  {\begin{singlespace}\list{}{\rightmargin\leftmargin}%
    \item\relax}
  {\endlist\end{singlespace}}

% NOTE: bibliography style not used for biblatex/biber, only bibtex
\renewcommand{\bibname}{References}
\renewenvironment{thebibliography}[1]
     {\chapter*{\bibname}%
      \addcontentsline{toc}{chapter}{\bibname}
      \list{\@biblabel{\arabic{enumiv}}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
    \@openbib@code
            %\if@openbib
              %\advance\leftmargin\bibindent
              %\itemindent -\bibindent
              %\listparindent \itemindent
              %\parsep \z@
            %\fi
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\arabic{enumiv}}}%
      %\if@openbib
        %\renewcommand\newblock{\par}
      %\else
        %\renewcommand\newblock{\hskip .11em \@plus.33em \@minus.07em}%
      %\fi
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.=\@m}
     {\def\@noitemerr{\@warning{Empty `thebibliography' environment}}%
      \endlist}

\newcount\hour \newcount\minute
\hour=\time  \divide \hour by 60
\minute=\time
\loop \ifnum \minute > 59 \advance \minute by -60 \repeat
\def\thesistime{\ifnum \hour<13 \number\hour:%
                      \ifnum \minute<10 0\fi
                      \number\minute
                      \ifnum \hour<12 \ am\else \ pm\fi
         \else \advance \hour by -12 \number\hour:%
                      \ifnum \minute<10 0\fi
                      \number\minute \ pm\fi}
\def\timestamp{\thesistime, \today}
\newcommand{\@uppercase}[1]{{\expandafter\uppercase\expandafter{#1}}}
\newcommand\@seperator{\vrule height.4pt depth0pt width3.5in}
\newcommand\@numberword[1]{\ifcase#1 zero\or one\or  two\or three\or
four\or five\or six\or seven\or eight\else nine\fi\relax}
\endinput
%%
%% End of file `wuthesis.cls'.
