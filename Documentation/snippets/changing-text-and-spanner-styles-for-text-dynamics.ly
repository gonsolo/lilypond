%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.20"

\header {
  lsrtags = "expressive-marks"

%% Translation of GIT committish: 0b55335aeca1de539bf1125b717e0c21bb6fa31b
  texidoces = "
Se puede modificar el texto empleado para los crescendos y
decrescendos modificando las propiedades de contexto
@code{crescendoText} y @code{decrescendoText}.  El estilo de la
línea de extensión se puede cambiar modificando la propiedad
@code{'style} de @code{DynamicTextSpanner}.  El valor
predeterminado es @code{'hairpin} (regulador), y entre otros
valores posibles se encuentran @code{'line} (línea),
@code{'dashed-line} (línea discontinua) y @code{'dotted-line}
(línea de puntos):

"
  doctitlees = "Cambiar el texto y los estilos de objeto de extensión para las indicaciones dinámicas textuales"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
texidocde = "
Der Text, der für Crescendo und Decrescendo gestzt wird, kann geändert
werden, indem man die Eigenschaften @code{crescendoText} und
@code{decrescendoText} verändert.  Der Stil des Streckers kann auch
geändert werden, indem die @code{'style}-Eigenschaft des
@code{DynamicTextSpanner} beeinflusst wird.  Der Standardwert ist
@code{'hairpin}, ander Möglichkeiten sind @code{'line}, @code{'dashed-line}
und @code{'dotted-line}.
"
  doctitlede = "Text und Strecker-Stile für Dynamik-Texte ändern"
%% Translation of GIT committish: 4ab2514496ac3d88a9f3121a76f890c97cedcf4e
  texidocfr = "
Le texte par défaut des crescendos et decrescendos se change en
modifiant les propriétés de contexte @code{crescendoText} et
@code{decrescendoText}. L'aspect de la ligne d'extension est fonction
de la propriété @code{'style} du @code{DynamicTextSpanner}.  Sa valeur
par défaut est @code{'hairpin}, mais d'autres valeurs sont disponibles,
comme @code{'line}, @code{'dashed-line} et @code{'dotted-line}.

"
  doctitlefr = "Modifidation du texte et de l'extension de nuances textuelles"


  texidoc = "
The text used for crescendos and decrescendos can be changed by
modifying the context properties @code{crescendoText} and
@code{decrescendoText}. The style of the spanner line can be changed by
modifying the @code{'style} property of @code{DynamicTextSpanner}.  The
default value is @code{'hairpin}, and other possible values include
@code{'line}, @code{'dashed-line} and @code{'dotted-line}.

"
  doctitle = "Changing text and spanner styles for text dynamics"
} % begin verbatim

\relative c'' {
  \set crescendoText = \markup { \italic { cresc. poco } }
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dotted-line
  a2\< a
  a2 a
  a2 a
  a2 a\mf
}
