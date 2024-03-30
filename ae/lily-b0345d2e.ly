%% Generated by lilypond-book
%% Options: [indent=0\mm,line-width=550\pt]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************

#(ly:set-option 'eps-box-padding 3.000000)



\paper {
  indent = 0\mm
  line-width = 550\pt
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}




% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 2
<<
  \relative c' {
    c4 d e f g a b c <c, e g>2 <c es g>
  }
  \addlyrics {
    ド レ ミ ファ ソ ラ シ ド C Cm
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
