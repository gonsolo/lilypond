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
 doctitlees = "Indicaciones de compases compuestos"
 texidoces = "
Las indicaciones de compás poco frecuentes como @qq{5/8} se pueden
ejecutar como compases compuestos (p.ej. @qq{3/8 + 2/8}), que combinan
dos o más metros diferentes. LilyPond puede hacer la música de este
tipo fácil de leer e interpretar, imprimiendo explícitamente las
indicaciones de compás compuesto y adaptando el comportamiento
automático de las barras (también se pueden añadir indicaciones
gráficas de la agrupación de compases; véase el fragmento de código
apropiado en la base de datos).

"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
texidocde = "
Ungerade Taktarten werden (wie etwa \"5/8\") werden oft als zusammengesetzte
Taktarten interpretiert (bspw. \"3/8 + 2/8\"), in welchen zwei oder mehr
Teiltakte unterschieden werden.  LilyPond kann derartige Noten produzieren,
indem entsprechende Taktarten gesetzt werden und die automatische
Bebalkung angepasst wird.

"
  doctitlede = "Zusammengesetzte Taktarten"



%% Translation of GIT committish: 4da4307e396243a5a3bc33a0c2753acac92cb685
  texidocfr = "
Des métriques telles que @qq{5/8} peuvent s'interpréter sous une forme
décomposée --- @qq{3/8 + 2/8} par exemple --- qui combine plusieurs
métriques.  LilyPond est capable de rendre ce type de notation, plus
  facile à lire et à interpréter, en imprimant cette métrique composite
  et en adaptant les règles de ligature automatique en conséquence.

"
  doctitlefr = "Métrique décomposée"

  lsrtags = "rhythms"
  texidoc = "
Odd 20th century time signatures (such as \"5/8\") can often be played
as compound time signatures (e.g. \"3/8 + 2/8\"), which combine two or
more inequal metrics. LilyPond can make such music quite easy to read
and play, by explicitly printing the compound time signatures and
adapting the automatic beaming behavior. (Graphic measure grouping
indications can also be added; see the appropriate snippet in this
database.)
"
  doctitle = "Compound time signatures"
} % begin verbatim


#(define ((compound-time one two num) grob)
   (grob-interpret-markup grob
                          (markup #:override '(baseline-skip . 0) #:number
                                  (#:line ((#:column (one num))
                                           #:vcenter "+"
                                           (#:column (two num)))))))

\relative c' {
  \override Staff.TimeSignature #'stencil = #(compound-time "2" "3" "8")
  \time 5/8
  \set Staff.beatStructure = #'(2 3)
  c8 d e fis gis
  c8 fis, gis e d
  c8 d e4 gis8
}
