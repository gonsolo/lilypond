%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.11.64"

\header {
  lsrtags = "staff-notation, tweaks-and-overrides, breaks"

  texidoces = "
El primer pentagrama vacío también se puede suprimir de la
partitura estableciendo la propiedad @code{remove-first} de
@code{VerticalAxisGroup}.  Esto se puede hacer globalmente dentro
del bloque @code{\\layout}, o localmente dentro del pentagrama
concreto que se quiere suprimir.  En este último caso, tenemos que
especificar el contexto (@code{Staff} se aplica sólo al pentagrama
actual) delante de la propiedad.

El pentagrama inferior del segundo grupo no se elimina, porque el
ajuste sólo se aplica al pentagrama concreto dentro del que se
escribe.

"
  doctitlees = "Quitar la primera línea vacía"

  texidoc = "
The first empty staff can also be removed from the score by setting the
@code{VerticalAxisGroup} property @code{remove-first}. This can be done
globally inside the @code{\\layout} block, or locally inside the
specific staff that should be removed.  In the latter case, you have to
specify the context (@code{Staff} applies only to the current staff) in
front of the property.

The lower staff of the second staff group is not removed, because the
setting applies only to the specific staff inside of which it is
written. 

"
  doctitle = "Removing the first empty line"
} % begin verbatim

\layout {
  \context { 
    \RemoveEmptyStaffContext 
    % To use the setting globally, uncomment the following line:
    % \override VerticalAxisGroup #'remove-first = ##t
  }
}
\new StaffGroup <<
  \new Staff \relative c' {
    e4 f g a \break
    c1
  }
  \new Staff {
    % To use the setting globally, comment this line,
    % uncomment the line in the \layout block above
    \override Staff.VerticalAxisGroup #'remove-first = ##t
    R1 \break
    R
  }
>>
\new StaffGroup <<
  \new Staff \relative c' {
    e4 f g a \break
    c1
  }
  \new Staff {
    R1 \break
    R
  }
>>
