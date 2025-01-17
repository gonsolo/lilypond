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
  lsrtags = "expressive-marks"

  texidoc = "
The glyph of the breath mark can be tuned by overriding the @code{text}
property of the @code{BreathingSign} layout object with any markup
text.
"

  doctitle = "Changing the breath mark symbol"
} % begin verbatim


\relative c'' {
  c2
  \override BreathingSign.text =
    \markup { \musicglyph "scripts.rvarcomma" }
  \breathe
  d2
}
