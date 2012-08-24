%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.16.0"

\header {
  lsrtags = "staff-notation, text, vocal-music"

  texidoc = "
Lyrics can be moved vertically to place them inside the staff.  The
lyrics are moved with @code{\\override LyricText #'extra-offset = #'(0
. dy)} and there are similar commands to move the extenders and
hyphens.  The offset needed is established with trial and error.

"
  doctitle = "Putting lyrics inside the staff"
} % begin verbatim

<<
  \new Staff <<
    \new Voice = "voc" \relative c' { \stemDown a bes c8 b c4 }
  >>
  \new Lyrics \with {
    \override LyricText #'extra-offset = #'(0 . 8.6)
    \override LyricExtender #'extra-offset = #'(0 . 8.6)
    \override LyricHyphen #'extra-offset = #'(0 . 8.6)
  } \lyricsto "voc" { La la -- la __ _ la }
>>
