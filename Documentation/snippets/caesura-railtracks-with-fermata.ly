%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.20"

\header {
  lsrtags = "expressive-marks, tweaks-and-overrides"

%% Translation of GIT committish: 0b55335aeca1de539bf1125b717e0c21bb6fa31b
  texidoces = "
A veces se denota una «cesura» mediante una doble marca de respiración
parecida a las vías del tren, con un calderón encima. Este fragmento
de código presenta una combinación visualmente satisfactoria de estas
dos marcas.

"
  doctitlees = "Cesura tipo \"vías del tren\" con calderón"

  texidoc = "
A caesura is sometimes denoted by a double @qq{railtracks} breath mark
with a fermata sign positioned above. This snippet shows an optically
pleasing combination of railtracks and fermata.

"
  doctitle = "Caesura (\"railtracks\") with fermata"
} % begin verbatim

\relative c'' {
  c2.
  % construct the symbol
  \override BreathingSign #'text = \markup {
    \line {
      \musicglyph #"scripts.caesura.curved"
      \translate #'(-1.75 . 1.6)
      \musicglyph #"scripts.ufermata"
    }
  }
  \breathe c4
  % set the breathe mark back to normal
  \revert BreathingSign #'text
  c2. \breathe c4
  \bar "|."
}
