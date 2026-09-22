\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{inherent}[2026/07/28 v0.2 Inherent preprint]

\newif\ifinherent@cm
\DeclareOption{cm}{\inherent@cmtrue}
\newif\ifinherent@garamond
\DeclareOption{garamond}{\inherent@garamondtrue}
\newif\ifinherent@cormorant
\DeclareOption{cormorant}{\inherent@cormoranttrue}
\newif\ifinherent@afour
\DeclareOption{a4paper}{\inherent@afourtrue}
\ProcessOptions\relax
\LoadClass[10pt]{article}

\RequirePackage{iftex}
\ifpdftex
  \ClassError{inherent}{%
    This class needs XeLaTeX, but the document is compiling with pdfLaTeX.\MessageBreak
    In Overleaf: Menu (top left) > Compiler > XeLaTeX, then recompile.\MessageBreak
    Locally: use `xelatex' or `latexmk -xelatex' instead of `pdflatex'%
  }{The Inherent brand fonts are OpenType and require XeLaTeX (or LuaLaTeX).}
\fi

\RequirePackage{amsmath,amssymb}
\RequirePackage{fontspec}
\ifinherent@cm
  \setmainfont{Latin Modern Roman}[SmallCapsFont={Latin Modern Roman Caps}]
\else\ifinherent@garamond
  \setmainfont{EBGaramond}[Extension=.otf,
    UprightFont=*-Regular,ItalicFont=*-Italic,BoldFont=*-SemiBold,BoldItalicFont=*-SemiBoldItalic]
\else\ifinherent@cormorant
  \setmainfont{CormorantGaramond}[Path=fonts/,Extension=.ttf,
    UprightFont=*-Regular,ItalicFont=*-RegularItalic,BoldFont=*-SemiBold,BoldItalicFont=*-SemiBoldItalic]
\else
  \setmainfont{TeX Gyre Termes}
\fi\fi\fi
\setsansfont{Outfit}[Path=fonts/,Extension=.ttf,Scale=0.875,Ligatures=TeX,AutoFakeSlant=0.15,
  UprightFont=*-Regular,BoldFont=*-SemiBold]
\setmonofont{JetBrainsMono}[Path=fonts/,Extension=.ttf,Scale=0.78,
  UprightFont=*-Regular,BoldFont=*-Bold,ItalicFont=*-Italic]
\newfontfamily\inherent@brandfont{Cabin}[Path=fonts/,Extension=.ttf,Scale=0.87,Ligatures=TeX,
  UprightFont=*-Regular,ItalicFont=*-Italic]
\newfontfamily\inherent@textfont{Outfit}[Path=fonts/,Extension=.ttf,Scale=0.92,Ligatures=TeX,AutoFakeSlant=0.15,
  UprightFont=*-Medium,BoldFont=*-SemiBold]
\newfontfamily\inherent@abstractfont{Outfit}[Path=fonts/,Extension=.ttf,Scale=0.92,Ligatures=TeX,AutoFakeSlant=0.15,
  UprightFont=*-Regular,BoldFont=*-Medium]
\ifinherent@garamond
  \RequirePackage{unicode-math}
  \setmathfont{Garamond-Math.otf}
  \setmathfont{Garamond-Math.otf}[range={up/{num},it/{num}}]
  \let\mathsfit\undefined
\fi
\RequirePackage{microtype}
\ifinherent@garamond
  \renewcommand{\normalsize}{\@setfontsize\normalsize{10.5}{11.6}}
\else\ifinherent@cormorant
  \renewcommand{\normalsize}{\@setfontsize\normalsize{10.6}{11.6}}
\else
  \renewcommand{\normalsize}{\@setfontsize\normalsize{9.5}{10.5}}
\fi\fi

\RequirePackage{xcolor}
\definecolor{InherentGreen}{HTML}{1F5C35}
\definecolor{InherentCream}{HTML}{F5F3EE}
\definecolor{InherentInk}{HTML}{1C1C1A}
\colorlet{InherentCard}{InherentGreen!4}
\color{InherentInk}

\RequirePackage{geometry}
\ifinherent@afour
  \geometry{a4paper,left=1in,right=1in,bottom=1in,hcentering,top=1in,footskip=24pt,includeheadfoot}
\else
  \geometry{letterpaper,left=1in,right=1in,bottom=0.6in,hcentering,top=0.6in,footskip=24pt,includeheadfoot}
\fi
\setlength{\parindent}{1.4em}
\setlength{\parskip}{.5pc}

