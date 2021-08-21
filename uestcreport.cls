\ProvidesClass{uestcreport}
\LoadClass[zihao=-4]{ctexart}
\RequirePackage{xeCJK}
\RequirePackage{CJKnumb}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{array}
\RequirePackage{mathtools}
\RequirePackage{float}
\RequirePackage{indentfirst}
\RequirePackage{zhnumber}

\linespread{1.2}
\geometry{top=2.4cm,bottom=2.4cm,left=2.4cm,right=2.4cm}  %设置 上、左、下、右 页边距
\setcounter{secnumdepth}{3}
\ctexset{
    part/name = {Chapter\ },
	part/number = \arabic{part},
	part/format = \LARGE\bfseries\centering
}

\renewcommand\thesection{\arabic{part}.\arabic{section}}
\renewcommand\thesubsection{\arabic{part}.\arabic{section}.\arabic{subsection}}
\setlist[enumerate,1]{label=(\arabic*)}
\setlist[enumerate,2]{label=\alph*.}


\setCJKmainfont[AutoFakeBold=true]{SimSun}
\setmainfont{Times New Roman}


\titleformat*{\section}{\LARGE\bfseries}
\titleformat*{\subsection}{\Large\bfseries}
\titleformat*{\subsubsection}{\Large\bfseries}
\graphicspath{{figures/}{figure/}{pictures/}%
{picture/}{pic/}{pics/}{image/}{images/}}

\titlespacing{\subsection}{1em}{*4}{*1.5}
\titlespacing{\subsubsection}{1em}{*4}{*1.5}

% 代码格式和颜色定义
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{comment}{rgb}{0.56,0.64,0.68}
\lstset{
  frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  xleftmargin=2em,
  xrightmargin=2em,
  showstringspaces=false,
  columns=flexible,
  framerule=1pt,
  rulecolor=\color{gray!35},
  backgroundcolor=\color{gray!5},
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{comment},
  stringstyle=\color{dkgreen},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=2,
}

% 信息
\newcommand\major[1]{\def\@major{#1}}
\newcommand\name[1]{\def\@name{#1}}
\newcommand\stuid[1]{\def\@stuid{#1}}
\newcommand\college[1]{\def\@college{#1}}
\newcommand\instructor[1]{\def\@instructor{#1}}
\newcommand\titlezh[1]{\def\@titlezh{#1}}
\newcommand\titleen[1]{\def\@titleen{#1}}

% 页眉页脚
% \pagestyle{fancy}
% \lhead{实验名称：\@expname}
% \chead{姓名：\@name}
% \rhead{学号：\@stuid}
\pagestyle{fancy}
\fancyhead{}
%\fancyhead[L]{}
%\fancyhead[R]{}
%\fancyhead[L]{}
\fancyfoot[L]{}
\fancyfoot[C]{\thepage}
\fancyfoot[R]{}
\renewcommand\headrulewidth{1pt}

% 下划线定义
\def\dlmu[#1]#2{
  \underline{\hbox to #1{\hfil#2\hfil}}}

% 封面
\newcommand{\makecover}{
%  \vspace{4cm} % 头图上边距
  \begin{center}
    \begin{center}
	  \includegraphics[width=0.9\linewidth]{cover.jpg}
    \end{center}
	\begin{center}
	  \zihao{-0}
	  \songti 学期论文
	\end{center}
	\begin{center}
	  \bfseries\huge{Term Paper}
	\end{center}
    \vspace{0.5cm}
	\begin{center}
	  \includegraphics[width=0.3\linewidth]{logo.jpg}
	\end{center}
    \vspace{1cm}
    \begin{center}
      \Large
      \linespread{2}
      \centering
      \renewcommand\arraystretch{1.6}
      \begin{tabular}{p{3cm}p{6cm}}
		\bfseries {论文题目：} & \dlmu[280pt]\@titlezh \\
		& \dlmu[280pt]\@titleen \\
		& \\
%        \bfseries{学\qquad 院：}     & \@college \\ \cline{2-2}
        \bfseries{学\qquad 院：}     & \dlmu[150pt]\@college \\
        \bfseries{专\qquad 业：}     & \dlmu[150pt]\@major  \\ 
        \bfseries{学\qquad 号：}     & \dlmu[150pt]\@stuid  \\ 
		    \bfseries{作者姓名：}     & \dlmu[150pt]\@name   \\ 
        \bfseries{指导老师：} & \dlmu[150pt]\@instructor  \\ 
      \end{tabular}
    \end{center}
%    \vspace{2cm}
%    \Large{\@date}
  \end{center}
  \thispagestyle{empty}
  \newpage
}
