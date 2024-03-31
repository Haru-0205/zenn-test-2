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
\sourcefileline 55
<<
  \relative
  {
    \clef treble
    \key f \major
    \time 2/4

    a'8. bes16 c8 r | a8. bes16 c8 r |
    a8. bes16 d8 c | c4 r |
  }
  \addlyrics
  {
    だ る ま だ る ま
    ゆ き だ る ま
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
