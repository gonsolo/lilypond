\version "2.12.0"
\header {
  texidoc = "Stemlets don't cause stems on whole notes."
} 

\paper{ ragged-right=##t }

{
  \override Stem #'stemlet-length = #0.5
  c''1
}
