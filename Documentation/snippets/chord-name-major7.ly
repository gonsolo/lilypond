%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.10"

\header {
  lsrtags = "chords"

%% Translation of GIT committish: 4385ed4cc738e164a95798862580b4b86703356f
  texidoces = "
La presentación del acorde de séptima mayor se
puede ajustar mediante majorSevenSymbol.

"
  doctitlees = "Nombre de acorde maj7"

%% Translation of GIT committish: d4f58bb3ad4e7fe1967a6b48f25e3addffc8aa14
 texidocde = "
Das Aussehen des großen Septakkords kann mit @code{majorSevenSymbol} verändert werden.

"

  doctitlede = "Akkordbezeichnung maj7"



  texidoc = "
The layout of the major 7 can be tuned with @code{majorSevenSymbol}.

"
  doctitle = "chord name major7"
} % begin verbatim

\chords {
  c:7+
  \set majorSevenSymbol = \markup { j7 }
  c:7+
}

