% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% crux.cls — a CRUX-themed class for research updates & preprints
%
%   CRUX — Collaborative Research for Updating AI eXpectations
%
% Inspired by the FAIR/Meta preprint style, rebuilt around the CRUX design
% language: Hanken Grotesk + EB Garamond, teal (#C5D7D8) and ink (#1E3538).
%
% Engine: compile with LuaLaTeX (recommended) or XeLaTeX so the bundled brand
% fonts load via fontspec. It also compiles with pdfLaTeX using close
% substitutes (EB Garamond + a grotesk fallback) — see the font section.
%
% Class options:
%   FONT (choose one):
%     brandfont    (default) CRUX website fonts: Hanken Grotesk + EB Garamond
%     cmfont       classic Computer Modern (Latin Modern) look
%   sansbody   set the body text in Hanken Grotesk instead of EB Garamond
%              (only meaningful with brandfont)
%   mistcard   use a light (mist) title card instead of the teal card
%   nologo     hide the CRUX wordmark emblem on the title card
%   (all other options, e.g. twocolumn/11pt, pass through to `article`)
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{crux}[2026/07/22 v1.0 CRUX-themed research update class]

% --- Options -----------------------------------------------------------------
\newif\ifcrux@sansbody \crux@sansbodyfalse
\newif\ifcrux@tealcard \crux@tealcardtrue
\newif\ifcrux@logo     \crux@logotrue
\newif\ifcrux@cmfont   \crux@cmfontfalse   % false => CRUX brand fonts
\newif\ifcrux@fontspec \crux@fontspecfalse % true only when fontspec is loaded
\DeclareOption{sansbody}{\crux@sansbodytrue}
\DeclareOption{mistcard}{\crux@tealcardfalse}
\DeclareOption{nologo}{\crux@logofalse}
\DeclareOption{cmfont}{\crux@cmfonttrue}
\DeclareOption{computermodern}{\crux@cmfonttrue}
\DeclareOption{brandfont}{\crux@cmfontfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[11pt]{article}

% --- Layout ------------------------------------------------------------------
\RequirePackage[top=2.25cm, bottom=2.5cm, left=2.5cm, right=2.5cm,
                columnsep=0.65cm]{geometry}
\RequirePackage{microtype}
\RequirePackage{placeins}
\RequirePackage{setspace}
\RequirePackage{parskip}
\RequirePackage{etoolbox}
\RequirePackage{iftex}
\RequirePackage{enumitem}   % list customisation (leftmargin, itemsep, ...)

% --- Colours: the CRUX palette ----------------------------------------------
\RequirePackage{xcolor}
% Core brand (mirrors app/assets/css/main.css)
\definecolor{cruxmist}{HTML}{F4F6F6}   % primary-50  — card & callout fills
\definecolor{cruxteal}{HTML}{C5D7D8}   % primary-300 — signature background
\definecolor{cruxhaze}{HTML}{8FAAAB}   % primary-400 — borders, hairlines
\definecolor{cruxslate}{HTML}{33595D}  % primary-700 — links, primary data
\definecolor{cruxink}{HTML}{1E3538}    % primary-900 — headings, body ink
\definecolor{cruxwine}{HTML}{764156}   % secondary   — emphasis, stats
% Status accents (borrowed from the crux-1 cost-timeline chart)
\definecolor{cruxamber}{HTML}{F59E0B}  % human / attention
\definecolor{cruxgray}{HTML}{6B7280}   % external / muted
\definecolor{cruxrose}{HTML}{E11D48}   % infra / alert
% Institutional accent (Princeton orange), available if wanted
\definecolor{princeton}{HTML}{E76424}

% --- Fonts -------------------------------------------------------------------
% Three cases, in priority order:
%   1. cmfont       -> classic Computer Modern (Latin Modern), any engine
%   2. LuaLaTeX/XeLaTeX -> real CRUX brand fonts (bundled under ./fonts/)
%   3. pdfLaTeX     -> EB Garamond (TeX Live pkg) + a grotesk sans substitute
\ifcrux@cmfont
  % ---- Case 1: Computer Modern ----------------------------------------------
  \RequirePackage[T1]{fontenc}
  \RequirePackage{lmodern}
  \newcommand{\hankengrotesk}{\sffamily}% brand aliases map to CM families
  \newcommand{\ebgaramond}{\rmfamily}
  \newcommand{\headingfont}{\sffamily}%  CM Sans for headings (keeps structure)
\else
\ifboolexpr{ bool {luatex} or bool {xetex} }{%
  \crux@fontspectrue
  \RequirePackage{fontspec}
  \defaultfontfeatures{Ligatures=TeX}
  % Hanken Grotesk — the CRUX workhorse sans (headings, labels, chrome)
  \newfontfamily\hankengrotesk{HankenGrotesk}[
    Path            = ./fonts/ ,
    Extension       = .ttf ,
    UprightFont     = *-Regular ,
    ItalicFont      = *-Italic ,
    BoldFont        = *-Bold ,
    BoldItalicFont  = *-BoldItalic ,
    FontFace        = {sb}{n}{*-SemiBold} ,
    FontFace        = {sb}{it}{*-SemiBoldItalic} ,
    FontFace        = {mb}{n}{*-Medium} ,
    FontFace        = {mb}{it}{*-MediumItalic} ,
  ]
  % EB Garamond — editorial serif for long-form body & accents
  \newfontfamily\ebgaramond{EBGaramond}[
    Path            = ./fonts/ ,
    Extension       = .ttf ,
    UprightFont     = *-Regular ,
    ItalicFont      = *-Italic ,
    BoldFont        = *-Bold ,
    BoldItalicFont  = *-SemiBoldItalic ,
  ]
  \ifcrux@sansbody
    \setmainfont{HankenGrotesk}[
      Path = ./fonts/ , Extension = .ttf ,
      UprightFont = *-Regular , ItalicFont = *-Italic ,
      BoldFont = *-Bold , BoldItalicFont = *-BoldItalic ]
  \else
    \setmainfont{EBGaramond}[
      Path = ./fonts/ , Extension = .ttf ,
      UprightFont = *-Regular , ItalicFont = *-Italic ,
      BoldFont = *-Bold , BoldItalicFont = *-SemiBoldItalic ]
  \fi
  \setsansfont{HankenGrotesk}[
    Path = ./fonts/ , Extension = .ttf ,
    UprightFont = *-Regular , ItalicFont = *-Italic ,
    BoldFont = *-Bold , BoldItalicFont = *-BoldItalic ]
  \newcommand{\headingfont}{\sffamily}
}{%
  % ---- pdfLaTeX fallback ----------------------------------------------------
  % No fontspec: approximate the brand with TeX Live packages. EB Garamond has
  % a native package; Cabin is a humanist grotesk close to Hanken (else Fira,
  % else Helvetica). These are substitutes -- use LuaLaTeX for the real fonts.
  \RequirePackage[T1]{fontenc}
  \IfFileExists{ebgaramond.sty}{\RequirePackage{ebgaramond}}{}% serif = EB Garamond
  \IfFileExists{cabin.sty}{\RequirePackage{cabin}}{%          % sans = Cabin ...
    \IfFileExists{FiraSans.sty}{\RequirePackage{FiraSans}}{%  % ... or Fira ...
      \RequirePackage[scaled=0.92]{helvet}}}%                 % ... or Helvetica
  \ifcrux@sansbody\renewcommand{\familydefault}{\sfdefault}\fi% body in sans
  \providecommand{\hankengrotesk}{\sffamily}
  \providecommand{\ebgaramond}{\rmfamily}
  \providecommand{\headingfont}{\sffamily}
}
\fi

% --- Graphics & tables -------------------------------------------------------
\RequirePackage{graphicx}
\RequirePackage{subcaption}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{array}
\RequirePackage{colortbl}
\RequirePackage{bm}
\RequirePackage{pifont}
% Row-highlight helpers keyed to the CRUX palette
\newcommand{\cellhi}{\cellcolor{cruxteal!35}}
\newcommand{\cellhii}{\cellcolor{cruxteal!60}}
\newcommand{\cellwine}{\cellcolor{cruxwine!12}}
\newcommand{\cmark}{{\color{cruxslate}\ding{51}}}
\newcommand{\xmark}{{\color{cruxrose}\ding{55}}}

% --- Boxes -------------------------------------------------------------------
\RequirePackage[most]{tcolorbox}

% --- References & links ------------------------------------------------------
\RequirePackage{hyperref}
\RequirePackage[noabbrev,nameinlink]{cleveref}
\hypersetup{
  colorlinks = true,
  linkcolor  = cruxslate,
  citecolor  = cruxslate,
  urlcolor   = cruxslate,
  pdfborder  = {0 0 0},
}
\RequirePackage[round,authoryear]{natbib}
\def\bibfont{\small}
\bibliographystyle{plainnat}

% --- Section & caption format ------------------------------------------------
\RequirePackage{titlesec}
\titleformat*{\section}{\Large\headingfont\bfseries\color{cruxink}}
\titleformat*{\subsection}{\large\headingfont\bfseries\color{cruxink}}
\titleformat*{\subsubsection}{\normalsize\headingfont\bfseries\color{cruxink}}
\titleformat*{\paragraph}{\headingfont\bfseries\color{cruxink}}
\titleformat*{\subparagraph}{\headingfont\itshape\color{cruxink}}
% Bold inline text picks up the Hanken sans, so emphasis reads as CRUX.
\DeclareTextFontCommand{\textbf}{\bfseries\sffamily}

\RequirePackage{caption}
\DeclareCaptionLabelSeparator{cruxsep}{\hspace{0.4em}}
\DeclareCaptionFormat{cruxfmt}{{\sffamily\bfseries\color{cruxink}#1#2}#3}
\captionsetup{singlelinecheck=false, format=cruxfmt, labelsep=cruxsep,
              font=small, labelfont={color=cruxink}}
\captionsetup[sub]{singlelinecheck=true, format=cruxfmt, labelsep=cruxsep,
                   font=small}

% --- Authors, affiliations, metadata (adapted from fairmeta) -----------------
% Class-private list appender (namespaced so it never collides with, or depends
% on, another package's scratch macros such as geometry's \addtolist).
\newcommand\crux@addtolist[5][]{%
  \begingroup
    \if\relax#3\relax\def\sep{}\else\def\sep{#5}\fi
    \let\protect\@unexpandable@protect
    \xdef#3{\expandafter{#3}\sep #4[#1]{#2}}%
  \endgroup
}
\newcommand\authorlist{}
% Keep each author's full name and affiliation markers together. Line breaks
% remain possible only in the inter-author spacing inserted by \author below.
\newcommand\authorformat[2][]{\mbox{\sffamily\bfseries #2$^{#1}$}}
\renewcommand\author[2][]{\crux@addtolist[#1]{#2}{\authorlist}{\authorformat}{\hspace{0.8em}}}

\newcommand\affiliationlist{}
\newcommand\affiliationformat[2][]{{\normalsize\sffamily $^{#1}$#2}}
\newcommand\affiliation[2][]{\crux@addtolist[#1]{#2}{\affiliationlist}{\affiliationformat}{\hspace{0.8em}}}

\newcommand\contributionlist{}
\newcommand\contributionformat[2][]{{\small\sffamily $^{#1}$#2}}
\newcommand\contribution[2][]{\crux@addtolist[#1]{#2}{\contributionlist}{\contributionformat}{\hspace{0.8em}}}

\newcommand\metadatalist{}
\newcommand\metadataformat[2][]{{\small\sffamily {\bfseries #1:} #2}}
\newcommand\metadata[2][]{\crux@addtolist[#1]{#2}{\metadatalist}{\metadataformat}{\par}}

% Abstract is set as a COMMAND: \abstract{...} (not the article environment).
% Do NOT use \begin{abstract}...\end{abstract} with this class.
\renewcommand{\abstract}[1]{\def\abstractlist{{\color{cruxink}#1}}}
\def\abstractlist{}
\newcommand{\email}[1]{\href{mailto:#1}{\texttt{#1}}}
\renewcommand\date[1]{\metadata[Date]{#1}}
\newcommand\correspondence[1]{\metadata[Correspondence]{#1}}

% Eyebrow (small kicker above the title, e.g. "CRUX Update · July 2026")
\newcommand{\crux@eyebrow}{}
\newcommand{\eyebrow}[1]{\renewcommand{\crux@eyebrow}{#1}}
% Subtitle under the title
\newcommand{\crux@subtitle}{}
\newcommand{\subtitle}[1]{\renewcommand{\crux@subtitle}{#1}}

% Title. Default empty and use \def so \title is idempotent (safe to omit,
% or to call more than once) rather than erroring on a second call.
\newcommand{\titlelist}{}
\renewcommand{\title}[1]{\def\titlelist{{\huge\headingfont\bfseries\color{cruxink}#1}}}

\newcommand{\beginappendix}{\clearpage\appendix
  {\Large\headingfont\bfseries\color{cruxink}Appendix\par}\vskip 0.4cm}

% --- CRUX wordmark emblem ----------------------------------------------------
% Letter-spaced "CRUX" (matches the site header, tracking ~0.14em).
\newcommand{\cruxmark}[1][cruxink]{{\sffamily\bfseries\color{#1}%
  \ifcrux@fontspec
    \addfontfeatures{LetterSpace=14.0}CRUX%
  \else
    C\kern0.14em R\kern0.14em U\kern0.14em X%
  \fi}}

% --- Title box ---------------------------------------------------------------
\newcommand{\crux@cardback}{\ifcrux@tealcard cruxteal\else cruxmist\fi}
% Accent for the eyebrow/subtitle on the card. Ink keeps AAA (7:1) contrast on
% the teal card (slate would only reach ~5:1 there); slate is the lighter accent
% on the mist card, where it still clears AAA.
\ifcrux@tealcard
  \colorlet{cruxaccent}{cruxink}
\else
  \colorlet{cruxaccent}{cruxslate}
\fi

\newcommand{\mymaketitle}{%
  \tcbset{enhanced, frame hidden, boxrule=0pt, arc=12pt,
    left=0.7cm, right=0.7cm, top=0.6cm, bottom=0.6cm, before skip=0pt,
    colback=\crux@cardback, grow to left by=1.5pt, grow to right by=1.5pt}
  \begin{tcolorbox}
    % On the teal card, recolour links to ink so they stay AAA-legible; scoped
    % to the box, so body links keep the slate colour.
    \ifcrux@tealcard\hypersetup{linkcolor=cruxink,citecolor=cruxink,urlcolor=cruxink}\fi
    \setlength{\parindent}{0cm}
    \setlength{\parskip}{0.42cm}
    {%
      \setlength{\parskip}{0cm}\raggedright
      \ifdefempty{\crux@eyebrow}{}{%
        {\small\sffamily\bfseries\color{cruxaccent}%
         \ifcrux@fontspec\addfontfeatures{LetterSpace=6.0}\fi
         \MakeUppercase{\crux@eyebrow}\par}\vskip 0.18cm}
      \ifdefempty{\titlelist}{}{{\setstretch{1.15}\titlelist\par}}
      \ifdefempty{\crux@subtitle}{}{%
        \vskip 0.12cm {\Large\sffamily\bfseries\color{cruxaccent}\crux@subtitle\par}}
      \vskip 0.28cm
      \authorlist\par
      \ifdefempty{\affiliationlist}{}{\vskip 0.14cm \affiliationlist\par}
      \ifdefempty{\contributionlist}{}{\vskip 0.22cm \contributionlist\par}
    }%
    \ifdefempty{\abstractlist}{}{\abstractlist\par}
    \vskip 0.42cm
    % Bottom band: metadata on the left, CRUX wordmark on the right. A two-column
    % row (instead of an absolutely-positioned overlay) reserves a gutter for the
    % emblem, so long metadata lines (URLs, DOIs, multi-author correspondence)
    % can never collide with the wordmark.
    {\setlength{\parskip}{0cm}\raggedright
     \ifcrux@logo
       \noindent
       \begin{minipage}[b]{\dimexpr\linewidth-2.6cm\relax}%
         \ifdefempty{\metadatalist}{\vphantom{Ay}}{\metadatalist\par}%
       \end{minipage}\hfill
       \begin{minipage}[b]{2.2cm}\raggedleft\Large\cruxmark[cruxink]\end{minipage}%
     \else
       \ifdefempty{\metadatalist}{\vspace*{0.55cm}}{\metadatalist\par}%
     \fi}
  \end{tcolorbox}
  \tcbset{reset}
  \FloatBarrier
}

\if@twocolumn
  \renewcommand{\maketitle}{\twocolumn[\mymaketitle\vskip 0.38cm]}
\else
  \renewcommand{\maketitle}{\mymaketitle\vskip 0.2cm}
\fi

% --- Themed callout boxes ----------------------------------------------------
% Base style shared by all CRUX callouts. The title sits on the same fill as
% the body (colbacktitle is set per box) with no separating rule, so it reads
% as a bold first line rather than on a coloured bar.
\tcbset{
  cruxbase/.style={
    enhanced, breakable, boxrule=0pt, frame hidden, arc=6pt,
    left=1.4em, right=1.1em, top=0.7em, bottom=0.7em,
    titlerule=0mm, toptitle=1pt, bottomtitle=-2pt,
    fonttitle={\sffamily\bfseries\color{cruxink}},
    coltext=cruxink, coltitle=cruxink, before skip=10pt, after skip=10pt,
  }
}

% \begin{keybox}{Key takeaways} ... \end{keybox} — teal highlight
\newtcolorbox{keybox}[1][Key takeaways]{
  cruxbase, colback=cruxmist, colbacktitle=cruxmist,
  borderline west={2.5pt}{0pt}{cruxslate}, title={#1}}

% \begin{updatebox}{What's new} ... \end{updatebox} — for changelog-style notes
\newtcolorbox{updatebox}[1][What's new]{
  cruxbase, colback=cruxteal!35, colbacktitle=cruxteal!35,
  borderline west={2.5pt}{0pt}{cruxink}, title={#1}}

% \begin{notebox}{Note} ... \end{notebox} — amber attention. Title in ink for
% AAA legibility (amber-on-pale-amber fails AA); the amber rule carries the hue.
\newtcolorbox{notebox}[1][Note]{
  cruxbase, colback=cruxamber!10, colbacktitle=cruxamber!10,
  borderline west={2.5pt}{0pt}{cruxamber}, title={#1}}

% \begin{alertbox}{Caution} ... \end{alertbox} — rose alert
\newtcolorbox{alertbox}[1][Caution]{
  cruxbase, colback=cruxrose!8, colbacktitle=cruxrose!8,
  borderline west={2.5pt}{0pt}{cruxrose},
  fonttitle={\sffamily\bfseries\color{cruxrose!85!black}},
  coltitle=cruxrose!85!black, title={#1}}

% \statcard{value}{label} — a compact stat tile (use inside a row/minipage)
\newcommand{\statcard}[2]{%
  \begin{tcolorbox}[cruxbase, colback=cruxmist, halign=center,
    left=0.4em, right=0.4em, top=0.5em, bottom=0.5em]
    {\Large\sffamily\bfseries\color{cruxwine}#1}\\[0.15em]
    {\footnotesize\sffamily\color{cruxink}#2}
  \end{tcolorbox}}

\endinput
