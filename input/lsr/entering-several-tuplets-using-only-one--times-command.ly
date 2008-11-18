%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.11.64"

\header {
  lsrtags = "rhythms"

 doctitlees = "Escribir varios grupos especiales usando una sola instrucción \\times"
 texidoces = "
La propiedad @code{tupletSpannerDuration} establece cuánto debe durar
cada grupo de valoración especial contenido dentro del corchete que
aparece después de @code{\\times}.  Así, se pueden escribir muchos
tresillos seguidos dentro de una sola expresión @code{\\times},
ahorrando trabajo de teclado.

En el ejemplo se muestran dos tresillos, aunque se ha escrito
@code{\\times} una sola vez.


Para ver más inforamción sobre @code{make-moment}, véase
\"Administración del tiempo\".

"

%% Translation of GIT committish :<6ce7f350682dfa99af97929be1dec6b9f1cbc01a>
  texidocde = "
Die Eigenschaft @code{tupletSpannerDuration} bestimmt, wie lange jede
der N-tolen innerhalb der Klammern nach dem @code{\\times}-Befehl
dauert.  Auf diese Art können etwa viele Triolen nacheinander mit nur
einem @code{\\times}-Befehl geschrieben werden.

Im Beispiel sind zwei Triolen zu sehen, obwohl @code{\\times} nur
einmal geschrieben wurde.

Mehr Information über @code{make-moment} gibt es in \"Verwaltung der Zeiteinheiten\". 

"
  doctitlede = "Mehrere Triolen notieren, aber nur einmal \\times benutzen"

  texidoc = "
The property @code{tupletSpannerDuration} sets how long each of the
tuplets contained within the brackets after @code{\\times} should last.
Many consecutive tuplets can then be placed within a single
@code{\\times} expression, thus saving typing.

In the example, two triplets are shown, while @code{\\times} was
entered only once.


For more information about @code{make-moment}, see \"Time
administration\". 

"
  doctitle = "Entering several tuplets using only one \\times command"
} % begin verbatim

\relative c' {
  \time 2/4
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \times 2/3 { c8 c c c c c }
}
