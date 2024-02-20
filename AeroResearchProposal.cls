%%%%%%%%%%%%%%%%%%%%%%%%%% INFORMATION%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MSc Research Proposal Template for the Faculty                              
% of Aerospace Engineering, Technion-Israel Institute of Technology      
%
%                                                                            
% Class creator: Daniel Zelazo (dzelazo@technion.ac.il)                        
% Version:       1.0 (2024/02/14)                                              
% Licence: CC BY-NC-SA 4.0 (https://creativecommons.org/licenses/by-nc-sa/4.0/)  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\NeedsTeXFormat{LaTeX2e}
\newcommand{\classname}{AeroResearchProposal}
\ProvidesClass{\classname}[2020/05/03 AeroResearchProposal]
\LoadClass[a4paper, titlepage]{article}




\RequirePackage{graphicx}
\graphicspath{{images/}}
\RequirePackage{mathtools}
\RequirePackage{fancyhdr}
\RequirePackage{enumerate}
\RequirePackage{listings}
\RequirePackage[titletoc]{appendix}
\RequirePackage[absolute]{textpos}
\RequirePackage[section]{placeins}
\RequirePackage{url}
\RequirePackage{tabularx}
\RequirePackage{caption}
\RequirePackage{float}
\RequirePackage{xcolor}
% Page margins
\usepackage[left=2cm,right=2cm,top=2cm,bottom=2cm]{geometry}

% Hebrew language package 
\RequirePackage{fontspec}
\RequirePackage{polyglossia}
\setdefaultlanguage{english}
\setotherlanguages{hebrew}
\newfontfamily{\hebrewfont}[Script=Hebrew]{David CLM}
\newfontfamily{\hebrewfontsf}[Script=Hebrew]{Miriam CLM}
\newfontfamily{\hebrewfonttt}[Script=Hebrew]{Miriam Mono CLM}

% Font settings
\usepackage{times}


\definecolor{aeroblue}{RGB}{1,171,230}

\NewDocumentCommand{\thesisTitleEN} { o m }{%
 \IfValueTF{#1}{\def\shorttitle{#1}}{\def\shorttitle{#2}}%
 \def\@title{#2}%
 \def\theTitleName{\huge{\textbf{\uppercase{#2}}}}%
}


\NewDocumentCommand{\authorOne}{m m m}{
\newcommand{\authorOneName}{\large{#1} \\ \parindent0pt\small{#2} \\ \parindent0pt\small{#3}}}


\NewDocumentCommand{\subject}{m}{\newcommand{\subjectName}{\Large{\textsc{#1}}}}
\NewDocumentCommand{\university}{m}{\newcommand{\uniName}{\Large{{\textcolor{aeroblue}{\textsc{#1}}}}}}
\NewDocumentCommand{\department}{m}{\newcommand{\depName}{\Large{{\textcolor{aeroblue}{\textsc{#1}}}}}}
\NewDocumentCommand{\degree}{m}{\newcommand{\degreeName}{\Large{\textsc{#1}}}}


\NewDocumentCommand{\examiner}{m m}{
\newcommand{\examName}{\large{Examiner: #1} \\ \small{#2}}}

\NewDocumentCommand{\supervisors}{m m}{
\newcommand{\superName}{\large{\textsc{Supervisor(s):} #1} \\ \small{#2}}}

\NewDocumentCommand{\companySupervisors}{m m}{
\newcommand{\compSuperName}{\large{Company Supervisor(s): #1} \\ \small{#2}}}

\NewDocumentCommand{\theDate}{m}{\newcommand{\datum}{\large #1}}

\newcommand{\warning}[1]{\centering{\textcolor{red}{\large{\textbf{\uppercase{#1\\}}}}}}
\newcommand{\alert}[1]{\textcolor{red}{\textit{\scriptsize\textbf{\uppercase{#1}}}}}


 
\newcommand{\titlePage}{
    \begin{titlepage}
        \begin{center}
            \IfFileExists{images/aerologo.png}{
            \begin{flushleft}
              \vspace*{-20mm}
              \begin{figure}[H]\includegraphics[width=40mm]{images/aerologo.png}
    		\end{figure}
            \end{flushleft}
            }{
    		\begin{flushleft}
    		\warning{Technion \\ missing}
    		\end{flushleft}
    		}

           \hrule width \hsize height 2pt \kern 1mm \hrule width \hsize 
          \vspace{ 10mm}
           
            \ifdef{\uniName}{\vspace{-5mm}\uniName\\}{\warning{Missing university name}}
            
            \ifdef{\depName}{\depName\\}{\warning{Missing department name}} 
            \vspace{ 5mm}
            \hrule width \hsize \kern 1mm \hrule width \hsize height 2pt
            \vspace{5mm}
            
            \ifdef{\subjectName}{\subjectName}{\warning{Missing course name}} \\
            \vspace{10mm}
            
    		\ifdef{\theTitleName}{\theTitleName}{\warning{Missing title}} \\
    		\vspace{15mm}
    		
    		

            \begin{flushleft}

                \ifdef{\authorOneName}{\authorOneName \\ \vspace{5mm}}{\warning{Missing authorOne}} 
            
                \ifdef{\examName}{\examName \\ \vspace{5mm}}{}
                
                \ifdef{\superName}{\superName \\ \vspace{5mm}}{}
                
                \ifdef{\compSuperName}{\compSuperName \\}{}
                
                \ifdef{\datum}{\datum}{\warning{Missing date}}

            \end{flushleft}
        \end{center}
    \end{titlepage}
}


% Set font

\newcommand{\circR}{\textsuperscript{\textregistered}}
% set the style for the section and subsection headers
\renewcommand{\thesection}{\thepart \arabic{section}.}
\renewcommand{\thesubsection}{\thepart \arabic{section}.\arabic{subsection}.}

\makeatletter

\newcommand\frontmatter{%
    \cleardoublepage
  %\@mainmatterfalse
  \pagenumbering{roman}}

\newcommand\mainmatter{%
    \cleardoublepage
 % \@mainmattertrue
  \pagenumbering{arabic}}

\newcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
 % \@mainmatterfalse
  }

\makeatother

\renewenvironment{abstract}{
  \begin{center}%
  \bfseries\abstractname\vspace{-.5em}\vspace{0pt}
  \end{center}
  \itshape
}

% Code style
\lstset{
    backgroundcolor=\color[rgb]{0.92,0.92,0.92},
	basicstyle=\footnotesize,
	showspaces=false,
	showstringspaces=false,
	showtabs=false,
	tabsize=2,
	captionpos=b,
	breaklines=false,
	keywordstyle=\color[rgb]{0,0,1},
	commentstyle=\color[rgb]{0.133,0.545,0.133}
}

% Page style
\pagestyle{fancy}
\marginparsep = 0pt

\newcommand{\fancyHeader}[2]{
\thispagestyle{fancy}
\fancyhead[R]{#1}
\fancyhead[L]{#2}
% \fancyfoot[L]{}
%\fancyfoot[LE,RO]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}
}

\endinput