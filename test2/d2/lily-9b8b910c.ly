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
\sourcefileline 19
\relative {
    {
        \clef treble
        \key c \major

        c'8 d e f g a b c
    }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