\RequirePackage{tikz}
\newlength{\inherent@logounit}
\NewDocumentCommand{\inherentlogo}{O{9mm} O{InherentGreen}}{%
  \setlength{\inherent@logounit}{#1}%
  \begin{tikzpicture}[x=0.01\inherent@logounit,y=0.01\inherent@logounit,baseline=(current bounding box.south)]
    \begin{scope}[#2,line width=0.04\inherent@logounit,line cap=round]
      \draw (50,50) circle (46.4);
      \draw (50,33.8) circle (30.2);
      \draw (50,18.7) circle (15.1);
      \draw (50,3.6) -- (50,96.4);
    \end{scope}
  \end{tikzpicture}}
\newcommand{\inherentwordmark}[1][13pt]{%
  \setlength{\inherent@logounit}{#1}%
  \raisebox{-0.4\inherent@logounit}{\inherentlogo[1.55\inherent@logounit]}\hspace{0.5em}%
  \raisebox{0.11\inherent@logounit}{\inherent@brandfont\fontsize{#1}{#1}\selectfont\color{InherentGreen}inherent}}

\RequirePackage{titlesec}
\titleformat{\section}{\sffamily\bfseries\fontsize{12.7}{14.9}\selectfont\raggedright}{\thesection}{0.7em}{}
\titleformat{\subsection}{\sffamily\bfseries\fontsize{11}{13.75}\selectfont\raggedright}{\thesubsection}{0.7em}{}
\titleformat{\subsubsection}{\sffamily\bfseries\fontsize{10.5}{11.6}\selectfont\raggedright}{\thesubsubsection}{0.7em}{}
\titleformat{\paragraph}[runin]{\sffamily\bfseries\normalsize}{}{0em}{}
\titlespacing*{\section}{0pt}{2.0ex plus 0.5ex minus 0.2ex}{1.5ex plus 0.3ex minus 0.2ex}
\titlespacing*{\subsection}{0pt}{1.8ex plus 0.5ex minus 0.2ex}{0.8ex plus 0.2ex}
\titlespacing*{\subsubsection}{0pt}{1.5ex plus 0.5ex minus 0.2ex}{0.5ex plus 0.2ex}
\titlespacing*{\paragraph}{0pt}{1.5ex plus 0.5ex minus 0.2ex}{1em}

\RequirePackage{caption}
\newcommand{\inherent@sansbf}[1]{{\sffamily\bfseries #1}}
\DeclareCaptionFont{inherentsansbf}{\let\textbf\inherent@sansbf}
\DeclareCaptionFont{inherentlabel}{\sffamily\bfseries\color{InherentInk}}
\captionsetup{font={small,inherentsansbf},labelfont=inherentlabel,labelsep=colon,width=0.92\textwidth}
\RequirePackage{enumitem}
\setlist{before={\let\textbf\inherent@sansbf}}

\RequirePackage{booktabs}
\renewcommand{\arraystretch}{1.15}

\RequirePackage{fancyhdr}
\newcommand{\shorttitle}[1]{\def\inherent@shorttitle{#1}}
\def\inherent@shorttitle{}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{\sffamily\itshape\fontsize{7.5}{9}\selectfont\color{InherentGreen}\ifx\inherent@shorttitle\empty\@title\else\inherent@shorttitle\fi}
\fancyfoot[R]{{\sffamily\color{InherentGreen}\fontsize{7.5}{7.5}\selectfont\thepage}}
\renewcommand{\headrulewidth}{1pt}
\setlength{\headheight}{16pt}
\renewcommand{\headrule}{\vskip 3.56pt{\color{InherentGreen}\hrule width\headwidth height\headrulewidth}}
\renewcommand{\footrulewidth}{1pt}
\renewcommand{\footrule}{{\color{InherentGreen}\hrule width\headwidth height\footrulewidth}\vspace{2.5pt}}
\fancypagestyle{plain}{\fancyhf{}%
  \fancyfoot[C]{\raisebox{5.2pt}[0pt][0pt]{\parbox[t]{\headwidth}{%
    \textcolor{InherentGreen}{\rule{\headwidth}{1pt}}\\[2.6pt]
    \footnotesize\textcopyright\ 2026 Inherent Laboratories. All rights reserved.%
    \ifx\inherent@correspondence\empty\else\ {\itshape Correspondence to} \href{mailto:\inherent@correspondence}{\texttt{\inherent@correspondence}}.\fi\hfill{\sffamily\color{InherentGreen}\fontsize{7.5}{7.5}\selectfont\thepage}}}}%
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\footrulewidth}{0pt}}

\RequirePackage[round,authoryear]{natbib}
\setcitestyle{aysep={,}}
\colorlet{InherentLink}{InherentGreen}
\RequirePackage[colorlinks,linkcolor=InherentLink,citecolor=InherentLink,urlcolor=InherentLink]{hyperref}
\urlstyle{tt}

\newcommand{\correspondence}[1]{\def\inherent@correspondence{#1}}
\def\inherent@correspondence{}
\newcommand{\authornote}[1]{\def\inherent@authornote{#1}}
\def\inherent@authornote{}
\newcommand{\affiliation}[1]{\def\inherent@affiliation{#1}}
\def\inherent@affiliation{Inherent}

\RequirePackage{environ}
\RequirePackage{tcolorbox}
\tcbuselibrary{skins}  
\newif\ifinherent@knockout
\colorlet{InherentKnockout}{white}
\newlength{\inherent@halfstroke}
\setlength{\inherent@halfstroke}{0.8mm}
\newcommand{\inherent@halfrings}{5}
\newcommand{\inherent@halfflip}{-1}
\newcommand{\inherent@halffactor}{1}
\newlength{\inherent@centrerule}
\setlength{\inherent@centrerule}{0mm}
\newlength{\inherent@halfunit}

\newcommand{\inherent@halfmark}[1]{%
  \begin{scope}[x=0.01\inherent@halfunit,y=0.01\inherent@halfunit,
      xscale=#1,yscale=\inherent@halfflip]
    \clip (-1,-60) rectangle (60,60);
    \begin{scope}[InherentKnockout,line width=\inherent@halfstroke,line cap=round]
      \foreach \inherent@k in {1,...,\inherent@halfrings}{%
        \pgfmathsetmacro{\inherent@r}{46.4*\inherent@k/\inherent@halfrings}%
        \pgfmathsetmacro{\inherent@cy}{\inherent@r-46.4}%
        \draw (0,\inherent@cy) circle (\inherent@r);}
      \draw (0,-46.4) -- (0,46.4);
    \end{scope}
  \end{scope}}
  
\newcommand{\inherent@cardunderlay}{%
  \ifinherent@knockout
    \begin{scope}
      \clip[rounded corners=5mm] (frame.south west) rectangle (frame.north east);
      \begin{scope}[shift={(frame.west)}]\inherent@halfmark{1}\end{scope}
      \begin{scope}[shift={(frame.east)}]\inherent@halfmark{-1}\end{scope}
      \ifdim\inherent@centrerule>0pt
        \draw[InherentKnockout,line width=\inherent@centrerule]
          (frame.north) -- (frame.south);
      \fi
    \end{scope}
  \fi}

\newcommand{\inherent@card}[1]{%
  \vspace{20pt}
  \setlength{\inherent@halfunit}{\dimexpr\linewidth-\inherent@halfstroke\relax}%
  \setlength{\inherent@halfunit}{1.0776\inherent@halfunit}%
  \setlength{\inherent@halfunit}{\inherent@halffactor\inherent@halfunit}%
  \begin{tcolorbox}[enhanced,colback=InherentCard,colframe=InherentCard,boxrule=0pt,arc=5mm,left=7mm,right=7mm,top=7mm,bottom=7mm,
    underlay={\inherent@cardunderlay}]
    {\centering\bfseries\fontsize{16.5}{20.5}\selectfont\@title\par}
    \vspace{18pt}
    \noindent\hfil\begin{minipage}{0.99\linewidth}\centering\inherent@textfont\bfseries\fontsize{8.5}{11.5}\selectfont\@author\end{minipage}\hfil\par
    \vspace{8pt}
    {\centering\fontsize{8.3}{11}\selectfont\inherent@authornote\par}
    \vspace{20pt}
    \noindent\hfil\begin{minipage}{0.99\linewidth}\setlength{\parindent}{0pt}\bfseries\fontsize{9.75}{12.25}\selectfont#1\end{minipage}\hfil\par
  \end{tcolorbox}
  \vspace{15pt}}
\RenewEnviron{abstract}{\inherent@card{\BODY}}

\renewcommand{\maketitle}{%
  \thispagestyle{plain}%
  \vspace*{-36pt}%
  \noindent\inherentwordmark[11pt]\hfill\raisebox{-1.6pt}[0pt][0pt]{\sffamily\itshape\fontsize{7.5}{7.5}\selectfont\color{InherentGreen}\@date}\par
  \vspace{3.5pt}{\color{InherentGreen}\hrule height 1pt}\par}