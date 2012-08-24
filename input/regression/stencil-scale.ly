\version "2.16.0"

\header {
  texidoc = "Stencils can be scaled using @code{ly:stencil-scale}.
Negative values will flip or mirror the stencil without changing its origin; this
may result in collisions unless the scaled stencil is realigned (e.g., the time
signature in this test)."
}

\relative c' {
  \override Staff.Clef #'stencil =
  #(lambda (grob)
     (ly:stencil-scale (ly:clef::print grob) 1 -1))
  \override Staff.TimeSignature #'stencil =
  #(lambda (grob)
     (ly:stencil-aligned-to
      (ly:stencil-scale (ly:time-signature::print grob) -2 1)
      X LEFT))
  \override MultiMeasureRestText #'stencil =
  #(lambda (grob)
     (ly:stencil-scale (ly:text-interface::print grob) 2 1.6))
  R1\fermataMarkup
}
