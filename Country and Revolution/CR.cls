\ProvidesClass{CR}[Country and Revolution] 
\NeedsTeXFormat{LaTeX2e}

\ProcessOptions\relax
\LoadClass[zihao=5,twoside,openany,fontset=none]{ctexbook}

% PDF 页面导入
\RequirePackage{pdfpages}

% 页面设置，大32开本
\RequirePackage[
    paperheight=204mm,
    paperwidth=140mm,
    top=20mm, % 27
    bottom=15mm, % 17
    left=21mm, % 21
    right=16mm, % 16
    footskip=10mm]
    {geometry}

% 字体设置
\setmainfont{Times New Roman}
% 正文：思源宋体 Light 粗体：思源宋体 Medium
\setCJKmainfont[
    BoldFont=Source Han Serif SC,
    ItalicFont=FZKai-Z03
    ]
    {Source Han Serif SC Light}
\setCJKsansfont[
    BoldFont=Source Han Sans SC,
    ]
    {Source Han Sans SC Light}
\setCJKmonofont{FZFangSong-Z02}

\setCJKfamilyfont{zhsong}{Source Han Serif SC Light}
\setCJKfamilyfont{zhxbs}{Source Han Serif SC Medium}
\setCJKfamilyfont{zhdbs}{Source Han Serif SC Bold}
\setCJKfamilyfont{zhhei}{Source Han Sans SC Light}
\setCJKfamilyfont{zhdh}{Source Han Sans SC}
\setCJKfamilyfont{zhfs}{FZFangSong-Z02}
\setCJKfamilyfont{zhkai}{FZKai-Z03}
\setCJKfamilyfont{zhhei}{FZHei-B01}
\setCJKfamilyfont{zhXYkai}{LXGWWenKai-Bold}

% 文中随时调用以更改字体
\newcommand{\songti}{\CJKfamily{zhsong}} 
\newcommand{\xbsong}{\CJKfamily{zhxbs}}
\newcommand{\dbsong}{\CJKfamily{zhdbs}}
\newcommand{\heiti}{\CJKfamily{zhhei}}
\newcommand{\dahei}{\CJKfamily{zhdh}}
\newcommand{\fangsong}{\CJKfamily{zhfs}}
\newcommand{\kaishu}{\CJKfamily{zhkai}}
\newcommand{\Fheiti}{\CJKfamily{zhhei}}
\newcommand{\ykai}{\CJKfamily{zhXYkai}}

% 目录格式
\renewcommand{\contentsname}{目\qquad 录}
\RequirePackage{titletoc}
\titlecontents{part}[0pt]{\vspace{1em}\zihao{-4}\xbsong}{}{}{}
\titlecontents{chapter}[1em]{\normalfont}{}{}{\hfill\contentspage}

% 标题格式设置
\ctexset{
	part={
		numbering=false,
		format=\centering\zihao{1}\xbsong,
		pagestyle=empty
	},
	chapter={
		numbering=false,
		format=\centering\zihao{3}\xbsong,
        beforeskip=2\baselineskip,
        afterskip=2\baselineskip,
	    pagestyle=plain
	},
    section={
		numbering=false,
        format=\zihao{5}\heiti,
        %beforeskip=1.56em,
        %afterskip=0.78em,
	}
}

% 版式
\RequirePackage[headings]{fancyhdr}

% plain 版式，章标题页 % plain表示无页眉，页脚中部放置页码
\fancypagestyle{plain}{ 
    \fancyhf{}
    \fancyfoot[RO,LE]{\zihao{-5}\thepage}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}
%% heading 版式，正文普通页 % heading表示没有页脚，页眉包含章节的标题和页码。
%% RO:奇右；RE：奇左；LO：偶左；LE：偶右
\fancypagestyle{headings}{
    \fancyhf{}
    %\fancyhead[RO,LE]{\zihao{6}\kaishu\leftmark} % 单页小标题放置左右
    \fancyhead[CO,CE]{\zihao{6}\kaishu\leftmark} % 单页小标题放置中间
    \fancyfoot[RO,LE]{\zihao{-5}\thepage}
    \renewcommand{\headrulewidth}{0.10mm} % 页眉线宽
    \renewcommand{\footrulewidth}{0pt} % 页尾线宽
}
% foreword 版式，前言、目录、序等页
\fancypagestyle{foreword}{
    \fancyhf{}
    \fancyfoot[RO,LE]{\zihao{-5}\thepage}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}

% 无标号脚注
%\RequirePackage[perpage,stable,marginal]{footmisc}
\newcommand\blfootnote[1]{%
    \begingroup%
    \renewcommand\thefootnote{}\footnote{#1}%
    \addtocounter{footnote}{-1}%
    \endgroup%
}

\RequirePackage{indentfirst}
\setlength{\parindent}{2em}
\newcommand{\id}{\indent\setlength{\parindent}{2em}}

\RequirePackage{CJKfntef} % 文字下加标点
\RequirePackage{hyperref}
\hypersetup{hidelinks,
    colorlinks=true,
    allcolors=black,
    pdfstartview=Fit,
    breaklinks=true
}
%\RequirePackage{graphicx}

\RequirePackage{amsfonts,amssymb}

\newcommand{\subtitle}[1]{\vspace{-1.56em}\xbsong\centerline{#1}\normalfont\par\null}
\newcommand{\xsection}[1]{\pskip{\heiti #1}\pskip}
\newcommand{\fspace}[1][1em]{\hspace{#1}}
\newcommand{\pskip}[1][0.75em]{\vspace{#1}}
