% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.14.0
\version "2.14.0"

\header {
%% Translation of GIT committish: 70f5f30161f7b804a681cd080274bfcdc9f4fe8c

  texidoces = "
Se puede simular un @qq{hammer} o ligado ascendente con ligaduras de
expresión.

"

  doctitlees = "Simular un hammer o ligado ascendente en una tablatura"

  lsrtags = "fretted-strings"
  texidoc = "
A hammer in tablature can be faked with slurs.
"
  doctitle = "Faking a hammer in tablatures"
} % begin verbatim


\score {
  \new TabStaff {
    \relative c'' {
      \tabFullNotation
      c4( d) d( d)
      d2( c)
    }
  }
}
