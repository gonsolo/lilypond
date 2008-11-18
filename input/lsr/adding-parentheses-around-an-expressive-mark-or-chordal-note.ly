%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.11.64"

\header {
  lsrtags = "expressive-marks"

  texidoces = "
La función @code{\\parenthesize} es un truco especial que encierra
objetos entre paréntesis.  El grob asociado es
@code{Score.ParenthesesItem}.

"
  doctitlees = "Encerrar entre paréntesis una marca expresiva o una nota de un acorde"

  texidoc = "
The @code{\\parenthesize} function is a special tweak that encloses
objects in parentheses.  The associated grob is
@code{Score.ParenthesesItem}. 

"
  doctitle = "Adding parentheses around an expressive mark or chordal note"
} % begin verbatim

\relative c' {
  c2-\parenthesize ->
  \override ParenthesesItem #'padding = #0.1
  \override ParenthesesItem #'font-size = #-4
  <d \parenthesize fis a>2 
}

