%% DO NOT EDIT this file manually; it was automatically
%% generated from the LilyPond Snippet Repository
%% (http://lsr.di.unimi.it).
%%
%% Make any changes in the LSR itself, or in
%% `Documentation/snippets/new/`, then run
%% `scripts/auxiliar/makelsr.pl`.
%%
%% This file is in the public domain.

\version "2.23.13"

\header {
  lsrtags = "fretted-strings"

  texidoc = "
Alternate fretboard tables can be created.  These would be used in
order to have alternate fretboards for a given chord.

In order to use an alternate fretboard table, the table must first be
created.  Fretboards are then added to the table.

The created fretboard table can be blank, or it can be copied from an
existing table.

The table to be used in displaying predefined fretboards is selected by
the property @code{\\predefinedDiagramTable}.
"

  doctitle = "Fretboards alternate tables"
} % begin verbatim


\include "predefined-guitar-fretboards.ly"

% Make a blank new fretboard table
#(define custom-fretboard-table-one
   (make-fretboard-table))

% Make a new fretboard table as a copy of default-fret-table
#(define custom-fretboard-table-two
   (make-fretboard-table default-fret-table))

% Add a chord to custom-fretboard-table-one
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode {c}
                        #guitar-tuning
                        "3-(;3;5;5;5;3-);"

% Add a chord to custom-fretboard-table-two
\storePredefinedDiagram #custom-fretboard-table-two
                        \chordmode {c}
                        #guitar-tuning
                        "x;3;5;5;5;o;"

<<
  \chords {
    c1 | d1 |
    c1 | d1 |
    c1 | d1 |
  }
  \new FretBoards {
    \chordmode {
      \set predefinedDiagramTable = #default-fret-table
      c1 | d1 |
      \set predefinedDiagramTable = #custom-fretboard-table-one
      c1 | d1 |
      \set predefinedDiagramTable = #custom-fretboard-table-two
      c1 | d1 |
    }
  }
  \new Staff {
    \clef "treble_8"
    <<
      \chordmode {
        c1 | d1 |
        c1 | d1 |
        c1 | d1 |
      }
      {
        s1_\markup "Default table" | s1 |
        s1_\markup \column {"New table" "from empty"} | s1 |
        s1_\markup \column {"New table" "from default"} | s1 |
      }
    >>
  }
>>
