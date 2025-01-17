%% DO NOT EDIT this file manually; it was automatically
%% generated from the LilyPond Snippet Repository
%% (http://lsr.di.unimi.it).
%%
%% Make any changes in the LSR itself, or in
%% `Documentation/snippets/new/`, then run
%% `scripts/auxiliar/makelsr.pl`.
%%
%% This file is in the public domain.

\version "2.23.13"

\header {
  lsrtags = "contemporary-notation, expressive-marks, symbols-and-glyphs"

  texidoc = "
In order to make parts of a crescendo hairpin invisible, the following
method is used: A white rectangle is drawn on top of the respective
part of the crescendo hairpin, making it invisible.  The rectangle is
defined as postscript code within a text markup.

The markup command @code{with-dimensions} tells LilyPond to consider
only the bottom edge of the rectangle when spacing it against the
hairpin. The property @code{staff-padding} prevents the rectangle from
fitting between the hairpin and staff.

Make sure the hairpin is in a lower layer than the text markup to draw
the rectangle over the hairpin.
"

  doctitle = "Broken Crescendo Hairpin"
} % begin verbatim


\relative c' {
  <<
    {
      \dynamicUp
      r2 r16 c'8.\pp r4
    }
    \\
    {
      \override DynamicLineSpanner.layer = #0
      des,2\mf\< ~
      \override TextScript.layer = #2
      \once\override TextScript.staff-padding = #6
      \once\override TextScript.vertical-skylines = #'()
      des16_\markup \with-dimensions #'(2 . 7) #'(0 . 0)
                    \with-color #white
                    \filled-box #'(2 . 7) #'(0 . 2) #0
      r8. des4 ~ des16->\sff r8.
    }
  >>
}
