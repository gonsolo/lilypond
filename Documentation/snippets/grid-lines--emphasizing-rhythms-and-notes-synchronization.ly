%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.10"

\header {
  lsrtags = "editorial-annotations"

%% Translation of GIT committish: 4385ed4cc738e164a95798862580b4b86703356f
  texidoces = "
Se pueden trazar líneas verticales normales entre pentagramas para
mostrar la relación entre notas; sin embargo, en caso de música
monofónica, podemos hacer invisible el segundo pentagrama, y que
las líneas sean más cortas, como en este fragmento de código.

"
  doctitlees = "Líneas de rejilla: destacar ritmos y la relación temporal entre notas"

  texidoc = "
Regular vertical lines can be drawn between staves to show note
synchronization; however, in case of monophonic music, you may want to
make the second stave invisible, and make the lines shorter like in
this snippet.

"
  doctitle = "Grid lines: emphasizing rhythms and notes synchronization"
} % begin verbatim

\score {
  \new ChoirStaff {
    \relative c'' <<
      \new Staff {
        \time 12/8
        \stemUp
        c4. d8 e8 f g4 f8 e8. d16 c8
      }
      \new Staff {
        % hides staff and notes so that only the grid lines are visible
        \hideNotes
        \override Staff.BarLine #'transparent = ##t
        \override Staff.StaffSymbol #'line-count = #0
        \override Staff.TimeSignature #'transparent = ##t
        \override Staff.Clef #'transparent = ##t

        % dummy notes to force regular note spacing
        \once  \override Score.GridLine #'thickness = #4.0
        c8 c c
        \once  \override Score.GridLine #'thickness = #3.0
        c8 c c
        \once  \override Score.GridLine #'thickness = #4.0
        c8 c c
        \once  \override Score.GridLine #'thickness = #3.0
        c8 c c
      }
    >>
  }
  \layout {
    \context {
      \Score
      \consists "Grid_line_span_engraver"
      % center grid lines horizontally below note heads
      \override NoteColumn #'X-offset = #-0.5
    }
    \context {
      \Staff
      \consists "Grid_point_engraver"
      gridInterval = #(ly:make-moment 1 8)
      % set line length and positioning:
      % two staff spaces above center line on hidden staff
      % to four spaces below center line on visible staff
      \override GridPoint #'Y-extent = #'(2 . -4)
    }
    ragged-right = ##t
  }
}

