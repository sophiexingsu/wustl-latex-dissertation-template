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


% ---- Define Page Layout ----------------------------------------------------------
\LoadClass[letterpaper,12pt,openany,oneside,onecolumn]{memoir}

% Page margin
\setlrmarginsandblock{1in}{1in}{*}
\setulmarginsandblock{1in}{*}{1}

% Header and footer location
% Note though the style specifies that nothing can be inside the page margins, the example template
% doc file actually places the page numbers in the margin. The settings below mimics the doc.
\setheadfoot{18pt}{18pt}
\setheaderspaces{0.5in}{*}{*}

\setmarginnotes{1em}{6em}{\onelineskip}

% Default to double spacing for the document
\DoubleSpacing

% Math environment
\RequirePackage{amsmath}

% Unicode fonts
\RequirePackage{fontspec}
\RequirePackage{unicode-math}
