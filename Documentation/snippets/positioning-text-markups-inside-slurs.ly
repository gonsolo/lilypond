%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.10"

\header {
  lsrtags = "expressive-marks, editorial-annotations, tweaks-and-overrides"

%% Translation of GIT committish: 4385ed4cc738e164a95798862580b4b86703356f
  texidoces = "

Los elementos de marcado de texto deben tener la propiedad
@code{outside-staff-priority} establecida al valor falso para que se
impriman por dentro de las ligaduras de expresión.

"
  doctitlees = "Situar los elementos de marcado de texto por dentro de las ligaduras"

%% Translation of GIT committish: d96023d8792c8af202c7cb8508010c0d3648899d
  texidocde = "
Textbeschriftung kann innerhalb von Bögen gesetzt werden, wenn die
@code{outside-staff-priority}-Eigenschaft auf falsch gesetzt wird.

"
  doctitlede = "Textbeschriftung innerhalb von Bögen positionieren"
%% Translation of GIT committish: ae814f45737bd1bdaf65b413a4c37f70b84313b7
  texidocfr = "
Lorsqu'il vous faut inscrire une annotation à l'intérieur d'une liaison,
la propriété @code{outside-staff-priority} doît être désactivée.

"
  doctitlefr = "Positionnement d'une annotation à l'intérieur d'une liaison"


  texidoc = "
Text markups need to have the @code{outside-staff-priority} property
set to false in order to be printed inside slurs.

"
  doctitle = "Positioning text markups inside slurs"
} % begin verbatim

\relative c'' {
  \override TextScript #'avoid-slur = #'inside
  \override TextScript #'outside-staff-priority = ##f
  c2(^\markup { \halign #-10 \natural } d4.) c8
}


